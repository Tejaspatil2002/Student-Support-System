<script type="text/javascript">


function Add(id)
{
	a=confirm('Are You Sure Add !');
	 if(a)
     { 
        window.location.href='insert_user.php?id='+id;
  		}
  }
  function del(id1)
{
	a=confirm('Are You Sure Del !');
	 if(a)
     { 
        window.location.href='delete_user.php?id='+id1;
  		}
     }

</script>	


<?php
	
	echo "<table class='table table-responsive table-bordered table-striped table-hover' style=margin:15px;>";
	echo "<tr class='success'>";
	
	echo "<th>Sr.No</th>";
	echo "<th>Name</th>";
	echo "<th>Email</th>";
	echo "<th>Mobile</th>";
	echo "<th>Department</th>";
	echo "<th>Semester</th>";
	echo "<th>Academic Year</th>";
	echo "<th>Regid Id</th>";
	echo "<th>Add</th>";
	echo "<th>Delete</th>";
	echo "</tr>";
	
	$i=1;
	$que=mysqli_query($conn,"select * from pending_user");
	
	while($row=mysqli_fetch_array($que))
	{
		echo "<tr>";
		echo "<td>".$i."</td>";
		echo "<td>".$row['name']."</td>";
		echo "<td>".$row['email']."</td>";
		echo "<td>".$row['mobile']."</td>";
		echo "<td>".$row['department']."</td>";
		echo "<td>".$row['semester']."</td>";
		echo "<td>".$row['Academic_Year']."</td>";
		echo "<td>".$row['regid']."</td>";
		
		
		
		echo "<td class='text-center'><a href='#' onclick='Add($row[id])'><span style=color:green;>Add</span></a></td>";
		echo "<td class='text-center'><a href='#' onclick='del($row[id])'><span style=color:red;>Delete</span></a></td>";
		
		
		echo "</tr>";
		$i++;
	}
	

	
?>