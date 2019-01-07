<?php 
//$userid=89697;
$userid=$_POST['userid'];
$servername = "localhost";
$username = "xxxxxxxxxxxxxxxx";
$password = "xxxxxxxxxxx";
$dbname = "xxxxxxxxxxxxxxxxxxxxx";
var_dump($userid);
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="css/style.css">
	<style>
	.box{
		width:100%;
		border:1px solid #000;
		/*display:inline-block;*/
	}
	.one{
    width: 100%;
    display: inline-block;
}
	.wordclass {
    border: 1px solid #000;
    margin: 1%;
    width: 10%;
    float: left;
    text-align: center;
        cursor: pointer;
}
.one li.red-cell {
    color: #F00; /* Or some other color */
}
li{
	list-style: none;
}
</style>
</head>
<body>
<div class="box">	
	<?php

		//var_dump($a);
		$sql = "SELECT * FROM finalword WHERE userid='".$userid."'";
		$result = $conn->query($sql);
		?>
		<div class="one">
		<?php
		while($row = $result->fetch_assoc()) {
						?>
							<li><p class="wordclass" title="<?php echo  $row["meaning"]; ?>"><?php echo  $row["word"]; ?></p></li>
						
						<?php

		} 
		?>
</div>	
</div>
