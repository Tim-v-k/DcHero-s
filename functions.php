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
        // add new items to $teams
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

    /*
    echo "<pre>";
    var_dump($character);
    echo "</pre>";

    die("doei");
    */

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
        // add new items to $teams
        $power[] = $row;
    }

    return $power;
}