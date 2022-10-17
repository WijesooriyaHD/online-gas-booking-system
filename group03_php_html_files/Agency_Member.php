<?php
	
	$Address = $_POST['Address'];
	$Nic = $_POST['Nic'];
	$phone = $_POST['phone'];
	$DOB = $_POST['DOB'];
	$Gender = $_POST['Gender'];
	
	//database connection
	$conn = new mysqli('localhost','root','','project_Group_03');
	if($conn-> connect_error){
		die("Connection Failed : ".$conn->connect_error);
	}
	else{
		$stmt = $conn->prepare("insert into Agency_Member(Address,Member_NIC,Tele_No,DOB,Sex) values(?,?,?,?,?)");
		$stmt -> bind_param("ssiss",$Address,$Nic,$phone,$DOB,$Gender);
		$stmt ->execute();
		echo "Registration Succesfully";
		$stmt ->close();
		$conn ->close();
	}
?>