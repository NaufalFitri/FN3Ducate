<?php
	include("connection.php");
	
	if(isset($_POST["submit"])){
		$student_id = $_POST["Student_ID"];
		$student_name = $_POST["Student_Name"];
		$level_code = $_POST["Level_Code"];
		$password_stud = $_POST["Password_Stud"];
		
		$sql = "INSERT INTO student_db VALUES('$student_id', '$level_code', '$student_name', '$password_stud')";
		$result = mysqli_query($connection, $sql);
		
		if ($result == TRUE){
			echo "<br><center> Student successfullly registered into FN3ducate! </center>";
		}
		else {
			echo "<br><center> Error Occured! $sql <br> ".mysqli_error($connection)." </center>";
		}
	}
?>

<link rel = "stylesheet" href = "forms.css">
<link rel = "stylesheet" href = "main.css">
<link rel = "stylesheet" href = "buttons.css">
<h3 class = "head"> Student Sign-Up: </h3>
<form class = "simple" action = "signup.php" method = "post">
	<table>
		<tr>
			<td> Student ID: </td>
			<td> <input required type = "text" name = "Student_ID"> </td>
		</tr>
		
		<tr>
			<td> Student Name: </td>
			<td> <input required type = "text" name = "Student_Name"> </td>
		</tr>
		
		<tr>
			<td> Level: </td>
			<td> <select name = "Level_Code">
				<?php
					$sql = "select * from level_db";
					$data = mysqli_query($connection, $sql);
					while ($code = mysqli_fetch_array($data)){
						echo "<option value = '$code[Level_Code]'> $code[Student_Level] </option>";
					}
				?>
			</td>
		</tr>
		<tr>
			<td> Password: </td>
			<td> <input required type = "text" name = "Password_Stud"> </td>
		</tr>
	</table>
	<button class = 'Add' type = 'submit' name = "submit"> Register! </button>
</form>
<br>

