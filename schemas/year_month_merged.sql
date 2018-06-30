-- MySQL Script generated by MySQL Workbench
-- Saturday 30 June 2018 10:13:57 PM IST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`proveniences`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`proveniences` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `google_earth_collection` VARCHAR(255) NULL DEFAULT NULL,
  `google_earth_provenience` VARCHAR(255) NULL DEFAULT NULL,
  `provenience` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dynasties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dynasties` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `polity` VARCHAR(45) NULL DEFAULT NULL,
  `dynasty` VARCHAR(45) NULL DEFAULT NULL,
  `order` INT(11) NULL,
  `provenience_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dynasties_1_idx` (`provenience_id` ASC),
  UNIQUE INDEX `d_order_UNIQUE` (`order` ASC),
  CONSTRAINT `fk_dynasties_1`
    FOREIGN KEY (`provenience_id`)
    REFERENCES `mydb`.`proveniences` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`periods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`periods` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `period` VARCHAR(80) NULL DEFAULT NULL,
  `order` INT(11) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `order_UNIQUE` (`order` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`month_names`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`month_names` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `composite_month_name` VARCHAR(100) NULL,
  `order` INT(11) NULL,
  `month_numbar` VARCHAR(45) NULL,
  `type` ENUM('ruler', 'place') NULL,
  `ruler_id` INT(11) NULL,
  `year_name_id` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_month_names_1_idx` (`ruler_id` ASC),
  INDEX `fk_month_names_2_idx` (`year_name_id` ASC),
  CONSTRAINT `fk_month_names_1`
    FOREIGN KEY (`ruler_id`)
    REFERENCES `mydb`.`rulers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_month_names_2`
    FOREIGN KEY (`year_name_id`)
    REFERENCES `mydb`.`year_names` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rulers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rulers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ruler` VARCHAR(45) NULL DEFAULT NULL,
  `order` INT(11) NULL,
  `period_id` INT(11) NULL,
  `dynasty_id` INT(11) NULL,
  `month_name_id` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_rulers_1_idx` (`period_id` ASC),
  UNIQUE INDEX `r_order_UNIQUE` (`order` ASC),
  INDEX `fk_rulers_2_idx` (`dynasty_id` ASC),
  INDEX `fk_rulers_3_idx` (`month_name_id` ASC),
  CONSTRAINT `fk_rulers_1`
    FOREIGN KEY (`period_id`)
    REFERENCES `mydb`.`periods` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_rulers_2`
    FOREIGN KEY (`dynasty_id`)
    REFERENCES `mydb`.`dynasties` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_rulers_3`
    FOREIGN KEY (`month_name_id`)
    REFERENCES `mydb`.`month_names` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`years`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`years` (
  `id` INT NOT NULL,
  `date` DATE NULL,
  `order` INT(11) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `order_UNIQUE` (`order` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`year_names`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`year_names` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `year_number` VARCHAR(45) NULL,
  `year_and_eponym` VARCHAR(255) NULL DEFAULT NULL,
  `type` ENUM('year', 'eponym') NULL,
  `order` INT(11) NULL,
  `ruler_id` INT(11) NULL,
  `year_id` INT(11) NULL,
  `period_id` INT(11) NULL,
  `dynasty_id` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_years_and_eponyms_1_idx` (`ruler_id` ASC),
  INDEX `fk_year_and_eponym_names_1_idx` (`year_id` ASC),
  UNIQUE INDEX `order_UNIQUE` (`order` ASC),
  INDEX `fk_year_names_1_idx` (`period_id` ASC),
  INDEX `fk_year_names_2_idx` (`dynasty_id` ASC),
  CONSTRAINT `fk_years_and_eponyms_1`
    FOREIGN KEY (`ruler_id`)
    REFERENCES `mydb`.`rulers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_year_and_eponym_names_1`
    FOREIGN KEY (`year_id`)
    REFERENCES `mydb`.`years` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_year_names_1`
    FOREIGN KEY (`period_id`)
    REFERENCES `mydb`.`periods` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_year_names_2`
    FOREIGN KEY (`dynasty_id`)
    REFERENCES `mydb`.`dynasties` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dates` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(45) NULL,
  `order` INT(11) NULL,
  `type_month` ENUM('start_date', 'end_date') NULL,
  `month_name_id` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dates_1_idx` (`month_name_id` ASC),
  CONSTRAINT `fk_dates_1`
    FOREIGN KEY (`month_name_id`)
    REFERENCES `mydb`.`month_names` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`artifacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artifacts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `provenience_id` INT(11) NULL,
  `period_id` INT(11) NULL,
  `dynasty_id` INT(11) NULL,
  `ruler_id` INT(11) NULL,
  `year_name_id` INT(11) NULL,
  `year_id` INT(11) NULL,
  `month_name_id` INT(11) NULL,
  `date_id` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_artifacts_1_idx` (`provenience_id` ASC),
  INDEX `fk_artifacts_3_idx` (`dynasty_id` ASC),
  INDEX `fk_artifacts_4_idx` (`ruler_id` ASC),
  INDEX `fk_artifacts_5_idx` (`year_name_id` ASC),
  INDEX `fk_artifacts_6_idx` (`year_id` ASC),
  INDEX `fk_artifacts_7_idx` (`month_name_id` ASC),
  INDEX `fk_artifacts_8_idx` (`date_id` ASC),
  INDEX `fk_artifacts_2_idx` (`period_id` ASC),
  CONSTRAINT `fk_artifacts_1`
    FOREIGN KEY (`provenience_id`)
    REFERENCES `mydb`.`proveniences` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_2`
    FOREIGN KEY (`period_id`)
    REFERENCES `mydb`.`periods` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_3`
    FOREIGN KEY (`dynasty_id`)
    REFERENCES `mydb`.`dynasties` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_4`
    FOREIGN KEY (`ruler_id`)
    REFERENCES `mydb`.`rulers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_5`
    FOREIGN KEY (`year_name_id`)
    REFERENCES `mydb`.`year_names` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_6`
    FOREIGN KEY (`year_id`)
    REFERENCES `mydb`.`years` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_7`
    FOREIGN KEY (`month_name_id`)
    REFERENCES `mydb`.`month_names` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artifacts_8`
    FOREIGN KEY (`date_id`)
    REFERENCES `mydb`.`dates` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
