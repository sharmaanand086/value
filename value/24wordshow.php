<?php
//$userid = 89697; 
$userid=$_POST['userid'];
$servername = "localhost";
$username = "xxxxxxxxxxxxxxxx";
$password = "xxxxxxxxxxx";
$dbname = "xxxxxxxxxxxxxxxxxxxxx";
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
	<div>
		<span id="countid">0</span>/6
	</div>
<div class="box">	
	<?php
	$a=0;
	$count=0;
		//var_dump($a);
		$sql = "SELECT * FROM userwordsub WHERE userid='".$userid."'";
		$result = $conn->query($sql);
		//var_dump($result);
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
<div class="footer">
<form action="wordthird.php" method="post" id="subscription_order_form">
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
      if(count == 6){
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
	if(count ==  6){
		$('#subscription_order_form')[0].submit();
	}else{
		alert('select Only 6 Word');
	}
  
});

</script>
</body>
</html>