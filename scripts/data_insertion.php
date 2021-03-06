<?php
$conn = mysqli_connect("server", "username", "password", "dbname");

if (isset($_POST["import"])) {
    
    $provinenceFile = $_FILES["provinenceFile"]["tmp_name"];
    $dynastyFile = $_FILES["dynastyFile"]["tmp_name"];
	$periodFile = $_FILES["periodFile"]["tmp_name"];
	$rulerFile = $_FILES["rulerFile"]["tmp_name"];
    $yearFile = $_FILES["yearFile"]["tmp_name"];
    $yearnameFile = $_FILES["yearNameFile"]["tmp_name"];
    $dateFile = $_FILES["dateFile"]["tmp_name"];
    $monthFile = $_FILES["monthFile"]["tmp_name"];
    $monthnameFile = $_FILES["monthNameFile"]["tmp_name"];
    $artifactsdatesFile = $_FILES["artifactsdatesFile"]["tmp_name"];
    $message = "";
    if ($_FILES["provinenceFile"]["size"] > 0) {
        
		// loading and storing provinence data
        $file = fopen($provinenceFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {

            if($heading){
				$heading=false;
				continue;
			}

            $sqlInsert = "INSERT into 
                proveniences (
                    google_earth_collection,google_earth_provenience,geo_coordinates,provenience
                ) 
                values (
                    '" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "'
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Provinence's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Provinence's CSV Data<br>";
            }
        }
		fclose($file);
    }
    
    // loading and storing dynasty data
	if ($_FILES["dynastyFile"]["size"] > 0) {
		$file = fopen($dynastyFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {

            if($heading){
				$heading=false;
				continue;
			}

            $sqlInsert = "INSERT into 
                dynasties (
                    polity,dynasty,provenience_id
                )
                values (
                    '" . $column[1] . "','" . $column[2] . "',
                    (select id from proveniences where provenience='".$column[4]."')
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Dynasty's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Dynasty's CSV Data<br>";
            }
        }
		fclose($file);
    }
    
    // loading and storing period data
	if ($_FILES["periodFile"]["size"] > 0) {
		$file = fopen($periodFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            if($heading){
				$heading=false;
				continue;
			}

            $sqlInsert = "INSERT into 
                periods (
                    `period`,`order`
                ) 
                values (
                    '" . $column[1] . "',".$column[2]."
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Period's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Period's CSV Data<br>";
            }
        }
		fclose($file);
    }
    
    // loading and storing ruler data table
	if ($_FILES["rulerFile"]["size"] > 0) {
        $heading=true;
		$file = fopen($rulerFile, "r");
        $set = array();
		$i=0;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {

            if($heading){
				$heading=false;
				continue;
			}

			if(!array_key_exists($column[3], $set)){
				$i++;
				$set[$column[3]]=$i;
            $sqlInsert = "INSERT into 
                rulers (
                    ruler,`order`,period_id,dynasty_id
                )
                values (
                    '" . $column[3] . "',null,(select id from periods where `period`='".$column[0]."'),(select id from dynasties where dynasty='".$column[2]."')
                )
            ";
            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Ruler's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Ruler's CSV Data<br>";
            }
			}	
        }
		$type = "success";
        $message = $message."Total ".$i." Rulers inserted<br>";
		fclose($file);
    }
    
    // loading and storing year data
	if ($_FILES["yearFile"]["size"] > 0) {
		$file = fopen($yearFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
			if($heading){
				$heading=false;
				continue;
			}
            $sqlInsert = "INSERT into 
                years (
                    id,year,`order`
                ) 
                values (
                    ".$column[6] .",'" . str_replace("'","''",$column[7]) . "'," . $column[4] . "
                )
            ";
	        echo $sqlInsert.';<br>';
            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Year's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Year's CSV Data<br>";
            }
        }
        fclose($file);
    }
    
    // loading and storing year_name data
	if ($_FILES["yearNameFile"]["size"] > 0) {
		$file = fopen($yearnameFile, "r");
		$heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
			if($heading){
				$heading=false;
				continue;
			}
            $sqlInsert = "INSERT into 
                year_names (
                    `id`,year_number,year_and_eponym,`type`,`order`,period_id,dynasty_id
                ) 
                values (
                    '" . $column[9] . "','" . $column[5] . "','" . str_replace("'","''",$column[7]) . "','" . $column[8] . "','" . $column[4] . "',
                    " . "(select id from periods where `period`='".$column[0]."')" . ",
                    " . "(select id from dynasties where dynasty='".$column[2]."')" . "
                )
            ";
            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Year's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Year's CSV Data<br>";
            }
        }
		fclose($file);
    }
    
    // loading and storing dates data
	if ($_FILES["dateFile"]["size"] > 0) {
		$file = fopen($dateFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            if($heading){
				$heading=false;
				continue;
			}

            $sqlInsert = "INSERT into 
                dates (
                    day_number,date_remarks,`order`,is_uncertain
                ) 
                values (
                    '" . $column[5] . "','" . $column[7] . "','" . $column[8] . "',null
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Year's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Year's CSV Data<br>";
            }
        }
        fclose($file);
    }
    
    // loading and storing months data
	if ($_FILES["monthFile"]["size"] > 0) {
		$file = fopen($monthFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            if($heading){
				$heading=false;
				continue;
			}
            $sqlInsert = "INSERT into 
                months (
                    composite_month_name,`order`
                ) 
                values (
                    '" . $column[2] . "','" . $column[8] . "'
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Year's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Year's CSV Data<br>";
            }
        }
        fclose($file);
    }
    
    // loading and storing month_names data
	if ($_FILES["monthNameFile"]["size"] > 0) {
		$file = fopen($monthnameFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            if($heading){
				$heading=false;
				continue;
			}
            $sqlInsert = "INSERT into 
                `month_names` (
                    `month_number`,`order`,`month_id`
                ) 
                values (
                    '" . $column[4] . "','" . $column[8] . "',
                    " . "(select id from months where month = '".$column[2]."')" . "
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Year's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Year's CSV Data<br>";
            }
        }
        fclose($file);
        
        
    }

    // loading and storing artifacts dates
    if ($_FILES["artifactsdatesFile"]["size"] > 0) {
		$file = fopen($artifactsdatesFile, "r");
        $heading=true;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            if($heading){
				$heading=false;
				continue;
			}
            $sqlInsert = "INSERT into 
                artifacts_dates (
                    `date_type`,`dynasty_id`
                ) 
                values (
                    '" . $column[6] . "',
                    " . "(select id from dynasties where dynasty='".$column[3]."')" . "
                )
            ";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Year's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Year's CSV Data<br>";
            }
        }
        fclose($file);
	}
}
?>
<!DOCTYPE html>
<html>

