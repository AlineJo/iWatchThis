<?php
include('./conn.php');

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
    include('./constents.php');
    global $data;
    global $cnn;

    //content vars
    $title = $data[$KEY_title];
    $websiteName = $data[$KEY_website];
    $status = $data[$KEY_status];
    $description = $data[$KEY_description];
    $contentLink = $data[$KEY_contentLink];
    $imgSrc = $data[$KEY_imgSrc];

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
    include('./constents.php');
    global $data;
    global $cnn;

    //season vars
    $season = $data[$KEY_season];
    $episode = $data[$KEY_episode];
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
    include('./constents.php');
    global $data;
    global $cnn;

    $ganrasArray = $data[$KEY_ganrasArray];


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