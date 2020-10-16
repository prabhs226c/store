<?php
require_once('db.php');

$query = 'SELECT * FROM tbl_sides';
$stm = $db->prepare($query);
$stm->execute();
$row = $stm->fetch(PDO::FETCH_ASSOC);
echo json_encode($row);