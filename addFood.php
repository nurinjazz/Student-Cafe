<?php

include 'connect_db.php';

$foodName = $_POST['foodName'];
$description = $_POST['description'];
$price = $_POST['price'];


$update = "insert into food (foodName, description, price) VALUES ('$foodName','$description','$price')";

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