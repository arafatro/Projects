-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2018 at 03:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `E_Washroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressID` int(11) NOT NULL,
  `locationID` int(11) DEFAULT NULL,
  `street` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressID`, `locationID`, `street`, `city`) VALUES
(1, 1, 'Shiya Mosque', 'Dhaka'),
(2, 1, 'Japan Garden City', 'Dhaka'),
(3, 1, 'Town Hall', 'Dhaka'),
(4, 2, 'Ghat Par', 'Dhaka'),
(5, 2, 'Baitul Aman Mosque, Solmaid', 'Dhaka'),
(6, 2, 'Metro Kitchen Corridor', 'Dhaka'),
(7, 2, 'BashuMati', 'Dhaka'),
(8, 3, 'DIT Project', 'Dhaka'),
(9, 3, 'Mobile Toilet, Merul Badda Bus Stand', 'Dhaka'),
(10, 4, 'DOHS Colony', 'Dhaka'),
(11, 4, 'Wireless More', 'Dhaka'),
(12, 4, 'TV Gate', 'Dhaka'),
(13, 4, 'Dhaka North City Corporation Toilet', 'Dhaka'),
(14, 5, 'Stuff Quarter', 'Dhaka'),
(15, 5, 'Abhani Field Mobile Toilet', 'Dhaka'),
(16, 6, 'Narinda Houd Mosque', 'Dhaka'),
(17, 6, 'Police Fari', 'Dhaka'),
(18, 6, 'Truck Stand Public Toilet', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Moklesh', 'mok@gmail.com', '01991929292', 'It''s good for use');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationID` int(11) NOT NULL,
  `locationName` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationID`, `locationName`) VALUES
(1, 'Mohammadpur'),
(2, 'Bashundhara'),
(3, 'Badda'),
(4, 'Mohakhali'),
(5, 'Dhanmondi'),
(6, 'Narinda');

-- --------------------------------------------------------

--
-- Table structure for table `washroom`
--

CREATE TABLE `washroom` (
  `washroomID` int(11) NOT NULL,
  `addressID` int(11) DEFAULT NULL,
  `WashroomQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `washroom`
--

INSERT INTO `washroom` (`washroomID`, `addressID`, `WashroomQuantity`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 1),
(5, 5, 5),
(6, 6, 7),
(7, 7, 6),
(8, 8, 2),
(9, 9, 4),
(10, 10, 3),
(11, 11, 1),
(12, 12, 5),
(13, 13, 6),
(14, 14, 1),
(15, 15, 3),
(16, 16, 5),
(17, 17, 2),
(18, 18, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationID`);

--
-- Indexes for table `washroom`
--
ALTER TABLE `washroom`
  ADD PRIMARY KEY (`washroomID`),
  ADD KEY `addressID` (`addressID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`locationID`) REFERENCES `location` (`locationID`);

--
-- Constraints for table `washroom`
--
ALTER TABLE `washroom`
  ADD CONSTRAINT `washroom_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
