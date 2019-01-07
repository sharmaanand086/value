<?php 
$userid=$_POST['userid'];
$servername = "localhost";
$username = "xxxxxxxxxxxxxxxx";
$password = "xxxxxxxxxxx";
$dbname = "xxxxxxxxxxxxxxxxxxxxx";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
//var_dump($userid);
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
	<div>
		<span id="countid">0</span>/24
	</div>
<div class="box">	
	<?php
	$a=0;
	$count=0;
	while ($a <= 5)
	{
		//var_dump($a);
		$a++;
		$sql = "SELECT * FROM userwordmain WHERE useid='".$userid."' AND sameid='".$a."'";
		$result = $conn->query($sql);
		$rowcount=mysqli_num_rows($result);
		?>
		<div class="one">
			<?php
			if ($rowcount == 0) {
				# code...
			}else{
			?>
			<h1 style="text-align:center;">Group<?php echo $a; ?></h1>
			<?php
			}
			?>
		<?php
		while($row = $result->fetch_assoc()) {
			if ($row["sameid"] == $a) {
				if($rowcount == 1){
						?>
						
							<li><p class="wordclass" title="<?php echo  $row["meaning"]; ?>" style="color:red;" ><?php echo  $row["word"]; ?></p></li>
						
						<?php
						}
				else{
					?>
							<li><p class="wordclass" title="<?php echo  $row["meaning"]; ?>"><?php echo  $row["word"]; ?></p></li>
						<?php
				}
			} 

		} 
		?>
</div>
		<?php
	}
?>
<div class="footer">
<form action="wordsecond.php" method="post" id="subscription_order_form">
<input type="hidden" name="userid" value="<?php echo $userid; ?>">
<input type="hidden" id="setvalue" name="setvalue" />
</form>
<button id="submit_word" >submit</button>
</div>
</div>
<script type="text/javascript">
	var values = [];
		var count = 0;
$( function() {
  $('li').click( function() {
      if(count == 24){
          var text_style=$(this).css("color");
          
         if(text_style == 'rgb(255, 0, 0)')
            {
                
             values = values.filter(x => x != $(this).children('.wordclass').text());
          	count--;
          	$(this).toggleClass("red-cell");
             document.getElementById("setvalue").value = values;
             $("#countid").html(count);
            } 
      }else{
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
    $("#countid").html(count);
    //alert(values);countid
  }
  } );
} );


$( "#submit_word" ).click(function() {
	if(count == 24){
		$('#subscription_order_form')[0].submit();
	}else{
		alert('select 24 word');
	}
  
});

</script>
</body>
</html>