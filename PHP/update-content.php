<?php
include('./conn.php');

$data = json_decode(file_get_contents('php://input'), true);

initUpdateContent();

function initUpdateContent()
{

    $contentId = updateContent();
    if ($contentId != -1) {
        $seasonId = updateSeason($contentId);
        insertGenra($contentId);

        // create jsonResponseObj
        $jsonResponse = new stdClass();
        $jsonResponse->contentId = $contentId;
        $jsonResponse->seasonId = $seasonId;

        echo json_encode($jsonResponse);
    }


}


function updateContent()
{
    include('./constents.php');
    global $data;
    global $cnn;

    //content vars
    $contentId = $data[$KEY_contentId];
    $title = getCleanString($data[$KEY_title]);
    $websiteName = $data[$KEY_website];
    $status = $data[$KEY_status];
    $description = getCleanString($data[$KEY_description]);
    $contentLink = $data[$KEY_contentLink];
    $imgSrc = $data[$KEY_imgSrc];


    try {

        //insert query
        $query = "UPDATE `Content` SET 
    `title`='$title',
    `websiteName`='$websiteName',
    `status`='$status',
    `description`='$description',
    `contentLink`='$contentLink',
    `imgSrc`='$imgSrc' 
     WHERE `id` = $contentId";

        //execute query
        $queryResult = $cnn->prepare($query);
        $queryResult->execute();

        //get the last inserted id
        //$contentId = $cnn->lastInsertId();

        return $contentId;
    } catch (PDOException $ex) {

        $errorMsg = $ex->getMessage();
        // create jsonResponseObj
        $jsonResponse = new stdClass();
        $jsonResponse->errorMsg = $errorMsg;
        $jsonResponse->contentId = -1;
        echo json_encode($jsonResponse);


        return -1;
    }

}

function updateSeason($contentId)
{
    include('./constents.php');
    global $data;
    global $cnn;

    //season vars
    $contentSeasonId = $data[$KEY_contentSeasonId];
    $season = $data[$KEY_season];
    $episode = $data[$KEY_episode];
    $seasonId = -1;

    if ($contentId != -1) {
        $query = "UPDATE `ContentSeason` SET 
        `contentId`='$contentId',
        `episode`='$episode',
        `season`='$season' 
         WHERE `id`= $contentSeasonId";


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
    deleteOldGenras();

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

function deleteOldGenras()
{
    include('./constents.php');
    global $data;
    global $cnn;

    //content vars
    $contentId = $data[$KEY_contentId];

    $query = "DELETE FROM `ContentGenraMap` WHERE `contentId`=$contentId ";

    //execute query
    $queryResult = $cnn->prepare($query);
    $queryResult->execute();
}

function getCleanString($string)
{
    $string = str_replace("'", "\'", $string);
    return $string;
}

?>