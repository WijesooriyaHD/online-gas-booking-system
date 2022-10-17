<?php


$servername='localhost';
$username='root';
$password='';
$dbname='project_group_03';

$NIC=$_POST["NIC"];
$vehicle_number=$_POST["vehicle_number"];
$Delivered_date=$_POST["Delivered_date"];

$Total_Money=$_POST["Total_Money"];



//Database connection
$conn=mysqli_connect($servername,$username,$password,$dbname);
if (!$conn){
    die("Connection Failed");

}
if(isset($_POST['save'])){
    $mysql="insert into domestic_delivary_boy (Member_NIC,Vehicle_No,Delivered_Dtae,Total_Money) values ('$NIC','$vehicle_number','$Delivered_date','$Total_Money')";
    if(mysqli_query($conn,$mysql)){
        echo "Success";
    }
    else{
        echo "Error".$mysql ."
        ". mysqli_error($conn);
    }
    mysqli_close($conn);
}

?>