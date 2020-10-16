<?php
$servername = 'localhost';
$dbname='delivery_app';
$user='root';
$pass='';

$action = $_POST["action"];
$conn = new mysqli($servername,$user,$pass,$dbname);
if($conn->connect_error){
	die("Connectio Failed:" . $conn->connect_error);
	return;
}

if("GET_ALL" == $action){
	$db_data = array();
	$sql = "SELECT * FROM tbl_sides;"
	$result = $conn->query($sql);

	if($result -> num_rows > 0){
		while($row = $result-> fetch_assoc()){
			$db_data[] = $row;
		}
		echo json_encode($db_data);
	}else{
		echo"error";
	}
	$conn->close();
	return;
}

?>