<?php 
extract($_POST);
if(isset($save))
{
//check user alereay exists or not
$sql=mysqli_query($conn,"select * from pending_user where email='$e'");

$r=mysqli_num_rows($sql);

if($r==true)
{
$err= "<font color='red'><h3 align='center'>This user already exists</h3></font>";
}
else
{
//dob
$dob=$yy."-".$mm."-".$dd;

//hobbies
$hob=implode(",",$hob);

//image
$imageName=$_FILES['img']['name'];


//encrypt your password
$pass=md5($p);
$year = date("Y");


$query="insert into pending_user values('','$n','$e','$pass','$mob','$pro','$sem','$gen','$hob','$imageName','$dob','$year',now())";
mysqli_query($conn,$query);

//upload image

mkdir("images/$e");
move_uploaded_file($_FILES['img']['tmp_name'],"images/$e/".$_FILES['img']['name']);


$err="<font color='blue'><h3 align='center'>Request Pending !!<h3></font>";

}
}




?>
<style type="text/css">
	.row{
		

	}
	table {
            margin: 0 auto;
            font-size: large;
            border: 5px solid white;
        }
        Tr,Td{
            font-weight: bold;
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        Td {
            color: white;
            background-color: black;
            border: 1px solid black;
        }
        Tr{
            background-color: yellow;

        }
</style>


		<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<form method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="margin-bottom:50px;">
	<caption><h2 align="center" style="color: black;"><b>Registration Form</b></h2></caption>
	<Tr>
		<Td colspan="2"><?php echo @$err;?></Td>
	</Tr>
				
				<tr>
					<td>Enter Your name</td>
					<Td><input  type="text" name="n" class="form-control" required/></td>
				</tr>
				<tr>
					<td>Enter Your Enrollment No. </td>
					<Td><input type="text" name="e" class="form-control" required/></td>
				</tr>
				
				<tr>
					<td>Enter Your Password </td>
					<Td><input type="password" name="p" class="form-control" required/></td>
				</tr>
				
				<tr>
					<td>Enter Your Mobile </td>
					<Td><input type="text" name="mob" class="form-control" required/></td>
				</tr>
				
				<tr>
					<td>Select Your Course</td>
					<Td><select name="pro" class="form-control" required>
					
					<option>Computer</option>
					<option>Mechanical</option>
					<option>Civil</option>
					<option>Electrical</option>
					<option>Electronic</option>
					</select>
					</td>
				</tr>
				
				<tr>
					<td>Select Your Semester</td>
					<Td><select name="sem" class="form-control" required>
					
					<option>i</option>
					<option>ii</option>
					<option>iii</option>
					<option>iv</option>
					<option>v</option>
					<option>vi</option>
					<option>vii</option>
					<option>viii</option>
					</select>
					</td>
				</tr>
				
				<tr>
					<td>Select Your Gender</td>
					<Td>
				Male<input type="radio" name="gen" value="m"/>
				Female<input type="radio" name="gen" value="f"/>	
					</td>
				</tr>
				
				<tr>
					<td>Choose Your hobbies</td>
					<Td>
					<input value="reading" type="checkbox" name="hob[]"/> Reading
					<input value="singin" type="checkbox" name="hob[]"/> Singing
					
					<input value="playing" type="checkbox" name="hob[]"/> Playing
					</td>
				</tr>
				
				
				<tr>
					<td>Upload  Your Image </td>
					<Td><input type="file" name="img" class="form-control" required/></td>
				</tr>
				
				<tr>
					<td>Enter Your DOB</td>
					<Td>
					<select style="width:100px;float:left" name="yy" class="form-control" required>
					<option value="">Year</option>
					<?php 
					for($i=1950;$i<=2016;$i++)
					{
					echo "<option>".$i."</option>";
					}					
					?>
					
					</select>
					
					<select style="width:100px;float:left" name="mm" class="form-control" required>
					<option value="">Month</option>
					<?php 
					for($i=1;$i<=12;$i++)
					{
					echo "<option>".$i."</option>";
					}					
					?>
					
					</select>
					
 					
					<select style="width:100px;float:left" name="dd" class="form-control" required>
					<option value="">Date</option>
					<?php 
					for($i=1;$i<=31;$i++)
					{
					echo "<option>".$i."</option>";
					}					
					?>
					
					</select>
					
					</td>
				</tr>
				
				<tr>
					
					
<Td colspan="2" align="center">
<input type="submit" value="Save" class="btn btn-info" name="save"/>
<input type="reset" value="Reset" class="btn btn-info"/>
				
					</td>
				</tr>
			</table>
		</form>
		</div>
		<div class="col-sm-2"></div>
		</div>
	</body>
</html>