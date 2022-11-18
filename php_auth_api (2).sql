-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 08:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_auth_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `contract_name` varchar(100) NOT NULL,
  `signing_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `total_cost` int(11) NOT NULL,
  `legal_office_name` varchar(100) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `service_items` text NOT NULL,
  `amount` int(11) NOT NULL,
  `warranty_start_date` date NOT NULL,
  `warranty_end_date` date NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `contract_name`, `signing_date`, `expiration_date`, `total_cost`, `legal_office_name`, `employee_number`, `service_items`, `amount`, `warranty_start_date`, `warranty_end_date`, `company_id`) VALUES
(1, 'nhuoreghojt9o', '2022-11-22', '2022-11-21', 148691, 'ntuoho5hjy9', 59569, 'iurguithgittgggh', 651461, '2022-11-21', '2022-11-20', 2),
(2, 'ntlbniotjb', '2022-11-03', '2022-11-17', 250, 'niunhorivjri', 250, 'mfkprbtprkbpoytk', 250, '2022-11-13', '2022-11-25', 250),
(3, 'kniorj', '2022-11-01', '2022-11-18', 250, 'nioj9h06yj', 255, 'ngutonhyi0n9h', 25, '2022-11-01', '2022-12-06', 23),
(4, 'cont', '2022-11-29', '2022-11-30', 123, 'contact', 123465987, 'cont', 123165, '2022-12-09', '2022-12-08', 12),
(5, 'safoinoai', '2022-11-01', '2022-11-03', 1234, 'asfasfa', 12345, 'asdfa', 1233, '2022-11-09', '2022-11-09', 25),
(6, 'zfajb', '2022-12-07', '2022-11-30', 123, 'asofh', 7894, 'safsaf', 987, '2022-12-09', '2022-11-02', 12354),
(7, 'popopo', '2022-12-01', '2022-12-08', 5555, 'saf', 55, '5asf', 5555, '2022-12-10', '2022-12-01', 555);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `department` varchar(15) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `department`, `user_role`) VALUES
(18, 'osama', 'osama@gmail.com', 'asdfqwer', 'asdg', 0),
(27, 'creeeks', 'creek@gmail.com', '1231231132', 'creeek', 0),
(28, 'qassem', 'qassem@gmail.com', 'qassemqassem', 'accounting', 1),
(29, 'jameel', 'jameel@gmail.com', '123456789', 'it', 0),
(30, 'asfaf', 'admin@admin.com', 'adminadmin', 'accounting', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
