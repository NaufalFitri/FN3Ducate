<?php
session_start();
include('connection.php');

if(isset($_POST['submit'])){
    $userid = $_POST["username"];
    $password = $_POST["password"];

    $jumpa = FALSE;
    if($jumpa == FALSE ){
        $sql= "SELECT * FROM student_db";
        $result = mysqli_query($connection,$sql);
        while($student = mysqli_fetch_array($result)) {
            if($student["Student_ID"] == $userid && $student["password"] == $password) {
                $jumpa = TRUE;
                $_SESSION['username'] = $student["Student_ID"];
                $_SESSION['name'] = $student["Student_Name"];
                $_SESSION['status'] = 'student';
                break;
            }
        }
    }

    if($jumpa == FALSE){
        $sql = "SELECT * FROM tutor_db";
        $result = mysqli_query($connection,$sql1);
        while($tutor = mysqli_fetch_array($result1)){
            if($tutor["Tutor_ID"] == $userid && $tutor["password"] == $password){
                $jumpa = TRUE;
                $_SESSION['username'] = $tutor["Tutor_ID"];
                $_SESSION['name'] = $tutor["Tutor_Name"];
                $_SESSION['status'] = 'tutor';
                break;
            }
        }
    }

    if($jumpa == TRUE){
        if($_SESSION['status'] == 'student')
            header("Location: dashboard.php");
        else if ($_SESSION['status'] == 'tutor')
            header("Location: desktop_tutor.php");
    }
    else {
        echo "<script>alert('error on username or password'); window.location='login.php'</script>";
    }
}
?>

<html>
<link rel="stylesheet" href="button.css">
<link rel="stylesheet" href="form.css">
<link rel="stylesheet" href="main.css">

<body>
<center>
<img src='picture/1.png'><br>
<img src='picture/2.png'>
</center>
<h3 class="long">LOG IN</h3>
<form class="long" action="login.php" method="post">
<table>
<tr>
<td><img src="picture/user.png"></td>
<td><input type="text" name="username" placeholder="Username"></td>
</tr>
<tr>
<td><img src="picture/pass.png"></td>
<td><input type="password" name="password" placeholder="Password"></td>
</tr>
</table>
<button class="login" type="submit" name="submit">LOGIN</button>

</form>
</body>
</html>
