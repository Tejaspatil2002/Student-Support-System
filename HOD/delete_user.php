<?php
include('../dbconfig.php');
	
	$info=$_GET['id'];
	
mysqli_query($conn,"delete from pending_user where id='$info'");
echo "$abc";
	header('location:index.php?info=pending');

?>