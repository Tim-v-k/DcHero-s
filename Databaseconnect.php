<?php


// database connection file
// include this in any file where needed

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dcheroes";

$conn = new mysqli($servername, $username, $password, $dbname);

if (!$conn)
{
    die("connection failed");
}
?>
