-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 03:16 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `salary` double NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `age`, `salary`, `email`) VALUES
(3, 'Ritesh', 'Pandit', 23, 2000, 'abc@gmail.com'),
(6, 'Pradyumna', 'Bhattrai', 25, 30000, 'connectwithpradyumna@gmail.com'),
(7, 'Ram', 'Bhandari', 23, 30000, 'rb@gmail.com'),
(8, 'Shyam', 'Karki', 20, 2000, 'sk@gmail.com'),
(9, 'Ram', 'karki', 18, 19000, 'rk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employeespring`
--

CREATE TABLE `employeespring` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeespring`
--

INSERT INTO `employeespring` (`id`, `age`, `email`, `firstName`, `lastName`, `salary`) VALUES
(1, 12, 'ab@gmail.com', 'Prad', 'Bhatt', 1234),
(2, 19, 'siddhartha123isco@gmail.com', 'Siddhartha', 'Ghimire', 20000),
(4, 21, 'kj@kj.com', 'Aman', 'Jha', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeespring`
--
ALTER TABLE `employeespring`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employeespring`
--
ALTER TABLE `employeespring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
