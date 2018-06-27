<?php
$conn = mysqli_connect("localhost", "username", "password", "dbname");

if (isset($_POST["import"])) {
    
    $provinenceFile = $_FILES["file"]["tmp_name"];
	$periodFile = $_FILES["file"]["tmp_name"];
	$dynastyFile = $_FILES["file"]["tmp_name"];
	$rulerFile = $_FILES["file"]["tmp_name"];
	$yearFile = $_FILES["file"]["tmp_name"];
    $message = "";
    if ($_FILES["file"]["size"] > 0) {
        
		// loading and storing provinence data
        $file = fopen($provinenceFile, "r");
        
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            $sqlInsert = "INSERT into proveniences (id,google_earth_collection,google_earth_provenience,provenience) values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "')";

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
		
		// loading and storing dynasty data
		$file = fopen($dynastyFile, "r");
        
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            $sqlInsert = "INSERT into dynasties (polity,dynasty,order,provenience_id) values ('" . $column[1] . "','" . $column[2] . "'," . $column[3] . ","."(select id from provenience where name = ''))";

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
		
		// loading and storing period data
		$file = fopen($periodFile, "r");
        
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            $sqlInsert = "INSERT into periods (period,order) values ('" . $column[1] . "',".$column[2].")";

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
		
		// loading and storing ruler data
		$file = fopen($rulerFile, "r");
        
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            $sqlInsert = "INSERT into rulers (id,ruler,order,period_id,dynasty_id) values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "',". "(select id from dynasties where dynasty = '".$column[2]."')" .",". "(select id from periods where period = '".$column[3]."')" .")";

            $result = mysqli_query($conn, $sqlInsert);
            
            if (! empty($result)) {
                $type = "success";
                $message = $message."Ruler's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Ruler's CSV Data<br>";
            }
        }
		fclose($file);
		
		// loading and storing year data
		$file = fopen($yearFile, "r");
        
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
            $sqlInsert = "INSERT into year_names (year_number,year_and_eponym,`type`,`order`,ruler_id,year_id,period_id,dynasty_id) values ('" . $column[1] . "','" . $column[2] . "','" . $column[5] . "'," . $column[3] . "," . "(select id from rulers where ruler = '".$column[2]."')" . "," . "(select id from years where date = '".$column[6]."')" . "," . "(select period_id from rulers where ruler = '".$column[2]."')" . "," . "(select id from dynasties where dynasty = '".$column[1]."')" . ")";

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
<style>
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
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + fileType + ")$");
        if (!regex.test($("#file").val().toLowerCase())) {
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
    
    <div id="response" class="<?php if(!empty($type)) { echo $type . " display-block"; } ?>"><?php if(!empty($message)) { echo $message; } ?></div>
    <div class="outer-scontainer">
        <div class="row">

            <form class="form-horizontal" action="" method="post"
                name="frmCSVImport" id="frmCSVImport" enctype="multipart/form-data">
                <div class="input-row">
                    <label class="col-md-4 control-label">Choose Provinence CSV
                        File</label> <input type="file" name="file"
                        id="file" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Periods CSV
                        File</label> <input type="file" name="file"
                        id="file" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Dynasty CSV
                        File</label> <input type="file" name="file"
                        id="file" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Ruler CSV
                        File</label> <input type="file" name="file"
                        id="file" accept=".csv">
						<br>
					<label class="col-md-4 control-label">Choose Year CSV
                        File</label> <input type="file" name="file"
                        id="file" accept=".csv">
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
