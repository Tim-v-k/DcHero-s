<?php

session_start();

if(!isset($_SESSION['loggedIn']))
{
    $_SESSION['loggedIn'] = false;
}

include("inc/functions.php");

$teams = getTeams();

if(isset($_GET['teamId']))
{
	$teamId = $_GET['teamId'];
	$heroes = getHeroes($teamId);
}
else
{
	$heroes = getHeroes();
}
if(isset($_GET['characterId']))
{
	$characterId = $_GET['characterId'];
	$character = getCharacter($characterId);
	//$power = getPowers($propertyId);
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

	<div id="main-left">
			<nav>
			<?php
			if(!isset($_SESSION['loggedIn']) || $_SESSION['loggedIn'] == true)
			{
			?>
				<li class="information-page">your account info &#129312</li>
				<li class="information-page"><p>Your userName = <?php echo $_SESSION['userName']; ?></p></li>
				<li class="information-page"><p>Your userId = <?php echo $_SESSION['userId']; ?></p></li>
			<?php
			}
			?>
				<ul>
					<li class="teams">Pages</li>
					<li class="teams-text"><a href="signup.php">Signup</a></li>
					<li class="teams-text"><a href="signin.php">SignIn</a></li>
				</ul>
				<ul>
					<li class="teams">Teams</li>
					<?php
					foreach($teams as $key => $team)
					{
						?>
						<img src="<?php echo $team['teamImage'];?>" class="teamImage"><li class="teams-text"><a href="index.php?teamId=<?php echo $team['teamId'];?>"><?php echo $team['teamName'];?></a></li>
						<?php
					};
					?>
				</ul>
			</nav>
		</div>

		<div id="main-center">
		<?php
		foreach($heroes as $key => $hero)
		{
		?>
			<div class="card-container">
				<div class="image-container"><img src="<?php echo $hero['characterImage'];?>" class="image-size"></div>
				<div class="text-card">
					<h3 class="name-hero"><?php echo $hero['characterName'];?></h3>
					<p class="info-hero"><?php echo $hero['characterDescription'];?></p>
					<a class="more-info-hero" href="index.php?teamId=<?php echo $hero['teamId'];?>&characterId=<?php echo $hero['characterId'];?>">more info</a>
				</div>
			</div>
		<?php
		}
		?>
		</div>

	<div id="main-right">
			<?php
			if(isset($character)){
			?>
		<!-- <form action="<?php //echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
			<fieldset>
				<div class="rate">
					<input type="radio" id="rating10" name="rating" value="10" />
					<label class="lblRating" for="rating10" title="5 stars"></label>

				    <input type="radio" id="rating9" name="rating" value="9" />
				    <label class="lblRating half" for="rating9" title="4 1/2 stars"></label>

				    <input type="radio" id="rating8" name="rating" value="8" />
				    <label class="lblRating" for="rating8" title="4 stars"></label>

				    <input type="radio" id="rating7" name="rating" value="7"  />
				    <label class="lblRating half" for="rating7" title="3 1/2 stars"></label>

				    <input type="radio" id="rating6" name="rating" value="6" />
				    <label class="lblRating" for="rating6" title="3 stars"></label>

				    <input type="radio" id="rating5" name="rating" value="5" />
				    <label class="lblRating half" for="rating5" title="2 1/2 stars"></label>

				    <input type="radio" id="rating4" name="rating" value="4" />
				    <label class="lblRating" for="rating4" title="2 stars"></label>

				    <input type="radio" id="rating3" name="rating" value="3" />
				    <label class="lblRating half" for="rating3" title="1 1/2 stars"></label>

				    <input type="radio" id="rating2" name="rating" value="2" />
				    <label class="lblRating" for="rating2" title="1 star"></label>

				    <input type="radio" id="rating1" name="rating" value="1" />
				    <label class="lblRating half" for="rating1" title="1/2 star"></label>

				    <input type="radio" id="rating0" name="rating" value="0" />
				    <label class="lblRating" for="rating0" title="No star"></label>
				</div>
				<div class="divSubmit">
					<input type="submit" name="submitRating" value="Rate Hero"/>
					<input type="hidden" name="heroId" value="<?php //echo $heroId; ?>"/>
				</div>
			</fieldset>
		</form> -->
			<div class="hero-image"><?php if(isset($character)){?><img src=" <?php echo $character['characterImage'];  ?>" class="round-hero-image"><?php } ?></div>
			<div class="hero-info">
				<?php if(isset($character)){ echo"<h2>info</h2>"; echo $character['characterDescription'];}?>
			</div>
			<div class="hero-powers">
					<?php if(isset($character)){
						echo "<h2>powers</h2>";
						foreach($character["Hero-Powers"] as $heropower){
							 echo $heropower['propertyText']; echo "<br />";
						}
					}
				?>
			</div>
			<?php
		if(!isset($_SESSION['loggedIn']) || $_SESSION['loggedIn'] == true)
		{
        ?>
			<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
				<p class="leave-message">Write a Revieuw!</p>
				<input class="textbox-size" type="text">
				<p class="leave-message">Revieuws from fans!</p>
				<input type="submit" method="POST">
			</form>
		<?php
		}
		else{
			echo "login to comment";
		}
		?>
		<ul class="comments">
			<li>
			comments go here
			</li>
		</ul>
	</div>
	<?php 
	}
	else{
		echo "select a hero!";
	}
	?>
</div>

</body>
</html>