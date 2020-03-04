-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 04:03 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcheroes`
--

-- --------------------------------------------------------

--
-- Table structure for table `characterproperties`
--

CREATE TABLE `characterproperties` (
  `characterPropertiesId` int(10) NOT NULL,
  `characterId` int(5) NOT NULL,
  `propertyId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characterproperties`
--

INSERT INTO `characterproperties` (`characterPropertiesId`, `characterId`, `propertyId`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 5),
(4, 2, 4),
(5, 2, 5),
(6, 2, 14),
(7, 3, 3),
(8, 3, 10),
(9, 3, 1),
(10, 4, 3),
(11, 4, 4),
(12, 4, 15),
(13, 5, 1),
(14, 5, 17),
(15, 5, 18),
(16, 6, 6),
(17, 6, 15),
(18, 6, 20),
(19, 7, 6),
(20, 7, 15),
(21, 8, 6),
(22, 8, 15),
(23, 9, 6),
(24, 9, 15),
(25, 10, 7),
(41, 10, 1),
(42, 10, 17);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `characterId` int(5) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  `characterDescription` varchar(255) NOT NULL,
  `characterImage` varchar(255) NOT NULL,
  `teamId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`characterId`, `characterName`, `characterDescription`, `characterImage`, `teamId`) VALUES
