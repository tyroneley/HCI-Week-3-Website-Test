<?php

$name = $_POST['name'];
$major = $_POST['major'];
$date = $_POST['date'];
$message = $_POST['message'];
$campus = $_POST['campus'];

// Database connection
$conn = new mysqli('localhost','root','','db_week3');
if($conn->connect_error){
	echo "$conn->connect_error";
	printf("Connection failed");
	die("Connection Failed : ". $conn->connect_error);
} else {
	$stmt = $conn->prepare("insert into registration(name, major, date, message, campus) values(?, ?, ?, ?, ?, ?)");
	$stmt->bind_param("sssssi", $name, $major, $date, $message, $campus);
	$execval = $stmt->execute();
	echo $execval;
	echo "Registration successfully...";
	$stmt->close();
	$conn->close();
}
?>