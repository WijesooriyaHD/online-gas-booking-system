<?php

$servername='localhost';
$username='root';
$password='';
$dbname='project_group_03';


$Member_NIC=$_POST['Member_NIC'];
$boy_nic=$_POST['boy_nic'];
$date=$_POST['date'];
$TM=$_POST['TM'];
$CCNIC=$_POST['CCNIC']

//Database connection
$conn=mysqli_connect($servername,$username,$password,$dbname);

if (!$conn){
    die("Connection Failed");

}
if(isset($_POST['save'])){
    $mysql="insert into sales_manager(Member_NIC,Member_NIC_DB,Delivered_Dtae,Total_Money,Customer_NIC) values ('$Member_NIC','$boy_nic','$date','$TM','$CCNIC')";
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