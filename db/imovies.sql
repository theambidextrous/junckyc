-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2019 at 04:21 PM
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
('1', 'Scree 1', 100, '1'),
('2', 'Screen 2', 80, '1');

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
  KEY `HallId` (`HallId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`SeatId`, `Row`, `Columns`, `Label`, `Status`, `HallId`, `MaxRow`) VALUES
('1', '1', '1', 'A', '1', '1', 10),
('10', '10', '1', 'A', '1', '1', 10),
('100', '10', '10', 'J', '1', '1', 10),
('11', '1', '2', 'B', '1', '1', 10),
('12', '2', '2', 'B', '1', '1', 10),
('13', '3', '2', 'B', '1', '1', 10),
('14', '4', '2', 'B', '1', '1', 10),
('15', '5', '2', 'B', '1', '1', 10),
('16', '6', '2', 'B', '1', '1', 10),
('17', '7', '2', 'B', '1', '1', 10),
('18', '8', '2', 'B', '1', '1', 10),
('19', '9', '2', 'B', '1', '1', 10),
('2', '2', '1', 'A', '1', '1', 10),
('20', '10', '2', 'B', '1', '1', 10),
('21', '1', '3', 'C', '1', '1', 10),
('22', '2', '3', 'C', '1', '1', 10),
('23', '3', '3', 'C', '1', '1', 10),
('24', '4', '3', 'C', '1', '1', 10),
('25', '5', '3', 'C', '1', '1', 10),
('26', '6', '3', 'C', '1', '1', 10),
('27', '7', '3', 'C', '1', '1', 10),
('28', '8', '3', 'C', '1', '1', 10),
('29', '9', '3', 'C', '1', '1', 10),
('3', '3', '1', 'A', '1', '1', 10),
('30', '10', '3', 'C', '1', '1', 10),
('31', '1', '4', 'D', '1', '1', 10),
('32', '2', '4', 'D', '1', '1', 10),
('33', '3', '4', 'D', '1', '1', 10),
('34', '4', '4', 'D', '1', '1', 10),
('35', '5', '4', 'D', '1', '1', 10),
('36', '6', '4', 'D', '1', '1', 10),
('37', '7', '4', 'D', '1', '1', 10),
('38', '8', '4', 'D', '1', '1', 10),
('39', '9', '4', 'D', '1', '1', 10),
('4', '4', '1', 'A', '1', '1', 10),
('40', '10', '4', 'D', '1', '1', 10),
('41', '1', '5', 'E', '1', '1', 10),
('42', '2', '5', 'E', '1', '1', 10),
('43', '3', '5', 'E', '1', '1', 10),
('44', '4', '5', 'E', '1', '1', 10),
('45', '5', '5', 'E', '1', '1', 10),
('46', '6', '5', 'E', '1', '1', 10),
('47', '7', '5', 'E', '1', '1', 10),
('48', '8', '5', 'E', '1', '1', 10),
('49', '9', '5', 'E', '1', '1', 10),
('5', '5', '1', 'A', '1', '1', 10),
('50', '10', '5', 'E', '1', '1', 10),
('51', '1', '6', 'F', '1', '1', 10),
('52', '2', '6', 'F', '1', '1', 10),
('53', '3', '6', 'F', '1', '1', 10),
('54', '4', '6', 'F', '1', '1', 10),
('55', '5', '6', 'F', '1', '1', 10),
('56', '6', '6', 'F', '1', '1', 10),
('57', '7', '6', 'F', '1', '1', 10),
('58', '8', '6', 'F', '1', '1', 10),
('59', '9', '6', 'F', '1', '1', 10),
('6', '6', '1', 'A', '1', '1', 10),
('60', '10', '6', 'F', '1', '1', 10),
('61', '1', '7', 'G', '1', '1', 10),
('62', '2', '7', 'G', '1', '1', 10),
('63', '3', '7', 'G', '1', '1', 10),
('64', '4', '7', 'G', '1', '1', 10),
('65', '5', '7', 'G', '1', '1', 10),
('66', '6', '7', 'G', '1', '1', 10),
('67', '7', '7', 'G', '1', '1', 10),
('68', '8', '7', 'G', '1', '1', 10),
('69', '9', '7', 'G', '1', '1', 10),
('7', '7', '1', 'A', '1', '1', 10),
('70', '10', '7', 'G', '1', '1', 10),
('71', '1', '8', 'H', '1', '1', 10),
('72', '2', '8', 'H', '1', '1', 10),
('73', '3', '8', 'H', '1', '1', 10),
('74', '4', '8', 'H', '1', '1', 10),
('75', '5', '8', 'H', '1', '1', 10),
('76', '6', '8', 'H', '1', '1', 10),
('77', '7', '8', 'H', '1', '1', 10),
('78', '8', '8', 'H', '1', '1', 10),
('79', '9', '8', 'H', '1', '1', 10),
('8', '8', '1', 'A', '1', '1', 10),
('80', '10', '8', 'H', '1', '1', 10),
('81', '1', '9', 'I', '1', '1', 10),
('82', '2', '9', 'I', '1', '1', 10),
('83', '3', '9', 'I', '1', '1', 10),
('84', '4', '9', 'I', '1', '1', 10),
('85', '5', '9', 'I', '1', '1', 10),
('86', '6', '9', 'I', '1', '1', 10),
('87', '7', '9', 'I', '1', '1', 10),
('88', '8', '9', 'I', '1', '1', 10),
('89', '9', '9', 'I', '1', '1', 10),
('9', '9', '1', 'A', '1', '1', 10),
('90', '10', '9', 'I', '1', '1', 10),
('91', '1', '10', 'J', '1', '1', 10),
('92', '2', '10', 'J', '1', '1', 10),
('93', '3', '10', 'J', '1', '1', 10),
('94', '4', '10', 'J', '1', '1', 10),
('95', '5', '10', 'J', '1', '1', 10),
('96', '6', '10', 'J', '1', '1', 10),
('97', '7', '10', 'J', '1', '1', 10),
('98', '8', '10', 'J', '1', '1', 10),
('99', '9', '10', 'J', '1', '1', 10),
('1', '1', '1', 'A', '1', '2', 10),
('2', '2', '1', 'A', '1', '2', 10),
('3', '3', '1', 'A', '1', '2', 10),
('4', '4', '1', 'A', '1', '2', 10),
('5', '5', '1', 'A', '1', '2', 10),
('6', '6', '1', 'A', '1', '2', 10),
('7', '7', '1', 'A', '1', '2', 10),
('8', '8', '1', 'A', '1', '2', 10),
('9', '9', '1', 'A', '1', '2', 10),
('10', '10', '1', 'A', '1', '2', 10),
('11', '1', '2', 'B', '1', '2', 10),
('12', '2', '2', 'B', '1', '2', 10),
('13', '3', '2', 'B', '1', '2', 10),
('14', '4', '2', 'B', '1', '2', 10),
('15', '5', '2', 'B', '1', '2', 10),
('16', '6', '2', 'B', '1', '2', 10),
('17', '7', '2', 'B', '1', '2', 10),
('18', '8', '2', 'B', '1', '2', 10),
('19', '9', '2', 'B', '1', '2', 10),
('20', '10', '2', 'B', '1', '2', 10),
('21', '1', '3', 'C', '1', '2', 10),
('22', '2', '3', 'C', '1', '2', 10),
('23', '3', '3', 'C', '1', '2', 10),
('24', '4', '3', 'C', '1', '2', 10),
('25', '5', '3', 'C', '1', '2', 10),
('26', '6', '3', 'C', '1', '2', 10),
('27', '7', '3', 'C', '1', '2', 10),
('28', '8', '3', 'C', '1', '2', 10),
('29', '9', '3', 'C', '1', '2', 10),
('30', '10', '3', 'C', '1', '2', 10),
('31', '1', '4', 'D', '1', '2', 10),
('32', '2', '4', 'D', '1', '2', 10),
('33', '3', '4', 'D', '1', '2', 10),
('34', '4', '4', 'D', '1', '2', 10),
('35', '5', '4', 'D', '1', '2', 10),
('36', '6', '4', 'D', '1', '2', 10),
('37', '7', '4', 'D', '1', '2', 10),
('38', '8', '4', 'D', '1', '2', 10),
('39', '9', '4', 'D', '1', '2', 10),
('40', '10', '4', 'D', '1', '2', 10),
('41', '1', '5', 'E', '1', '2', 10),
('42', '2', '5', 'E', '1', '2', 10),
('43', '3', '5', 'E', '1', '2', 10),
('44', '4', '5', 'E', '1', '2', 10),
('45', '5', '5', 'E', '1', '2', 10),
('46', '6', '5', 'E', '1', '2', 10),
('47', '7', '5', 'E', '1', '2', 10),
('48', '8', '5', 'E', '1', '2', 10),
('49', '9', '5', 'E', '1', '2', 10),
('50', '10', '5', 'E', '1', '2', 10),
('51', '1', '6', 'F', '1', '2', 10),
('52', '2', '6', 'F', '1', '2', 10),
('53', '3', '6', 'F', '1', '2', 10),
('54', '4', '6', 'F', '1', '2', 10),
('55', '5', '6', 'F', '1', '2', 10),
('56', '6', '6', 'F', '1', '2', 10),
('57', '7', '6', 'F', '1', '2', 10),
('58', '8', '6', 'F', '1', '2', 10),
('59', '9', '6', 'F', '1', '2', 10),
('60', '10', '6', 'F', '1', '2', 10),
('61', '1', '7', 'G', '1', '2', 10),
('62', '2', '7', 'G', '1', '2', 10),
('63', '3', '7', 'G', '1', '2', 10),
('64', '4', '7', 'G', '1', '2', 10),
('65', '5', '7', 'G', '1', '2', 10),
('66', '6', '7', 'G', '1', '2', 10),
('67', '7', '7', 'G', '1', '2', 10),
('68', '8', '7', 'G', '1', '2', 10),
('69', '9', '7', 'G', '1', '2', 10),
('70', '10', '7', 'G', '1', '2', 10),
('71', '1', '8', 'H', '1', '2', 10),
('72', '2', '8', 'H', '1', '2', 10),
('73', '3', '8', 'H', '1', '2', 10),
('74', '4', '8', 'H', '1', '2', 10),
('75', '5', '8', 'H', '1', '2', 10),
('76', '6', '8', 'H', '1', '2', 10),
('77', '7', '8', 'H', '1', '2', 10),
('78', '8', '8', 'H', '1', '2', 10),
('79', '9', '8', 'H', '1', '2', 10),
('80', '10', '8', 'H', '1', '2', 10);

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
