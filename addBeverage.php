<?php

include 'connect_db.php';

$bevName = $_POST['bevName'];
$description = $_POST['description'];
$price = $_POST['price'];


$update = "insert into beverages (bevName, description, price) VALUES ('$bevName','$description','$price')";

    $result = mysqli_query($conn,$update) or die("Query failed");
	
	if ($result){ 
		echo '<script language="javascript">
		alert("Data is successfully added!");
		window.location.href="table.php";</script>';		
	}
	else{ 
	echo "Problem occured !";
	}
    mysqli_close($conn);	
?>