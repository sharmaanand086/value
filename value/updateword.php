<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "stftitle";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM word WHERE word LIKE 'x%'";
$result = $conn->query($sql);
    // output data of each row
while($row = $result->fetch_assoc()) {

$sql = "UPDATE `word` SET `sameid`='4' WHERE word='".$row['word']."'";
$conn->query($sql);

		}
?>