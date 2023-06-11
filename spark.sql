eepak-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 03:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Deepak', 'Bikash', 3456, '2023-06-09 06:46:25'),
(2, 'Bikash', 'Ram', 23634, '2023-06-09 05:19:00'),
(3, 'Aishwarya', 'Deepak', 23880, '2023-06-20 04:50:25'),
(4, 'Preeti', 'Raja', 12000, '2023-06-09 03:19:15'),
(5, 'Rashi', 'Dheeraj', 53020, '2023-06-09 06:19:25'),
(6, 'Rashi', 'Kajol', 53020, '2023-06-09 06:19:25'),
(7, 'Kajol', 'Aishwarya', 23400, '2023-06-09 06:23:46'),
(8, 'Ram', 'Deepak', 85000, '2023-06-09 06:25:07'),
(9, 'Aishwarya', 'Kajal', 450, '2023-06-09 17:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Dheeraj', 'dheeraj@gmail.com', 6632),
(2, 'Akil', 'akil@gmail.com', 87400),
(3, 'Deepak', 'deepak@gmail.com', 3456),
(4, 'Bikash', 'bikash@gmail.com', 23868),
(5, 'Aishwarya', 'Aishwarya@gmail.com', 23430),
(6, 'Preeti', 'preeti@gmail.com', 12000),
(7, 'Rashi', 'rashi@gmail.com', 53020),
(8, 'Kajol', 'kajol@gmail.com', 23850),
(9, 'Ram', 'ram@gmail.com', 85000),
(10, 'Raja', 'raja@gmail.com', 7320);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
