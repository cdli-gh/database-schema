-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2018 at 07:46 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasename`
--

-- --------------------------------------------------------

--
-- Table structure for table `artifacts`
--

CREATE TABLE `artifacts` (
  `id` int(11) NOT NULL,
  `artifacts_dates_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `artifacts_dates`
--

CREATE TABLE `artifacts_dates` (
  `id` int(10) NOT NULL,
  `date_created_accuracy` int(10) DEFAULT NULL,
  `artifact_id` int(10) DEFAULT NULL,
  `ruler_id` int(10) DEFAULT NULL,
  `dynasty_id` int(10) DEFAULT NULL,
  `year_name_id` int(10) DEFAULT NULL,
  `month_name_id` int(10) DEFAULT NULL,
  `date_id` int(10) DEFAULT NULL,
  `date_type` enum('origin','referenced','accounting_period_start','accounting_period_end') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artifacts_dates`
--

INSERT INTO `artifacts_dates` (`id`, `date_created_accuracy`, `artifact_id`, `ruler_id`, `dynasty_id`, `year_name_id`, `month_name_id`, `date_id`, `date_type`) VALUES
(1, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(2, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(3, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(4, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(5, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(6, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(7, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(8, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(9, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(10, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(11, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(12, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(13, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(14, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(15, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(16, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(17, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(18, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(19, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(20, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(21, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(22, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(23, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(24, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(25, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(26, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(27, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(28, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(29, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(30, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(31, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(32, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(33, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(34, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(35, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(36, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(37, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(38, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(39, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(40, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(41, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(42, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(43, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(44, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(45, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(46, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(47, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(48, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(49, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(50, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(51, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(52, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(53, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(54, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(55, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(56, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(57, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(58, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(59, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(60, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(61, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(62, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(63, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(64, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(65, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(66, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(67, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin'),
(68, NULL, NULL, NULL, 20, NULL, NULL, NULL, 'origin');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(10) NOT NULL,
  `day_number` varchar(30) DEFAULT NULL,
  `date_remarks` varchar(80) DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `is_uncertain` enum('yes','no') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `day_number`, `date_remarks`, `order`, `is_uncertain`) VALUES
(1, '00.00.00.00', '', 1, NULL),
(2, '00.00.00.00', '', 2, NULL),
(3, '00.00.00.00', '', 3, NULL),
(4, '00.00.00.00', '', 4, NULL),
(5, '00.00.00.00', '', 5, NULL),
(6, '00.00.00.00', '', 6, NULL),
(7, '00.00.00.00', '', 7, NULL),
(8, '00.00.00.00', '', 8, NULL),
(9, '00.00.00.00', '', 9, NULL),
(10, '00.00.00.00', '', 10, NULL),
(11, '00.00.00.00', '', 11, NULL),
(12, '00.00.00.00', '', 12, NULL),
(13, '', '', 13, NULL),
(14, '', '', 14, NULL),
(15, '', '', 15, NULL),
(16, '', '', 16, NULL),
(17, '00.00.00.00', '', 17, NULL),
(18, '00.00.00.00', '', 18, NULL),
(19, '00.00.00.00', '', 19, NULL),
(20, '00.00.00.00', '', 20, NULL),
(21, '00.00.00.00', '', 21, NULL),
(22, '00.00.00.00', '', 22, NULL),
(23, '00.00.00.00', '', 23, NULL),
(24, '00.00.00.00', '', 24, NULL),
(25, '', '', 25, NULL),
(26, '', '', 26, NULL),
(27, '', '', 27, NULL),
(28, '', '', 28, NULL),
(29, '', '', 29, NULL),
(30, '', '', 30, NULL),
(31, '00.00.00.00', '', 31, NULL),
(32, '00.00.00.00', '', 32, NULL),
(33, '00.00.00.00', '', 33, NULL),
(34, '00.00.00.00', '', 34, NULL),
(35, '00.00.00.00', '', 35, NULL),
(36, '00.00.00.00', '', 36, NULL),
(37, '00.00.00.00', '', 37, NULL),
(38, '00.00.00.00', '', 38, NULL),
(39, '00.00.00.00', '', 39, NULL),
(40, '', '', 40, NULL),
(41, '00.00.00.00', '', 41, NULL),
(42, '00.00.00.00', '', 42, NULL),
(43, '00.00.00.00', '', 43, NULL),
(44, '00.00.00.00', '', 44, NULL),
(45, '00.00.00.00', '', 45, NULL),
(46, '00.00.00.00', '', 46, NULL),
(47, '00.00.00.00', '', 47, NULL),
(48, '00.00.00.00', '', 48, NULL),
(49, '', '', 49, NULL),
(50, '', '', 50, NULL),
(51, '', '', 51, NULL),
(52, '00.00.00.00', '', 52, NULL),
(53, '00.00.00.00', '', 53, NULL),
(54, '00.00.00.00', '', 54, NULL),
(55, '00.00.00.00', '', 55, NULL),
(56, '00.00.00.00', '', 56, NULL),
(57, '00.00.00.00', '', 57, NULL),
(58, '00.00.00.00', '', 58, NULL),
(59, '00.00.00.00', '', 59, NULL),
(60, '00.00.00.00', '', 60, NULL),
(61, '00.00.00.00', '', 61, NULL),
(62, '00.00.00.00', '', 62, NULL),
(63, '00.00.00.00', '', 63, NULL),
(64, '00.00.00.00', '', 64, NULL),
(65, '00.00.00.00', '', 65, NULL),
(66, '00.00.00.00', '', 66, NULL),
(67, '00.00.00.00', '', 67, NULL),
(68, '00.00.00.00', '', 68, NULL),
(69, '00.00.00.00', '', 69, NULL),
(70, '00.00.00.00', '', 70, NULL),
(71, '00.00.00.00', '', 71, NULL),
(72, '00.00.00.00', '', 72, NULL),
(73, '00.00.00.00', '', 73, NULL),
(74, '00.00.00.00', '', 74, NULL),
(75, '00.00.00.00', '', 75, NULL),
(76, '00.00.00.00', '', 76, NULL),
(77, '00.00.00.00', '', 77, NULL),
(78, '00.00.00.00', '', 78, NULL),
(79, '00.00.00.00', '', 79, NULL),
(80, '00.00.00.00', '', 80, NULL),
(81, '00.00.00.00', '', 81, NULL),
(82, '00.00.00.00', '', 82, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dynasties`
--

CREATE TABLE `dynasties` (
  `id` int(10) NOT NULL,
  `polity` varchar(45) DEFAULT NULL,
  `dynasty` varchar(80) DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `provenience_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dynasties`
--

INSERT INTO `dynasties` (`id`, `polity`, `dynasty`, `order`, `provenience_id`) VALUES
(1, 'Kish', 'Kish I', NULL, NULL),
(2, 'Uruk', 'Uruk I', NULL, NULL),
(3, 'Ur ', 'Ur I', NULL, NULL),
(4, 'Lagash', 'Lagash I', NULL, NULL),
(5, 'Mari', '', NULL, NULL),
(6, 'Ebla', '', NULL, NULL),
(7, 'Kish', 'Kish II', NULL, NULL),
(8, 'Uruk', 'Uruk II', NULL, NULL),
(9, 'Kish', 'Kish III', NULL, NULL),
(10, 'Ur', 'Ur II', NULL, NULL),
(11, 'Kish', 'Kish IV', NULL, NULL),
(12, 'Uruk', 'Uruk III', NULL, 2),
(13, 'Akkad', 'Akkad', NULL, NULL),
(14, 'Lagash', '', NULL, NULL),
(15, 'Lagash', 'Lagash II', NULL, NULL),
(16, 'Uruk', 'Uruk IV', NULL, NULL),
(17, 'Mari', 'Shakkannakku', NULL, NULL),
(18, 'Akkad', 'Guti', NULL, NULL),
(19, 'Uruk', 'Uruk V', NULL, NULL),
(20, 'Ur', 'Ur III', NULL, 3),
(21, 'Isin', 'Isin I', NULL, NULL),
(22, 'Larsa', 'Larsa', NULL, NULL),
(23, 'Babylon', 'Babylon I', NULL, NULL),
(24, 'Eshnuna', '', NULL, NULL),
(25, 'Ashur', '', NULL, NULL),
(26, 'Ashur', 'Northern Mesopotamia', NULL, NULL),
(27, 'Mari', 'Mari', NULL, NULL),
(28, 'Mari', 'Hana', NULL, NULL),
(29, 'Larsa', 'Sealand I', NULL, NULL),
(30, '', 'Mitanni', NULL, NULL),
(31, 'Babylonia', 'Kassite', NULL, NULL),
(32, 'Assyria', '', NULL, NULL),
(33, 'Babylonia', 'Isin II', NULL, NULL),
(34, 'Assyria', '', NULL, NULL),
(35, '', 'Sealand II', NULL, NULL),
(36, '', 'Bazi', NULL, NULL),
(37, '', 'Elamite', NULL, NULL),
(38, 'Assyria', 'Neo-Assyrian', NULL, NULL),
(39, 'Babylonia', 'Neo-Babylonian', NULL, NULL),
(40, 'Persia', 'Achemenid', NULL, NULL),
(41, 'Seleucia', 'Macedonian', NULL, NULL),
(42, 'Seleucia', 'Seleucid', NULL, NULL),
(43, 'Persia', 'Parthian', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(11) NOT NULL,
  `composite_month_name` varchar(100) DEFAULT NULL,
  `order` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `composite_month_name`, `order`) VALUES
(4, 'a2-ki-ti', 1),
(6, 'ezem-maá¸«', 3),
(9, 'ezem-an-na', 2),
(11, 'ezem-(d)me-ki-gal2', 4),
(12, 'ezem-dnin-a-zu', 5),
(13, 'ezem-dÅ¡u-dsuen', 6),
(14, 'ezem-dÅ¡ul-gi', 7),
(15, 'ki-siki-dnin-a-zu', 8),
(16, 'maÅ¡(2)-da3-gu7', 9),
(17, 'Å¡e-sag(11)-ku5', 10),
(18, 'ses-da-gu7', 11),
(19, 'Å¡u-eÅ¡(5)-Å¡a', 12),
(20, 'u5-bi2(muÅ¡en)-gu7', 13),
(21, 'diri', 14),
(22, 'bara2-za3-gar', 15),
(23, 'gu4-si-su', 16),
(24, 'sig4-ga', 17),
(25, 'Å¡u-numun', 18),
(26, 'NE-NE-gar', 19),
(27, 'kin-dinanna', 20),
(28, 'du6-ku33', 21),
(29, 'apin-du8-a', 22),
(30, 'GAN-GAN-e3', 23),
(31, 'ku3-SZIM (var. ab-e3)', 24),
(32, 'udruduru5', 25),
(33, 'Å¡e-sag(11)-ku5', 26),
(34, 'diri', 27),
(35, 'Å¡e-sag(11)-ku5', 28),
(36, 'maÅ¡(2)-da3-gu7', 29),
(37, 'ses-da-gu7', 30),
(38, 'u5-bi2(muÅ¡en)-gu7', 31),
(39, 'ki-siki-dnin-a-zu', 32),
(40, 'ezem-dnin-a-zu', 33),
(41, 'a2-ki-ti', 34),
(42, 'ezem-dÅ¡ul-gi', 35),
(43, 'Å¡u-eÅ¡(5)-Å¡a', 36),
(44, 'ezem-maá¸«', 37),
(45, 'ezem-an-na', 38),
(46, 'ezem-(d)me-ki-gal2', 39),
(47, 'diri ezem-(d)me-ki-gal2 us2-sa', 40),
(48, 'diri', 41),
(49, 'ezem GAN2-maÅ¡', 42),
(50, 'ezem gu4-ra2-izi-mu2-mu2', 43),
(51, 'ezem dli9-si4', 44),
(52, 'ezem Å¡u numun', 45),
(53, 'ezem munu4-gu7', 46),
(54, 'zem ddumu-zi', 47),
(55, 'UR', 48),
(56, 'ezem dba-ba6', 49),
(57, 'mu-Å¡u-du8', 50),
(58, 'amar-a-a-si', 51),
(59, 'Å¡e-sag11-ku5', 52),
(60, 'ezem Å¡e-il2-la', 53),
(61, 'iti 1(uc) 3(diÅ¡c)', 54),
(62, 'Å¡e-sag(11)-ku5', 55),
(63, 'sig4-geÅ¡i/u3-Å¡ub-ba-gar', 56),
(64, 'Å¡e-kar-ra-gal2-la', 57),
(65, 'nesag', 58),
(66, 'dal', 59),
(67, 'Å¡u-numun', 60),
(68, 'min-eÅ¡(3)', 61),
(69, 'ezem-damar-dsuen', 62),
(70, 'e2-iti-6(diÅ¡)', 63),
(71, 'dli9-si4', 64),
(72, 'UR', 65),
(73, 'pa4-u2-e', 66),
(74, 'ddumu-zi', 67),
(75, 'diri', 68),
(76, 'Å¡u-gar(-gal)', 69),
(77, 'geÅ¡apin', 70),
(78, 'kir11-si-ak', 71),
(79, 'ses-da-gu7', 72),
(80, 'ezem-dli9-si4', 73),
(81, 'ezem-a-bi', 74),
(82, 'gi-sig-ga', 75),
(83, 'ezem-dÅ¡ul-gi', 76),
(84, 'nig2-den-lil2-la2', 77),
(85, 'ezem-a-dara4', 78),
(86, 'nig2-e-ga', 79),
(87, 'ezem-an-na', 80),
(88, 'Å¡e-sag(11)-ku5', 81),
(89, 'diri', 82);

-- --------------------------------------------------------

--
-- Table structure for table `month_names`
--

CREATE TABLE `month_names` (
  `id` int(11) NOT NULL,
  `month_number` varchar(30) DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `type` enum('ruler','place') DEFAULT NULL,
  `month_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month_names`
--

INSERT INTO `month_names` (`id`, `month_number`, `order`, `type`, `month_id`) VALUES
(3, '1', NULL, NULL, 4),
(4, '2', NULL, NULL, 9),
(5, '3', NULL, NULL, 6),
(6, '4', NULL, NULL, 11),
(7, '5', NULL, NULL, 12),
(8, '6', NULL, NULL, 13),
(9, '7', NULL, NULL, 14),
(10, '8', NULL, NULL, 15),
(11, '9', NULL, NULL, 16),
(12, '10', NULL, NULL, 17),
(13, '11', NULL, NULL, 18),
(14, '12', NULL, NULL, 19),
(15, '13', NULL, NULL, 20),
(16, '14', NULL, NULL, 21),
(17, '15', NULL, NULL, 22),
(18, '16', NULL, NULL, 23),
(19, '17', NULL, NULL, 24),
(20, '18', NULL, NULL, 25),
(21, '19', NULL, NULL, 26),
(22, '20', NULL, NULL, 27),
(23, '21', NULL, NULL, 28),
(24, '22', NULL, NULL, 29),
(25, '23', NULL, NULL, 30),
(26, '24', NULL, NULL, 31),
(27, '25', NULL, NULL, 32),
(28, '26', NULL, NULL, 33),
(29, '27', NULL, NULL, 34),
(30, '28', NULL, NULL, 35),
(31, '29', NULL, NULL, 36),
(32, '30', NULL, NULL, 37),
(33, '31', NULL, NULL, 38),
(34, '32', NULL, NULL, 39),
(35, '33', NULL, NULL, 40),
(36, '34', NULL, NULL, 41),
(37, '35', NULL, NULL, 42),
(38, '36', NULL, NULL, 43),
(39, '37', NULL, NULL, 44),
(40, '38', NULL, NULL, 45),
(41, '39', NULL, NULL, 46),
(42, '40', NULL, NULL, 47),
(43, '41', NULL, NULL, 48),
(44, '42', NULL, NULL, 49),
(45, '43', NULL, NULL, 50),
(46, '44', NULL, NULL, 51),
(47, '45', NULL, NULL, 52),
(48, '46', NULL, NULL, 53),
(49, '47', NULL, NULL, 54),
(50, '48', NULL, NULL, 55),
(51, '49', NULL, NULL, 56),
(52, '50', NULL, NULL, 57);

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` int(10) NOT NULL,
  `period` varchar(80) DEFAULT NULL,
  `order` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `period`, `order`) VALUES
(1, 'Pre-Writing (ca. 8500-3500 BC)', 1),
(2, 'Uruk V (ca. 3500-3350 BC)', 2),
(3, 'Uruk IV (ca. 3350-3200 BC)', 3),
(4, 'Uruk III (ca. 3200-3000 BC)', 4),
(5, 'Proto-Elamite (ca. 3100-2900 BC)', 5),
(6, 'ED I-II (ca. 2900-2700 BC)', 6),
(7, 'ED IIIa (ca. 2600-2500 BC)', 7),
(8, 'ED IIIb (ca. 2500-2340 BC)', 8),
(9, 'Ebla (ca. 2350-2250 BC)', 9),
(10, 'Old Akkadian (ca. 2340-2200 BC)', 10),
(11, 'Old Elamite (c. 2600â€“1500 BC)', 11),
(12, 'Linear Elamite (ca. 2200 BC)', 12),
(13, 'Lagash II (ca. 2200-2100 BC)', 13),
(14, 'Harappan (ca. 2200-1900 BC)', 14),
(15, 'Ur III (ca. 2100-2000 BC)', 15),
(16, 'Early Old Babylonian (ca. 2000-1900 BC)', 16),
(17, 'Old Assyrian (ca. 1950-1850 BC)', 17),
(18, 'Old Babylonian (ca. 1900-1600 BC)', 18),
(19, 'Middle Hittite (ca. 1500-1100 BC)', 19),
(20, 'Middle Babylonian (ca. 1400-1100 BC)', 20),
(21, 'Middle Assyrian (ca. 1400-1000 BC)', 21),
(22, 'Middle Elamite (ca. 1300-1000 BC)', 22),
(23, 'Neo-Assyrian (ca. 911-612 BC)', 23),
(24, 'Neo-Elamite (ca. 770-539 BC)', 24),
(25, 'Neo-Babylonian (ca. 626-539 BC)', 35),
(26, 'Achaemenid (547-331 BC)', 26),
(27, 'Hellenistic (323-63 BC)', 27),
(28, 'Parthian (247 BC - 224 AD)', 28),
(29, 'Sassanian (224-641 AD)', 29),
(30, 'Egyptian 0 (ca. 3300-3000 BC)', 30),
(31, 'copy (modern)', 31),
(32, 'fake (modern)', 32),
(33, 'fake (ancient)', 33),
(34, 'uncertain', 34);

-- --------------------------------------------------------

--
-- Table structure for table `proveniences`
--

CREATE TABLE `proveniences` (
  `id` int(10) NOT NULL,
  `google_earth_collection` varchar(255) DEFAULT NULL,
  `google_earth_provenience` varchar(255) DEFAULT NULL,
  `geo_coordinates` varchar(30) DEFAULT NULL,
  `provenience` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proveniences`
--

INSERT INTO `proveniences` (`id`, `google_earth_collection`, `google_earth_provenience`, `geo_coordinates`, `provenience`) VALUES
(1, 'google_earth_collection', 'google_earth_provenience', 'geo_coordinates', 'provenience'),
(2, '', '', '', 'Uruk (mod. Warka)'),
(3, '', '', '', 'Ur (mod. Tell Muqayyar)'),
(4, '', '', '', 'Girsu (mod. Tello)'),
(5, '', '', '', 'Nippur (mod. Nuffar)'),
(6, '', '', '', 'Umma (mod. Tell Jokha)');

-- --------------------------------------------------------

--
-- Table structure for table `rulers`
--

CREATE TABLE `rulers` (
  `id` int(10) NOT NULL,
  `ruler` varchar(100) DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `period_id` int(10) DEFAULT NULL,
  `dynasty_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rulers`
--

INSERT INTO `rulers` (`id`, `ruler`, `order`, `period_id`, `dynasty_id`) VALUES
(1, 'Sargon', NULL, NULL, 13),
(2, 'Rimush', NULL, NULL, 13),
(3, 'Manishtushu', NULL, NULL, 13),
(4, 'Naram-sin', NULL, NULL, 13),
(5, 'Sharkalisharri', NULL, NULL, 13),
(6, 'Unknown', NULL, NULL, 13),
(7, 'Ur-Baba', NULL, NULL, 15),
(8, 'Gudea', NULL, NULL, 15),
(9, 'Ur-Ningirsu', NULL, NULL, 15),
(10, 'Ka-Ku', NULL, NULL, 15),
(11, 'Lu-gula', NULL, NULL, 15),
(12, 'Lu-Baba', NULL, NULL, 15),
(13, 'Ur-gar', NULL, NULL, 15),
(14, 'Ur-Mama', NULL, NULL, 15),
(15, 'Pirigme', NULL, NULL, 15),
(16, 'Nammahni', NULL, NULL, 15),
(17, 'Ur-abba', NULL, NULL, 15),
(18, 'Utu-hegal', NULL, 4, 8),
(19, 'Ur-Namma', NULL, NULL, 20),
(20, 'Sulgi', NULL, NULL, 20),
(21, 'Amar-Suen', NULL, NULL, 20),
(22, 'Su-Suen', NULL, NULL, 20),
(23, 'lbbi-Suen', NULL, NULL, 20),
(24, 'IÅ¡bi-erra', NULL, NULL, NULL),
(25, 'Å u-iliÅ¡u', NULL, NULL, NULL),
(26, 'Iddin-Dagan', NULL, NULL, NULL),
(27, 'IÅ¡me-Dagan', NULL, NULL, NULL),
(28, 'Lipit-IÅ¡tar', NULL, NULL, NULL),
(29, 'Ur-Ninurta', NULL, NULL, NULL),
(30, 'Bur-SÃ®n', NULL, NULL, NULL),
(31, 'Lipit-Enlil', NULL, NULL, NULL),
(32, 'Erra-imitti', NULL, NULL, NULL),
(33, 'Enlil-bÃ¢ni', NULL, NULL, NULL),
(34, 'Zambiya', NULL, NULL, NULL),
(35, 'Iter-piÅ¡a', NULL, NULL, NULL),
(36, 'Ur-dukuga', NULL, NULL, NULL),
(37, 'SÃ®n-mÃ¢gir', NULL, NULL, NULL),
(38, 'Damiq-iliÅ¡u', NULL, NULL, NULL),
(39, 'Unknown *', NULL, NULL, NULL),
(40, 'Naplanum', NULL, NULL, 22),
(41, 'Emisum', NULL, NULL, 22),
(42, 'Samium', NULL, NULL, 22),
(43, 'Zabaja', NULL, NULL, 22),
(44, 'Gungunum', NULL, NULL, 22),
(45, 'AbÃ®-sarÃª', NULL, NULL, 22),
(46, 'SÃ»mÃ»-El', NULL, NULL, 22),
(47, 'NÃ»r-Adad', NULL, NULL, 22),
(48, 'Sin-iddinam', NULL, NULL, 22),
(49, 'SÃ®n-erÃ®bam', NULL, NULL, 22),
(50, 'SÃ®n-iqÃ®Å¡am', NULL, NULL, 22),
(51, 'á¹¢illi-Adad', NULL, NULL, 22),
(52, 'Warad-SÃ®n', NULL, NULL, 22),
(53, 'RÃ®m-SÃ®n', NULL, NULL, 22),
(54, 'RÃ®m-SÃ®n II', NULL, NULL, 22),
(55, 'Itur-Å amaÅ¡', NULL, NULL, NULL),
(56, 'Manabalte-el', NULL, NULL, NULL),
(57, 'Å arraá¹£urum', NULL, NULL, NULL),
(58, 'Ubaya', NULL, NULL, NULL),
(59, 'ZikrÃ»', NULL, NULL, NULL),
(60, 'Ibbi-Å amaÅ¡', NULL, NULL, NULL),
(61, 'Alila-hadum', NULL, NULL, NULL),
(62, 'SÃ®n-kaÅ¡id', NULL, NULL, NULL),
(63, 'SÃ®n-iribam', NULL, NULL, NULL),
(64, 'SÃ®n-gamil', NULL, NULL, NULL),
(65, 'Ilum-gamil', NULL, NULL, NULL),
(66, 'Anam', NULL, NULL, NULL),
(67, 'Irdanene', NULL, NULL, NULL),
(68, 'RÃ®m-Anum', NULL, NULL, NULL),
(69, 'Nabi-iliÅ¡u', NULL, NULL, NULL),
(70, 'IbÄl-pÃ®-El I', NULL, NULL, NULL),
(71, 'Ipiq-Adad II', NULL, NULL, NULL),
(72, 'NarÄm-SÃ®n', NULL, NULL, NULL),
(73, 'Dannum-tÄhaz', NULL, NULL, NULL),
(74, 'DÄduÅ¡a', NULL, NULL, NULL),
(75, 'IbÄl-pÃ®-El II', NULL, NULL, NULL),
(76, 'á¹¢illÄ«-SÃ®n', NULL, NULL, NULL),
(77, 'Iluni', NULL, NULL, NULL),
(78, 'Yahdun-Lim', NULL, NULL, 27),
(79, 'Sumu-yamam', NULL, NULL, 27),
(80, 'Yasmah-Addu', NULL, NULL, 27),
(81, 'Zimri-Lim', NULL, NULL, 27),
(82, 'Yarim-Lim I', NULL, NULL, NULL),
(83, 'Hammurabi I', NULL, NULL, NULL),
(84, 'Yarim-Lim II', NULL, NULL, NULL),
(85, 'Niqmepa', NULL, NULL, NULL),
(86, 'Irkabtum', NULL, NULL, NULL),
(87, 'Yarim-Lim III', NULL, NULL, NULL),
(88, 'Hammurabi II', NULL, NULL, NULL),
(89, 'Sumu-abum', NULL, NULL, NULL),
(90, 'Sumu-la-el', NULL, NULL, NULL),
(91, 'Sabium', NULL, NULL, NULL),
(92, 'Apil-Sin', NULL, NULL, NULL),
(93, 'Samsu-iluna', NULL, NULL, NULL),
(94, 'Abi-eshuh', NULL, NULL, NULL),
(95, 'Ammi-ditana', NULL, NULL, NULL),
(96, 'Ammi-saduqa', NULL, NULL, NULL),
(97, 'Samsu-ditana', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) NOT NULL,
  `year` varchar(80) DEFAULT NULL,
  `order` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `year_names`
--

CREATE TABLE `year_names` (
  `id` int(10) NOT NULL,
  `year_number` varchar(30) DEFAULT NULL,
  `year_and_eponym` varchar(255) DEFAULT NULL,
  `type` enum('year','eponym') DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `year_id` int(10) DEFAULT NULL,
  `period_id` int(10) DEFAULT NULL,
  `dynasty_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year_names`
--

INSERT INTO `year_names` (`id`, `year_number`, `year_and_eponym`, `type`, `order`, `year_id`, `period_id`, `dynasty_id`) VALUES
(1, 'a', 'mu szar-um-gi si-mur-um{ki}-sze3 i3-gin-na-a', 'year', 1, NULL, NULL, 13),
(2, 'ba', 'mu szar-um-gi-ne2 uruXa{ki} mu-hul-a', 'year', 2, NULL, NULL, 13),
(3, 'bb', 'mu uruXa{ki} hul-a', 'year', 3, NULL, NULL, 13),
(4, 'c', 'mu szar-um-gi-ne2 elam{ki} / nim{ki} mu-hul-a', 'year', 4, NULL, NULL, 13),
(5, 'd', 'mu ma-ri2{ki} hul-a', 'year', 5, NULL, NULL, 13),
(19, 'j', 'in 1 mu {d}na-ra-am-{d}en.zu < kas.szudun=REC169 > subir{ki} in a-zu-hi-nim{ki} i-sza-ru ta2-hi-sza-ti-li ik-mi-u3', 'year', 19, NULL, NULL, 13),
(20, 'k', 'in 1 mu {d}na-ra-am-{d}en.zu na-gab2 idigna.id2 u3 buranun.id2 ik-szu-du2 u3 <    kas.szudun=REC169 > sze3-nam-in-da-a{ki} isz11-a-ru', 'year', 20, NULL, NULL, 13),
(21, 'l', 'in 1 mu < szudun=REC448bis > lugal in \'a3-mar-nu-um i-li-ka3-am', 'year', 21, NULL, NULL, 13),
(22, 'm', 'in 1 mu {d}na-ra-am-{d}en.zu a-na {gisz}tir eren i-li-ku', 'year', 22, NULL, NULL, 13),
(23, 'n', 'in 1 mu {d}na-ra-am-{d}en.zu < kas.szudun=REC169 > â€¦-at{ki} â€¦-gal-at{ki} isz11-a-ru u3 szu-ma in kur am-na-an {gisz}erin ib-tu2-qam', 'year', 23, NULL, NULL, 13),
(24, 'o', 'mu {d}na-ra-am-{d}en.zu-e ka id2-e-erin-na-ka nibru-sze3 si im-mi-sa2-a', 'year', 24, NULL, NULL, 13),
(25, 'p', 'in 1 mu {d}na-ra-am-{d}en.zu a-na kaskal{ki} si-mu-ur4-ri2-im{ki} i-li-ku', 'year', 25, NULL, NULL, 13),
(26, 'q', 'in 1 mu {d}na-ra-am-{d}en.zu < szudun=REC448bis > si-mu-ur4-ri-im{ki} in ki-ra-sze3-ni-we{ki} isz11-a-ru u3 ba-ba ensi2 si-mu-ur4-ri-im{ki} dub-ul ensi2 a-ra-me{ki} ik-mi-u3', 'year', 26, NULL, NULL, 13),
(27, 'r', 'in 1 mu â€¦ ti-â€¦ bi2-bi2-â€¦ en-a-ru u3 < szudun=REC169 > sa-du2-a-tim in ha-szi-ma-ar.kur isz11-a-ru', 'year', 27, NULL, NULL, 13),
(28, 's', 'mu en-{d}nanna na-ra-am-{d}en.zu masz-e ib2-dib-ba', 'year', 28, NULL, NULL, 13),
(29, 't', 'mu na-ra-am-{d}en.zu-sze3', 'year', 29, NULL, NULL, 13),
(30, 'a', 'mu lugal a-ka3-de3{ki} ba-tusz-a', 'year', 30, NULL, NULL, 13),
(31, 'b', 'mu szar-ka3-li2-szar3-ri2 ki-gi-en{ki}-sze3 im-ta-e11-da hur-sag-ga2', 'year', 31, NULL, NULL, 13),
(32, 'c', 'mu szar-ka3-li2-szar3-ri2 ki-gi-en-sze3 im-ta-e11-da hur-sag-ga2 â€¦ mu us2-bi', 'year', 32, NULL, NULL, 13),
(33, 'd', 'mu szar-ka3-li2-szar3-ri2 puzur4-esz4-tar2 szagina e2-{d}en-lil2 du3-da bi2-gub-ba-a', 'year', 33, NULL, NULL, 13),
(34, 'e', 'mu szar-ka3-li2-szar3-ri2 puzur4-esz4-tar2 szagina e2-{d}en-lil2 du3-da bi2-gub-ba-a mu ab-us2-a', 'year', 34, NULL, NULL, 13),
(35, 'fa', 'in 1 mu szar-ka3-li2-szar3-ri2 usz-szi3 e2-{d}en-lil2 in nibru{ki} isz-ku-nu', 'year', 35, NULL, NULL, 13),
(36, 'fb', 'mu usz e2-{d}en-lil2-ka ab-gar', 'year', 36, NULL, NULL, 13),
(37, 'g', 'mu usz-szi3 e2-{d}en-lil2 nibru{ki}-a ki ab-gar-ra mu ab-us2-a', 'year', 37, NULL, NULL, 13),
(38, 'h', 'mu lugal szar-ka3-li2-szar3-ri2 â€¦ e2-{d}en-lil2-ke4 i3-du-â€¦', 'year', 38, NULL, NULL, 13),
(39, 'i', 'in 1 mu {d}szar-ka3-li2-szar3-ri2 su-zu-gal esz2-de2-a / kasz-de2-a ku3-sig17 {gisz}erin e2-{d}en-lil2 ib-tu-qu2', 'year', 39, NULL, NULL, 13),
(40, 'j', 'in 1 mu {d}szar-ka3-li2-szar3-ri2 usz-szi3 e2-an-nu-ni-tim u3 e2-{d}a-ba4 in ka2-   dingir{ki} isz-ku-nu u3 1 szar-la-ak lugal gu5-ti-im{ki} ik-mi-u3', 'year', 40, NULL, NULL, 13),
(41, 'ka', 'in 1 mu szar-ka3-li2-szar3-ri2 < kas.szudun=REC169 > mar-du2 isz11-a-ru', 'year', 41, NULL, NULL, 13),
(42, 'kb', 'in 1 mu szar-ka3-li2-szar3-ri2 kas mar-du2-am in ba-sza-ar.kur isz11-a-ru', 'year', 42, NULL, NULL, 13),
(43, 'kc', 'in 1 mu szar-ka3-li2-szar3-ri2 mar-du2-am isz11-a-ru', 'year', 43, NULL, NULL, 13),
(44, 'la', 'in 1 mu szar-ka3-li2-szar3-ri2 < kas.szudun=REC169 > elam{ki} / nim{ki} u3 za-ha-ra{ki} in pu-ti ud-uh2{ki} / akszak{ki} u3 sag-li isz-ku-nu isz11-a-ru', 'year', 44, NULL, NULL, 13),
(45, 'lb', 'in 1 mu szar-ka3-li2-szar3-ri2 < kas.szudun=REC169 > elam{ki} / nim{ki} u3 za-ha-ra{ki} isz11-a-ru', 'year', 45, NULL, NULL, 13),
(46, 'm', 'mu < kas.szudun=REC169 > gu-ti-um{ki} ba-gar-ra-a', 'year', 46, NULL, NULL, 13),
(47, 'n', 'in 1 mu szar-ka3-li2-szar3-ri2 â€¦ sag â€¦', 'year', 47, NULL, NULL, 13),
(48, 'o', 'in 1 mu szar-ka3-li2-szar3-ri2 â€¦-â€¦-ni a-ka3-de3{ki}', 'year', 48, NULL, NULL, 13),
(49, 'pa', 'in 1 mu {d}en-lil2 szar-ka3-li2-szar3-ri2 su â€¦ â€¦', 'year', 49, NULL, NULL, 13),
(50, 'pb', 'in 1 mu {d}en-lil2 szar-ka3-li2-szar3-ri2 su â€¦ su', 'year', 50, NULL, NULL, 13),
(51, 'q', 'mu szar-ka3-li2-szar3-ri2 lugal a-ka3-de3{ki}', 'year', 51, NULL, NULL, 13),
(52, 'r', 'in 1 mu szar-ka3-li2-szar3-ri2 â€¦', 'year', 52, NULL, NULL, 13),
(53, 'a', 'mu lugal a-ka3-de3 ba-dab5-a', 'year', 53, NULL, NULL, 13),
(54, 'b', 'mu asz2-na-ak{ki} al-hul-a', 'year', 54, NULL, NULL, 13),
(55, 'c', 'mu dumu-munus lugal e2-{d}en-lil2-sze3 im-gin-na-a', 'year', 55, NULL, NULL, 13),
(56, 'd', 'mu â€¦ e2-szu-gur-ra an-si-ga', 'year', 56, NULL, NULL, 13),
(57, 'e', 'mu â€¦ e2-gal-gana2-uz{ki} in-du3-a', 'year', 57, NULL, NULL, 13),
(58, 'f', 'mu â€¦ zur-zur â€¦ â€¦ e2-gal lugal in-du3-a', 'year', 58, NULL, NULL, 13),
(59, 'g', 'in 1 mu {d}id2-eden-na al ba-du3-a', 'year', 59, NULL, NULL, 13),
(60, 'h', 'mu {d}id2-am-si-har al-dun-a', 'year', 60, NULL, NULL, 13),
(61, 'i', 'mu {d}id2-akszak{ki} nibru{ki} i3-dar-a', 'year', 61, NULL, NULL, 13),
(62, 'ja', 'mu il2 sanga uru-sag-rig7 al-dab5-a', 'year', 62, NULL, NULL, 13),
(63, 'jb', 'mu il2 sanga uru-sag-rig7 i3-dib2-ba-a', 'year', 63, NULL, NULL, 13),
(64, 'k', 'mu ensi2 nibru{ki} uru-sag-rig7{ki}-da i3-da-tusz-a', 'year', 64, NULL, NULL, 13),
(65, 'l', 'mu â€¦ alan â€¦ al-â€¦-na-a', 'year', 65, NULL, NULL, 13),
(66, 'm', 'mu a-si-a-ab al-ak', 'year', 66, NULL, NULL, 13),
(67, 'n', 'mu ni3-za-na geme2-{d}en-lil2-la â€¦', 'year', 67, NULL, NULL, 13),
(68, 'o', 'mu lugal im-gin-a', 'year', 68, NULL, NULL, 13),
(69, '1', 'mu ur-dba-ba6 ensi2', 'year', 69, NULL, NULL, 15),
(70, 'a', 'mu gan2 muÅ¡-bi-edin-na a ba-de2-a', 'year', 70, NULL, NULL, 15),
(71, 'b', 'mu id2-giÅ¡-Å¡ub-ba ba-ba-al-la', 'year', 71, NULL, NULL, 15),
(72, 'c', 'mu e2-dnin-mar-ki-ka gu2-ab-baki-ka ba-du3-a', 'year', 72, NULL, NULL, 15),
(73, 'd', 'mu e2-den-ki giÅ¡-kin-ti ba-du3-a', 'year', 73, NULL, NULL, 15),
(74, 'e*', 'mu gibil us2-sa mu e2-den-ki-ga ba-du3-a', 'year', 74, NULL, NULL, 15),
(75, 'e', 'mu e2-dnin-a2-gal ba-du3-a', 'year', 75, NULL, NULL, 15),
(76, '1', 'mu gu3-de2-a ensi2', 'year', 76, NULL, NULL, 15),
(77, '2', 'mu id2-dnin-gir2-su-uÅ¡umgal ba-ba-al-la', 'year', 77, NULL, NULL, 15),
(78, '3', 'mu balag uÅ¡umgal-kalam-ma ba-dim2-ma', 'year', 78, NULL, NULL, 15),
(79, '4', 'mu giÅ¡Å¡ar2-ur3-ra ba-du3-a', 'year', 79, NULL, NULL, 15),
(80, '5', 'mu nin za-bu-ka', 'year', 80, NULL, NULL, 15),
(81, '6', 'mu anÅ¡anki giÅ¡tukul ba-sig3-a', 'year', 81, NULL, NULL, 15),
(82, '7', 'mu giÅ¡u5-Å¡ub-ba / giÅ¡u3-Å¡ub-ba ba-dim2-ma', 'year', 82, NULL, NULL, 15),
(83, '8', 'mu sig4 dnin-gir2-su-ka giÅ¡u3-Å¡ub-ba ba-gar-ra', 'year', 83, NULL, NULL, 15),
(84, '9', 'mu sig4 dnin-gir2-su-ka us2-sa', 'year', 84, NULL, NULL, 15),
(85, '10', 'mu e2-dnin-gir2-su-ka ba-du3-a', 'year', 85, NULL, NULL, 15),
(86, '11', 'mu geÅ¡gu-za dnanÅ¡e ba-dim2-ma', 'year', 86, NULL, NULL, 15),
(87, '12', 'mu e2-dba-ba6 ba-du3-a', 'year', 87, NULL, NULL, 15),
(88, '13', 'mu nin-dingir-d[â€¦]', 'year', 88, NULL, NULL, 15),
(89, '14', 'mu Å¡ita2 sag-ninnu dnin-gir2-su-ka ba-dim2-ma', 'year', 89, NULL, NULL, 15),
(90, '15', 'mu e2-dnin-dar-a ba-du3-a', 'year', 90, NULL, NULL, 15),
(91, '16a', 'mu mi-i3-á¹­um sag-ninnu ba-dim2-ma', 'year', 91, NULL, NULL, 15),
(92, '16b', 'mu giÅ¡tukul ur-sag-ninnu ba-dim2-ma', 'year', 92, NULL, NULL, 15),
(93, '17', 'mu i7 pirig-gim-du ba-ba-al-la', 'year', 93, NULL, NULL, 15),
(94, '18', 'mu e2-dga2-tum3-du10 ba-du3-a', 'year', 94, NULL, NULL, 15),
(95, '19', 'mu lu2-mah-dinanna maÅ¡-e i3-pa3', 'year', 95, NULL, NULL, 15),
(96, '20', 'mu e2-ba-gara2 ba-du3-a', 'year', 96, NULL, NULL, 15),
(97, '1', 'mu ur-dnin-gir2-su ensi2', 'year', 97, NULL, NULL, 15),
(98, '2', 'mu ur-dnin-gir2-su ensi2 mu us2-a-bi', 'year', 98, NULL, NULL, 15),
(99, 'a', 'mu Å¡ita2-ab-ba maÅ¡-e pad3-da', 'year', 99, NULL, NULL, 15),
(100, 'b', 'mu lu2-mah-dba-ba6 maÅ¡-e pad3-da', 'year', 100, NULL, NULL, 15),
(101, 'ca', 'mu nin-dingir-diÅ¡kur maÅ¡-e ba-pad3-da', 'year', 101, NULL, NULL, 15),
(102, 'cb', 'mu nin-dingir-diÅ¡kur maÅ¡2-e i3-pad3 sza3 e2-ar3-ar3', 'year', 102, NULL, NULL, 15),
(103, 'd', 'mu gu-za-la2 dnin-gir2-su', 'year', 103, NULL, NULL, 15),
(104, 'e', 'mu unugki ba-hul-a', 'year', 104, NULL, NULL, 15),
(105, '1', 'mu ka-ku3 ensi2', 'year', 105, NULL, NULL, 15),
(106, '1', 'mu lu2-gu-la ensi2', 'year', 106, NULL, NULL, 15),
(107, '1', 'mu lu2-{d}ba-ba6 ensi2', 'year', 107, NULL, NULL, 15),
(108, '1', 'mu ur-gar ensi2', 'year', 108, NULL, NULL, 15),
(109, '1', 'mu ur-ma-ma ensi2', 'year', 109, NULL, NULL, 15),
(110, '1', 'mu pirig-me3 ensi2', 'year', 110, NULL, NULL, 15),
(111, 'a', 'mu en ninaki ba-gub-ba', 'year', 111, NULL, NULL, 15),
(112, 'b', 'mu sagÅ¡u-pirig-me3 dnin-gir2-su ba-dim2-ma', 'year', 112, NULL, NULL, 15),
(113, 'c', 'mu ki-sur-ra ba-tag4-a', 'year', 113, NULL, NULL, 15),
(114, 'd', 'mu eÅ¡2-gan2-lugal Å¡a3 gir2-suki-ke4 ba-ta-e3', 'year', 114, NULL, NULL, 15),
(115, 'e', 'mu giÅ¡keÅ¡2-ra2 abul dba-ba6-ka ba-du3-a', 'year', 115, NULL, NULL, 15),
(116, 'f', 'mu iÅ¡ib-dnin-gir2-su maÅ¡-e i3-pad3-da', 'year', 116, NULL, NULL, 15),
(117, '1', 'mu nam-mah-ni ensi2', 'year', 117, NULL, NULL, 15),
(118, '2', 'mu nam-mah-ni us2-sa', 'year', 118, NULL, NULL, 15),
(119, '1', 'mu ur-ab-ba ensi2', 'year', 119, NULL, NULL, 15),
(120, 'a', 'mu ul3-ul3 sze lagaÅ¡ki giÅ¡ bi2-ra-a', 'year', 120, NULL, NULL, 15),
(121, 'b', 'mu e2-muhaldim dnin-Å¡ubur ba-du3-a', 'year', 121, NULL, NULL, 15),
(122, 'c', 'mu id2-dba-ba6-he2-gal2-sud ba-ba-al-la', 'year', 122, NULL, NULL, 15),
(123, '1', 'mu {d}utu-he2-gal2 lugal', 'year', 123, NULL, 4, 8),
(124, '1', 'mu ur-dnamma lugal', 'year', 124, NULL, NULL, 20),
(125, 'b', 'mu ur-dnamma lugal-e sig-ta igi-nim-Å¡e3 giri3 si bi2-sa2-a', 'year', 125, NULL, NULL, 20),
(126, 'c', 'mu ur-{d}namma nig2-si-sa2 kalam-ma mu-ni-gar', 'year', 126, NULL, NULL, 20),
(127, 'd', 'mu en-dinanna unuki-a dumu ur-dnamma lugal-a maÅ¡-e ba-pa3-da', 'year', 127, NULL, NULL, 20),
(128, 'e', 'mu bad3 uri2ki ba-du3-a', 'year', 128, NULL, NULL, 20),
(129, 'f', 'mu lugal-e nibruki-ta nam-lugal Å¡u ba-ti-a', 'year', 129, NULL, NULL, 20),
(130, 'g', 'mu e2 dnanna ba-du3-a', 'year', 130, NULL, NULL, 20),
(131, 'h', 'mu en dnanna maÅ¡-e ba-pa3-da', 'year', 131, NULL, NULL, 20),
(132, 'i', 'mu i7-a-dnin-tu ba-al', 'year', 132, NULL, NULL, 20),
(133, 'j', 'mu nin-dingir diÅ¡kur maÅ¡-e pa3-da', 'year', 133, NULL, NULL, 20),
(134, 'k', 'mu gu-ti-umki ba-hul', 'year', 134, NULL, NULL, 20),
(135, 'l', 'mu e2 dnin-sun2 uri2ki-a ba-du3-a', 'year', 135, NULL, NULL, 20),
(136, 'm', 'mu e2 den-lil2-la2 ba-du3-a', 'year', 136, NULL, NULL, 20),
(137, 'n', 'mu i7-en-erin2-nun ba-ba-al-la', 'year', 137, NULL, NULL, 20),
(138, 'o', 'mu geÅ¡gigir dnin-lil2 ba-dim2-ma', 'year', 138, NULL, NULL, 20),
(139, 'p', 'mu dlugal-ba-gara2 e2-a-na ku4-ra', 'year', 139, NULL, NULL, 20),
(140, 'q', 'mu dlugal-ba-gara2 e2-a ku4-ra us2-sa', 'year', 140, NULL, NULL, 20),
(141, '1', 'mu Å¡ul-gi lugal', 'year', 141, NULL, NULL, 20),
(142, '2', 'mu us2 e2 dnin-gubalag ki ba-a-gar', 'year', 142, NULL, NULL, 20),
(143, '3', 'mu Å¡ul-gi lugal uri2ki-ma-ke4 geÅ¡gu-za za-gin3 den-lil2-ra i-na-ku4-ra', 'year', 143, NULL, NULL, 20),
(144, '4', 'mu us2 e2-dnin-urta ki ba-a-gar', 'year', 144, NULL, NULL, 20),
(145, '5a', 'mu us2 e2-dnin-urta us2-sa', 'year', 145, NULL, NULL, 20),
(146, '5b', 'mu bad3 gal e2-an-na ba-du3-a', 'year', 146, NULL, NULL, 20),
(147, '6', 'mu lugal-e giri3 nibruki si bi2-sa2-a', 'year', 147, NULL, NULL, 20),
(148, '7', 'mu lugal-e uri2ki-ta nibruki-Å¡e3 Å¡u in-nigin2', 'year', 148, NULL, NULL, 20),
(149, '8', 'mu ma2-gur8 dnin-lil2-la2 ba-ab-du8', 'year', 149, NULL, NULL, 20),
(150, '9a', 'mu ma2 dnin-lil2-la2-ke4 us2-sa', 'year', 150, NULL, NULL, 20),
(151, '9b', 'mu dnanna kar-zi-daki e2-a-ni ku4', 'year', 151, NULL, NULL, 20),
(152, '10', 'mu e2-hur-sag lugal ba-du3', 'year', 152, NULL, NULL, 20),
(153, '11', 'mu diÅ¡taran bad3-anki derki e2-a-na ba-ku4', 'year', 153, NULL, NULL, 20),
(154, '12', 'mu dnu-muÅ¡-da ka-zal-luki e2-a-na ba-ku4', 'year', 154, NULL, NULL, 20),
(155, '13', 'mu e2-hal-bi lugal ba-du3', 'year', 155, NULL, NULL, 20),
(156, '14', 'mu dnanna nibruki e2-a ba-ku4', 'year', 156, NULL, NULL, 20),
(157, '15', 'mu en-nir-si2-an-na en-dnanna maÅ¡2-e i3-pa3', 'year', 157, NULL, NULL, 20),
(158, '16', 'mu geÅ¡na2 dnin-lil2-la2 ba-dim2', 'year', 158, NULL, NULL, 20),
(159, '17a', 'mu geÅ¡na2 dnin-lil2-la2 us2-sa', 'year', 159, NULL, NULL, 20),
(160, '17b', 'mu en-nir-si2-an-na en-dnanna ba-hun-ga2', 'year', 160, NULL, NULL, 20),
(161, '18', 'mu li2-wir-mi-ta2-Å¡u dumu-munus lugal nam-nin mar-ha-Å¡iki-Å¡e3 ba-il2', 'year', 161, NULL, NULL, 20),
(162, '19', 'mu EZENxKU3ki bad3ki ki-be2 ba-ab-gi4', 'year', 162, NULL, NULL, 20),
(163, '20a', 'mu dnin-hur-sag-ga2 nu-tur e2-a-na ba-an-ku4', 'year', 163, NULL, NULL, 20),
(164, '20b', 'mu dumu uri2ki-ma lu2 geÅ¡gid2-Å¡e3 ka ba-ab-keÅ¡2', 'year', 164, NULL, NULL, 20),
(165, '21a', 'mu dnin-urta ensi2 gal den-lil2-la2-ke4 eÅ¡-bar kin ba-an-du11-ga a-Å¡a3 nig2-ka9 den-lil2 dnin-lil2-ra si bi2-in-sa2-sa2-a', 'year', 165, NULL, NULL, 20),
(166, '21b', 'mu dnin-urta ensi2 gal den-lil2-la2-ke4 e2 den-lil2 dnin-lil2-la2-ke4 eÅ¡-bar kin ba-an-du11-ga dÅ¡ul-gi lugal uri5ki-ma-ke4 gan2 nig2-ka9 Å¡a3 e2 den-lil2 dnin-lil2-la2-ke4 si bi2-sa2-a', 'year', 166, NULL, NULL, 20),
(167, '21c', 'mu BAD3-ANki (= Der) ba-hul', 'year', 167, NULL, NULL, 20),
(168, '21d', 'mu nig2-ka9 ak al-la', 'year', 168, NULL, NULL, 20),
(169, '22a', 'mu us2-sa dnin-urta ensi2 gal den-lil2-la2-ke4 e2-den-lil2dnin-lil2-la2-ke4 eÅ¡-bar kin ba-an-du11-ga dÅ¡ul-gi lugal uri2ki-ma-ke4 gan2 nig2-ka9 Å¡a3 e2 den-lil2 dnin-lil2-la2-ke4 si bi2-sa2-a', 'year', 169, NULL, NULL, 20),
(170, '22b', 'mu us2-sa bad3-anki derki ba-hul', 'year', 170, NULL, NULL, 20),
(171, '22c', 'mu nig2-ka9 ak al-la-ke4 mu us2-sa-bi', 'year', 171, NULL, NULL, 20),
(172, '23a', 'mu us2-sa nig2-ka9-ak al-la-ka mu us2-sa-bi', 'year', 172, NULL, NULL, 20),
(173, '23b', 'mu dÅ¡ul-gi lugal-e a2 mah den-lil2 sum-ma-ni â€¦', 'year', 173, NULL, NULL, 20),
(174, '24', 'mu kar2-harki ba-hul', 'year', 174, NULL, NULL, 20),
(175, '25a', 'mu us2-sa kar2-harki ba-hul', 'year', 175, NULL, NULL, 20),
(176, '25b', 'mu si-mu-ru-umki ba-hul', 'year', 176, NULL, NULL, 20),
(177, '26a', 'mu us2-sa si-mu-ru-umki ba-hul', 'year', 177, NULL, NULL, 20),
(178, '26b', 'mu si-mu-ru-umki a-ra2 2-kam-ma-aÅ¡ ba-hul', 'year', 178, NULL, NULL, 20),
(179, '27a', 'mu Å¡ul-gi nita kal-ga lugal an ub-da limmu2-ba-ke4 si-mu-ur4-umki a-ra2 2-kam-aÅ¡ mu-hul-a mu us2-sa-bi', 'year', 179, NULL, NULL, 20),
(180, '27b', 'mu ha-ar-Å¡iki ba-hul', 'year', 180, NULL, NULL, 20),
(181, '28a', 'mu en nam-Å¡ita4 dÅ¡ul-gi-ra-ke4 ba-gub-ba-Å¡e3 Å¡ud3-sag en-den-ki eriduki-ga dumu Å¡ul-gi nita kal-ga lugal uri2ki-ma lugal an ub-da limmu2-ba-ke4 ba-a-hun', 'year', 181, NULL, NULL, 20),
(182, '28b', 'mu en-nam-Å¡ita4 dÅ¡ul-gi-ra-ke4 ba-gub en-den-ki eriduki-ga dumu dÅ¡ul-gi nita kal-ga lugal uri2ki-ma lugal an ub-da limmu2-ba-ka ba-a-hun', 'year', 182, NULL, NULL, 20),
(183, '29', 'mu us2-sa en nam-Å¡ita4 dÅ¡ul-gi-ra-ke4 ba-gub-ba-Å¡e3Å¡ud3-sag en-den-ki eriduki-ga dumu Å¡ul-gi nita kal-ga lugal uri2ki-ma lugal an ub-da limmu2-ba-ke4 ba-a-hun', 'year', 183, NULL, NULL, 20),
(184, '30a', 'mu dumu-munus lugal ensi2 an-Å¡a-anki-ke4 ba-an-tuku', 'year', 184, NULL, NULL, 20),
(185, '30b', 'mu dumu-munus lugal ensi2 an-Å¡a-anki-ke4 ba-an-du', 'year', 185, NULL, NULL, 20),
(186, '31a', 'mu us2-sa dumu-munus lugal ensi2 an-Å¡a-anki-ke4 ba-an-tuku', 'year', 186, NULL, NULL, 20),
(187, '31b', 'mu kar2-harki a-ra2 2-kam-aÅ¡ ba-hul', 'year', 187, NULL, NULL, 20),
(188, '32', 'mu si-mu-ru-umki a-ra2 3-kam-aÅ¡ ba-hul', 'year', 188, NULL, NULL, 20),
(189, '33a', 'mu us2-sa si-mu-ru-umki a-ra2 3-kam-aÅ¡ ba-hul', 'year', 189, NULL, NULL, 20),
(190, '33b', 'mu kar2-harki a-ra2 3-kam-aÅ¡ ba-hul', 'year', 190, NULL, NULL, 20),
(191, '34a', 'mu us2-sa kar2-harki a-ra2 3-kam-aÅ¡ ba-hul', 'year', 191, NULL, NULL, 20),
(192, '34b', 'mu us2-sa a-ra2 3-kam-aÅ¡ si-mu-ru-umki ba-hul mu us2-sa-bi', 'year', 192, NULL, NULL, 20),
(193, '34c', 'mu an-Å¡a-anki ba-hul', 'year', 193, NULL, NULL, 20),
(194, '35', 'mu us2-sa an-Å¡a-anki ba-hul', 'year', 194, NULL, NULL, 20),
(195, '36a', 'mu us2-sa an-Å¡a-anki ba-hul mu us2-sa-bi', 'year', 195, NULL, NULL, 20),
(196, '36b', 'mu dnanna ga-eÅ¡ki e2-ba-a ba-ku4', 'year', 196, NULL, NULL, 20),
(197, '36c', '(Drehem) mu dnanna kar-zi-daki a-ra2 2-kam-aÅ¡ e2-a-na ba-an-ku4', 'year', 197, NULL, NULL, 20),
(198, '36d', '(Lagash) mu dnanna kar-zi-daki e2-a-na ba-an-ku4', 'year', 198, NULL, NULL, 20),
(199, '36e', '(Nippur) mu dnanna kar-zi-daki a-ra2 2-kam-ma-Å¡e3 e2-a-na ba-an-ku4', 'year', 199, NULL, NULL, 20),
(200, '36f', '(Umma) mu dnanna kar-zi-daki a-ra2 2-kam e2-a-na ba-an-ku4', 'year', 200, NULL, NULL, 20),
(201, '36g', '(Ur) mu dnanna kar-zi-daki e2-nun-na-Å¡e3 agrun-na-Å¡e3', 'year', 201, NULL, NULL, 20),
(202, '37a', 'mu us2-sa dnanna kar-zi-daki a-ra2 2-kam e2-a-na ba-an-ku4', 'year', 202, NULL, NULL, 20),
(203, '37b', 'mu dnanna u3 dÅ¡ul-gi lugal-e bad3 ma-da mu-du3', 'year', 203, NULL, NULL, 20),
(204, '37c', 'mu bad3 ma-da ba-du3', 'year', 204, NULL, NULL, 20),
(205, '38', 'mu us2-sa bad3 ma-da ba-du3', 'year', 205, NULL, NULL, 20),
(206, '39a', 'mu us2-sa bad3 ma-da ba-du3 mu us2-sa-bi', 'year', 206, NULL, NULL, 20),
(207, '39b', 'mu dÅ¡ul-gi lugal uri2ki-ma-ke4 lugal an ub-da limmu2-ba-ke4 e2-|PU3.SZA|-iÅ¡-dda-ganki e2-dÅ¡ul-gi-ra mu-du3', 'year', 207, NULL, NULL, 20),
(208, '40', 'mu us2-sa e2-|PU3.SZA|-iÅ¡-dda-ganki ba-du3-a', 'year', 208, NULL, NULL, 20),
(209, '41', 'mu us2-sa e2-|PU3.SZA|-iÅ¡-dda-ganki ba-du3-a mu us2-sa-a-bi', 'year', 209, NULL, NULL, 20),
(210, '42a', 'mu us2-sa e2-|PU3.SZA|-iÅ¡-dda-ganki ba-du3-a mu us2-sa-a-ba mu us2-sa-a-bi', 'year', 210, NULL, NULL, 20),
(211, '42b', 'mu lugal-e Å¡a-aÅ¡-ru-umki mu-hul', 'year', 211, NULL, NULL, 20),
(212, '43a', 'mu us2-sa Å¡a-aÅ¡-ru-umki ba-hul', 'year', 212, NULL, NULL, 20),
(213, '43b', 'mu en-ubur-zi-an-na en-dnanna maÅ¡-e maÅ¡2-e i3-pa3', 'year', 213, NULL, NULL, 20),
(214, '44a', 'mu us2-sa en-dnanna maÅ¡-e maÅ¡2-e i3-pa3', 'year', 214, NULL, NULL, 20),
(215, '44b', 'mu si-mu-ru-umki u3 lu-lu-bu-um/bum2ki a-ra2 1(u) la21(asz@45)-kam-aÅ¡ ba-hul', 'year', 215, NULL, NULL, 20),
(216, '45a', 'mu us2-sa si-mu-ru-umki u3 lu-lu-bu-umki a-ra2 9-kam-aÅ¡ ba-hul', 'year', 216, NULL, NULL, 20),
(217, '45b', 'mu dÅ¡ul-gi nita kal-ga lugal uri2ki-ma lugal an ub-da limmu2-ba-ke4 ur-bi2-lumki si-mu-ru-umki lu-lu-buki u3 kar2-harki 1-Å¡e3 sag-du-bi Å¡u-bur2-a bi2-ra-a / im-mi-ra', 'year', 217, NULL, NULL, 20),
(218, '45c', 'mu si-mu-ru-umki lu-lu-buki a-ra2 9-kam ba-hul', 'year', 218, NULL, NULL, 20),
(219, '46a', 'mu us2-sa ur-bi2-lumki ba-hul', 'year', 219, NULL, NULL, 20),
(220, '46b', 'mu dÅ¡ul-gi nita kal-ga lugal uri2ki-ma lugal an ub-da limmu2-ba-ke4 ki-maÅ¡ki hu-ur5-tiki u3 ma-da-bi u4 1-a mu-hul', 'year', 220, NULL, NULL, 20),
(221, '47a', 'mu us2-sa ki-maÅ¡ki ba-hul', 'year', 221, NULL, NULL, 20),
(222, '47b', 'mu dÅ¡ul-gi nita kal-ga lugal uri2ki-ma lugal an ub-da limmu2-ba-ke4 ki-maÅ¡ki hu-ur5-tiki u3 ma-da-bi u4 1-a mu-hul-a mu us2-sa-bi', 'year', 222, NULL, NULL, 20),
(223, '48a', 'mu us2-sa ki-maÅ¡ki ba-hul mu us2-sa-a-bi', 'year', 223, NULL, NULL, 20),
(224, '48b', 'mu ha-ar-Å¡iki ki-maÅ¡ki hu-ur5-tiki u3 ma-da-bi u4 1-bi ba-hul', 'year', 224, NULL, NULL, 20),
(225, '48c', 'mu ki-maÅ¡ki a-ra2 2-kam ba-hul', 'year', 225, NULL, NULL, 20),
(226, '48d', 'mu 2-kam ha-ar-Å¡iki ba-hul', 'year', 226, NULL, NULL, 20),
(227, '1a', 'mu damar-dsuen lugal-am3', 'year', 227, NULL, NULL, 20),
(228, '1b', 'mu us2-sa ha-ar-Å¡iki u3 ki-maÅ¡ki ba-hul', 'year', 228, NULL, NULL, 20),
(229, '2a', 'mu damar-dsuen lugal-e ur-bi2-lumki mu-hul', 'year', 229, NULL, NULL, 20),
(230, '2b', 'mu us2-sa damar-dsuen lugal', 'year', 230, NULL, NULL, 20),
(231, '3a', 'mu us2-sa damar-dsuen lugal-e ur-bi2-lumki mu-hul', 'year', 231, NULL, NULL, 20),
(232, '3b', 'mu damar-dsuen lugal-e dgu-za mah den-lil2-la2 Å¡a3hul2-la in-dim2', 'year', 232, NULL, NULL, 20),
(233, '4a', 'mu us2-sa dgu-za mah / Å¡a3 hul2-la den-lil2-la2 ba-dim2', 'year', 233, NULL, NULL, 20),
(234, '4b', 'mu en-mah-gal-an-na en-dnanna ba-hun-ga2', 'year', 234, NULL, NULL, 20),
(235, '4c', 'mu en-mah-gal-an-na en-dnanna maÅ¡2-e i3-pa3', 'year', 235, NULL, NULL, 20),
(236, '4d', 'mu en-dnanna damar-dsuen-ra-ki-ag2-an-na maÅ¡2-e i3-pa3', 'year', 236, NULL, NULL, 20),
(237, '5a', 'mu us2-sa en-mah-gal-an-na en-dnanna ba-hun', 'year', 237, NULL, NULL, 20),
(238, '5b', 'mu en-unu6-gal-an-na / en-u3-nu-gal-an-na en-dinanna unuki-ga ba-hun', 'year', 238, NULL, NULL, 20),
(239, '6a', 'mu us2-sa en-unu6-gal-an-na en-dinanna unuki-ga ba-hun', 'year', 239, NULL, NULL, 20),
(240, '6b', 'mu damar-dsuen lugal-e Å¡a-aÅ¡-ru-umki a-ra2 2(diÅ¡)-kam u3 Å¡u-ru-ud-hu-umki mu-hul', 'year', 240, NULL, NULL, 20),
(241, '7a', 'mu us2-sa Å¡a-aÅ¡-ru-umki ba-hul', 'year', 241, NULL, NULL, 20),
(242, '7b', 'mu damar-dsuen lugal-e bi2-tum-ra-bi2-umki i3-ab-rukima-da ma-da-bi u3 hu-uh2-nu-riki mu-hul', 'year', 242, NULL, NULL, 20),
(243, '8a', 'mu us2-sa hu-uh2-nu-riki ba-hul', 'year', 243, NULL, NULL, 20),
(244, '8b', 'mu en-nun-gal-an-na / en-nun-e-damar-dsuen ki-ag2 en eriduki ba-hun', 'year', 244, NULL, NULL, 20),
(245, '8c', 'mu en-nun-ne2-ki-ag2', 'year', 245, NULL, NULL, 20),
(246, '9a', 'mu us2-sa en-nun-ne2-ki-ag2', 'year', 246, NULL, NULL, 20),
(247, '9b', 'mu us2-sa en eriduki ba-hun-ga2', 'year', 247, NULL, NULL, 20),
(248, '9c', 'mu en-dnanna-damar-dsuen-ki-ag2-ra en-dnanna ga-eÅ¡ki/ kar-zi-daki-ka a-ra2 3(diÅ¡)-kam ba-hun', 'year', 248, NULL, NULL, 20),
(249, '1a', 'mu us2-sa en-dnanna kar-zi-daki-ka ba-hun', 'year', 249, NULL, NULL, 20),
(250, '1b', 'mu dÅ¡u-dsuen lugal-am3', 'year', 250, NULL, NULL, 20),
(251, '2a', 'mu us2-sa dÅ¡u-dsuen lugal', 'year', 251, NULL, NULL, 20),
(252, '2b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 ma2 dara3-abzu den-ki in-dim2 mu-du8', 'year', 252, NULL, NULL, 20),
(253, '3a', 'mu us2-sa ma2 dara3-abzu den-ki ba-ab-du8 ba-dim2', 'year', 253, NULL, NULL, 20),
(254, '3b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 si-ma-num2kimu-hul', 'year', 254, NULL, NULL, 20),
(255, '4a', 'mu us2-sa dÅ¡u-dsuen lugal uri2ki-ma-ke4 si-ma-num2ki mu-hul', 'year', 255, NULL, NULL, 20),
(256, '4b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 bad3 mar-tu mu-ri-iq ti-id-ni-im mu-du3', 'year', 256, NULL, NULL, 20),
(257, '5', 'mu us2-sa dÅ¡u-dsuen lugal uri2ki-ma-ke4 bad3 mar-tu mu-ri-iq ti-id-ni-im mu-du3', 'year', 257, NULL, NULL, 20),
(258, '6a', 'mu us2-sa dÅ¡u-dsuen lugal uri2ki-ma-ke4 bad3mar-tu mu-ri-iq ti-id-ni-im mu-du3 mu us2-sa-a-bi', 'year', 258, NULL, NULL, 20),
(259, '6b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 na-ru2-a mah den-lil2 dnin-lil2-ra mu-ne-du3', 'year', 259, NULL, NULL, 20),
(260, '7a', 'mu us2-sa dÅ¡u-dsuen lugal-e na-ru2-a mah mu-du3', 'year', 260, NULL, NULL, 20),
(261, '7b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 lugal an ub-da 4-ba ma-da za-ab-Å¡a-liki mu-hul', 'year', 261, NULL, NULL, 20),
(262, '8a', 'mu us2-sa ma-da za-ab-Å¡a-liki ba-hul', 'year', 262, NULL, NULL, 20),
(263, '8b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 ma2-gur8 mah den-lil2 dnin-lil2-ra mu-ne-dim2', 'year', 263, NULL, NULL, 20),
(264, '9a', 'mu us2-sa dÅ¡u-dsuen lugal uri2ki-ma-ke4 ma2-gur8mah den-lil2 dnin-lil2-ra mu-ne-dim2', 'year', 264, NULL, NULL, 20),
(265, '9b', 'mu dÅ¡u-dsuen lugal uri2ki-ma-ke4 e2-dÅ¡ara2ummaki-ka mu-du3', 'year', 265, NULL, NULL, 20),
(266, '1a', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 e2-dÅ¡ara2 ummakimu-du3', 'year', 266, NULL, NULL, 20),
(267, '1b', 'mu di-bi2-dsuen lugal', 'year', 267, NULL, NULL, 20),
(268, '2a', 'mu us2-sa di-bi2-dsuen lugal', 'year', 268, NULL, NULL, 20),
(269, '2b', 'mu en-dinanna unuki maÅ¡2-e i3-pa3', 'year', 269, NULL, NULL, 20),
(270, '3a', 'mu us2-sa en-dinanna unuki-ga maÅ¡2-e i3-pa3', 'year', 270, NULL, NULL, 20),
(271, '3b', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 si-mu-ru-umki mu-hul', 'year', 271, NULL, NULL, 20),
(272, '4a', 'mu us2-sa si-mu-ru-umki ba-hul', 'year', 272, NULL, NULL, 20),
(273, '4b', 'mu en-am-gal-an-na en-dinanna ba-hun', 'year', 273, NULL, NULL, 20),
(274, '5', 'mu tu-ki-in-hat,t,i-mi-ig-ri2-Å¡a dumu-munus lugal ensi2za-ab-Å¡a-liki-ke4 ba-an-tuku', 'year', 274, NULL, NULL, 20),
(275, '6a', 'mu us2-sa dumu-munus lugal ensi2 za-ab-sha-liki ba-an-tuku', 'year', 275, NULL, NULL, 20),
(276, '6b', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 nibruki uri2ki-ma-ke4bad3 gal-bi mu-du3', 'year', 276, NULL, NULL, 20),
(277, '7', 'mu us2-sa bad3 gal nibruki ba-du3', 'year', 277, NULL, NULL, 20),
(278, '8', 'mu us2-sa bad3 gal ba-du3 us2-sa-bi', 'year', 278, NULL, NULL, 20),
(279, '9', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 hu-uh2-nu-riki sag-kul ma-da an-Å¡a-anki-Å¡e3 â€¦ dugud ba-Å¡i-in-gen â€¦-gin7 bi â€¦', 'year', 279, NULL, NULL, 20),
(280, '10', 'mu en-nir-si3-an-na en-dinanna maÅ¡2-e in-pa3', 'year', 280, NULL, NULL, 20),
(281, '11a', 'mu en-nam-Å¡ita4 di-bi2-dsuen-sze3 szud3-sag en-den-ki eriduki-ga masz-e in-pa3', 'year', 281, NULL, NULL, 20),
(282, '11b', 'mu en-nam-szita4 en eriduki ba-hun', 'year', 282, NULL, NULL, 20),
(283, '12', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 gu-za an dnanna-ra mu-na-dim2', 'year', 283, NULL, NULL, 20),
(284, '13', 'mu us2-sa di-bi2-dsuen lugal uri2ki-ma-ke4 gu-za an dnanna-ra mu-na-dim2', 'year', 284, NULL, NULL, 20),
(285, '14', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 Å¡uÅ¡anki a-dam-dunkia-wa-anki u4-gin7 ka bi-in-gi4 u4 1(diÅ¡)-a mu-un-gur2 en-bi lu2-a mi-ni-in-dab5-ba-a', 'year', 285, NULL, NULL, 20),
(286, '15', 'mu di-bi2-dsuen lugal uri2ki-ma-ra dnanna-a Å¡a3 ki-ag2-ga2-ni dalla mu-un-na-an-e3-a', 'year', 286, NULL, NULL, 20),
(287, '16', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 dnanna-ar dnun-me-te-an-na mu-na-dim2', 'year', 287, NULL, NULL, 20),
(288, '17', 'mu di-bi2-dsuen lugal uri2ki-ma-ra mar-tu a2 tu15u19-<lu> ul-ta iriki nu zu gu2 im-ma-an-ga2-ar', 'year', 288, NULL, NULL, 20),
(289, '18', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 dnin-lil2 u3 dinanna e2-Å¡utum2 e2-gi-na-ab-tum ku3 mu-ne-du3', 'year', 289, NULL, NULL, 20),
(290, '19', 'mu us2-sa di-bi2-dsuen lugal uri2ki-ma-ke4 dnin-lil2 u3dinanna e2-Å¡utum2 e2-gi-na-ab-tum ku3 mu-ne-du3', 'year', 290, NULL, NULL, 20),
(291, '20', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 den-lil2-le me-lam2-ma-ni kur-kur-ra bi2-in-dul4', 'year', 291, NULL, NULL, 20),
(292, '21', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 dnin-igi-zi-bar-ra balag dinanna-ra mu-na-dim2', 'year', 292, NULL, NULL, 20),
(293, '22', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 a-ma-ru nig2-du11-ga dingir-re-ne-ke4 za3 an-ki im-suh3-suh3-a uri2ki uru2ki tab-ba bi2-in-ge-en', 'year', 293, NULL, NULL, 20),
(294, '23', 'mu di-bi2-dsuen lugal uri2ki-ma-ra ugu-dul5-bi dugud kur-be2 mu-na-e-ra', 'year', 294, NULL, NULL, 20),
(295, '24', 'mu di-bi2-dsuen lugal uri2ki-ma-ke4 â€¦ bi2-ra', 'year', 295, NULL, NULL, 20),
(296, 'a', 'mu den-ki ga-Å¡a e2-an-na ba-an-ku4', 'year', 296, NULL, NULL, 20),
(297, 'b', 'mu e2 dne3-eri11 ba-du3', 'year', 297, NULL, NULL, 20),
(298, '1', 'mu', 'year', 298, NULL, NULL, NULL),
(299, '2', 'mu', 'year', 299, NULL, NULL, NULL),
(300, '3', 'mu', 'year', 300, NULL, NULL, NULL),
(301, '4', 'mu gir13-tabki ba-hul', 'year', 301, NULL, NULL, NULL),
(302, '5', 'mu us2-sa gir13-tabki ba-hul', 'year', 302, NULL, NULL, NULL),
(303, '6', 'mu geÅ¡na2 dinanna ba-dim2', 'year', 303, NULL, NULL, NULL),
(304, '7', 'mu nin-dingir-dnin-urta ba-hun (var. ba-il2)', 'year', 304, NULL, NULL, NULL),
(305, '8', 'mu iriki mar-tu ba-hul', 'year', 305, NULL, NULL, NULL),
(306, '9', 'mu us2-sa iriki mar-tu ba-hul', 'year', 306, NULL, NULL, NULL),
(307, '10', 'mu a-Å¡a3 gibil a-ta im-Å¡a-du-a / im-ta-du-a', 'year', 307, NULL, NULL, NULL),
(308, '11', 'mu nin-dingir-diÅ¡kur ba-il2', 'year', 308, NULL, NULL, NULL),
(309, '12a', 'mu diÅ¡-bi-er3-ra lugal ma-da-na-ke4 bad3 gal i-ti-il-pa2-Å¡u-nu mu-du3', 'year', 309, NULL, NULL, NULL),
(310, '12b', 'mu bad3 gal i3-si-in-naki mu-du3', 'year', 310, NULL, NULL, NULL),
(311, '13', 'mu en-du8 dinanna diÅ¡-bi-er3-ra masz2-e i3-pa3', 'year', 311, NULL, NULL, NULL),
(312, '14', 'mu bad3 li-bur-diÅ¡-bi-er3-ra ba-du3', 'year', 312, NULL, NULL, NULL),
(313, '15', 'mu us2-sa bad3 li-bur-diÅ¡-bi-er3-ra ba-du3', 'year', 313, NULL, NULL, NULL),
(314, '16a', 'mu ugnim ki-maÅ¡ u3 elam-e nim-e bi2-in-ra', 'year', 314, NULL, NULL, NULL),
(315, '16b', 'mu diÅ¡-bi-er3-ra lugal-e ugnim Å¡imaÅ¡gi(2)ki u3 elam bi2-in-ra', 'year', 315, NULL, NULL, NULL),
(316, '16c', 'mu us2-sa bad3 li-bur-diÅ¡-bi-er3-ra ba-du3 mu us2-sa-bi', 'year', 316, NULL, NULL, NULL),
(317, '17', 'mu bad3 eÅ¡18-dar-ta2-ra-am-diÅ¡-bi-er3-ra ba-du3', 'year', 317, NULL, NULL, NULL),
(318, '18a', 'mu diÅ¡-bi-er3-ra lugal-e geÅ¡Å¡u-nir gal den-lil2 u3dnin-urta-ra mu-ne-dim2', 'year', 318, NULL, NULL, NULL),
(319, '18b', 'mu us2-sa bad3 eÅ¡18-dar-ta2-ra-am-diÅ¡-bi-er3-ra ba-du3', 'year', 319, NULL, NULL, NULL),
(320, '19', 'mu bad3 diÅ¡-bi-er3-ra-ri-im-den-lil2 ba-du3', 'year', 320, NULL, NULL, NULL),
(321, '20a', 'mu diÅ¡-bi-er3-ra lugal-e nin-me-an-ki szu-nir gal dinanna ba-dim2', 'year', 321, NULL, NULL, NULL),
(322, '20b', 'mu us2-sa bad3 diÅ¡-bi-er3-ra-ri-im-den-lil2 ba-du3', 'year', 322, NULL, NULL, NULL),
(323, '21', 'mu us2-sa diÅ¡-bi-er3-ra lugal-e nin-me-an-ki Å¡u-nir gal dinanna mu-na-dim2', 'year', 323, NULL, NULL, NULL),
(324, '22', 'mu en-bara2-zi? dumu-munus lugal egi2-zi-an-na maÅ¡2-e i3-pa3', 'year', 324, NULL, NULL, NULL),
(325, '23a', 'mu nin-dingir-dlugal-mar2-da ba-il2', 'year', 325, NULL, NULL, NULL),
(326, '23b', 'mu us2-sa egi2-zi-an-na maÅ¡2-e i3-pa3', 'year', 326, NULL, NULL, NULL),
(327, '24a', 'mu en-den-lil2-la2 ba-il2', 'year', 327, NULL, NULL, NULL),
(328, '24b', 'mu us2-sa nin-dingir-dlugal-mar2-da ba-il2', 'year', 328, NULL, NULL, NULL),
(329, '25', 'mu diÅ¡-bi-er3-ra lugal-e geÅ¡gu-za bara2 dnin-urta-ra mu-na-dim2', 'year', 329, NULL, NULL, NULL),
(330, '26a', 'mu diÅ¡-bi-er3-ra lugal-e elam Å¡a3 uri2ki-ma tuÅ¡-a geÅ¡tukul kalag-ga-ni im-ta-e11', 'year', 330, NULL, NULL, NULL),
(331, '26b', 'mu us2-sa geÅ¡gu-za bara2 dnin-urta-ra mu-na-dim2', 'year', 331, NULL, NULL, NULL),
(332, '27', 'mu us2-sa elam Å¡a3 uri2ki-ma tuÅ¡-a geÅ¡tukul kalag-ga-ni im-ta-e11', 'year', 332, NULL, NULL, NULL),
(333, '28', 'mu geÅ¡gu-za dnin-lil2-la2 ba-dim2', 'year', 333, NULL, NULL, NULL),
(334, '29', 'mu geÅ¡gu-za dnanna dnin-gal ba-dim2', 'year', 334, NULL, NULL, NULL),
(335, '30', 'mu nin-dingir dnin-gi4-li2-in ba-il2', 'year', 335, NULL, NULL, NULL),
(336, '31', 'mu uri2ki-ma ki-dur2-ba bi2-ge-en', 'year', 336, NULL, NULL, NULL),
(337, '32', 'mu nin-dingir dlugal-gir3-ra masz2-e i3-pa3 (var. nin-dingir dlugal-er2-ra ba-il2)', 'year', 337, NULL, NULL, NULL),
(338, '33', 'mu us2-sa nin-dingir dlugal-gir3-ra masz2-e i3-pa3(var. nin-dingir dlugal-er2-ra ba-il2)', 'year', 338, NULL, NULL, NULL),
(339, '33*', 'mu us2-sa us2-sa-bi nin-dingir dlugal-gir3-ra masz2-e i3-pa3 (var. nin-dingir dlugal-er2-ra ba-il2)', 'year', 339, NULL, NULL, NULL),
(340, 'a', 'mu geÅ¡gu-za mah den-[â€¦] ba-dim2', 'year', 340, NULL, NULL, NULL),
(341, '1', 'mu dÅ¡u-i3-li2-Å¡u lugal', 'year', 341, NULL, NULL, NULL),
(342, '2a', 'mu dÅ¡u-i3-li2-Å¡u geÅ¡Å¡u-nir gal dnanna mu-na-dim2', 'year', 342, NULL, NULL, NULL),
(343, '2b', 'mu dÅ¡u-i3-li2-Å¡u lugal-e â€¦ an-Å¡a-anki-Å¡e3 â€¦ dnanna-ra mu-na-du3?', 'year', 343, NULL, NULL, NULL),
(344, '3a', 'mu dÅ¡u-i3-li2-Å¡u nin-dnin-urta-ra mu-un-il2', 'year', 344, NULL, NULL, NULL),
(345, '3b', 'mu us2-sa dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡Å¡u-nir gal dnanna mu-na-dim2', 'year', 345, NULL, NULL, NULL),
(346, '4', 'mu dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡Å¡u-nir dutu-ra mu-dim2', 'year', 346, NULL, NULL, NULL),
(347, '5', 'mu dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡gu-za mah an u3dinanna mu-ne-dim2', 'year', 347, NULL, NULL, NULL),
(348, '6', 'mu dÅ¡u-i3-li2-Å¡u lugal-e bad3 gal i3-si-inki dÅ¡u-i3-li2-Å¡u-ri-im-eÅ¡18-dar mu-du3', 'year', 348, NULL, NULL, NULL),
(349, '7', 'mu dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡gu-za bara2 dnin-i-si-inki-ra mu-na-dim2', 'year', 349, NULL, NULL, NULL),
(350, '8a', 'mu dÅ¡u-i3-li2-Å¡u lugal-e ma2-gur8 mah dnin-urta-ra mu-na-dim2', 'year', 350, NULL, NULL, NULL),
(351, '8b', 'mu ma2 dnin-urta ba-ab-du8', 'year', 351, NULL, NULL, NULL),
(352, '9', 'mu dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡gu-za bara2 dnin-gal-ra mu-na-dim2', 'year', 352, NULL, NULL, NULL),
(353, '10', 'mu us2-sa dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡gu-za bara2dnin-gal-ra mu-na-dim2', 'year', 353, NULL, NULL, NULL),
(354, '1a', 'mu di-din-dda-gan lugal', 'year', 354, NULL, NULL, NULL),
(355, '1b', 'mu us2-sa dÅ¡u-i3-li2-Å¡u lugal-e geÅ¡gu-za bara2dnin-gal-ra mu-na-dim2', 'year', 355, NULL, NULL, NULL),
(356, '2', 'mu di-din-dda-gan ma-tum-ni-a-tum dumu-munus lu2 an-Å¡a-anki ba-an-tuku', 'year', 356, NULL, NULL, NULL),
(357, '3a', 'mu us2-sa di-din-dda-gan ma-tum-ni-a-tum dumu-munus-a-ni lugal an-Å¡a-anki ba-an-tuku-a', 'year', 357, NULL, NULL, NULL),
(358, '3b', 'mu nin-dingir diÅ¡kur in-pa3', 'year', 358, NULL, NULL, NULL),
(359, '4', 'mu us2-sa nin-dingir diÅ¡kur in-pa3', 'year', 359, NULL, NULL, NULL),
(360, '5', 'mu en-dinanna maÅ¡2-e in-pa3', 'year', 360, NULL, NULL, NULL),
(361, '6', 'mu urudaalan gu-la dnin-i3-si-inki-na mu-na-dim2', 'year', 361, NULL, NULL, NULL),
(362, '7', 'mu us2-sa urudaalan gu-la dnin-i3-si-in-na mu-na-dim2', 'year', 362, NULL, NULL, NULL),
(363, '8', 'mu nin-dingir-dnin-kilimgi-li-il maÅ¡2-e in-pa3', 'year', 363, NULL, NULL, NULL),
(364, '9', 'mu di-din-dda-gan en-dinanna mu-un-il2', 'year', 364, NULL, NULL, NULL),
(365, 'a', 'mu di-din-dda-gan lugal-e geÅ¡gu-za bara2 diÅ¡kur karkarki mu-na-dim2', 'year', 365, NULL, NULL, NULL),
(366, 'a*', 'mu us2-sa di-din-dda-gan lugal-e geÅ¡gu-za bara2diÅ¡kur karkarki mu-na-dim2', 'year', 366, NULL, NULL, NULL),
(367, 'b', 'mu di-din-dda-gan geÅ¡gu-za bara2 dub-la2-mah dnanna mu-na-dim2', 'year', 367, NULL, NULL, NULL),
(368, 'c', 'mu us2-sa di-din-dda-gan geÅ¡gu-za bara2 dub-la2-mah dnanna mu-na-dim2', 'year', 368, NULL, NULL, NULL),
(369, 'd', 'mu di-din-dda-gan lugal-e dszu-nir gal dnin-in-si-na mu-na-dim2', 'year', 369, NULL, NULL, NULL),
(370, 'e', 'mu us2-sa di-din-dda-gan lugal-e dÅ¡u-nir gal dnin-in-si-na mu-na-dim2', 'year', 370, NULL, NULL, NULL),
(371, 'f', 'mu di-din-dda-gan lugal-e lu2-mah dnin-in-si-na mu-un-il2', 'year', 371, NULL, NULL, NULL),
(372, '1', 'mu diÅ¡-me-dda-gan lugal', 'year', 372, NULL, NULL, NULL),
(373, 'a', 'mu diÅ¡-me-dda-gan lugal-e en-dnanna uri5ki-ma ba-hun-ga2', 'year', 373, NULL, NULL, NULL),
(374, 'b', 'mu us2-sa diÅ¡-me-dda-gan lugal-e en-dnanna uri5ki-ma ba-hun-ga2', 'year', 374, NULL, NULL, NULL),
(375, 'c', 'mu us2-sa diÅ¡-me-dda-gan lugal-e en-dnanna uri5ki-ma ba-hun-ga2 mu us2-sa-a-bi', 'year', 375, NULL, NULL, NULL),
(376, 'd', 'mu 4-kam diÅ¡-me-dda-gan en-dnanna uri5ki-ma ba-hun-ga2', 'year', 376, NULL, NULL, NULL),
(377, 'e', 'mu diÅ¡-me-dda-gan lugal en-den-lil2-la2 maÅ¡2-e in-pa3 dnin-urta GAN2 nig2-ka9 ki-en-gi ki-uri si bi2-in-sa2-sa2-a', 'year', 377, NULL, NULL, NULL),
(378, 'f', 'mu diÅ¡-me-dda-gan lugal-e den-lil2-ra geÅ¡gu-za bara2 ku3-sig17 tun3 si 7 il2 <b>e2-ga2-giÅ¡-Å¡u2-a-ka mu-na-gub-ba-a', 'year', 378, NULL, NULL, NULL),
(379, 'g', 'mu diÅ¡-me-dda-gan lugal-e geÅ¡gigir mah den-lil2dnin-urta-ra mu-ne-dim2', 'year', 379, NULL, NULL, NULL),
(380, 'h', 'mu diÅ¡-me-dda-gan lugal-e geÅ¡mar-Å¡um ku3-sig17ku3-babbar dnin-lil2-ra mu-na-dim2', 'year', 380, NULL, NULL, NULL),
(381, 'i', 'mu us2-sa diÅ¡-me-dda-gan lugal-e geÅ¡mar-Å¡um ku3-sig17 ku3-babbar dnin-lil2-ra mu-na-dim2', 'year', 381, NULL, NULL, NULL),
(382, 'j', 'mu Å¡ita2 mi-t,um sag 50 ba-dim2-ma', 'year', 382, NULL, NULL, NULL),
(383, 'k', 'mu alan na4esi-ga ba-dim2-ma', 'year', 383, NULL, NULL, NULL),
(384, 'l', 'mu urudagu-za mah ba-dim2-ma', 'year', 384, NULL, NULL, NULL),
(385, 'm', 'mu diÅ¡-me-dda-gan urudaalan dnin-urta mu-na-dim2 e2-Å¡u-me-Å¡a4 urudaeÅ¡2-da mah mu-na-gub-ba-a', 'year', 385, NULL, NULL, NULL),
(386, 'n', 'mu diÅ¡-me-dda-gan lugal KA nin dnin-urta ba-hun-ga2-a', 'year', 386, NULL, NULL, NULL),
(387, 'o', 'mu us2-sa diÅ¡-me-dda-gan lugal KA nin dnin-urta ba-hun-ga2-a', 'year', 387, NULL, NULL, NULL),
(388, 'p', 'mu diÅ¡-me-dda-gan lugal-e en-dinanna unuki-ga masz2-e i3-pa3', 'year', 388, NULL, NULL, NULL),
(389, 'q', 'mu diÅ¡-me-dda-gan lugal-e en-dnanna masz2-e i3-pa3', 'year', 389, NULL, NULL, NULL),
(390, '1', 'mu dli-pi2-it-eÅ¡18-dar lugal', 'year', 390, NULL, NULL, NULL),
(391, 'a', 'mu dli-pi2-it-eÅ¡18-dar lugal-e nig2-si-sa2 ki-en-gi ki-uri-a mu-ni-in-gar', 'year', 391, NULL, NULL, NULL),
(392, 'b', 'mu inim den-lil2 dnanna-ta uri5ki ki-bi bi-in-gi4-a', 'year', 392, NULL, NULL, NULL),
(393, 'c', 'mu dli-pi2-it-eÅ¡18-dar lugal-e geÅ¡gu-za ku3-sig17dnin-in-si-na-ra mu-na-dim2-ma dnin-in-si-na-ke4Å¡a3 hul2-la e2-gal-mah ba-gub-ba', 'year', 393, NULL, NULL, NULL),
(394, 'd', 'mu i7 dnin-ki ba-ba-al', 'year', 394, NULL, NULL, NULL),
(395, 'e', 'mu dli-pi2-it-eÅ¡18-dar lugal-e la\'u3 ki-en-gi ki-uri i-in-gal2-la â€¦ e2-kiÅ¡ib-ba â€¦', 'year', 395, NULL, NULL, NULL),
(396, 'f', 'mu us2-sa dli-pi2-it-eÅ¡18-dar lugal-e la\'u3 ki-en-gi ki-uri i-in-gal2-la â€¦ e2-kiÅ¡ib-ba â€¦', 'year', 396, NULL, NULL, NULL),
(397, 'g', 'mu dli-pi2-it-eÅ¡18-dar lugal-e en-dnin-sun2-zi en-dnin-gubalag uri5ki-ma maÅ¡2-e i3-pa3', 'year', 397, NULL, NULL, NULL),
(398, 'h', 'mu geÅ¡apin ba-dim2', 'year', 398, NULL, NULL, NULL),
(399, 'i', 'mu Å¡a dli-pi2-it-eÅ¡18-dar amurram it,-ru-du-uÅ¡', 'year', 399, NULL, NULL, NULL),
(400, '1', 'mu dur-dnin-urta lugal', 'year', 400, NULL, NULL, NULL),
(401, 'a', 'mu dur-dnin-urta lugal-e dumu nibruki den-lil2 u4-da-ri2-Å¡e3 Å¡u in-na-an-bar la\'u3 gu2-un gu2-ba bi2-il2-la-a mu-un-du8', 'year', 401, NULL, NULL, NULL),
(402, 'a*', 'mu us2-sa dur-dnin-urta lugal-e dumu nibrukiden-lil2 u4-da-ri2-Å¡e3 Å¡u in-na-an-bar la\'u3 gu2-un gu2-ba bi2-il2-la-a mu-un-du8', 'year', 402, NULL, NULL, NULL),
(403, 'a* *', 'mu us2-sa dur-dnin-urta lugal-e dumu nibrukiden-lil2 u4-da-ri2-Å¡e3 Å¡u in-na-an-bar la\'u3 gu2-un gu2-ba bi2-il2-la-a mu-un-du8 mu us2-sa-a-bi', 'year', 403, NULL, NULL, NULL),
(404, 'b', 'mu dur-dnin-urta lugal-e bad3 im-gur-den-lil2 mu-du3', 'year', 404, NULL, NULL, NULL),
(405, 'c', 'mu us2-sa dur-dnin-urta lugal-e bad3 im-gur-den-lil2 mu-du3', 'year', 405, NULL, NULL, NULL),
(406, 'd', 'mu us2-sa dur-dnin-urta lugal-e bad3 im-gur-den-lil2 mu-du3 mu us2-sa-a-bi', 'year', 406, NULL, NULL, NULL),
(407, 'e', 'mu us2-sa dur-dnin-urta lugal-e bad3-gal im-gur-den-lil2 mu-du3 mu us2-sa-4-bi', 'year', 407, NULL, NULL, NULL),
(408, 'f', 'mu dur-dnin-urta lugal-e den-lil2-me-Å¡a4 geÅ¡Å¡u-nir gal den-lil2-ra mu-na-dim2', 'year', 408, NULL, NULL, NULL),
(409, 'g', 'mu dur-dnin-urta a-Å¡a3 a-gar3 gal-gal a-ta im-ta-an-e11', 'year', 409, NULL, NULL, NULL),
(410, 'h', 'mu us2-sa dur-dnin-urta lugal-e a-Å¡a3 a-gar3 gal-gal a-ta im-ta-an-e11', 'year', 410, NULL, NULL, NULL),
(411, 'i', 'mu us2-sa dur-dnin-urta lugal-e a-Å¡a3 a-gar3 gal-gal a-ta im-ta-an-e11 mu us2-sa-a-bi', 'year', 411, NULL, NULL, NULL),
(412, 'j', 'mu dur-dnin-urta lugal-e geÅ¡gu-za zag-be2-us2ku3-sig17 d[x] x-ab? zalag-ga-ra mu-ne-dim2', 'year', 412, NULL, NULL, NULL),
(413, 'k', 'mu dur-dnin-urta zabalam', 'year', 413, NULL, NULL, NULL),
(414, 'l', 'mu dur-dnin-urta lugal-e en-den-lil2 nibruki â€¦ â€¦-bi da-ri2-Å¡e3 â€¦ di-ma', 'year', 414, NULL, NULL, NULL),
(415, 'm', 'mu us2-sa dur-dnin-urta lugal-e en-den-lil2nibruki â€¦-bi da-ri2-Å¡e3 â€¦ di-ma', 'year', 415, NULL, NULL, NULL),
(416, 'n', 'mu us2-sa dur-dnin-urta lugal-e en-den-lil2nibruki â€¦-bi da-ri2-Å¡e3 â€¦ di-ma mu us2-sa-a-bi', 'year', 416, NULL, NULL, NULL),
(417, 'o', 'mu dur-dnin-urta lugal-e urudaalan-mah en-den-lil2-ra mu-na-dim2', 'year', 417, NULL, NULL, NULL),
(418, 'p', 'mu us2-sa dur-dnin-urta lugal-e urudaalan-mah en-den-lil2-ra mu-na-dim2', 'year', 418, NULL, NULL, NULL),
(419, 'â€ ', 'mu dur-dnin-urta ba-uÅ¡2', 'year', 419, NULL, NULL, NULL),
(420, '1', 'mu bur-dsuen lugal', 'year', 420, NULL, NULL, NULL),
(421, 'a', 'mu bur-dsuen lugal-e bad3 im-gur-dnin-in-si-na mu-du3', 'year', 421, NULL, NULL, NULL),
(422, 'b', 'mu bur-dsuen lugal-e bad3 gal-gal mu-un-du3-a', 'year', 422, NULL, NULL, NULL),
(423, 'c', 'mu bur-dsuen lugal-e lugal Å¡e-ga den-lil2 geszÅ¡u-nir ku3-sig17 ku3-babbar den-lil2-ra mu-na-an-di2', 'year', 423, NULL, NULL, NULL),
(424, 'd', 'mu bur-dsuen lugal-e urudaki-lugal-gub i7-he2-gal2 urudadu8-mah nig2-de2-a dnin-in-si-na-ra mu-na-an-di2', 'year', 424, NULL, NULL, NULL),
(425, 'd*', 'mu us2-sa bur-dsuen lugal-e ki-lugal-gub-ba i7-he2-gal2 7 nig2-dab 10 sza3?-ba si3-ga u3 urudadu8-mah nig2 de2-a-ta {d}nin-i3-si-inki-ra mu-na-an-di2', 'year', 425, NULL, NULL, NULL),
(426, 'e', 'mu bur-dsuen lugal-e dnin-urta geÅ¡kim-a-ni mi-tum sag-3 ku3-sig17 Å¡ita2-bi na4za-gi3 Å¡u-nir gal dnin-urta-ra mu-na-dim2', 'year', 426, NULL, NULL, NULL),
(427, 'f', 'mu dbur-dsuen lugal-e i-bi2-den-lil2 u3 im-gur-dda-mu ba3 gal-gal 2-a-bi gu2 i7-buranun-na-ka mu-du3', 'year', 427, NULL, NULL, NULL),
(428, 'g', 'mu i7-Å¡i-ma-at-bur-dsuen ba-ba-al', 'year', 428, NULL, NULL, NULL),
(429, 'h', 'mu bur-dsuen lugal iá¹£-ba-tu', 'year', 429, NULL, NULL, NULL),
(430, 'i', 'mu dbur-dsuen lugal <iá¹£-ba-tu> mu 2-kam', 'year', 430, NULL, NULL, NULL),
(431, 'j', 'mu dbur-dsuen lugal-e geÅ¡gu-za diÅ¡kur-ra mu-na-dim2', 'year', 431, NULL, NULL, NULL),
(432, 'k', 'mu dbur-dsuen lugal-e geÅ¡gu-za dnin-urta-ra mu-un-dim2', 'year', 432, NULL, NULL, NULL),
(433, 'l', 'mu us2-sa dbur-dsuen lugal-e geÅ¡gu-za dnin-urta-ra mu-un-dim2', 'year', 433, NULL, NULL, NULL),
(434, '1', 'mu dli-pi2-it-den-lil2 lugal', 'year', 434, NULL, NULL, NULL),
(435, 'a', 'mu dli-pi2-it-den-lil2 lugal-e den-lil2-mah-am3pisan Å¡u-gub-ba gal ku3-sig17 e2-den-lil2-la2-ra mu-na-dim2', 'year', 435, NULL, NULL, NULL),
(436, 'b', 'mu us2-sa dli-pi2-it-den-lil2 lugal-e den-lil2-mah-am3 pisan Å¡u-gub-ba gal ku3-sig17 e2 den-lil2-la2-ra mu-na-dim2', 'year', 436, NULL, NULL, NULL),
(437, 'c', 'mu dli-pi2-it-den-lil2 lugal-e den-lil2-a2-dah-a-ni Å¡u-nir ku3-sig17 den-lil2-ra mu-na-dim2', 'year', 437, NULL, NULL, NULL),
(438, 'd', 'mu us2-sa dli-pi2-it-den-lil2 lugal-e den-lil2-a2-dah-a-ni Å¡u-nir ku3-sig17 den-lil2-ra mu-na-dim2', 'year', 438, NULL, NULL, NULL),
(439, 'e', 'mu dli-pi2-it-den-lil2 lugal-e la2-u dumu i3-si-inki-na den-lil2 dnin-in-siki-na', 'year', 439, NULL, NULL, NULL),
(440, 'f', 'mu us2-sa dli-pi2-it-den-lil2 lugal-e la2-u dumu i3-si-inki-na den-lil2 dnin-in-siki-na', 'year', 440, NULL, NULL, NULL),
(441, '1', 'mu der3-ra-i-mi-ti lugal', 'year', 441, NULL, NULL, NULL),
(442, 'a', 'mu der3-ra-i-mi-ti lugal nig2-si-sa2 in-gar', 'year', 442, NULL, NULL, NULL),
(443, 'b', 'mu der3-ra-i-mi-ti lugal-e nibruki ki-bi bi2-in-gi4-a', 'year', 443, NULL, NULL, NULL),
(444, 'c', 'mu us2-sa nibruki ki-bi bi2-in-gi4-a', 'year', 444, NULL, NULL, NULL),
(445, 'da', 'mu der3-ra-i-mi-ti lugal ki-sur-raki in-dab5-ba', 'year', 445, NULL, NULL, NULL),
(446, 'db', 'mu der3-ra-i-mi-ti lugal-e ki-sur-raki ba-hul', 'year', 446, NULL, NULL, NULL),
(447, 'd*', 'mu us2-sa ki-sur-raki dir3-ra-i-mi-ti ba-an-dab5', 'year', 447, NULL, NULL, NULL),
(448, 'e', 'mu der3-ra-i-mi-ti bad3 ka-zal-luki ba-hul', 'year', 448, NULL, NULL, NULL),
(449, 'f', 'mu bad3 gan2-xki-er3-ra-i-mi-ti mu-na-dim2', 'year', 449, NULL, NULL, NULL),
(450, 'g', 'mu der3-ra-i-mi-ti lugal ki-sur-raki mu-un-du3', 'year', 450, NULL, NULL, NULL),
(451, 'h', 'mu der3-ra-i-mi-ti lugal-e lagar dda-mu ba-hun', 'year', 451, NULL, NULL, NULL),
(452, '1', 'mu den-lil2-ba-ni lugal', 'year', 452, NULL, NULL, NULL),
(453, 'aa', 'mu den-lil2-ba-ni lugal-e u4 gu2-un erin2 dumu i3-si-inki-na mu-un-du8-a', 'year', 453, NULL, NULL, NULL),
(454, 'ab', 'mu den-lil2-ba-ni lugal-e erin2 dumu i3-si-inki-na Å¡u in-ne-bar', 'year', 454, NULL, NULL, NULL),
(455, 'b', 'mu den-lil2-ba-ni lugal-e en-ki-ag2-dinanna en-dinanna ba-hun-ga2', 'year', 455, NULL, NULL, NULL),
(456, 'ca', 'mu den-lil2-ba-ni lugal-e lugal ki-en-gi ki-uri-ke4nibruki ki-be2 bi2-in-gi4', 'year', 456, NULL, NULL, NULL),
(457, 'cb', 'mu den-lil2-ba-ni lugal nibruki ki-be2', 'year', 457, NULL, NULL, NULL),
(458, 'cc', 'mu den-lil2-ba-ni lugal-e inim den-lil2 u3 dnin-urta nibruki di-bi bi2-in-â€¦', 'year', 458, NULL, NULL, NULL),
(459, 'd', 'mu den-lil2-ba-ni lugal-e Ii-pi2-iq-den-lil2 lagar-den-lil2-la2 mu-hun-ga2', 'year', 459, NULL, NULL, NULL),
(460, 'e', 'mu mu den-lil2-ba-ni lugal-e geÅ¡Å¡u-lu2 ku3-sig17den-lil2-ra mu-na-dim2', 'year', 460, NULL, NULL, NULL),
(461, 'f', 'mu den-lil2-ba-ni lugal-e urudaalan gal-gal 3-a-bi dnin-urta mu-na-dim2', 'year', 461, NULL, NULL, NULL),
(462, 'g', 'mu den-lil2-ba-ni lugal-e alan ku3-sig17 dnin-urta-ra mu-un-na-an-dim2-dim2-ma', 'year', 462, NULL, NULL, NULL),
(463, 'h', 'mu den-lil2-ba-ni lugal alan ku3-sig17 dna-na-a-ra mu-na-dim2', 'year', 463, NULL, NULL, NULL),
(464, 'i', 'mu den-lil2-ba-ni lugal-e e2-me-zi-da e2 ki-ag2-ga2-ni-Å¡e3 den-ki-ra mu-na-dim2', 'year', 464, NULL, NULL, NULL),
(465, 'j', 'mu den-lil2-ba-ni lugal-e geÅ¡gu-za za3-bi-us2 ku3-sig17 ku3-babbar kin gal-eÅ¡ ak den-ki-ra mu-na-an-dim2', 'year', 465, NULL, NULL, NULL),
(466, 'ka', 'mu den-lil2-ba-ni lugal-e geÅ¡gu-za ku3-babbar ku3-sig17 dutu-ra mu-na-dim2', 'year', 466, NULL, NULL, NULL),
(467, 'kb', 'mu den-lil2-ba-ni lugal-e geÅ¡gu-za za3-bi-us2dutu-ra mu-na-dim2', 'year', 467, NULL, NULL, NULL),
(468, 'l', 'mu den-lil2-ba-ni lugal-e geÅ¡gu-za bara2 ku3-sig17dnanna-ra mu-na-dim2', 'year', 468, NULL, NULL, NULL),
(469, 'm', 'den-lil2-ba-ni lugal i7 a-Å¡a3-sig-ta za3-a-ab-ba-Å¡e3 mu-ba-al', 'year', 469, NULL, NULL, NULL),
(470, 'n', 'mu den-lil2-ba-ni lugal nin-men-dka?-[â€¦]-ku3? nin-dingir-diÅ¡kur-ra mu-un-hun-e / ba-il2', 'year', 470, NULL, NULL, NULL),
(471, 'oa', 'mu den-lil2-ba-ni lugal 2 dlamma ku3-sig17 ku3-babbar zi-da-ga-bu-na dnin-lil2-ra mu-na-an-su8-ga', 'year', 471, NULL, NULL, NULL),
(472, 'ob', 'mu den-lil2-ba-ni lugal-e dlamma ku3-sig17 2-a-bi dnin-lil2-ra mu-na-dim2', 'year', 472, NULL, NULL, NULL),
(473, 'p', 'mu den-lil2-ba-ni lugal-e a-gar3 zu-za-gum-ma-ta i7 den-lil2-ba-ni za3 a-ab-ba-Å¡e3 mu-ba-al', 'year', 473, NULL, NULL, NULL),
(474, 'q', 'mu den-lil2-ba-ni lugal geÅ¡gu-za ku3-sig17 ku3-babbar dnin-i3.IN.si-na-ra mu-na-dim2', 'year', 474, NULL, NULL, NULL),
(475, 'r', 'mu den-lil2-ba-ni lugal-e urudadu8 mah urudaki-lugal-gub den-ki-ra ma-na-dim2', 'year', 475, NULL, NULL, NULL),
(476, 's', 'mu den-lil2-ba-ni lugal-e mi-girx(HA)-dnin-kar-ra-ak lu2-mah dnin-in-si-na mu-hun', 'year', 476, NULL, NULL, NULL),
(477, 't', 'mu den-lil2-ba-ni lugal en den-lil2-la2 maÅ¡2-e in-pa3', 'year', 477, NULL, NULL, NULL),
(478, 'u', 'mu den-lil2-ba-ni lugal geÅ¡gu-za za3-bi-us2 dnin-in-siki-na-ra mu-na-an-dim2', 'year', 478, NULL, NULL, NULL),
(479, 'v', 'mu den-lil2-ba-ni lugal-e urudaalan dutu 4-bi den-ki-ra mu-na-dim2', 'year', 479, NULL, NULL, NULL),
(480, '1', 'mu dza-am-bi-ia lugal-e', 'year', 480, NULL, NULL, NULL),
(481, 'a', 'mu dza-am-bi-ia lugal-e alan ku3-sig17 5-bi dinanna u3 dna-na-a-ra mu-ne-dim2', 'year', 481, NULL, NULL, NULL),
(482, 'b', 'mu dza-am-bi-ia lugal i7 dza-am-bi-ia', 'year', 482, NULL, NULL, NULL),
(483, '1', 'mu di-te-er-pi4-Å¡a lugal', 'year', 483, NULL, NULL, NULL),
(484, 'aa', 'mu di-te-er-pi4-Å¡a lugal-e li-li-eÅ¡3 zabar dutu-ra mu-na-dim2', 'year', 484, NULL, NULL, NULL),
(485, 'ab', 'mu di-te-er-pi4-Å¡a lugal-e li-li-eÅ¡3 zabar dinanna zabalamki-ra mu-na-dim2', 'year', 485, NULL, NULL, NULL),
(486, 'b', 'mu di-te-er-pi4-Å¡a lugal-e inim dug4 den-lil2 dnin-urta-ka-ta nibruki i3-si-inki-na KA teÅ¡2-a bi2-in-si3-ga i-mi-tum ma-sa-tum ku3-sig17 den-lil2 dnin-urta-ra mu-ne-dim2', 'year', 486, NULL, NULL, NULL),
(487, '1', 'mu dur-du6-ku3-ga lugal', 'year', 487, NULL, NULL, NULL),
(488, 'a', 'mu dur-du6-ku3-ga lugal-e i7 im-gur-dnin-in-si-na mu-ba-al', 'year', 488, NULL, NULL, NULL),
(489, 'b', 'mu dur-du6-ku3-ga lugal-e geÅ¡Å¡u-nir gal-gal ku3-sig17 huÅ¡-a-ta 2-a-bi kin galam-ma ak dnanna u3dutu-ra mu-ne-dim2', 'year', 489, NULL, NULL, NULL),
(490, 'c', 'mu dur-du6-ku3-ga lugal-e e2-dur2-ki-gar-ra ki-dur2 ku3 ki-ag2-ga2-ni dda-gan dingir-re-e-ne-er mu-na-du3', 'year', 490, NULL, NULL, NULL),
(491, '1', 'mu dsuen-ma-gir lugal', 'year', 491, NULL, NULL, NULL),
(492, 'a', 'mu bad3 gal gu2 i7-u3-sur gu-la dsuen-ma-gir ma-da-na dagal-dagal i3-du3', 'year', 492, NULL, NULL, NULL),
(493, 'b', 'mu dsuen-ma-gir lugal-e am ku3-sig17 huÅ¡-a kin gal-le-eÅ¡ ak dnin-in-si-na-ra mu-na-dim2', 'year', 493, NULL, NULL, NULL),
(494, 'c', 'mu dsuen-ma-gir lugal-e i7 dnin-kar-ra-ak mu-ba-al', 'year', 494, NULL, NULL, NULL),
(495, 'd', 'mu dsuen-ma-gir lugal [i7?] dnin-in-si-na i7 nam-bi-tar-re za3-a-ab-ba-sze3 mu-ba-al', 'year', 495, NULL, NULL, NULL),
(496, '1', 'mu dda-mi-iq-i3-li2-Å¡u lugal', 'year', 496, NULL, NULL, NULL),
(497, '2', 'mu . . . (Unknown)', 'year', 497, NULL, NULL, NULL),
(498, '3', 'mu . . . (Unknown)', 'year', 498, NULL, NULL, NULL),
(499, '4', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e lu2-mah-dnin-in-si-na maÅ¡2-e in-pa3', 'year', 499, NULL, NULL, NULL),
(500, '5', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e i7 dda-mi-iq-i3-li2-Å¡u id2-he2-gal2-lugal mu-ba-al', 'year', 500, NULL, NULL, NULL),
(501, '6', 'mu us2-sa i7 dda-mi-iq-i3-li2-Å¡u id2-he2-gal2-lugal mu-ba-al', 'year', 501, NULL, NULL, NULL),
(502, '7a', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e lu2-mah-dnin-in-si-na ba-il2', 'year', 502, NULL, NULL, NULL),
(503, '7b', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e ilum-ga-mil lu2-mah-dnin-in-si-na ba-hun-ga2', 'year', 503, NULL, NULL, NULL),
(504, '8', 'mu dda-mi-iq-i3-li2-Å¡u lugal e2-di-ku5-kalam-ma e2 ki-ag2-ga2-ni dutu-ra mu-na-du3', 'year', 504, NULL, NULL, NULL),
(505, '9', 'mu us2-sa dda-mi-iq-i3-li2-Å¡u lugal-e e2-di-ku5-kalam-ma e2 ki-ag2-ga2-ni dutu-ra mu-du3-a', 'year', 505, NULL, NULL, NULL),
(506, '10', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e 2 geÅ¡Å¡u-nir gal-gal ku3-sig17 ku3-babbar min-a-bi e2 diÅ¡kur u3 dinanna ni-nu-aki-ra mu-ne-dim2', 'year', 506, NULL, NULL, NULL),
(507, '11', 'mu us2-sa dda-mi-iq-i3-li2-Å¡u lugal-e 2 geÅ¡Å¡u-nir gal-gal ku3-sig17 ku3-babbar min-a-bi e2 diÅ¡kur u3 dinanna ni-nu-aki-ra mu-ne-dim2', 'year', 507, NULL, NULL, NULL),
(508, '12', 'mu us2-sa mu us2-sa-a-bi dda-mi-iq-i3-li2-Å¡u lugal-e 2 geÅ¡Å¡u-nir gal-gal ku3-sig17 ku3-babbar min-a-bi e2 diÅ¡kur u3 dinanna ni-nu-aki-ra mu-ne-dim2', 'year', 508, NULL, NULL, NULL),
(509, '13', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e bad3 gal i3-si-inki-na dda-mi-iq-i3-li2-Å¡u he2-gal2 mi-gir4 dnin-urta mu-du3-a', 'year', 509, NULL, NULL, NULL),
(510, '14', 'mu us2-sa dda-mi-iq-i3-li2-Å¡u lugal-e bad3 gal i3-si-inki-na dda-mi-iq-i3-li2-Å¡u mi-gir4 dnin-urta mu-du3-a', 'year', 510, NULL, NULL, NULL);
INSERT INTO `year_names` (`id`, `year_number`, `year_and_eponym`, `type`, `order`, `year_id`, `period_id`, `dynasty_id`) VALUES
(511, '15', 'mu us2-sa mu us2-sa-a-bi dda-mi-iq-i3-li2-Å¡u lugal-e bad3 gal i3-si-inki-na dda-mi-iq-i3-li2-Å¡u mi-gir4 dnin-urta mu-du3-a', 'year', 511, NULL, NULL, NULL),
(512, '16', 'mu us2 mu us2-sa mu us2-sa-a-bi dda-mi-iq-i3-li2-Å¡u lugal-e bad3 gal i3-si-inki-na dda-mi-iq-i3-li2-Å¡u mi-gir4 dnin-urta mu-du3-a', 'year', 512, NULL, NULL, NULL),
(513, 'a', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e nin-dingir-dda-mu-ra ba-hun-ga2', 'year', 513, NULL, NULL, NULL),
(514, 'ba', 'mu dda-mi-iq-i3-li2-Å¡u lugal diÅ¡kur-ra ba-il2', 'year', 514, NULL, NULL, NULL),
(515, 'bb', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e â€¦-pa3-da nin-dingir-diÅ¡kur ba-hun', 'year', 515, NULL, NULL, NULL),
(516, 'ca', 'mu dda-mi-iq-i3-li2-Å¡u lugal-e egi2-zi-an-na ba-il2', 'year', 516, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artifacts`
--
ALTER TABLE `artifacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artifacts_1_idx` (`artifacts_dates_id`);

--
-- Indexes for table `artifacts_dates`
--
ALTER TABLE `artifacts_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artifacts_dates_3_idx` (`artifact_id`),
  ADD KEY `fk_artifacts_dates_4_idx` (`ruler_id`),
  ADD KEY `fk_artifacts_dates_5_idx` (`year_name_id`),
  ADD KEY `fk_artifacts_dates_6_idx` (`month_name_id`),
  ADD KEY `fk_artifacts_dates_7_idx` (`date_id`),
  ADD KEY `fk_artifacts_dates_8` (`dynasty_id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynasties`
--
ALTER TABLE `dynasties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dynasties_1_idx` (`provenience_id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_names`
--
ALTER TABLE `month_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_month_names_3_idx` (`month_id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proveniences`
--
ALTER TABLE `proveniences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rulers`
--
ALTER TABLE `rulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rulers_1_idx` (`period_id`),
  ADD KEY `fk_rulers_2_idx` (`dynasty_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_names`
--
ALTER TABLE `year_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_year_and_eponym_names_1_idx` (`year_id`),
  ADD KEY `fk_year_names_1_idx` (`period_id`),
  ADD KEY `fk_year_names_2_idx` (`dynasty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artifacts`
--
ALTER TABLE `artifacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `artifacts_dates`
--
ALTER TABLE `artifacts_dates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `dynasties`
--
ALTER TABLE `dynasties`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `month_names`
--
ALTER TABLE `month_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `proveniences`
--
ALTER TABLE `proveniences`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rulers`
--
ALTER TABLE `rulers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `year_names`
--
ALTER TABLE `year_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artifacts`
--
ALTER TABLE `artifacts`
  ADD CONSTRAINT `fk_artifacts_1` FOREIGN KEY (`artifacts_dates_id`) REFERENCES `artifacts_dates` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `artifacts_dates`
--
ALTER TABLE `artifacts_dates`
  ADD CONSTRAINT `artifacts_dates_ibfk_1` FOREIGN KEY (`dynasty_id`) REFERENCES `dynasties` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artifacts_dates_3` FOREIGN KEY (`artifact_id`) REFERENCES `artifacts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artifacts_dates_4` FOREIGN KEY (`ruler_id`) REFERENCES `rulers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artifacts_dates_5` FOREIGN KEY (`year_name_id`) REFERENCES `year_names` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artifacts_dates_6` FOREIGN KEY (`month_name_id`) REFERENCES `month_names` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artifacts_dates_7` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `dynasties`
--
ALTER TABLE `dynasties`
  ADD CONSTRAINT `fk_dynasties_1` FOREIGN KEY (`provenience_id`) REFERENCES `proveniences` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `month_names`
--
ALTER TABLE `month_names`
  ADD CONSTRAINT `fk_month_names_3` FOREIGN KEY (`month_id`) REFERENCES `months` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `rulers`
--
ALTER TABLE `rulers`
  ADD CONSTRAINT `fk_rulers_1` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rulers_2` FOREIGN KEY (`dynasty_id`) REFERENCES `dynasties` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `year_names`
--
ALTER TABLE `year_names`
  ADD CONSTRAINT `fk_year_and_eponym_names_1` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_year_names_1` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_year_names_2` FOREIGN KEY (`dynasty_id`) REFERENCES `dynasties` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;