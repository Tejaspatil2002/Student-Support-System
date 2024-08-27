<h1 align="center" style="text-decoration:underline"><a href="">Admin Dashboard</a></h1>
<?php 
//all complaints
$qq=mysqli_query($conn,"select * from faculty ");
$rows=mysqli_num_rows($qq);			
echo "<h2 style='color:green'>Total Number of Faculty : $rows</h2>";	
$q2=mysqli_query($conn,"select * from hod ");
$rows2=mysqli_num_rows($q2);			
echo "<h2 style='color:green'>Total Number of HOD : $rows2</h2>";

//all emegency compalints
$q=mysqli_query($conn,"select * from user");
$r1=mysqli_num_rows($q);			
echo "<h2 style='color:orange'>Total Number of Student : $r1</h2>";	


//all users
$q3=mysqli_query($conn,"select * from faculty_feedback");
$r2=mysqli_num_rows($q3);			
echo "<h2 style='color:black'>Total Number feedback given by users  : $r2</h2>";	


					

?>