<head>
<script src="jquery-3.2.1.min.js"></script>
<!-- custom CSS -->
<style>dynasty
body {
	font-family: Arial;
	width: 550px;
}

.outer-scontainer {
	background: #F0F0F0;
	border: #e0dfdf 1px solid;
	padding: 20px;
	border-radius: 2px;
}

.input-row {
	margin-top: 0px;
	margin-bottom: 20px;
}

.btn-submit {
	background: #333;
	border: #1d1d1d 1px solid;
	color: #f0f0f0;
	font-size: 0.9em;
	width: 100px;
	border-radius: 2px;
	cursor: pointer;
}

.outer-scontainer table {
	border-collapse: collapse;
	width: 100%;
}

.outer-scontainer th {
	border: 1px solid #dddddd;
	padding: 8px;
	text-align: left;
}

.outer-scontainer td {
	border: 1px solid #dddddd;
	padding: 8px;
	text-align: left;
}

#response {
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 2px;
    display:none;
}

.success {
    background: #c7efd9;
    border: #bbe2cd 1px solid;
}

.error {
    background: #fbcfcf;
    border: #f3c6c7 1px solid;
}

div#response.display-block {
    display: block;
}
</style>
<!-- custom CSS -->
<script type="text/javascript">
$(document).ready(function() {
    $("#frmCSVImport").on("submit", function () {

	    $("#response").attr("class", "");
        $("#response").html("");
        var fileType = ".csv";
        var regex = new RegExp("^$|([a-zA-Z0-9\s_\\.\-:])+(" + fileType + ")$");
        if (!regex.test($("#rulerFile").val().toLowerCase())||!regex.test($("#provinenceFile").val().toLowerCase())||!regex.test($("#dynastyFile").val().toLowerCase())
			||!regex.test($("#periodFile").val().toLowerCase())||!regex.test($("#yearFile").val().toLowerCase())||!regex.test($("#yearNameFile").val().toLowerCase())
		||!regex.test($("#dateFile").val().toLowerCase())||!regex.test($("#monthFile").val().toLowerCase())||!regex.test($("#monthNameFile").val().toLowerCase())) {
        	    $("#response").addClass("error");
        	    $("#response").addClass("display-block");
            $("#response").html("Invalid File. Upload : <b>" + fileType + "</b> Files.");
            return false;
        }
        return true;
    });
});
</script>
</head>

<body>
    <h2>Import CSV file into Table</h2>
    
    <div id="response" class="<?php if(!empty($type)) { 
        echo $type . " display-block"; } ?>">
        <?php 
            if(!empty($message)) { 
                echo $message; 
            } 
        ?>
    </div>
    <div class="outer-scontainer">
        <div class="row">

            <form class="form-horizontal" action="" method="post"
                name="frmCSVImport" id="frmCSVImport" enctype="multipart/form-data">
                <div class="input-row">
                    <label class="col-md-4 control-label">Choose Provinence CSV
                        File</label> <input type="file" name="provinenceFile"
                        id="provinenceFile" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Dynasty CSV
                        File</label> <input type="file" name="dynastyFile"
                        id="dynastyFile" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Period CSV
                        File</label> <input type="file" name="periodFile"
                        id="periodFile" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Ruler CSV
                        File</label> <input type="file" name="rulerFile"
                        id="rulerFile" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Year CSV
                        File</label> <input type="file" name="yearFile"
                        id="yearFile" accept=".csv">
                        <br>
                    <label class="col-md-4 control-label">Choose Year Name CSV
                        File</label> <input type="file" name="yearNameFile"
                        id="yearNameFile" accept=".csv">
                        <br>
                    <label class="col-md-4 control-label">Choose Date CSV
                        File</label> <input type="file" name="dateFile"
                        id="dateFile" accept=".csv">
                        <br>
                    <label class="col-md-4 control-label">Choose Month CSV
                        File</label> <input type="file" name="monthFile"
                        id="monthFile" accept=".csv">
                        <br>
                    <label class="col-md-4 control-label">Choose Month Name CSV
                        File</label> <input type="file" name="monthNameFile"
                        id="monthNameFile" accept=".csv">
                        <br>
                    <label class="col-md-4 control-label">Choose Artifacts dates CSV
                        File</label> <input type="file" name="artifactsdatesFile"
                        id="artifactsdatesFile" accept=".csv">
                        <br>
                    <button type="submit" id="submit" name="import"
                        class="btn-submit">Import</button>
                    <br />

                </div>

            </form>

        </div>
    </div>

</body>

</html>