<?php
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

$sql = "SELECT * FROM word";
$result = $conn->query($sql);
    // output data of each row

$randnumber = rand(10,100000);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Incredible you</title>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="css/style.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
</style>
</head>
<body>
	<div class="main-section">
		<div class="row" style="margin:0px;">
			<div class="container">
				<div class="section1">
					<ul>
						<?php
						while($row = $result->fetch_assoc()) {
						?>
						<li style="cursor:pointer;" title="<?php echo $row["meaning"]; ?>"><p class="wordclass"><?php echo $row["word"]; ?></p></li>
						<?php
						}
						?>
					</ul>

				</div>
				<div class="footer">
					<form action="groupword.php" method="post" id="subscription_order_form">
						<input type="hidden" name="userid" value="<?php echo $randnumber; ?>">
						<input type="hidden" id="setvalue" name="setvalue" />
					
					</form>
					<button id="submit_word" >submit</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		var values = [];
		var count = 0;
$( function() {
  $('li').click( function() {
    $(this).toggleClass("red-cell");
    var text_style=$(this).css("color");
    if(text_style == 'rgb(255, 0, 0)')
    {
     values.push($(this).children('.wordclass').text());
     count++;
    }
    else{
    	values = values.filter(x => x != $(this).children('.wordclass').text());
    	count--;
    }
    document.getElementById("setvalue").value = values;
  } );
} );

$( "#submit_word" ).click(function() {
	if(count > 	25){
		$('#subscription_order_form')[0].submit();
	}else{
		alert('select 24 atleast');
	}
  
});
</script>
</body>
</html>