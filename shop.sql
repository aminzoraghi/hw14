-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2023 at 09:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SHOP1`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `founded_at` int(11) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `founded_at`, `city`) VALUES
(1, 'Tehran', 2000, 'Tehran'),
(2, 'Isfahan', 2005, 'Isfahan'),
(3, 'Mashhad', 2010, 'Mashhad'),
(4, 'Tabriz', 2014, 'tabriz');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `branch_id`) VALUES
(1, 'Sales1', 'Sell products of the store', 1),
(2, 'Accounting2', 'Manage financial affairs of the store', 2),
(3, 'Logistics3', 'Supply goods of the store', 3),
(4, 'checkout1', 'check exit customer', 1),
(5, 'Sales2', 'Sell products of the store', 2),
(6, 'Sales3', 'Sell products of the store', 3),
(7, 'Accounting1', 'Manage financial affairs of the store', 1),
(8, 'Accounting3', 'Manage financial affairs of the store', 3),
(9, 'Logistics1', 'Supply goods of the store', 1),
(10, 'Logistics2', 'Supply goods of the store', 2),
(11, 'checkout2', 'check exit customer', 2),
(12, 'checkout3', 'check exit customer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `age`, `salary`, `department_id`) VALUES
(1, 'Ali', 25, 500, 3),
(2, 'Hassan', 30, 200000, 2),
(3, 'Hossein', 35, 300000, 3),
(4, 'Amin', 30, 3000, 1),
(5, 'Elham', 25, 4000, 2),
(6, 'Saeed', 22, 5000, 3),
(7, 'Mahdi', 33, 76000, 2),
(8, 'Tara', 30, 20000, 1),
(9, 'Farzad', 20, 2000, 1),
(10, 'Davood', 27, 30000, 3),
(11, 'Arash', 34, 1000, 2),
(12, 'Ghasem', 26, 80000, 3),
(13, 'Navid', 33, 30000, 1),
(14, 'mohsen', 25, 500, 1),
(15, 'maryam', 25, 600, 2),
(16, 'maryam1', 27, 800, 3),
(17, 'maryam2', 27, 1200, 3),
(18, 'maryam4', 30, 1900, 4),
(19, 'maryajm', 42, 2900, 5),
(20, 'moham', 33, 5600, 6),
(21, 'maryam7', 25, 7000, 7),
(22, 'nader', 25, 6500, 8),
(23, 'sadat', 25, 5200, 9),
(24, 'nazanini', 25, 4300, 10),
(25, 'sasan', 25, 4800, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_ibfk_1` (`branch_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_ibfk_1` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `Branches` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
