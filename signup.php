<?php
	include("connection.php");
	include("top_page_singup.php");
	
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


<link rel = "stylesheet" href = "style/forms.css">
<link rel = "stylesheet" href = "main.css">
<link rel = "stylesheet" href = "buttons.css">
<section class="form">
	<form class = "simple" action = "signup.php" method = "post">
		<h1>Student Registeration</h1>
		<table>
			<tr>
				<td class="text">Student ID</td>
				<td> <input required type = "text" name = "Student_ID" placeholder="Username or Email"> </td>
			</tr>
			<tr>
				<td class="text">Student Name</td>
				<td> <input required type = "text" name = "Student_Name" placeholder="Your name"> </td>
			</tr>
			
			<tr>
				<td class="text"> Level: </td>
				<td> <select name = "Level_Code" >
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
				<td class="text"> Password: </td>
				<td> <input required type = "text" name = "Password_Stud" placeholder="Password"> </td>
			</tr>
		</table>
		<button class = 'Add' type = 'submit' name = "submit"> Register </button>
	</form>
	<br>
</section>

