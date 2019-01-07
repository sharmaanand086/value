<?php
$servername = "localhost";
$servername = "localhost";
$username = "xxxxxxxxxxxxxxxx";
$password = "xxxxxxxxxxx";
$dbname = "xxxxxxxxxxxxxxxxxxxxx";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$cart = array();
$userid=$_POST['userid'];
$word=$_POST['setvalue'];

$sql = "SELECT * FROM word WHERE word LIKE '%$word%'";
	$result = $conn->query($sql);
	while($row = $result->fetch_assoc()) {
      $insert_userword = "INSERT INTO `finalword`(`id`, `meaning`, `userid`, `word`, `sameid`) VALUES ('','".$row["meaning"]."','".$userid."','".$row["word"]."','".$row["sameid"]."')";
      $conn->query($insert_userword);
	}
$sql1 ="DELETE FROM `userlastsub` WHERE `word` LIKE '%$word%' AND `userid`='$userid'";
$conn->query($sql1);

$sql2 = "SELECT * FROM `userlastsub` WHERE `userid`='$userid'";
$result2 = $conn->query($sql2);
$rowcount=mysqli_num_rows($result2);
//var_dump($rowcount);
if ($rowcount == 1) {
	while($row2 = $result2->fetch_assoc()) {
      $insert_userword = "INSERT INTO `finalword`(`id`, `meaning`, `userid`, `word`, `sameid`) VALUES ('','".$row["meaning"]."','".$userid."','".$row2["word"]."','".$row2["sameid"]."')";
      $conn->query($insert_userword);
      $lastword = $row2["word"];
      $sql3 ="DELETE FROM `userlastsub` WHERE `word` LIKE '%$lastword%' AND `userid`='$userid'";
$conn->query($sql3);
?>
	<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<form action="wordvalue.php" id="grupsubmit" method="POST">
	<input type="hidden" name="userid" value="<?php echo $userid; ?>">
</form>
<script type="text/javascript">
	$( document ).ready(function() {
		$('#grupsubmit')[0].submit();
});
</script>
</body>
</html>
<?php

	}
}else{
	?>
	<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<form action="6wordshow.php" id="grupsubmit" method="POST">
	<input type="hidden" name="userid" value="<?php echo $userid; ?>">
</form>
<script type="text/javascript">
	$( document ).ready(function() {
		$('#grupsubmit')[0].submit();
});
</script>
</body>
</html>
	<?php
}
