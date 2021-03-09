-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 06:11 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `apidata`
--

CREATE TABLE `apidata` (
  `id` int(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apidata`
--

INSERT INTO `apidata` (`id`, `student_name`, `age`, `city`) VALUES
(1, 'chandan', '23', 'varanasi'),
(2, 'aarya', '25', 'punjab'),
(3, 'mohan', '24', 'kanput'),
(4, 'aanand', '26', 'kolkata'),
(5, 'ananya', '30', 'mumbai'),
(6, 'vaibhav', '36', 'delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apidata`
--
ALTER TABLE `apidata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apidata`
--
ALTER TABLE `apidata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
