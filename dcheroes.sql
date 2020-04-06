-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 10:14 PM
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
(26, 10, 12),
(27, 11, 4),
(28, 11, 6),
(29, 11, 16),
(30, 12, 4),
(31, 12, 5),
(32, 12, 6),
(33, 12, 17),
(34, 13, 6),
(35, 13, 15),
(36, 13, 9),
(37, 14, 16),
(38, 14, 15),
(39, 14, 6),
(40, 15, 6),
(41, 10, 1),
(42, 10, 17),
(43, 16, 17),
(44, 16, 6),
(45, 17, 6),
(46, 17, 9),
(47, 17, 4),
(48, 17, 5),
(49, 18, 6),
(50, 18, 4),
(51, 18, 15),
(52, 19, 1),
(53, 19, 4),
(54, 19, 5),
(55, 19, 8),
(56, 20, 4),
(57, 20, 15),
(58, 20, 20),
(59, 21, 4),
(60, 21, 9),
(61, 21, 14),
(62, 22, 6),
(63, 22, 19),
(64, 22, 10),
(65, 23, 1),
(66, 23, 8),
(67, 24, 6),
(68, 24, 13),
(69, 25, 1),
(70, 25, 7),
(71, 25, 11),
(72, 25, 19),
(73, 25, 2),
(74, 16, 20),
(75, 15, 20);

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
(1, 'Can fly'),
(2, 'Can breathe fire'),
(3, 'Can breathe underwater'),
(4, 'Has Super Strength'),
(5, 'Has super speed'),
(6, 'Is very smart'),
(7, 'Can reschape reality at will'),
(8, 'Has full control over the weather'),
(9, 'Has a healing factor'),
(10, 'Can read minds'),
(11, 'Can use Telekinesis'),
(12, 'Can use Teleportation'),
(13, 'Can bend and reshape metal at will'),
(14, 'Can deflect any attack'),
(15, 'Is very skilled at hand to hand combat'),
(16, 'Is crazy'),
(17, 'Can shoot lasers'),
(18, 'Can create energy constructs'),
(19, 'Can manipulate the mind'),
(20, 'Has a very advanced suit of armor to fight his enemys');

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

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingId`, `ratingReview`, `rating`, `ratingDate`, `characterId`, `userId`) VALUES
(5, 'hi', 5, '2020-03-08 20:25:57', 1, 1),
(6, 'hi', 5, '2020-03-08 20:34:08', 1, 1),
(7, 'hi', 5, '2020-03-08 20:35:36', 1, 1),
(11, 'bad', 2, '2020-03-08 21:09:15', 1, 1),
(19, 'woop\r\nwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoopwoop', 4, '2020-03-08 21:31:22', 1, 1);

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
  MODIFY `characterPropertiesId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

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
  MODIFY `ratingId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
