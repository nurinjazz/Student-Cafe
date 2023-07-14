<?php

include 'connect_db.php';

$bevID = $_GET['bevID'];

$update = "UPDATE beverages SET bevName='$_POST[bevName]', description='$_POST[description]', price='$_POST[price]' where bevID=$bevID";

    $result = mysqli_query($conn,$update) or die("Query failed");
	
	if ($result){ 
		echo '<script language="javascript">
		alert("Data is successfully updated!");
		window.location.href="table.php"</script>';	
		
	}
	else{ 
	echo "Problem occured !";
	}
    mysqli_close($conn);	
?>