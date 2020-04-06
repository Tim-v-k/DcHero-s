<?php
session_start();

require("inc/Databaseconnect.php");

if (isset($_POST["submit"]))
{
    if(!$conn)
    {
        die("could not connect:" . mysqli_error());
    }
    else
    {
        $errors = [];

        $firstname = $_POST["firstname"];
        $firstname = trim($firstname); // will remove all white space at begining and end of variable
        mysqli_real_escape_string($conn, $firstname); // will remove special text so we cant get hacked using mysql injection

        if($firstname == "")
        {
            $errors[] = "Fill in your firstname";
        }

        $lastname = $_POST["lastname"];
        $lastname = trim($lastname); // will remove all white space at begining and end of variable
        mysqli_real_escape_string($conn, $lastname); // will remove special text so we cant get hacked using mysql injection

        if($lastname == "")
        {
            $errors[] = "Fill in your lastname";
        }

        $username = $_POST["username"];
        $username = trim($username); // will remove all white space at begining and end of variable
        mysqli_real_escape_string($conn, $username); // will remove special text so we cant get hacked using mysql injection

        if($username == "")
        {
            $errors[] = "Fill in your username";
        }

        $password = $_POST["password"];
        $password = trim($password);
        mysqli_real_escape_string($conn, $password);
        if($password == "")
        {
            $errors[] = "Fill in your password";
        }

        if(count($errors) == 0)
        {
            // encrypt password with sha1 (password will be very long)
            $password = sha1($password);

            // then, define insert query
            $query = "INSERT INTO `users` (`firstName`,`lastName`,`userPass`,`userName`) VALUES ('$firstname','$lastname','$password','$username');";
            // run the query on the database
            mysqli_query($conn, $query);
        }
    }
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="DC Heroes">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>DC Heroes - Code Example Layout</title>
</head>
<body>

	<header id="header">
		<a href="index.php"><img src="img/dclogo.png" id="logo"><h2 id="header-text">Heroes</h2></a>
	</header>
	
	<div id="main-container">
    <p id="Welcome-text">Welcome to DC Heroes</p>
        <li class="teams-sign">Pages</li>
		<li class="teams-text-sign"><a href="index.php">Hero page</a></li>
        <li class="teams-text-sign"><a href="signin.php">SignIn</a></li>
        
    <form method="POST" action="" id="form">
        <input class="input-sign" type="text" name="firstname" placeholder="Fill in your first name">
        <input class="input-sign" type="text" name="lastname" placeholder="Fill in your last name">
        <input class="input-sign" type="text" name="username" placeholder="Fill in your user name">
        <input class="input-sign" type="text" name="password" placeholder="Fill in your password">
        <input class="button" type="submit" name="submit" value="Make my account">
    </form>

    <?php
    // echo's errors if  they are set
    if(isset($errors) && count($errors) > 0)
    {
        echo "<div class=\"errorList\">\n";
        echo "\t\t<ul>\n";
        foreach($errors as $key => $value)
        {
            ?>
            <li><?php echo $value; ?></li>
            <?php
        }
        echo "</ul>";
        echo "</div>";
    }
    ?>
    </div>
</body>
</html>