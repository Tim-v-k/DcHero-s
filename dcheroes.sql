-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 08:27 AM
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
(5, 'Green lantern', 'its green lantern', 'img/characters/greenlantern.jpg', 1),
(6, 'Batman', 'Its batman', 'img/characters/batman.jpg', 2),
(7, 'Nightwing', 'Its nightwing', 'img/characters/nightwing.jpg', 2),
(8, 'Batgirl', 'Its batgirl', 'img/characters/batgirl.jpg', 2),
(9, 'Robin', 'Its robin', 'img/characters/robin.jpg', 2),
(10, 'Batmite', 'Its batmite', 'img/characters/batmite.jpg', 2),
(11, 'Bane', 'Its bane', 'img/characters/bane.jpg', 3),
(12, 'Darkside', 'Its darkside', 'img/characters/darkside.jpg', 3),
(13, 'Deathstroke', 'Its Deathstroke', 'img/characters/deathstroke.jpg', 3),
(14, 'Joker', 'Its the Joker', 'img/characters/joker.jpg', 3),
(15, 'Lex Luthor', 'Its Lex Luthor', 'img/characters/lexluthor.jpg', 3),
(16, 'Ironman', 'Its Ironman', 'img/characters/ironman.jpg', 4),
(17, 'hulk', 'Its Hulk', 'img/characters/hulk.jpg', 4),
(18, 'Captain Amerika', 'Thats the ass of Amerika', 'img/characters/cap.jpg', 4),
(19, 'Thor', 'Its Thor god of thunder', 'img/characters/thor.jpg', 4),
(20, 'Blackpanther', 'Its a black kitty', 'img/characters/blackpanther.jpg', 4),
(21, 'Wolverine', 'Its the wolverine', 'img/characters/wolverine.jpg', 5),
(22, 'Professor X', 'Its Professor X', 'img/characters/professorx.jpg', 5),
(23, 'Storm', 'Its a Storm RUN!', 'img/characters/storm.jpg', 5),
(24, 'Magneto', 'Its magneto', 'img/characters/magneto.jpg', 5),
(25, 'Phoenix', 'Shes gonna rise like a phoenix', 'img/characters/phoenix.jpg', 5);

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
(9, 'has a factor'),
(10, 'can read minds');

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
  MODIFY `characterPropertiesId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `characterId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `propertyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT;

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
