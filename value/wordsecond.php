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
//$userid=89697;
$userid=$_POST['userid'];
$word=$_POST['setvalue'];
$aword = explode(",",$word);
foreach ($aword as $key) {
	//var_dump($key);
	$sql = "SELECT * FROM word WHERE word LIKE '%$key%'";
	$result = $conn->query($sql);
	while($row = $result->fetch_assoc()) {
		//var_dump($row["word"]);
      $insert_userword = "INSERT INTO `userwordsub`(`id`, `userid`, `word`, `meaning`, `sameid`) VALUES ('','".$userid."','".$row["word"]."','".$row["meaning"]."','".$row["sameid"]."')";
      $conn->query($insert_userword);
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<form action="24wordshow.php" id="grupsubmit" method="POST">
	<input type="hidden" name="userid" value="<?php echo $userid; ?>">
</form>
<script type="text/javascript">
	$( document ).ready(function() {
		$('#grupsubmit')[0].submit();
});
</script>
</body>
</html>