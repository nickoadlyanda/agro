-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 08:52 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_data`
--

INSERT INTO `file_data` (`id_file`, `file_name`, `file_path`, `file_size`, `is_imported`) VALUES
(934, 'Test11.csv', 'CSV/Test11.csv', '288', '1'),
(935, 'Test12.csv', 'CSV/Test12.csv', '290', '1'),
(936, 'Test13.csv', 'CSV/Test13.csv', '290', '1'),
(937, 'Test14.csv', 'CSV/Test14.csv', '289', '1'),
(938, 'Test15.csv', 'CSV/Test15.csv', '289', '1'),
(939, 'Test16.csv', 'CSV/Test16.csv', '289', '1'),
(940, 'Test17.csv', 'CSV/Test17.csv', '289', '1'),
(941, 'Test18.csv', 'CSV/Test18.csv', '289', '1'),
(942, 'Test19.csv', 'CSV/Test19.csv', '289', '1'),
(943, 'Test20.csv', 'CSV/Test20.csv', '288', '1'),
(944, 'Test21.csv', 'CSV/Test21.csv', '287', '1'),
(945, 'Test22.csv', 'CSV/Test22.csv', '290', '1'),
(946, 'Test23.csv', 'CSV/Test23.csv', '289', '1'),
(947, 'Test24.csv', 'CSV/Test24.csv', '287', '1'),
(948, 'Test25.csv', 'CSV/Test25.csv', '286', '1'),
(949, 'Test26.csv', 'CSV/Test26.csv', '286', '1');

-- --------------------------------------------------------

--
-- Table structure for table `file_datasp`
--

CREATE TABLE `file_datasp` (
  `id_filesp` int(11) NOT NULL,
  `file_namesp` varchar(255) NOT NULL,
  `file_pathsp` varchar(255) NOT NULL,
  `file_sizesp` varchar(255) NOT NULL,
  `is_importedsp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_datasp`
--

INSERT INTO `file_datasp` (`id_filesp`, `file_namesp`, `file_pathsp`, `file_sizesp`, `is_importedsp`) VALUES
(1, 'Test01.csv', 'CSV2/Test01.csv', '284', '1'),
(2, 'Test02.csv', 'CSV2/Test02.csv', '287', '1'),
(3, 'Test03.csv', 'CSV2/Test03.csv', '287', '1'),
(4, 'Test04.csv', 'CSV2/Test04.csv', '287', '1'),
(5, 'Test05.csv', 'CSV2/Test05.csv', '287', '1'),
(6, 'Test06.csv', 'CSV2/Test06.csv', '288', '1'),
(7, 'Test07.csv', 'CSV2/Test07.csv', '288', '1'),
(8, 'Test08.csv', 'CSV2/Test08.csv', '288', '1'),
(9, 'Test09.csv', 'CSV2/Test09.csv', '288', '1'),
(10, 'Test10.csv', 'CSV2/Test10.csv', '288', '1'),
(11, 'Test11.csv', 'CSV2/Test11.csv', '288', '1'),
(12, 'Test12.csv', 'CSV2/Test12.csv', '290', '1'),
(13, 'Test13.csv', 'CSV2/Test13.csv', '290', '1'),
(14, 'Test14.csv', 'CSV2/Test14.csv', '289', '1'),
(15, 'Test15.csv', 'CSV2/Test15.csv', '289', '1'),
(16, 'Test16.csv', 'CSV2/Test16.csv', '289', '1'),
(17, 'Test17.csv', 'CSV2/Test17.csv', '289', '1'),
(18, 'Test18.csv', 'CSV2/Test18.csv', '289', '1'),
(19, 'Test19.csv', 'CSV2/Test19.csv', '289', '1'),
(20, 'Test20.csv', 'CSV2/Test20.csv', '288', '1'),
(21, 'Test21.csv', 'CSV2/Test21.csv', '287', '1'),
(22, 'Test22.csv', 'CSV2/Test22.csv', '290', '1'),
(23, 'Test23.csv', 'CSV2/Test23.csv', '289', '1'),
(24, 'Test24.csv', 'CSV2/Test24.csv', '287', '1'),
(25, 'Test25.csv', 'CSV2/Test25.csv', '286', '1'),
(26, 'Test26.csv', 'CSV2/Test26.csv', '286', '1');

-- --------------------------------------------------------

--
-- Table structure for table `firstpress`
--

CREATE TABLE `firstpress` (
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstpress`
--

