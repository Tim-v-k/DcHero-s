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
    $getHeroesSQL .=  " ORDER BY `characterName` ASC";

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

    return $character;
}