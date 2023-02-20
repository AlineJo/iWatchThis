<?php
include('./conn.php');
include('./constents.php');


$query = "SELECT * FROM $VIEW_ViewContentAll";
$queryResult= $cnn->query($query)->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($queryResult);

?>

