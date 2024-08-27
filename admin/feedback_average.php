<form method="post">
<table class="table table-hover">
<tr>

<th> Select Faculty</th>
<td>
<select name="faculty" class="form-control">
	<?php
	$sql=mysqli_query($conn,"select * from faculty");
	while($r=mysqli_fetch_array($sql))
	{
	echo "<option value='".$r['email']."'>".$r['Name']."</option>";
	}
		 ?>
</select>
</td>
<td><input name="sub" type="submit" value="Check Average" class="btn btn-success"/></td>
</tr>
</table>
</form>
<hr style="border:1px solid red"/>


<?php
extract($_POST);
if(isset($sub))
{
//Count total Votes
$r=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
$c=mysqli_num_rows($r);	
echo "<h4>Total Student Attempts : ".$c."</h4>";



/*
$r1=mysqli_query($conn,"select * from feedback where faculty_id='$faculty'");
$c1=mysqli_fetch_assoc($r1);	
echo "<h4>Total Student Attempts : ".$c1[3]."</h4>";

*/

//question 1 start
error_reporting(1);
$q=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
while($res=mysqli_fetch_array($q))
{
	if($res[3]==5)
	{
	$stongly_agree++;
	} 
	else if($res[3]==4)
	{
	$agree++;
	}
	else if($res[3]==3)
	{
	$neutral++;
	}
	else if($res[3]==2)
	{
	$disagree++;
	}
	else if($res[3]==1)
	{
	$strongly_disagree++;
	}
	
}
//question 1 end


//question 2 start
$q2=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
while($res=mysqli_fetch_array($q2))
{
	if($res[4]==5)
	{
	$stongly_agree1++;
	} 
	else if($res[4]==4)
	{
	$agree++;
	}
	else if($res[4]==3)
	{
	$neutral++;
	}
	else if($res[4]==2)
	{
	$disagree++;
	}
	else if($res[4]==1)
	{
	$strongly_disagree++;
	}
	
}
$q=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
while($res=mysqli_fetch_array($q))
{
	if($res[5]==5)
	{
	$stongly_agree++;
	} 
	else if($res[5]==4)
	{
	$agree++;
	}
	else if($res[5]==3)
	{
	$neutral++;
	}
	else if($res[5]==2)
	{
	$disagree++;
	}
	else if($res[5]==1)
	{
	$strongly_disagree++;
	}
	
}
//question 1 end


//question 2 start
$q2=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
while($res=mysqli_fetch_array($q2))
{
	if($res[6]==5)
	{
	$stongly_agree1++;
	} 
	else if($res[6]==4)
	{
	$agree++;
	}
	else if($res[6]==3)
	{
	$neutral++;
	}
	else if($res[6]==2)
	{
	$disagree++;
	}
	else if($res[6]==1)
	{
	$strongly_disagree++;
	}
	
}
//question 2 end
$q2=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
while($res=mysqli_fetch_array($q2))
{
	if($res[7]==5)
	{
	$stongly_agree1++;
	} 
	else if($res[7]==4)
	{
	$agree++;
	}
	else if($res[7]==3)
	{
	$neutral++;
	}
	else if($res[7]==2)
	{
	$disagree++;
	}
	else if($res[7]==1)
	{
	$strongly_disagree++;
	}
	
}
//count 
$t=$stongly_agree+$stongly_agree1;
echo $t;
$q=mysqli_query($conn,"select * from faculty_feedback where faculty_id='$faculty'");
while($res=mysqli_fetch_array($q))
{
$count+=$res[5];
$count+=$res[6];
$count+=$res[7];
$count+=$res[8];
$count+=$res[9];
$count+=$res[10];
$count+=$res[11];
$count+=$res[12];
$count+=$res[13];
$count+=$res[14];
$count+=$res[15];

}
//echo $count;
}
?>