INSERT INTO `firstpress` (`id`, `analysis_time`, `product_name`, `product_code`, `sample_type`, `sample_number`, `sample_comment`, `instrument_name`, `instrument_serial_number`, `olwb`, `vm`, `oldb`, `ash`, `fiber`, `created_at`) VALUES
(904, 'Test Auto Update & Import 11', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 11', 'Tester 11', 'Tester 11', 'Tester 11', '13', '3.11', 'Tester 11', 'Tester 11', 'Tester 11', '2024-01-23 07:47:46'),
(905, 'Test Auto Update & Import 12', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 12', 'Tester 12', 'Tester 12', 'Tester 12', '10.4', '4.21', 'Tester 12', 'Tester 12', 'Tester 12', '2024-01-23 07:47:46'),
(906, 'Test Auto Update & Import 13', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 13', 'Tester 13', 'Tester 13', 'Tester 13', '10.3', '3.21', 'Tester 13', 'Tester 13', 'Tester 13', '2024-01-23 07:47:46'),
(907, 'Test Auto Update & Import 14', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 14', 'Tester 14', 'Tester 14', 'Tester 14', '7.5', '2.41', 'Tester 14', 'Tester 14', 'Tester 14', '2024-01-23 07:47:46'),
(908, 'Test Auto Update & Import 15', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 15', 'Tester 15', 'Tester 15', 'Tester 15', '9.5', '6.31', 'Tester 15', 'Tester 15', 'Tester 15', '2024-01-23 07:47:46'),
(909, 'Test Auto Update & Import 16', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 16', 'Tester 16', 'Tester 16', 'Tester 16', '7.9', '6.34', 'Tester 16', 'Tester 16', 'Tester 16', '2024-01-23 07:47:46'),
(910, 'Test Auto Update & Import 17', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 17', 'Tester 17', 'Tester 17', 'Tester 17', '7.9', '4.56', 'Tester 17', 'Tester 17', 'Tester 17', '2024-01-23 07:47:46'),
(911, 'Test Auto Update & Import 18', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 18', 'Tester 18', 'Tester 18', 'Tester 18', '10', '13.12', 'Tester 18', 'Tester 18', 'Tester 18', '2024-01-23 07:47:46'),
(912, 'Test Auto Update & Import 19', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 19', 'Tester 19', 'Tester 19', 'Tester 19', '7.1', '5.31', 'Tester 19', 'Tester 19', 'Tester 19', '2024-01-23 07:47:46'),
(913, 'Test Auto Update & Import 20', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 20', 'Tester 20', 'Tester 20', 'Tester 20', '9.8', '4.2', 'Tester 20', 'Tester 20', 'Tester 20', '2024-01-23 07:47:46'),
(914, 'Test Auto Update & Import 21', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 21', 'Tester 21', 'Tester 21', 'Tester 21', '7', '3.78', 'Tester 21', 'Tester 21', 'Tester 21', '2024-01-23 07:47:46'),
(915, 'Test Auto Update & Import 22', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 22', 'Tester 22', 'Tester 22', 'Tester 22', '9.14', '4.32', 'Tester 22', 'Tester 22', 'Tester 22', '2024-01-23 07:47:46'),
(916, 'Test Auto Update & Import 23', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 23', 'Tester 23', 'Tester 23', 'Tester 23', '7.8', '5.23', 'Tester 23', 'Tester 23', 'Tester 23', '2024-01-23 07:47:46'),
(917, 'Test Auto Update & Import 24', 'Done', 'Test Limit & Alert', 'Done', 'Tester 24', 'Tester 24', 'Tester 24', 'Tester 24', '9.34', '3.34', 'Tester 24', 'Tester 24', 'Tester 24', '2024-01-23 07:47:46'),
(918, 'Test Auto Update & Import 25', 'Done', 'Test Limit & Alert', 'Done', 'Tester 25', 'Tester 25', 'Tester 25', 'Tester 25', '8.1', '3.12', 'Tester 25', 'Tester 25', 'Tester 25', '2024-01-23 07:47:46'),
(919, 'Test Auto Update & Import 26', 'Done', 'Test Limit & Alert', 'Done', 'Tester 26', 'Tester 26', 'Tester 26', 'Tester 26', '7.5', '4.11', 'Tester 26', 'Tester 26', 'Tester 26', '2024-01-23 07:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(9712, 'nickoadlyanda', '59c5c6208bd9dc78796d8e4a9bee7b16'),
(9713, 'dedisuriono', '020da18ba77fd4ab01497af4e9151973'),
(9715, 'friskasianturi', '0e1c2886f31eec3261b69b6d597c0f32'),
(9716, 'tarasyd', 'e07e8dfc3a001738f05565f96e5b236b');

-- --------------------------------------------------------

--
-- Table structure for table `secondpress`
--

CREATE TABLE `secondpress` (
  `idsp` int(11) NOT NULL,
  `analysis_timesp` varchar(255) NOT NULL,
  `product_namesp` varchar(100) NOT NULL,
  `product_codesp` varchar(100) NOT NULL,
  `sample_typesp` varchar(100) NOT NULL,
  `sample_numbersp` varchar(255) NOT NULL,
  `sample_commentsp` varchar(255) NOT NULL,
  `instrument_namesp` varchar(255) NOT NULL,
  `instrument_serial_numbersp` varchar(255) NOT NULL,
  `olwbsp` varchar(255) NOT NULL,
  `vmsp` varchar(255) NOT NULL,
  `oldbsp` varchar(255) NOT NULL,
  `ashsp` varchar(255) NOT NULL,
  `fibersp` varchar(255) NOT NULL,
  `created_atsp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secondpress`
--

INSERT INTO `secondpress` (`idsp`, `analysis_timesp`, `product_namesp`, `product_codesp`, `sample_typesp`, `sample_numbersp`, `sample_commentsp`, `instrument_namesp`, `instrument_serial_numbersp`, `olwbsp`, `vmsp`, `oldbsp`, `ashsp`, `fibersp`, `created_atsp`) VALUES
(1, 'Test Auto Update & Import', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 01', 'Tester 01', 'Tester 01', 'Tester 01', '9', '4.71', 'Tester 01', 'Tester 01', 'Tester 01', '2024-01-23 07:44:29'),
(2, 'Test Auto Update & Import 02', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 02', 'Tester 02', 'Tester 02', 'Tester 02', '9', '4.78', 'Tester 02', 'Tester 02', 'Tester 02', '2024-01-23 07:44:29'),
(3, 'Test Auto Update & Import 03', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 03', 'Tester 03', 'Tester 03', 'Tester 03', '7', '3.52', 'Tester 03', 'Tester 03', 'Tester 03', '2024-01-23 07:44:29'),
(4, 'Test Auto Update & Import 04', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 04', 'Tester 04', 'Tester 04', 'Tester 04', '9', '2.89', 'Tester 04', 'Tester 04', 'Tester 04', '2024-01-23 07:44:29'),
(5, 'Test Auto Update & Import 05', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 05', 'Tester 05', 'Tester 05', 'Tester 05', '10', '3.9', 'Tester 05', 'Tester 05', 'Tester 05', '2024-01-23 07:44:29'),
(6, 'Test Auto Update & Import 06', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 06', 'Tester 06', 'Tester 06', 'Tester 06', '12', '2.88', 'Tester 06', 'Tester 06', 'Tester 06', '2024-01-23 07:44:29'),
(7, 'Test Auto Update & Import 07', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 07', 'Tester 07', 'Tester 07', 'Tester 07', '11', '3.55', 'Tester 07', 'Tester 07', 'Tester 07', '2024-01-23 07:44:29'),
(8, 'Test Auto Update & Import 08', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 08', 'Tester 08', 'Tester 08', 'Tester 08', '14', '3.74', 'Tester 08', 'Tester 08', 'Tester 08', '2024-01-23 07:44:29'),
(9, 'Test Auto Update & Import 09', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 09', 'Tester 09', 'Tester 09', 'Tester 09', '13', '3.56', 'Tester 09', 'Tester 09', 'Tester 09', '2024-01-23 07:44:29'),
(10, 'Test Auto Update & Import 10', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 10', 'Tester 10', 'Tester 10', 'Tester 10', '12', '2.43', 'Tester 10', 'Tester 10', 'Tester 10', '2024-01-23 07:44:29'),
(11, 'Test Auto Update & Import 11', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 11', 'Tester 11', 'Tester 11', 'Tester 11', '13', '3.11', 'Tester 11', 'Tester 11', 'Tester 11', '2024-01-23 07:44:29'),
(12, 'Test Auto Update & Import 12', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 12', 'Tester 12', 'Tester 12', 'Tester 12', '10.4', '4.21', 'Tester 12', 'Tester 12', 'Tester 12', '2024-01-23 07:44:29'),
(13, 'Test Auto Update & Import 13', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 13', 'Tester 13', 'Tester 13', 'Tester 13', '10.3', '3.21', 'Tester 13', 'Tester 13', 'Tester 13', '2024-01-23 07:44:29'),
(14, 'Test Auto Update & Import 14', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 14', 'Tester 14', 'Tester 14', 'Tester 14', '7.5', '2.41', 'Tester 14', 'Tester 14', 'Tester 14', '2024-01-23 07:44:29'),
(15, 'Test Auto Update & Import 15', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 15', 'Tester 15', 'Tester 15', 'Tester 15', '9.5', '6.31', 'Tester 15', 'Tester 15', 'Tester 15', '2024-01-23 07:44:29'),
(16, 'Test Auto Update & Import 16', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 16', 'Tester 16', 'Tester 16', 'Tester 16', '7.9', '6.34', 'Tester 16', 'Tester 16', 'Tester 16', '2024-01-23 07:44:29'),
(17, 'Test Auto Update & Import 17', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 17', 'Tester 17', 'Tester 17', 'Tester 17', '7.9', '4.56', 'Tester 17', 'Tester 17', 'Tester 17', '2024-01-23 07:44:29'),
(18, 'Test Auto Update & Import 18', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 18', 'Tester 18', 'Tester 18', 'Tester 18', '10', '13.12', 'Tester 18', 'Tester 18', 'Tester 18', '2024-01-23 07:44:29'),
(19, 'Test Auto Update & Import 19', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 19', 'Tester 19', 'Tester 19', 'Tester 19', '7.1', '5.31', 'Tester 19', 'Tester 19', 'Tester 19', '2024-01-23 07:44:29'),
(20, 'Test Auto Update & Import 20', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 20', 'Tester 20', 'Tester 20', 'Tester 20', '9.8', '4.2', 'Tester 20', 'Tester 20', 'Tester 20', '2024-01-23 07:44:29'),
(21, 'Test Auto Update & Import 21', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 21', 'Tester 21', 'Tester 21', 'Tester 21', '7', '3.78', 'Tester 21', 'Tester 21', 'Tester 21', '2024-01-23 07:44:29'),
(22, 'Test Auto Update & Import 22', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 22', 'Tester 22', 'Tester 22', 'Tester 22', '9.14', '4.32', 'Tester 22', 'Tester 22', 'Tester 22', '2024-01-23 07:44:29'),
(23, 'Test Auto Update & Import 23', 'Done', 'Test Limit & Alert', 'Pending', 'Tester 23', 'Tester 23', 'Tester 23', 'Tester 23', '7.8', '5.23', 'Tester 23', 'Tester 23', 'Tester 23', '2024-01-23 07:44:29'),
(24, 'Test Auto Update & Import 24', 'Done', 'Test Limit & Alert', 'Done', 'Tester 24', 'Tester 24', 'Tester 24', 'Tester 24', '9.34', '3.34', 'Tester 24', 'Tester 24', 'Tester 24', '2024-01-23 07:44:29'),
(25, 'Test Auto Update & Import 25', 'Done', 'Test Limit & Alert', 'Done', 'Tester 25', 'Tester 25', 'Tester 25', 'Tester 25', '8.1', '3.12', 'Tester 25', 'Tester 25', 'Tester 25', '2024-01-23 07:44:29'),
(26, 'Test Auto Update & Import 26', 'Done', 'Test Limit & Alert', 'Done', 'Tester 26', 'Tester 26', 'Tester 26', 'Tester 26', '7.5', '4.11', 'Tester 26', 'Tester 26', 'Tester 26', '2024-01-23 07:44:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_data`
--
ALTER TABLE `file_data`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `file_datasp`
--
ALTER TABLE `file_datasp`
  ADD PRIMARY KEY (`id_filesp`);

--
-- Indexes for table `firstpress`
--
ALTER TABLE `firstpress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondpress`
--
ALTER TABLE `secondpress`
  ADD PRIMARY KEY (`idsp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_data`
--
ALTER TABLE `file_data`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950;

--
-- AUTO_INCREMENT for table `file_datasp`
--
ALTER TABLE `file_datasp`
  MODIFY `id_filesp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `firstpress`
--
ALTER TABLE `firstpress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;

--
-- AUTO_INCREMENT for table `secondpress`
--
ALTER TABLE `secondpress`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
