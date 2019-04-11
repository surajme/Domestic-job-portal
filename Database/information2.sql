-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 06:35 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `information2`
--

-- --------------------------------------------------------

--
-- Table structure for table `person2`
--

CREATE TABLE `person2` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `contactno` int(22) NOT NULL,
  `aadharno` int(33) NOT NULL,
  `email` varchar(44) NOT NULL,
  `address` varchar(55) NOT NULL,
  `experience` int(66) NOT NULL,
  `work` varchar(77) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person2`
--

INSERT INTO `person2` (`id`, `name`, `contactno`, `aadharno`, `email`, `address`, `experience`, `work`) VALUES
(1, 'suraj singh', 2147483647, 24343241, 'suraj@gmail.com', 'asgsDFs', 4, 'electrician'),
(2, 'vivek thaku', 2147483647, 83734289, 'viviekthalue@jhagh.com', 'roorkee', 3, 'plumber'),
(3, 'sid sharma', 28762837, 8034160, 'sidsharma@jhagh.com', 'roorkee', 2, 'electrician'),
(5, 'vivek ', 712364747, 873467912, 'vivek@gmail.com', 'haridwar', 1, 'plumber'),
(6, 'rahul', 893829793, 87369213, 'rahu@gmail.com', 'haridwar', 0, 'electrician'),
(7, 'sapna', 892739273, 2147483647, 'sapna@gmail.com.COM', 'bahadrabad', 3, 'BABY SITTER'),
(8, 'ramprakash', 1847312387, 983242196, 'ramprakash@gmail.com', 'roorkee', 3, 'electrician'),
(9, 'prakash', 895728956, 2147483647, 'prakash@yahoomail.com', 'roorkee', 1, 'plumber'),
(10, 'Ajay', 2147483647, 2147483647, 'ajaykumar@gmail.com', 'roorkee', 0, 'plumber'),
(11, 'jennifer', 2147483647, 2147483647, 'jennifer@gmail.com', 'roorkee', 2, 'BABY SITTER'),
(12, 'hannah', 983917236, 2147483647, 'hannnah@yahoomail.com', 'roorkee', 2, 'BABY SITTER'),
(13, 'shiksha', 2147483647, 2147483647, 'shikha@gmail.com', 'roorkee', 2, 'BABY SITTER'),
(14, 'swara', 798348983, 2147483647, 'swara@gmail.com', 'haridwar', 0, 'BABY SITTER'),
(15, 'Dubey', 2147483647, 2147483647, 'dubey@hotmail.com', 'haridwar', 2, 'plumber'),
(16, 'taufiq', 2147483647, 2147483647, 'taufiq2@hotmail.com', 'bahadrabad', 0, 'plumber'),
(17, 'raza', 2147483647, 2147483647, 'raza@gmail.com', 'roorkee', 3, 'plumber'),
(18, 'nazim', 2147483647, 2147483647, 'nazim@gmail.com', 'roorkee', 3, 'plumber'),
(19, 'mahesh', 734689467, 2147483647, 'mahesh@yahoomail.com', 'haridwar', 6, 'housekeeping'),
(20, 'chaubey', 2147483647, 2147483647, 'chaubey@gmail.com', 'roorkee', 4, 'housekeeping'),
(21, 'faizal', 2147483647, 2147483647, 'faizak@yahoomail.com', 'roorkee', 6, 'housekeeping'),
(22, 'vishwas', 2147483647, 2147483647, 'vishwas22@gmail.com', 'bahadrabad', 3, 'housekeeping'),
(23, 'janmaijai', 847912849, 2147483647, 'janmijai@gmail.com', 'bahadrabad', 5, 'gardener'),
(24, 'neeraj', 887369836, 2147483647, 'neeraj@gmail.com', 'roorkee', 4, 'gardener'),
(25, 'bablu', 2147483647, 2147483647, 'bablu@gmail.com', 'haridwar', 2, 'gardener'),
(26, 'yogya', 984783248, 2147483647, 'yougya@gmail.com', 'haridwar', 3, 'plumber'),
(27, 'shubham', 0, 0, '', '', 0, ''),
(28, 'shubham', 2147483647, 2147483647, 'shubham@yahoomail.com', 'roorkee', 2, 'BABY SITTER'),
(29, 'pintu', 2147483647, 2147483647, 'pintu313@gmail.com', 'roorkee', 5, 'BABY SITTER');

-- --------------------------------------------------------

--
-- Table structure for table `person3`
--

CREATE TABLE `person3` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `service` varchar(22) NOT NULL,
  `cost` int(33) NOT NULL,
  `performance` varchar(33) NOT NULL,
  `chat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person3`
--

INSERT INTO `person3` (`id`, `name`, `service`, `cost`, `performance`, `chat`) VALUES
(1, 'suraj singh', 'good', 30000, 'djbfjhw', 'electrician'),
(2, 'vivek thakur', 'bad', 3000, 'plzz improve your service.', 'housekeeping'),
(3, 'sujakvss', 'kjsdfhkasj;df', 34543, 'kfkhsdkjf', 'dhkfdhw'),
(4, ',jsdgfjgf', 'hgdftkd', 7654372, '7635136', 'ASDYYd'),
(5, 'adarsh', '', 0, '', ''),
(6, 'vishwas', 'good', 4333, 'good service.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person2`
--
ALTER TABLE `person2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person3`
--
ALTER TABLE `person3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person2`
--
ALTER TABLE `person2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `person3`
--
ALTER TABLE `person3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
