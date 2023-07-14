<?php

include 'connect_db.php';

$cust_ID = $_GET['cust_ID'];

$update = "UPDATE customer SET status='$_POST[status]' where cust_ID=$cust_ID";

    $result = mysqli_query($conn,$update) or die("Query failed");
	
	if ($result){ 
		echo '<script language="javascript">
		alert("Data is successfully updated!");
		window.location.href="index.php";</script>';		 
	}
	else{ 
	echo "Problem occured !";
	}
    mysqli_close($conn);	
?>
