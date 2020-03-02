<?php
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
				<ul>
					<li class="teams">Pages</li>
					<li class="teams-text"><a href="index.php">Hero page</a></li>
					<li class="teams-text"><a href="index.php">Signup</a></li>
					<li class="teams-text"><a href="index.php">SignIn</a></li>
				</ul>
				<ul>
					<li class="teams">Teams</li>
					<?php
					foreach($teams as $key => $team)
					{
						?>
						<li class="teams-text"><a href="index.php?teamId=<?php echo $team['teamId'];?>"><?php echo $team['teamName'];?></a></li>
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
			<div class="stars">stars</div>
			<div class="hero-image"><?php if(isset($character)){?><img src=" <?php echo $character['characterImage'];  ?>" class="round-hero-image"></div><?php } ?>
			<div class="hero-info">
				<h2>info</h2>
				<?php if(isset($character)){ echo $character['characterDescription']; }?>
			</div>
			<div class="hero-powers">
				<h2>powers</h2>	
			</div>
			<form>
				<input class="textbox-size" type="text">
				<p class="leave-message">Leave a Message</p>
				<input class="input" type="submit" value="Submit">
			</form>
			<ul class="comments">
				<li>
				username:<br>
				comment:
				</li>
			</ul>
		</div>

	</div>

</body>
</html>