-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 02:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro`
--

-- --------------------------------------------------------

--
-- Table structure for table `file_data`
--

CREATE TABLE `file_data` (
  `id_file` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `is_imported` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_data`
--

INSERT INTO `file_data` (`id_file`, `file_name`, `file_path`, `file_size`, `is_imported`) VALUES
(39, 'SampleCSV_IMPORT.csv', 'CSV/SampleCSV_IMPORT.csv', '316', '1'),
(40, 'TEST2.csv', 'CSV/TEST2.csv', '239', '1'),
(41, 'TEST3.csv', 'CSV/TEST3.csv', '239', '1'),
(42, 'TEST4.csv', 'CSV/TEST4.csv', '239', '1'),
(43, 'TEST5.csv', 'CSV/TEST5.csv', '265', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `id` int(11) NOT NULL,
  `analysis_time` varchar(255) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `sample_type` varchar(90) NOT NULL,
  `sample_number` varchar(100) NOT NULL,
  `sample_comment` varchar(110) NOT NULL,
  `instrument_name` varchar(255) NOT NULL,
  `instrument_serial_number` varchar(110) NOT NULL,
  `olwb` varchar(45) NOT NULL,
  `vm` varchar(20) NOT NULL,
  `oldb` varchar(30) NOT NULL,
  `ash` varchar(25) NOT NULL,
  `fiber` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`id`, `analysis_time`, `product_name`, `product_code`, `sample_type`, `sample_number`, `sample_comment`, `instrument_name`, `instrument_serial_number`, `olwb`, `vm`, `oldb`, `ash`, `fiber`, `created_at`) VALUES
(38, '01-Nov-23 15:47:24', 'PKE Second Press Small Cup', '', 'Normal', 'CSV-2a', '', 'PT Agro Jaya Perdana 2', '91912735', '7.67', '8.04', '8.34', '3.03', '12.72', '2024-01-16 08:59:09'),
(39, 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', 'TEST 2', '2024-01-16 09:00:12'),
(40, 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', 'TEST 3', '2024-01-16 09:01:06'),
(41, 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', 'TEST 4', '2024-01-16 09:08:18'),
(42, 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', 'Tester 5', '2024-01-16 09:16:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_data`
--
ALTER TABLE `file_data`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_data`
--
ALTER TABLE `file_data`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sample`
--
ALTER TABLE `sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
