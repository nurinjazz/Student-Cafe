<?php

include 'connect_db.php';

$bevID = $_GET['bevID'];
$delete = "delete from beverages where bevID='$bevID'";

$result = mysqli_query($conn,  $delete);

if(!$result){
	die('Error: '.mysqli_error($conn));
}
	echo '<script language="javascript">
	alert("Data is successfully deleted!");
	window.location.href="table.php";</script>';

?>
