<?php
	

	
	$servername='localhost';
	$username='root';
	$password='';
	$dbname = "project_group_03";



	
	//Dtabase connection
	
	$conn=mysqli_connect($servername,$username,$password,"$dbname");
	if(!$conn){
		
		die('Could not Connect My Sql:' .mysql_error());

	}



	if(isset($_POST['save']))
	{	 
	 
	$Vehicle_No=$_POST['Vehicle_Number'];
	$Agency_Reg_No=$_POST['Agency_Number'];

	 $sql = "INSERT INTO  vehicle (Agency_Reg_No,Vehicle_No)
	 VALUES ('$Agency_Reg_No','$Vehicle_No')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
		" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}					



	
	





?>


