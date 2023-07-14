<?php

include 'connect_db.php';

$foodID = $_GET['foodID'];
$delete = "delete from food where foodID='$foodID'";

$result = mysqli_query($conn,  $delete);

if(!$result){
	die('Error: '.mysqli_error($conn));
}
	echo '<script language="javascript">
	alert("Data is successfully deleted!");
	window.location.href="table.php";</script>';

?>
