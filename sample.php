<?php 
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'sample_test';
$connect = mysqli_connect( $host, $user, $password, $database);
?>

<html>
<head>
<title> Example Page! </title>
<style>
	body {
		font-family: "Verdana";
	}
</style>
</head>
<body>
<h6> If you can see this, then the connection is successful! </h6>
<a href = "google.com"> Google </a>
</body>
</html>