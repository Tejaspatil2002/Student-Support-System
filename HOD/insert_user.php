<?php
include('../dbconfig.php');
	
	$info=$_GET['id'];
	
	if($info!=""){
	$query="insert into user select * from pending_user where id='$info'";
	$a=mysqli_query($conn,$query);
	
     }
mysqli_query($conn,"delete from pending_user where id='$info'");
echo "$abc";
	header('location:index.php?info=pending');

?>