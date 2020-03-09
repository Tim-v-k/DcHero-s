<?php

function dBconnect()
{
    $host = "localhost";
    $user = "root";
    $pass = "";
    $database = "dcheroes";
    $connection = mysqli_connect($host, $user, $pass, $database) or die (mysqli_error($connection));

    return $connection;
}

function getTeams()
{
    // connect to database
    $connection = dBconnect();
    // define an empty array to store teams
    $teams = array();

    // define the query to fetch the data from the database
    $getTeamsSQL = "
    SELECT * FROM `teams` ORDER BY `teamId` ASC
    ";

    // preform $query on $con and store resourse
    $resourse = mysqli_query($connection, $getTeamsSQL) or die (mysqli_error($connection));

    while($row = mysqli_fetch_assoc($resourse))
    {
        // add new items to $teams
        $teams[] = $row;
    }

    return $teams;
}

function getHeroes($teamId = false)
{
    // connect to database
    $connection = dBconnect();
    // define an empty array to store teams
    $heroes = array();

    // define the query to fetch the data from the database
    $getHeroesSQL = "
    SELECT * FROM `characters`
    ";

    // when teamId given, expand query string
    if($teamId)
    {
        $getHeroesSQL .=  " WHERE `teamId` = " . $teamId;
    }

    // expand even more
    $getHeroesSQL .=  " ORDER BY `characterId` ASC";

    // preform $query on $con and store resourse
    $resourse = mysqli_query($connection, $getHeroesSQL) or die (mysqli_error($connection));

    while($row = mysqli_fetch_assoc($resourse))
    {
        // add new items to $heroes
        $heroes[] = $row;
    }

    return $heroes;
}

function getCharacter($characterId = false)
{
    // connect to database
    $connection = dBconnect();
    // define an empty array to store teams
    $character = array();
    
    // define the query to fetch the data from the database
    $getCharacterSQL = "
    SELECT * FROM `characters`
    ";
    
    // when characterId given, expand query string

    if($characterId)
    {
        $getCharacterSQL .=  " WHERE `characterId` = " . $characterId;
    }
    
    // preform $query on $con and store resourse
    $resourse = mysqli_query($connection, $getCharacterSQL) or die (mysqli_error($connection));
    
    $character = mysqli_fetch_assoc($resourse);

    $character["Hero-Powers"] = getPowers($character["characterId"]);

    return $character;
}

function getPowers($characterId)
{
    // connect to database
    $connection = dBconnect();
    // define an empty array to store teams
    $power = array();
    
    // define the query to fetch the data from the database
    $getpowerSQL = "
    SELECT * FROM `characters` 
    JOIN `characterproperties` ON `characters`.`characterId` = `characterproperties`.`characterId` 
    JOIN `properties` ON `characterproperties`.`propertyId` = `properties`.`propertyId` 
    WHERE `characters`.`characterId` = " . $characterId;
    
    // preform $query on $con and store resourse
    $resourse = mysqli_query($connection, $getpowerSQL) or die (mysqli_error($connection));
    
    while($row = mysqli_fetch_assoc($resourse))
    {
        // add new items to $power
        $power[] = $row;
    }

    return $power;
}

function saveRating($characterId)
{
    // connect to database
    $connection = dBconnect();
    // define an empty array to store teams
    $Rating = array();
    
    $ratingDate = date("Y-m-d H:i:s");

    $ratingReview = $_POST["ratingReview"];
    $ratingReview = trim($ratingReview); // will remove all white space at begining and end of variable
    mysqli_real_escape_string($connection, $ratingReview); // will remove special text so we cant get hacked using mysql injection

    $rating = $_POST["rating"];
    $rating = trim($rating);
    $rating = (int)$rating; //set to an int

    $characterId = trim($characterId);
    $characterId = (int)$characterId;

    $userId = $_SESSION['userId'];
    $userId = trim($userId); 
    $userId = (int)$userId;

    // define the query to put into the database 
    $saveRatingSQL = "INSERT INTO `rating` (`ratingReview`,`rating`,`ratingDate`,`characterId`,`userId`) VALUES ('$ratingReview','$rating','$ratingDate','$characterId','$userId');
    ";
    
    // preform $query on $con and store resourse
    $resourse = mysqli_query($connection, $saveRatingSQL) or die (mysqli_error($connection));
}

function getRating($characterId)
{
    // connect to database
    $connection = dBconnect();
    // define an empty array to store teams
    $Rating = array();
    
    // define the query to fetch the data from the database
    $getRatingSQL = "
    SELECT * FROM `rating` WHERE `characterId` = " . $characterId;
    ;
    
    // preform $query on $con and store resourse
    $resourse = mysqli_query($connection, $getRatingSQL) or die (mysqli_error($connection));
    
    while($row = mysqli_fetch_assoc($resourse))
    {
        // add new items to $rating
        $Rating[] = $row;
    }

    return $Rating;
}

function getAvarageRating($characterId)
{
    // connect to database
    $connection = dBconnect();

    $getAvarageRatingSQL = "
    SELECT AVG(`rating`) AS stars FROM `rating` WHERE `characterId` = " . $characterId;

    $resourse = mysqli_query($connection, $getAvarageRatingSQL) or die (mysqli_error($connection));
    
    return mysqli_fetch_assoc($resourse);
}