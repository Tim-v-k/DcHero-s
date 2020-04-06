<?php
require("inc/Databaseconnect.php");

session_start();

if(!isset($_SESSION['loggedIn']))
{
    $_SESSION['loggedIn'] = false;
}

if(isset($_POST['mylogin']))
{
    // form is submitted

    // get posted data from login form

    // define a query to send to the database

    $username = mysqli_real_escape_string($conn, $_POST['userName']);
    $password = mysqli_real_escape_string($conn, $_POST['userPass']);


    $password = sha1($_POST['userPass']);

    $debug = true;


    $stmt = $conn->prepare("SELECT * FROM `users` WHERE `userName` = ?");


    $query = "SELECT * FROM `users` WHERE `userName` = '$username'";
    $result = mysqli_query($conn, $query);

    $result = mysqli_query($conn, "SELECT * FROM `users` WHERE `userName` = '$username'");
    if ($result && mysqli_num_rows($result) > 0)
    {
        $row = $result->fetch_array();
        if ($row['userPass'] == $password)
        {
            $_SESSION['loggedIn'] = true;
            $_SESSION['userName'] = $row['userName'];
            $_SESSION['userId'] = $row['userId'];
        }
    }

}
if(isset($_POST['mylogout']))
{
    // logout
    session_destroy();
    // reload the page
    header("location:" . $_SERVER['PHP_SELF']);
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
		<li class="teams-text-sign"><a href="signup.php">Signup</a></li>
    </div>

    <?php
    // if your not logged in it will show you the inputs to login
    if(!isset($_SESSION['loggedIn']) || $_SESSION['loggedIn'] == false)
    {
        ?>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" id="form-in">
        <input class="input-sign" type="text" name="userName" id="userName" placeholder="Fill in your username">
        <input class="input-sign" type="userPass" name="userPass" id="userPass" placeholder="Fill in your password">
        <input class="buttons" type="submit" value="login" name="mylogin">
    </form>
        <?php
    }
    else
    {
        // if your logged in it will show your username and userid
        ?>
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" id="form-in-info">
            <li class="information">your account info &#129312</li>
            <li class="information"><p>Your userName = <?php echo $_SESSION['userName']; ?></p></li>
            <li class="information"><p>Your userId = <?php echo $_SESSION['userId']; ?></p></li>
            <input class="buttons" type="submit" value="logout" name="mylogout">
        </form>
        <?php
        }
        ?>
</body>
</html>