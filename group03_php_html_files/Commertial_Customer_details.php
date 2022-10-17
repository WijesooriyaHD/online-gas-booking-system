<?php
	$Name = $_POST['Name'];
	$Address = $_POST['Address'];
	$Nic = $_POST['Nic'];
	$E_mail = $_POST['E-mail'];
	$DOB = $_POST['DOB'];
	$ordered_date = $_POST['ordered_date'];
	$Reg_No = $_POST['Reg_No'];
	$Item_No = $_POST['Item_No'];
	$Amount = $_POST['Amount'];
	
	//database connection
	$conn = new mysqli('localhost','root','','project_Group_03');
	if($conn-> connect_error){
		die("Connection Failed : ".$conn->connect_error);
	}
	else{
		$stmt = $conn->prepare("insert into commercial_customer(Name,Address,Customer_NIC,Email,DOB,Ordered_Date,Reg_No,Item_No,Amount) values(?,?,?,?,?,?,?,?,?)");
		$stmt -> bind_param("sssssssii",$Name,$Address,$Nic,$E_mail,$DOB,$ordered_date,$Reg_No,$Item_No,$Amount);
		$stmt ->execute();
		echo "Registration Succesfully";
		$stmt ->close();
		$conn ->close();
	}
?>