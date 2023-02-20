<?php
include('./conn.php');
include('./constents.php');

$data = json_decode(file_get_contents('php://input'), true);

initInsertContent();

function initInsertContent()
{
    $contentId = insertContent();
    $seasonId = insertSeason($contentId);
    insertGenra($contentId);

    // create jsonResponseObj
    $jsonResponse = new stdClass();
    $jsonResponse->contentId = $contentId;
    $jsonResponse->seasonId = $seasonId;

    echo json_encode($jsonResponse);

}


function insertContent()
{
    global $data;
    global $cnn;

    //content vars
    $title = $data["title"];
    $websiteName = $data["website"];
    $status = $data["status"];
    $description = $data["description"];
    $contentLink = $data["contentLink"];
    $imgSrc = $data["imgSrc"];

    $contentId = -1;

    //insert query
    $query = "INSERT INTO `Content` 
 (`title`, `websiteName`, `status`, `description`, `contentLink`, `imgSrc`)
 VALUES 
 ('$title','$websiteName','$status','$description','$contentLink','$imgSrc')";

    //execute query
    $queryResult = $cnn->prepare($query);
    $queryResult->execute();

    //get the last inserted id
    $contentId = $cnn->lastInsertId();


    return $contentId;
}

function insertSeason($contentId)
{
    global $data;
    global $cnn;

    //season vars
    $season = $data["season"];
    $episode = $data["episode"];
    $seasonId = -1;

    if ($contentId != -1) {
        $query = "INSERT INTO `ContentSeason`
    (`contentId`, `episode`, `season`)
     VALUES 
    ('$contentId','$episode','$season')";

        //execute query
        $queryResult = $cnn->prepare($query);
        $queryResult->execute();

        //get the last inserted id
        $seasonId = $cnn->lastInsertId();

        return $seasonId;
    }
}


function insertGenra($contentId)
{
    global $data;
    global $cnn;

    $ganrasArray = $data["ganrasArray"];


    if ($contentId != -1) {

        // Start transaction
        $cnn->beginTransaction();

        $query = "INSERT INTO `ContentGenraMap` (`contentId`, `genra`)  VALUES (?,?)";

        // Prepare statement
        $stmt = $cnn->prepare($query);

        // Perform execute() inside a loop
        foreach ($ganrasArray as $genra) {
            // All seven parameters are passed into the execute() in a form of an array
            $stmt->execute([$contentId, $genra]);
        }

        // Commit the data into the database
        $cnn->commit();

    }
}


?>