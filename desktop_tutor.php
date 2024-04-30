<?php 
	include 'progmega/top_page_student.php';
	include 'connection.php';

	session_start();
		$tutor_name = $_SESSION["Tutor_Name"];
		$tutor_id = $_SESSION["Tutor_ID"];
		
		$sql = "select * from tutor_db WHERE Tutor_ID = $tutor_id";
		$result = mysqli_query($connection, $sql);
		
		if($result && mysqli_num_rows($result) > 0)
		{
			$row = mysqli_fetch_assoc($result);
			$tutor_name = $row["Tutor_Name"];
		}else{
			$tutor_name = "Unknown";
		}
		
		
		include 'subject.php';
			$subject_name = $_GET["Subject_Name"];
			
			$subject_name = mysqli_real_escape_string($connection, $subject_name);
			
			$sql1 = "select * from subject_db WHERE Subject_Name = '$subject_name'";
			$result1 = mysqli_query($connection, $sql1);
			
			if($result1 && mysqli_num_rows($result1) > 0)
			{
				$row = mysqli_fetch_assoc($result1);
				$subject_name_from_db = $row["Subject_Name"];
			}else{
				$subject_name_from_db = "No Data";
			}
			
			$booking_date = $_SESSION["Booking_Date"];
			$tutor_id = $_SESSION["Tutor_ID"];
			
			$sql2 = "select * from booking_db WHERE Tutor_ID = $tutor_id";
			$result2 = mysqli_query($connection, $sql2);
			
			if($result2 && mysqli_num_rows($result2) > 0)
			{
				$row = mysqli_fetch_assoc($result2);
				$booking_date = $row["Booking_Date"];
			}else{
				$booking_date = "error";
			}


?>









<link rel="stylesheet" href="top_page.css">
<link rel="stylesheet" href="styleaina.css">
<link rel="stylesheet" href="style/top_page.css">


<center>
	<img src="">
	<h2> Welcome back,<?php echo $tutor_name ?></h2>
	<p>You can naviagte all of your schedules, </p>
	<p>students and recently updated</p>
	<p>notifications here</p>
</center>



<body>
	<h2>Classes</h2>
	<table>
		<tr>
			<td align="right">
				<button class="desktop_tutor2"><a href="desktop_tutor2.php">View all ></a></button>
			</td>
		<div class="container">
				<div class="box">
					<h2><?php echo $subject_name_from_db?></h2>
					<ul>
						<li>16 Files</li>
						<li><?php echo $tutor_name ?></li>
					</ul>
				</div>
				<div class="box">
					<h2><?php echo $subject_name_from_db?></h2>
					<ul>
						<li>10 Files</li>
						<li><?php echo $tutor_name ?></li>
					</ul>
				</div>
		</div>
		</tr>	
		
	<h2>Schedule</h2>
	<table>
		<tr>
		<td align="right">
			<button class="desktop_tutor2"><a href="scheduletut.php">View all ></a></button>
		</td>
		<div class="container">
			<div class="box">
				<h2><?php echo $booking_date ?></h2>
			</div>
			<div class="box">
				<h2><?php echo $booking_date ?></h2>
			</div>
			<div class="box">
				<h2><?php echo $booking_date ?></h2>
			</div>
		</div>
		</tr>	
		
		
		<tr><b>Book your class now!</b></tr>
		<br>
		<button class="booking"><a href="booking.php">Booking</a></button>
		</div>
	</table>
	
	
