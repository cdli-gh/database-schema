<?php
$conn = mysqli_connect("Server", "username", "password", "database_name");

if (isset($_POST["import"])) {
    
    $sampleFile = $_FILES["sampleFile"]["tmp_name"];
    $message = "";
    if ($_FILES["sampleFile"]["size"] > 0) {
        
		// loading and storing ruler and date data
        $file = fopen($sampleFile, "r");
        $set_ruler = array();
		$set_date = array();
		$i=0;
		$j=0;
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
			if(!preg_match("/([^.]*\\.[^.]*\\.[^.]*)\\../",$column[3])){
				continue;
			}
			$arr=explode(".",$column[3]);
			//inserting rulers
			if(!array_key_exists($arr[0], $set_ruler)){
				$i++;
				$set_ruler[$arr[0]]=$i;
            $sqlInsert = "INSERT into 
                rulers (
                    ruler,`order`,period_id,dynasty_id
                )
                values (
                    '" . $arr[0] . "',null,(select id from periods where `period`='".$column[15]."' limit 1),null
                )
            ";
            $result = mysqli_query($conn, $sqlInsert);

            if (! empty($result)) {
                $type = "success";
                $message = $message."Ruler's CSV Data Imported into the Database<br>";
            } else {
                $type = "error";
                $message = $message."Problem in Importing Ruler's CSV Data ".$sqlInsert."<br>";
            }
			}
			
			//inserting dates
			$l=strlen($arr[3]);
			$day_no=mb_substr($arr[3],0,2);
			if(!array_key_exists($day_no, $set_date)){
				$j++;
				$set_date[$day_no]=$i;
			$sqlInsert = "INSERT into 
                dates (
                    day_number,date_remarks,`order`,is_uncertain
                ) 
                values (
                    '" . $day_no . "',null,null,null
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
        }
		$type = "success";
        $message = $message."Total ".$i." Rulers inserted<br>";
		$message = $message."Total ".$j." Dates inserted<br>";
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
                    <label class="col-md-4 control-label">Choose Sample CSV
                        File</label> <input type="file" name="sampleFile"
                        id="sampleFile" accept=".csv">
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