(1, 'Superman', 'Its clark kent who is actually a supernatural alien called a kryptonian.\r\nBut he is also know as Superman', 'img/characters/superman.jpg', 1),
(2, 'Wonder woman', 'Wonder woman also know as Princess Diana of the amazons is a woman who fights for the people of the world.', 'img/characters/wonderwoman.jpg', 1),
(3, 'martian man hunter', 'The martian man hunter can change himself at will move throught walls and much more.', 'img/characters/martian.jpg', 1),
(4, 'aqua man', 'He looks like a human swims like a fish.', 'img/characters/Aquaman.jpg', 1),
(5, 'green lantern', 'Empowered with a ring of power green lantern guards the earth', 'img/characters/greenlantern.jpg', 1),
(6, 'Batman', 'bruce wane also known as batman is the black knight and with his superior intelect he protects Gotham city', 'img/characters/batman.jpg', 2),
(7, 'Nightwing', 'Dick Grayson also known as Nightwing works with batman to protect Gotham', 'img/characters/nightwing.jpg', 2),
(8, 'Batgirl', 'Barbara Gordon is batgirl and fights crime to keep the ciry of gotham safe.', 'img/characters/batgirl.jpg', 2),
(9, 'Robin', 'Tim Drake works as batmans sidekick.', 'img/characters/robin.jpg', 2),
(10, 'Batmite', 'as fifth dimentional imp he can do whatever he wants but hes batman\'s biggest fan.', 'img/characters/batmite.jpg', 2),
(11, 'Bane', 'The one man who has the bains and the brawl Bane is the one man who could stand up to the batman and win. He terrorizes gotham.', 'img/characters/bane.jpg', 3),
(12, 'Darkside', 'True villan of the hero\'s of DC there is no one who hates earth more than Darkside.', 'img/characters/darkside.jpg', 3),
(13, 'Deathstroke', 'Deathstroke a bountyhunter with an impressive healing factor.', 'img/characters/deathstroke.jpg', 3),
(14, 'Joker', 'The worst enemy of batman. he uses his crazy jokes to torment the people of gotham', 'img/characters/joker.jpg', 3),
(15, 'Lex Luthor', 'The man who hates superman the most. Lex is the one man on earth with the means to put superman down for good.', 'img/characters/lexluthor.jpg', 3),
(16, 'Ironman', 'Tony Stark uses his iron man suits to protect the world agenst villians of all kinds.', 'img/characters/ironman.jpg', 4),
(17, 'Hulk', 'Bruce Banner got caught into a science experiment now every time he gets mad he transforms into the hulk a green monster with amazing physical power', 'img/characters/hulk.jpg', 4),
(18, 'Captain Amerika', 'Active in WWII this american super soldier has been frozen into ice and woke up 80 years later into the 21th century.', 'img/characters/cap.jpg', 4),
(19, 'Thor', 'As the son of Odin, Thor protects the mortal world by using his hammer mjolnir.', 'img/characters/thor.jpg', 4),
(20, 'Blackpanther', 'As the king of the land Wakanda Blackpanther protects his people and the world from villians.', 'img/characters/blackpanther.jpg', 4),
(21, 'Wolverine', 'Logan is a mutant with claws coming out of his hands he has been experimented on so that his skeleton is completely composed of an unbreakable metal called adamantine. With his power he protects the other mutants around him.', 'img/characters/wolverine.jpg', 5),
(22, 'Professor X', 'Professor X can use his mind to make people do whatever he wants aswell as read thier minds.', 'img/characters/professorx.jpg', 5),
(23, 'Storm', 'Storm can control the weather and summon lightning.', 'img/characters/storm.jpg', 5),
(24, 'Magneto', 'He can reshape, move, controll any metal at will. ', 'img/characters/magneto.jpg', 5),
(25, 'Phoenix', 'Phoenix cant control her dark powers. She can move objects summon fire and completely destroy the human body in a matter of seconds.', 'img/characters/phoenix.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `propertyId` int(5) NOT NULL,
  `propertyText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`propertyId`, `propertyText`) VALUES
(1, 'can fly'),
(2, 'can breathe fire'),
(3, 'can breathe underwater'),
(4, 'has Super Strength'),
(5, 'has super speed'),
(6, 'Is very smart'),
(7, 'can reschape reality at will'),
(8, 'has full control over the weather'),
(9, 'has a healing factor'),
(10, 'can read minds'),
(11, 'can use Telekinesis'),
(12, 'can use Teleportation'),
(13, 'can bend and reshape metal at will'),
(14, 'can deflect any attack'),
(15, 'is very skilled at hand to hand combat'),
(16, 'is crazy'),
(17, 'can shoot lasers'),
(18, 'can create energy constructs'),
(19, 'can manipulate the mind'),
(20, 'has a very advanced suit of armor to fight his enemys');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(10) NOT NULL,
  `ratingReview` text NOT NULL,
  `rating` int(2) NOT NULL,
  `ratingDate` datetime NOT NULL,
  `characterId` int(5) NOT NULL,
  `userId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teamId` int(3) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `teamImage` varchar(255) NOT NULL,
  `teamDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teamId`, `teamName`, `teamImage`, `teamDescription`) VALUES
(1, 'Justice League', 'img/Teams/justiceleague.jpg', 'Team of superhero\'s that protect the earth.'),
(2, 'Bat family', 'img/Teams/bat.jpg', 'This is the batman family'),
(3, 'DC vilians', 'img/Teams/dcvillains.png', 'Its the villains'),
(4, 'Avengers', 'img/Teams/avengers.jpg', 'Its the avengers'),
(5, 'Xmen', 'img/Teams/xmen.jpg', 'Its the Xmen');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(10) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userPass`, `firstName`, `lastName`) VALUES
(1, 'Timmeh', '8cb2237d0679ca88db6464eac60da96345513964', 'Tim', 'Kol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characterproperties`
--
ALTER TABLE `characterproperties`
  ADD PRIMARY KEY (`characterPropertiesId`),
  ADD KEY `characterId` (`characterId`),
  ADD KEY `propertyId` (`propertyId`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`characterId`),
  ADD KEY `teamId` (`teamId`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`propertyId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`),
  ADD KEY `characterId` (`characterId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characterproperties`
--
ALTER TABLE `characterproperties`
  MODIFY `characterPropertiesId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `characterId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `propertyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `characterproperties`
--
ALTER TABLE `characterproperties`
  ADD CONSTRAINT `characterproperties_ibfk_1` FOREIGN KEY (`characterId`) REFERENCES `characters` (`characterId`),
  ADD CONSTRAINT `characterproperties_ibfk_2` FOREIGN KEY (`propertyId`) REFERENCES `properties` (`propertyId`);

--
-- Constraints for table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`teamId`) REFERENCES `teams` (`teamId`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`characterId`) REFERENCES `characters` (`characterId`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
