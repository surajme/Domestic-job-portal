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
-- Database: `information`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `contactno` int(22) NOT NULL,
  `emailid` varchar(33) NOT NULL,
  `aadharno` int(44) NOT NULL,
  `experience` varchar(55) NOT NULL,
  `username` varchar(66) NOT NULL,
  `password` varchar(77) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `contactno`, `emailid`, `aadharno`, `experience`, `username`, `password`) VALUES
(23, 'suraj singh', 77865787, 'surajcool@gmail.com', 576467646, 'student', 'mystique', 'password'),
(24, 'suraj', 2147483647, 'chiragkansalofficial089@gmail.com', 0, 'student', 'chiragkansal12', 'chiragkansal12'),
(25, 'sidharth', 1234234234, 'sidsharma@yahoo.com', 3746972, 'student', 'sidsharma', 'sidsharma'),
(26, 'suraj', 2147483647, 'klfgaiulgj@gmail.com', 0, 'student', 'chirag21', 'chirag21'),
(27, 'vibhor', 893299283, 'vibhor@gmail.com', 0, 'student', 'vibhor123', 'vibhor123'),
(28, 'chirag', 2147483647, 'chirag@hotmail.com', 0, 'student', 'chirag432', 'chirag432'),
(29, 'suraj singh', 2147483647, 'adarshkumar@gmail.com', 0, 'student', 'adarsh432', 'password123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
