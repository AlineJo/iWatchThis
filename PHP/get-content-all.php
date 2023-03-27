<?php
include('./conn.php');
include('./constents.php');

$contnetQuery = "SELECT * FROM $VIEW_ViewContentAll";
$contnetQueryResult= $cnn->query($contnetQuery)->fetchAll(PDO::FETCH_ASSOC);


$genraQuery = "SELECT * FROM `ContentGenra`";
$genraQueryResult= $cnn->query($genraQuery)->fetchAll(PDO::FETCH_ASSOC);

// create response object that contain both the food item and its extras
$jsonResponse = new stdClass();
$jsonResponse -> content = $contnetQueryResult;
$jsonResponse -> genras = $genraQueryResult;


echo json_encode($jsonResponse);

?>

