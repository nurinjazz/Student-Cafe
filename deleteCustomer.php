<?php

include 'connect_db.php';

$cust_ID = $_GET['cust_ID'];
$delete = "delete from customer where cust_ID='$cust_ID'";

$result = mysqli_query($conn,  $delete);

if(!$result){
	die('Error: '.mysqli_error($conn));
}
	echo '<script language="javascript">
	alert("Data is successfully deleted!");
	window.location.href="index.php";</script>';
	
?>
