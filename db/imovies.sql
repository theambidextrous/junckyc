-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2019 at 10:31 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerId` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `EmailAddress` varchar(50) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `PhoneNumber` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
CREATE TABLE IF NOT EXISTS `hall` (
  `HallId` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Capacity` int(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  PRIMARY KEY (`HallId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`HallId`, `Name`, `Capacity`, `Status`) VALUES
('1', 'Scree 1', 50, '1'),
('2', 'Screen 2', 40, '1');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `MovieId` int(50) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Banner` varchar(50) NOT NULL,
  `Plot` varchar(500) NOT NULL,
  `Trailer` varchar(50) NOT NULL,
  `Writers` varchar(200) NOT NULL,
  `Directors` varchar(200) NOT NULL,
  `Cast` varchar(200) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Ratings` varchar(200) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`MovieId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MovieId`, `Title`, `Banner`, `Plot`, `Trailer`, `Writers`, `Directors`, `Cast`, `ReleaseDate`, `Ratings`, `Status`) VALUES
(1, 'Avengers Endgame', '1.jpg', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos\' actions and restore order to the universe.', 'Gxy28omeCNg', ' Christopher Markus (screenplay by), Stephen McFeely (screenplay by) ', ' Anthony Russo, Joe Russo', ' Robert Downey Jr. Chris Evans, Mark rufallo', '2019-04-25', 'PG-13 (for sequences of sci-fi violence and action, and some language)', '1'),
(2, 'JOHN WICK: CHAPTER', '2.jpg', 'Super-assassin John Wick is on the run after killing a member of the international assassin\'s guild, and with a $14 million price tag on his head - he is the target of hit men and women everywhere.', 'pU8-7BX9uxs&pbjreload=10', 'Derek Kolstad, Chris Collins, Marc Abrams, Shay Hatten', 'Chad Stahelski', 'Keanu Reeves, Halle Berry, Laurance Fishbourne', '2019-05-15', 'R (for pervasive strong violence, and some language)', '1'),
(3, 'DARK PHOENIX', '3.jpg', 'Jean Grey begins to develop incredible powers that corrupt and turn her into a Dark Phoenix. Now the X-Men will have to decide if the life of a team member is worth more than all the people living in the world.', '1-q8C_c-nlM', 'Simon Kinberg', 'Simon Kinberg', 'James MC Avoy, Michael Fassbender, Jennifer Lawrence', '2019-05-07', 'PG-13 (for intense sequences of sci-fi violence and action including some gunplay, disturbing images, and brief strong language)', '1'),
(4, 'DETECTIVE PIKACHU', '4.jpg', 'In a world where people collect Pokémon to do battle, a boy comes across an intelligent talking Pikachu who seeks to be a detective.', '1roy4o4tqQM', 'Dan Hernandez, Benji Samit, Rob Letterman, Derek Connolly', 'Rob Letterman', 'Ryan Reynolds, Ken Watanabe, Justice smith', '2019-05-10', 'PG (for action/peril, some rude and suggestive humor, and thematic elements)', '1'),
(5, 'THE HUSTLE', '5.jpg', 'Anne Hathaway and Rebel Wilson star as female scam artists, one low rent and the other high class, who team up to take down the men who have wronged them.', 'Of52MNnXoxU', 'Jac Schaeffer', 'Chris Addison', 'Rebel Wilson, Hannah Hathway, Alex Sharp', '2019-05-10', 'PG-13 (for crude sexual content and language)', '1'),
(6, 'LONG SHOT', '6.jpg', 'When Fred Flarsky reunites with his first crush, one of the most influential women in the world, Charlotte Field, he charms her. As she prepares to make a run for the Presidency, Charlotte hires Fred as her speechwriter and sparks fly.', 'S5jiaHvx-kY', 'Dan Sterling, Liz Hannah', 'Jonathan Levine', 'Charlize Theron, Seth Rogen, Andy Sarkis', '2019-05-03', 'R (for strong sexual content, language throughout and some drug use)', '1');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
CREATE TABLE IF NOT EXISTS `seats` (
  `SeatId` varchar(50) NOT NULL,
  `Row` varchar(200) NOT NULL,
  `Columns` varchar(200) NOT NULL,
  `Label` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `HallId` varchar(50) NOT NULL,
  `MaxRow` int(4) NOT NULL,
  PRIMARY KEY (`SeatId`),
  KEY `HallId` (`HallId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

DROP TABLE IF EXISTS `showtime`;
CREATE TABLE IF NOT EXISTS `showtime` (
  `ShowtimeId` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `MovieId` int(50) NOT NULL,
  `HallId` varchar(50) NOT NULL,
  PRIMARY KEY (`ShowtimeId`),
  KEY `MovieId` (`MovieId`),
  KEY `HallId` (`HallId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`ShowtimeId`, `Date`, `Time`, `Status`, `MovieId`, `HallId`) VALUES
('1', '2019-05-28', '16:30:00.000000', '1', 1, '2'),
('2', '2019-05-29', '17:30:00.000000', '1', 1, '1'),
('3', '2019-05-29', '20:30:00.000000', '1', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `TicketId` varchar(50) NOT NULL,
  `TicketName` varchar(50) NOT NULL,
  `TicketPrice` double NOT NULL,
  `TicketMax` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `ShowtimeId` varchar(50) NOT NULL,
  PRIMARY KEY (`TicketId`),
  KEY `ShowtimeId` (`ShowtimeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TicketId`, `TicketName`, `TicketPrice`, `TicketMax`, `Status`, `ShowtimeId`) VALUES
('1', 'Juncky Premium', 2000, '10', '1', '2'),
('2', 'Juncky Regular', 1500, '10', '1', '1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`HallId`) REFERENCES `hall` (`HallId`);

--
-- Constraints for table `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `showtime_ibfk_1` FOREIGN KEY (`MovieId`) REFERENCES `movies` (`MovieId`),
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`HallId`) REFERENCES `hall` (`HallId`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`ShowtimeId`) REFERENCES `showtime` (`ShowtimeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
