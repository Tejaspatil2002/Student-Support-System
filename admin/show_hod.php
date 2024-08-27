


<?php
	echo "<table class='table table-responsive table-bordered table-striped table-hover' style=margin:15px;>";
	echo "<tr>";
	
	echo "<th>S.No</th>";
	echo "<th>Name</th>";
	echo "<th>Designation</th>";
	echo "<th>HOD</th>";
	echo "<th>User Name</th>";	
	echo "<th>Email</th>";
	echo "<th>Mobile</th>";
	echo "<th>Password</th>";
	echo "<th>Update</th>";
	echo "<th>Status</th>";
	echo "</tr>";
	
	$i=1;
	$que=mysqli_query($conn,"select * from hod");
	
	while($row=mysqli_fetch_array($que))
	{
		echo "<tr>";
		echo "<td>".$i."</td>";
		echo "<td>".$row['Name']."</td>";
		echo "<td>".$row['designation']."</td>";
		echo "<td>".$row['department']."</td>";
		echo "<td>".$row['user_alias']."</td>";
		echo "<td>".$row['email']."</td>";
		echo "<td>".$row['mobile']."</td>";
		echo "<td>".$row['password']."</td>";
		echo "<td class='text-center'><a href='dashboard.php?id=$row[id]&info=edit_hod'><span class='glyphicon glyphicon-pencil'style=color:green;></span></a></td>";
	
		
		
		
		if($row['status'])
		{
		echo "<td><a href='update_status_hod.php?user_id=".$row['id']."&status=".$row['status']."'><span class='glyphicon glyphicon-user' style=color:red;></span></a></td>";
		}
		else
		{
		echo "<td><a href='update_status_hod.php?user_id=".$row['id']."&status=".$row['status']."'><span class='glyphicon glyphicon-user' style=color:green;></span></a></td>";
		}
		echo "</tr>";
		$i++;
	}
	
?>