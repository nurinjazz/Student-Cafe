<?php

include 'connect_db.php';

$foodID = $_GET['foodID'];

$update = "UPDATE food SET foodName='$_POST[foodName]',description='$_POST[description]', price='$_POST[price]' where foodID=$foodID";

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