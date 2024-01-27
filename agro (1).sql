-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 06:04 AM
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
-- Table structure for table `file_data_palmkernelincoming`
--

CREATE TABLE `file_data_palmkernelincoming` (
  `id_fileincoming` int(11) NOT NULL,
  `file_nameincoming` varchar(255) NOT NULL,
  `file_pathincoming` varchar(255) NOT NULL,
  `file_sizeincoming` varchar(255) NOT NULL,
  `is_importedincoming` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_data_palmkernelincoming`
--

INSERT INTO `file_data_palmkernelincoming` (`id_fileincoming`, `file_nameincoming`, `file_pathincoming`, `file_sizeincoming`, `is_importedincoming`) VALUES
(21, 'Palm Kernel Incoming_SampleList_20-01-2024_08-52-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_20-01-2024_08-52-33.csv', '311', '1'),
(22, 'Palm Kernel Incoming_SampleList_20-01-2024_08-53-27.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_20-01-2024_08-53-27.csv', '311', '1'),
(23, 'Palm Kernel Incoming_SampleList_20-01-2024_08-54-19.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_20-01-2024_08-54-19.csv', '311', '1'),
(24, 'Palm Kernel Incoming_SampleList_23-01-2024_16-57-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_23-01-2024_16-57-13.csv', '311', '1'),
(25, 'Palm Kernel Incoming_SampleList_24-01-2024_08-51-53.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_08-51-53.csv', '312', '1'),
(26, 'Palm Kernel Incoming_SampleList_24-01-2024_09-13-07.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_09-13-07.csv', '312', '1'),
(27, 'Palm Kernel Incoming_SampleList_24-01-2024_09-29-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_09-29-03.csv', '312', '1'),
(28, 'Palm Kernel Incoming_SampleList_24-01-2024_10-16-53.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_10-16-53.csv', '312', '1'),
(29, 'Palm Kernel Incoming_SampleList_24-01-2024_10-18-17.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_10-18-17.csv', '313', '1'),
(30, 'Palm Kernel Incoming_SampleList_24-01-2024_10-51-08.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_10-51-08.csv', '312', '1'),
(31, 'Palm Kernel Incoming_SampleList_24-01-2024_10-52-18.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_10-52-18.csv', '312', '1'),
(32, 'Palm Kernel Incoming_SampleList_24-01-2024_10-54-02.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_10-54-02.csv', '312', '1'),
(33, 'Palm Kernel Incoming_SampleList_24-01-2024_14-37-46.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_14-37-46.csv', '310', '1'),
(34, 'Palm Kernel Incoming_SampleList_24-01-2024_14-39-10.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_14-39-10.csv', '312', '1'),
(35, 'Palm Kernel Incoming_SampleList_24-01-2024_14-44-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_14-44-37.csv', '313', '1'),
(36, 'Palm Kernel Incoming_SampleList_24-01-2024_16-04-09.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_24-01-2024_16-04-09.csv', '312', '1'),
(37, 'Palm Kernel Incoming_SampleList_25-01-2024_08-43-57.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_08-43-57.csv', '312', '1'),
(38, 'Palm Kernel Incoming_SampleList_25-01-2024_08-45-08.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_08-45-08.csv', '312', '1'),
(39, 'Palm Kernel Incoming_SampleList_25-01-2024_11-50-59.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_11-50-59.csv', '312', '1'),
(40, 'Palm Kernel Incoming_SampleList_25-01-2024_14-05-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_14-05-35.csv', '311', '1'),
(41, 'Palm Kernel Incoming_SampleList_25-01-2024_14-06-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_14-06-35.csv', '311', '1'),
(42, 'Palm Kernel Incoming_SampleList_25-01-2024_14-43-34.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_14-43-34.csv', '312', '1'),
(43, 'Palm Kernel Incoming_SampleList_25-01-2024_16-07-58.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_25-01-2024_16-07-58.csv', '311', '1'),
(44, 'Palm Kernel Incoming_SampleList_26-01-2024_08-32-53.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_26-01-2024_08-32-53.csv', '311', '1'),
(45, 'Palm Kernel Incoming_SampleList_26-01-2024_11-37-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_26-01-2024_11-37-28.csv', '298', '1'),
(46, 'Palm Kernel Incoming_SampleList_26-01-2024_11-39-09.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_26-01-2024_11-39-09.csv', '311', '1'),
(47, 'Palm Kernel Incoming_SampleList_26-01-2024_15-18-22.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_26-01-2024_15-18-22.csv', '311', '1'),
(48, 'Palm Kernel Incoming_SampleList_26-01-2024_17-26-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_26-01-2024_17-26-35.csv', '313', '1'),
(49, 'Palm Kernel Incoming_SampleList_27-01-2024_09-52-18.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_27-01-2024_09-52-18.csv', '312', '1'),
(50, 'Palm Kernel Incoming_SampleList_27-01-2024_09-53-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel Incoming_SampleList_27-01-2024_09-53-31.csv', '312', '1');

-- --------------------------------------------------------

--
-- Table structure for table `file_data_palmkernelkcp`
--

CREATE TABLE `file_data_palmkernelkcp` (
  `id_file` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `is_imported` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_data_palmkernelkcp`
--

INSERT INTO `file_data_palmkernelkcp` (`id_file`, `file_name`, `file_path`, `file_size`, `is_imported`) VALUES
(4713, 'Palm Kernel KCP_SampleList_23-01-2024_15-11-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_15-11-31.csv', '299', '1'),
(4714, 'Palm Kernel KCP_SampleList_23-01-2024_17-10-32.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_17-10-32.csv', '299', '1'),
(4715, 'Palm Kernel KCP_SampleList_23-01-2024_17-11-19.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_17-11-19.csv', '300', '1'),
(4716, 'Palm Kernel KCP_SampleList_23-01-2024_17-12-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_17-12-11.csv', '300', '1'),
(4717, 'Palm Kernel KCP_SampleList_23-01-2024_19-11-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_19-11-41.csv', '300', '1'),
(4718, 'Palm Kernel KCP_SampleList_23-01-2024_19-12-36.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_19-12-36.csv', '301', '1'),
(4719, 'Palm Kernel KCP_SampleList_23-01-2024_19-13-30.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_19-13-30.csv', '301', '1'),
(4720, 'Palm Kernel KCP_SampleList_23-01-2024_19-14-20.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_19-14-20.csv', '300', '1'),
(4721, 'Palm Kernel KCP_SampleList_23-01-2024_19-15-17.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_19-15-17.csv', '301', '1'),
(4722, 'Palm Kernel KCP_SampleList_23-01-2024_19-16-10.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_19-16-10.csv', '301', '1'),
(4723, 'Palm Kernel KCP_SampleList_23-01-2024_20-29-32.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_20-29-32.csv', '300', '1'),
(4724, 'Palm Kernel KCP_SampleList_23-01-2024_20-30-24.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_20-30-24.csv', '301', '1'),
(4725, 'Palm Kernel KCP_SampleList_23-01-2024_20-31-24.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_20-31-24.csv', '301', '1'),
(4726, 'Palm Kernel KCP_SampleList_23-01-2024_21-14-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_21-14-48.csv', '285', '1'),
(4727, 'Palm Kernel KCP_SampleList_23-01-2024_21-15-56.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_21-15-56.csv', '300', '1'),
(4728, 'Palm Kernel KCP_SampleList_23-01-2024_21-16-56.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_21-16-56.csv', '300', '1'),
(4729, 'Palm Kernel KCP_SampleList_23-01-2024_22-14-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_22-14-15.csv', '300', '1'),
(4730, 'Palm Kernel KCP_SampleList_23-01-2024_22-15-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_22-15-11.csv', '301', '1'),
(4731, 'Palm Kernel KCP_SampleList_23-01-2024_22-16-06.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_22-16-06.csv', '301', '1'),
(4732, 'Palm Kernel KCP_SampleList_23-01-2024_23-21-16.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_23-21-16.csv', '300', '1'),
(4733, 'Palm Kernel KCP_SampleList_23-01-2024_23-22-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_23-22-11.csv', '300', '1'),
(4734, 'Palm Kernel KCP_SampleList_23-01-2024_23-23-07.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_23-01-2024_23-23-07.csv', '299', '1'),
(4735, 'Palm Kernel KCP_SampleList_24-01-2024_00-18-14.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_00-18-14.csv', '299', '1'),
(4736, 'Palm Kernel KCP_SampleList_24-01-2024_00-20-00.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_00-20-00.csv', '299', '1'),
(4737, 'Palm Kernel KCP_SampleList_24-01-2024_00-22-43.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_00-22-43.csv', '299', '1'),
(4738, 'Palm Kernel KCP_SampleList_24-01-2024_01-20-47.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_01-20-47.csv', '299', '1'),
(4739, 'Palm Kernel KCP_SampleList_24-01-2024_01-21-43.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_01-21-43.csv', '299', '1'),
(4740, 'Palm Kernel KCP_SampleList_24-01-2024_01-22-46.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_01-22-46.csv', '299', '1'),
(4741, 'Palm Kernel KCP_SampleList_24-01-2024_02-17-06.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_02-17-06.csv', '300', '1'),
(4742, 'Palm Kernel KCP_SampleList_24-01-2024_02-18-20.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_02-18-20.csv', '300', '1'),
(4743, 'Palm Kernel KCP_SampleList_24-01-2024_02-19-18.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_02-19-18.csv', '300', '1'),
(4744, 'Palm Kernel KCP_SampleList_24-01-2024_03-42-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_03-42-37.csv', '299', '1'),
(4745, 'Palm Kernel KCP_SampleList_24-01-2024_03-43-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_03-43-37.csv', '300', '1'),
(4746, 'Palm Kernel KCP_SampleList_24-01-2024_03-44-34.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_03-44-34.csv', '300', '1'),
(4747, 'Palm Kernel KCP_SampleList_24-01-2024_03-46-36.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_03-46-36.csv', '300', '1'),
(4748, 'Palm Kernel KCP_SampleList_24-01-2024_03-47-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_03-47-44.csv', '300', '1'),
(4749, 'Palm Kernel KCP_SampleList_24-01-2024_03-48-39.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_03-48-39.csv', '299', '1'),
(4750, 'Palm Kernel KCP_SampleList_24-01-2024_04-49-50.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_04-49-50.csv', '300', '1'),
(4751, 'Palm Kernel KCP_SampleList_24-01-2024_04-53-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_04-53-40.csv', '300', '1'),
(4752, 'Palm Kernel KCP_SampleList_24-01-2024_04-54-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_04-54-37.csv', '299', '1'),
(4753, 'Palm Kernel KCP_SampleList_24-01-2024_05-57-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_05-57-45.csv', '299', '1'),
(4754, 'Palm Kernel KCP_SampleList_24-01-2024_05-58-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_05-58-48.csv', '299', '1'),
(4755, 'Palm Kernel KCP_SampleList_24-01-2024_05-59-54.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_05-59-54.csv', '299', '1'),
(4756, 'Palm Kernel KCP_SampleList_24-01-2024_07-39-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_07-39-45.csv', '299', '1'),
(4757, 'Palm Kernel KCP_SampleList_24-01-2024_07-41-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_07-41-15.csv', '299', '1'),
(4758, 'Palm Kernel KCP_SampleList_24-01-2024_07-42-12.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_07-42-12.csv', '299', '1'),
(4759, 'Palm Kernel KCP_SampleList_24-01-2024_08-07-43.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_08-07-43.csv', '300', '1'),
(4760, 'Palm Kernel KCP_SampleList_24-01-2024_08-08-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_08-08-37.csv', '301', '1'),
(4761, 'Palm Kernel KCP_SampleList_24-01-2024_08-09-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_08-09-44.csv', '301', '1'),
(4762, 'Palm Kernel KCP_SampleList_24-01-2024_09-14-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_09-14-41.csv', '300', '1'),
(4763, 'Palm Kernel KCP_SampleList_24-01-2024_09-15-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_09-15-35.csv', '301', '1'),
(4764, 'Palm Kernel KCP_SampleList_24-01-2024_09-16-32.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_09-16-32.csv', '301', '1'),
(4765, 'Palm Kernel KCP_SampleList_24-01-2024_10-23-42.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_10-23-42.csv', '299', '1'),
(4766, 'Palm Kernel KCP_SampleList_24-01-2024_10-24-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_10-24-37.csv', '300', '1'),
(4767, 'Palm Kernel KCP_SampleList_24-01-2024_10-26-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_10-26-31.csv', '300', '1'),
(4768, 'Palm Kernel KCP_SampleList_24-01-2024_11-08-51.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_11-08-51.csv', '300', '1'),
(4769, 'Palm Kernel KCP_SampleList_24-01-2024_11-09-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_11-09-44.csv', '301', '1'),
(4770, 'Palm Kernel KCP_SampleList_24-01-2024_11-10-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_11-10-41.csv', '301', '1'),
(4771, 'Palm Kernel KCP_SampleList_24-01-2024_13-08-59.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_13-08-59.csv', '300', '1'),
(4772, 'Palm Kernel KCP_SampleList_24-01-2024_13-09-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_13-09-55.csv', '301', '1'),
(4773, 'Palm Kernel KCP_SampleList_24-01-2024_13-11-17.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_13-11-17.csv', '301', '1'),
(4774, 'Palm Kernel KCP_SampleList_24-01-2024_13-17-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_13-17-40.csv', '300', '1'),
(4775, 'Palm Kernel KCP_SampleList_24-01-2024_13-18-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_13-18-41.csv', '301', '1'),
(4776, 'Palm Kernel KCP_SampleList_24-01-2024_13-19-47.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_13-19-47.csv', '301', '1'),
(4777, 'Palm Kernel KCP_SampleList_24-01-2024_14-24-04.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_14-24-04.csv', '300', '1'),
(4778, 'Palm Kernel KCP_SampleList_24-01-2024_14-25-02.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_14-25-02.csv', '301', '1'),
(4779, 'Palm Kernel KCP_SampleList_24-01-2024_14-26-04.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_14-26-04.csv', '301', '1'),
(4780, 'Palm Kernel KCP_SampleList_24-01-2024_15-03-53.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_15-03-53.csv', '300', '1'),
(4781, 'Palm Kernel KCP_SampleList_24-01-2024_15-04-59.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_15-04-59.csv', '300', '1'),
(4782, 'Palm Kernel KCP_SampleList_24-01-2024_15-06-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_15-06-03.csv', '299', '1'),
(4783, 'Palm Kernel KCP_SampleList_24-01-2024_15-52-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_15-52-35.csv', '299', '1'),
(4784, 'Palm Kernel KCP_SampleList_24-01-2024_15-53-46.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_15-53-46.csv', '299', '1'),
(4785, 'Palm Kernel KCP_SampleList_24-01-2024_15-54-47.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_15-54-47.csv', '299', '1'),
(4786, 'Palm Kernel KCP_SampleList_24-01-2024_16-58-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_16-58-33.csv', '299', '1'),
(4787, 'Palm Kernel KCP_SampleList_24-01-2024_16-59-56.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_16-59-56.csv', '299', '1'),
(4788, 'Palm Kernel KCP_SampleList_24-01-2024_17-01-17.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_17-01-17.csv', '299', '1'),
(4789, 'Palm Kernel KCP_SampleList_24-01-2024_17-54-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_17-54-55.csv', '299', '1'),
(4790, 'Palm Kernel KCP_SampleList_24-01-2024_17-55-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_17-55-48.csv', '299', '1'),
(4791, 'Palm Kernel KCP_SampleList_24-01-2024_17-57-10.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_17-57-10.csv', '299', '1'),
(4792, 'Palm Kernel KCP_SampleList_24-01-2024_19-05-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_19-05-35.csv', '299', '1'),
(4793, 'Palm Kernel KCP_SampleList_24-01-2024_19-06-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_19-06-26.csv', '300', '1'),
(4794, 'Palm Kernel KCP_SampleList_24-01-2024_19-07-21.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_19-07-21.csv', '300', '1'),
(4795, 'Palm Kernel KCP_SampleList_24-01-2024_20-42-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_20-42-33.csv', '299', '1'),
(4796, 'Palm Kernel KCP_SampleList_24-01-2024_20-43-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_20-43-28.csv', '299', '1'),
(4797, 'Palm Kernel KCP_SampleList_24-01-2024_20-44-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_20-44-45.csv', '299', '1'),
(4798, 'Palm Kernel KCP_SampleList_24-01-2024_21-09-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_21-09-35.csv', '299', '1'),
(4799, 'Palm Kernel KCP_SampleList_24-01-2024_21-10-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_21-10-35.csv', '299', '1'),
(4800, 'Palm Kernel KCP_SampleList_24-01-2024_21-11-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_21-11-33.csv', '299', '1'),
(4801, 'Palm Kernel KCP_SampleList_24-01-2024_21-27-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_21-27-26.csv', '299', '1'),
(4802, 'Palm Kernel KCP_SampleList_24-01-2024_22-08-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_22-08-41.csv', '299', '1'),
(4803, 'Palm Kernel KCP_SampleList_24-01-2024_22-09-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_22-09-40.csv', '299', '1'),
(4804, 'Palm Kernel KCP_SampleList_24-01-2024_22-10-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_22-10-37.csv', '299', '1'),
(4805, 'Palm Kernel KCP_SampleList_24-01-2024_23-26-58.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_23-26-58.csv', '285', '1'),
(4806, 'Palm Kernel KCP_SampleList_24-01-2024_23-28-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_23-28-33.csv', '300', '1'),
(4807, 'Palm Kernel KCP_SampleList_24-01-2024_23-29-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_24-01-2024_23-29-31.csv', '299', '1'),
(4808, 'Palm Kernel KCP_SampleList_25-01-2024_01-04-38.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_01-04-38.csv', '299', '1'),
(4809, 'Palm Kernel KCP_SampleList_25-01-2024_01-05-27.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_01-05-27.csv', '300', '1'),
(4810, 'Palm Kernel KCP_SampleList_25-01-2024_01-06-17.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_01-06-17.csv', '300', '1'),
(4811, 'Palm Kernel KCP_SampleList_25-01-2024_02-12-50.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_02-12-50.csv', '285', '1'),
(4812, 'Palm Kernel KCP_SampleList_25-01-2024_02-14-05.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_02-14-05.csv', '300', '1'),
(4813, 'Palm Kernel KCP_SampleList_25-01-2024_02-14-54.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_02-14-54.csv', '300', '1'),
(4814, 'Palm Kernel KCP_SampleList_25-01-2024_02-15-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_02-15-44.csv', '300', '1'),
(4815, 'Palm Kernel KCP_SampleList_25-01-2024_02-16-34.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_02-16-34.csv', '299', '1'),
(4816, 'Palm Kernel KCP_SampleList_25-01-2024_02-17-24.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_02-17-24.csv', '299', '1'),
(4817, 'Palm Kernel KCP_SampleList_25-01-2024_03-56-49.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_03-56-49.csv', '300', '1'),
(4818, 'Palm Kernel KCP_SampleList_25-01-2024_03-57-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_03-57-44.csv', '301', '1'),
(4819, 'Palm Kernel KCP_SampleList_25-01-2024_03-58-35.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_03-58-35.csv', '300', '1'),
(4820, 'Palm Kernel KCP_SampleList_25-01-2024_03-59-25.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_03-59-25.csv', '300', '1'),
(4821, 'Palm Kernel KCP_SampleList_25-01-2024_04-00-27.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_04-00-27.csv', '299', '1'),
(4822, 'Palm Kernel KCP_SampleList_25-01-2024_04-01-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_04-01-15.csv', '299', '1'),
(4823, 'Palm Kernel KCP_SampleList_25-01-2024_05-03-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_05-03-03.csv', '299', '1'),
(4824, 'Palm Kernel KCP_SampleList_25-01-2024_05-03-52.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_05-03-52.csv', '300', '1'),
(4825, 'Palm Kernel KCP_SampleList_25-01-2024_05-04-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_05-04-40.csv', '300', '1'),
(4826, 'Palm Kernel KCP_SampleList_25-01-2024_05-59-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_05-59-45.csv', '299', '1'),
(4827, 'Palm Kernel KCP_SampleList_25-01-2024_06-00-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_06-00-33.csv', '300', '1'),
(4828, 'Palm Kernel KCP_SampleList_25-01-2024_06-01-36.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_06-01-36.csv', '300', '1'),
(4829, 'Palm Kernel KCP_SampleList_25-01-2024_07-37-21.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_07-37-21.csv', '299', '1'),
(4830, 'Palm Kernel KCP_SampleList_25-01-2024_07-38-23.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_07-38-23.csv', '299', '1'),
(4831, 'Palm Kernel KCP_SampleList_25-01-2024_07-39-25.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_07-39-25.csv', '299', '1'),
(4832, 'Palm Kernel KCP_SampleList_25-01-2024_08-20-51.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_08-20-51.csv', '299', '1'),
(4833, 'Palm Kernel KCP_SampleList_25-01-2024_08-21-42.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_08-21-42.csv', '300', '1'),
(4834, 'Palm Kernel KCP_SampleList_25-01-2024_08-22-42.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_08-22-42.csv', '300', '1'),
(4835, 'Palm Kernel KCP_SampleList_25-01-2024_09-17-57.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_09-17-57.csv', '299', '1'),
(4836, 'Palm Kernel KCP_SampleList_25-01-2024_09-19-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_09-19-13.csv', '300', '1'),
(4837, 'Palm Kernel KCP_SampleList_25-01-2024_09-20-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_09-20-37.csv', '300', '1'),
(4838, 'Palm Kernel KCP_SampleList_25-01-2024_10-17-08.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_10-17-08.csv', '299', '1'),
(4839, 'Palm Kernel KCP_SampleList_25-01-2024_10-18-09.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_10-18-09.csv', '299', '1'),
(4840, 'Palm Kernel KCP_SampleList_25-01-2024_10-19-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_10-19-03.csv', '299', '1'),
(4841, 'Palm Kernel KCP_SampleList_25-01-2024_11-25-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_11-25-45.csv', '299', '1'),
(4842, 'Palm Kernel KCP_SampleList_25-01-2024_11-26-37.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_11-26-37.csv', '300', '1'),
(4843, 'Palm Kernel KCP_SampleList_25-01-2024_11-27-29.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_11-27-29.csv', '300', '1'),
(4844, 'Palm Kernel KCP_SampleList_25-01-2024_13-16-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_13-16-03.csv', '299', '1'),
(4845, 'Palm Kernel KCP_SampleList_25-01-2024_13-17-00.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_13-17-00.csv', '300', '1'),
(4846, 'Palm Kernel KCP_SampleList_25-01-2024_13-17-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_13-17-55.csv', '300', '1'),
(4847, 'Palm Kernel KCP_SampleList_25-01-2024_13-18-50.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_13-18-50.csv', '299', '1'),
(4848, 'Palm Kernel KCP_SampleList_25-01-2024_13-19-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_13-19-45.csv', '300', '1'),
(4849, 'Palm Kernel KCP_SampleList_25-01-2024_13-20-50.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_13-20-50.csv', '300', '1'),
(4850, 'Palm Kernel KCP_SampleList_25-01-2024_14-29-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_14-29-55.csv', '300', '1'),
(4851, 'Palm Kernel KCP_SampleList_25-01-2024_14-30-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_14-30-55.csv', '300', '1'),
(4852, 'Palm Kernel KCP_SampleList_25-01-2024_14-31-49.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_14-31-49.csv', '285', '1'),
(4853, 'Palm Kernel KCP_SampleList_25-01-2024_15-47-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_15-47-48.csv', '299', '1'),
(4854, 'Palm Kernel KCP_SampleList_25-01-2024_15-49-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_15-49-13.csv', '299', '1'),
(4855, 'Palm Kernel KCP_SampleList_25-01-2024_15-50-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_15-50-28.csv', '299', '1'),
(4856, 'Palm Kernel KCP_SampleList_25-01-2024_16-37-39.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_16-37-39.csv', '299', '1'),
(4857, 'Palm Kernel KCP_SampleList_25-01-2024_16-39-16.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_16-39-16.csv', '299', '1'),
(4858, 'Palm Kernel KCP_SampleList_25-01-2024_16-40-38.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_16-40-38.csv', '299', '1'),
(4859, 'Palm Kernel KCP_SampleList_25-01-2024_17-35-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_17-35-40.csv', '299', '1'),
(4860, 'Palm Kernel KCP_SampleList_25-01-2024_17-36-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_17-36-33.csv', '300', '1'),
(4861, 'Palm Kernel KCP_SampleList_25-01-2024_17-37-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_17-37-26.csv', '300', '1'),
(4862, 'Palm Kernel KCP_SampleList_25-01-2024_19-11-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_19-11-15.csv', '299', '1'),
(4863, 'Palm Kernel KCP_SampleList_25-01-2024_19-13-57.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_19-13-57.csv', '299', '1'),
(4864, 'Palm Kernel KCP_SampleList_25-01-2024_19-15-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_19-15-48.csv', '299', '1'),
(4865, 'Palm Kernel KCP_SampleList_25-01-2024_19-18-02.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_19-18-02.csv', '299', '1'),
(4866, 'Palm Kernel KCP_SampleList_25-01-2024_19-20-08.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_19-20-08.csv', '299', '1'),
(4867, 'Palm Kernel KCP_SampleList_25-01-2024_19-21-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_19-21-28.csv', '299', '1'),
(4868, 'Palm Kernel KCP_SampleList_25-01-2024_20-41-49.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_20-41-49.csv', '299', '1'),
(4869, 'Palm Kernel KCP_SampleList_25-01-2024_20-42-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_20-42-41.csv', '299', '1'),
(4870, 'Palm Kernel KCP_SampleList_25-01-2024_20-43-38.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_20-43-38.csv', '299', '1'),
(4871, 'Palm Kernel KCP_SampleList_25-01-2024_21-30-05.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_21-30-05.csv', '299', '1'),
(4872, 'Palm Kernel KCP_SampleList_25-01-2024_21-31-43.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_21-31-43.csv', '299', '1'),
(4873, 'Palm Kernel KCP_SampleList_25-01-2024_21-33-29.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_21-33-29.csv', '299', '1'),
(4874, 'Palm Kernel KCP_SampleList_25-01-2024_22-23-19.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_22-23-19.csv', '299', '1'),
(4875, 'Palm Kernel KCP_SampleList_25-01-2024_22-24-59.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_22-24-59.csv', '299', '1'),
(4876, 'Palm Kernel KCP_SampleList_25-01-2024_22-27-10.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_22-27-10.csv', '299', '1'),
(4877, 'Palm Kernel KCP_SampleList_25-01-2024_23-39-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_23-39-11.csv', '204', '1'),
(4878, 'Palm Kernel KCP_SampleList_25-01-2024_23-39-21.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_23-39-21.csv', '300', '1'),
(4879, 'Palm Kernel KCP_SampleList_25-01-2024_23-40-16.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_23-40-16.csv', '301', '1'),
(4880, 'Palm Kernel KCP_SampleList_25-01-2024_23-41-07.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_25-01-2024_23-41-07.csv', '301', '1'),
(4881, 'Palm Kernel KCP_SampleList_26-01-2024_00-18-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_00-18-15.csv', '300', '1'),
(4882, 'Palm Kernel KCP_SampleList_26-01-2024_00-19-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_00-19-15.csv', '301', '1'),
(4883, 'Palm Kernel KCP_SampleList_26-01-2024_00-20-09.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_00-20-09.csv', '301', '1'),
(4884, 'Palm Kernel KCP_SampleList_26-01-2024_01-41-43.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_01-41-43.csv', '300', '1'),
(4885, 'Palm Kernel KCP_SampleList_26-01-2024_01-42-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_01-42-41.csv', '301', '1'),
(4886, 'Palm Kernel KCP_SampleList_26-01-2024_01-43-38.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_01-43-38.csv', '301', '1'),
(4887, 'Palm Kernel KCP_SampleList_26-01-2024_02-22-33.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_02-22-33.csv', '300', '1'),
(4888, 'Palm Kernel KCP_SampleList_26-01-2024_02-23-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_02-23-26.csv', '301', '1'),
(4889, 'Palm Kernel KCP_SampleList_26-01-2024_02-24-19.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_02-24-19.csv', '301', '1'),
(4890, 'Palm Kernel KCP_SampleList_26-01-2024_03-19-34.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_03-19-34.csv', '300', '1'),
(4891, 'Palm Kernel KCP_SampleList_26-01-2024_03-20-29.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_03-20-29.csv', '301', '1'),
(4892, 'Palm Kernel KCP_SampleList_26-01-2024_03-21-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_03-21-28.csv', '301', '1'),
(4893, 'Palm Kernel KCP_SampleList_26-01-2024_04-57-51.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_04-57-51.csv', '300', '1'),
(4894, 'Palm Kernel KCP_SampleList_26-01-2024_04-58-52.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_04-58-52.csv', '301', '1'),
(4895, 'Palm Kernel KCP_SampleList_26-01-2024_04-59-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_04-59-48.csv', '301', '1'),
(4896, 'Palm Kernel KCP_SampleList_26-01-2024_05-00-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_05-00-44.csv', '300', '1'),
(4897, 'Palm Kernel KCP_SampleList_26-01-2024_05-01-36.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_05-01-36.csv', '301', '1'),
(4898, 'Palm Kernel KCP_SampleList_26-01-2024_05-02-29.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_05-02-29.csv', '301', '1'),
(4899, 'Palm Kernel KCP_SampleList_26-01-2024_05-54-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_05-54-13.csv', '300', '1'),
(4900, 'Palm Kernel KCP_SampleList_26-01-2024_05-55-09.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_05-55-09.csv', '301', '1'),
(4901, 'Palm Kernel KCP_SampleList_26-01-2024_05-56-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_05-56-28.csv', '301', '1'),
(4902, 'Palm Kernel KCP_SampleList_26-01-2024_07-29-32.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_07-29-32.csv', '299', '1'),
(4903, 'Palm Kernel KCP_SampleList_26-01-2024_07-30-30.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_07-30-30.csv', '299', '1'),
(4904, 'Palm Kernel KCP_SampleList_26-01-2024_07-31-36.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_07-31-36.csv', '299', '1'),
(4905, 'Palm Kernel KCP_SampleList_26-01-2024_08-14-52.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_08-14-52.csv', '299', '1'),
(4906, 'Palm Kernel KCP_SampleList_26-01-2024_08-15-48.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_08-15-48.csv', '300', '1'),
(4907, 'Palm Kernel KCP_SampleList_26-01-2024_08-16-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_08-16-40.csv', '300', '1'),
(4908, 'Palm Kernel KCP_SampleList_26-01-2024_09-28-45.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_09-28-45.csv', '300', '1'),
(4909, 'Palm Kernel KCP_SampleList_26-01-2024_09-30-02.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_09-30-02.csv', '300', '1'),
(4910, 'Palm Kernel KCP_SampleList_26-01-2024_09-31-20.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_09-31-20.csv', '299', '1'),
(4911, 'Palm Kernel KCP_SampleList_26-01-2024_10-11-40.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_10-11-40.csv', '299', '1'),
(4912, 'Palm Kernel KCP_SampleList_26-01-2024_10-12-47.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_10-12-47.csv', '300', '1'),
(4913, 'Palm Kernel KCP_SampleList_26-01-2024_10-13-39.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_10-13-39.csv', '300', '1'),
(4914, 'Palm Kernel KCP_SampleList_26-01-2024_11-07-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_11-07-44.csv', '300', '1'),
(4915, 'Palm Kernel KCP_SampleList_26-01-2024_11-09-39.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_11-09-39.csv', '285', '1'),
(4916, 'Palm Kernel KCP_SampleList_26-01-2024_11-11-06.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_11-11-06.csv', '300', '1'),
(4917, 'Palm Kernel KCP_SampleList_26-01-2024_13-24-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_13-24-28.csv', '298', '1'),
(4918, 'Palm Kernel KCP_SampleList_26-01-2024_13-25-29.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_13-25-29.csv', '300', '1'),
(4919, 'Palm Kernel KCP_SampleList_26-01-2024_13-26-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_13-26-26.csv', '300', '1'),
(4920, 'Palm Kernel KCP_SampleList_26-01-2024_13-29-17.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_13-29-17.csv', '299', '1'),
(4921, 'Palm Kernel KCP_SampleList_26-01-2024_13-30-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_13-30-11.csv', '300', '1'),
(4922, 'Palm Kernel KCP_SampleList_26-01-2024_13-31-54.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_13-31-54.csv', '300', '1'),
(4923, 'Palm Kernel KCP_SampleList_26-01-2024_14-56-51.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_14-56-51.csv', '299', '1'),
(4924, 'Palm Kernel KCP_SampleList_26-01-2024_15-48-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_15-48-13.csv', '299', '1'),
(4925, 'Palm Kernel KCP_SampleList_26-01-2024_15-49-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_15-49-03.csv', '300', '1'),
(4926, 'Palm Kernel KCP_SampleList_26-01-2024_15-49-57.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_15-49-57.csv', '300', '1'),
(4927, 'Palm Kernel KCP_SampleList_26-01-2024_16-08-09.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_16-08-09.csv', '300', '1'),
(4928, 'Palm Kernel KCP_SampleList_26-01-2024_16-09-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_16-09-13.csv', '301', '1'),
(4929, 'Palm Kernel KCP_SampleList_26-01-2024_16-11-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_16-11-13.csv', '301', '1'),
(4930, 'Palm Kernel KCP_SampleList_26-01-2024_18-39-19.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_18-39-19.csv', '300', '1'),
(4931, 'Palm Kernel KCP_SampleList_26-01-2024_18-40-16.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_18-40-16.csv', '301', '1'),
(4932, 'Palm Kernel KCP_SampleList_26-01-2024_18-41-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_18-41-11.csv', '301', '1'),
(4933, 'Palm Kernel KCP_SampleList_26-01-2024_19-06-20.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_19-06-20.csv', '300', '1'),
(4934, 'Palm Kernel KCP_SampleList_26-01-2024_19-07-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_19-07-15.csv', '301', '1'),
(4935, 'Palm Kernel KCP_SampleList_26-01-2024_19-08-13.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_19-08-13.csv', '301', '1'),
(4936, 'Palm Kernel KCP_SampleList_26-01-2024_20-11-41.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_20-11-41.csv', '300', '1'),
(4937, 'Palm Kernel KCP_SampleList_26-01-2024_20-12-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_20-12-55.csv', '301', '1'),
(4938, 'Palm Kernel KCP_SampleList_26-01-2024_20-13-59.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_20-13-59.csv', '301', '1'),
(4939, 'Palm Kernel KCP_SampleList_26-01-2024_21-15-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_21-15-11.csv', '299', '1'),
(4940, 'Palm Kernel KCP_SampleList_26-01-2024_21-17-52.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_21-17-52.csv', '300', '1'),
(4941, 'Palm Kernel KCP_SampleList_26-01-2024_21-19-07.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_21-19-07.csv', '300', '1'),
(4942, 'Palm Kernel KCP_SampleList_26-01-2024_22-13-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_22-13-31.csv', '300', '1'),
(4943, 'Palm Kernel KCP_SampleList_26-01-2024_22-14-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_22-14-26.csv', '301', '1'),
(4944, 'Palm Kernel KCP_SampleList_26-01-2024_22-15-32.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_22-15-32.csv', '301', '1'),
(4945, 'Palm Kernel KCP_SampleList_26-01-2024_23-23-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_23-23-26.csv', '299', '1'),
(4946, 'Palm Kernel KCP_SampleList_26-01-2024_23-24-24.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_23-24-24.csv', '300', '1'),
(4947, 'Palm Kernel KCP_SampleList_26-01-2024_23-25-27.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_23-25-27.csv', '300', '1'),
(4948, 'Palm Kernel KCP_SampleList_26-01-2024_23-28-20.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_26-01-2024_23-28-20.csv', '294', '1'),
(4949, 'Palm Kernel KCP_SampleList_27-01-2024_00-15-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_00-15-31.csv', '299', '1'),
(4950, 'Palm Kernel KCP_SampleList_27-01-2024_00-17-46.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_00-17-46.csv', '300', '1'),
(4951, 'Palm Kernel KCP_SampleList_27-01-2024_00-18-42.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_00-18-42.csv', '299', '1'),
(4952, 'Palm Kernel KCP_SampleList_27-01-2024_01-27-10.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_01-27-10.csv', '300', '1'),
(4953, 'Palm Kernel KCP_SampleList_27-01-2024_01-28-06.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_01-28-06.csv', '300', '1'),
(4954, 'Palm Kernel KCP_SampleList_27-01-2024_01-29-06.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_01-29-06.csv', '299', '1'),
(4955, 'Palm Kernel KCP_SampleList_27-01-2024_02-27-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_02-27-11.csv', '299', '1'),
(4956, 'Palm Kernel KCP_SampleList_27-01-2024_02-28-05.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_02-28-05.csv', '300', '1'),
(4957, 'Palm Kernel KCP_SampleList_27-01-2024_02-29-03.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_02-29-03.csv', '300', '1'),
(4958, 'Palm Kernel KCP_SampleList_27-01-2024_03-27-34.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-27-34.csv', '299', '1'),
(4959, 'Palm Kernel KCP_SampleList_27-01-2024_03-29-04.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-29-04.csv', '295', '1'),
(4960, 'Palm Kernel KCP_SampleList_27-01-2024_03-30-01.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-30-01.csv', '299', '1'),
(4961, 'Palm Kernel KCP_SampleList_27-01-2024_03-30-58.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-30-58.csv', '300', '1'),
(4962, 'Palm Kernel KCP_SampleList_27-01-2024_03-57-46.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-57-46.csv', '299', '1'),
(4963, 'Palm Kernel KCP_SampleList_27-01-2024_03-58-44.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-58-44.csv', '300', '1'),
(4964, 'Palm Kernel KCP_SampleList_27-01-2024_03-59-49.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_03-59-49.csv', '300', '1'),
(4965, 'Palm Kernel KCP_SampleList_27-01-2024_05-50-15.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_05-50-15.csv', '299', '1'),
(4966, 'Palm Kernel KCP_SampleList_27-01-2024_05-51-10.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_05-51-10.csv', '300', '1'),
(4967, 'Palm Kernel KCP_SampleList_27-01-2024_05-52-02.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_05-52-02.csv', '300', '1'),
(4968, 'Palm Kernel KCP_SampleList_27-01-2024_06-29-42.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_06-29-42.csv', '285', '1'),
(4969, 'Palm Kernel KCP_SampleList_27-01-2024_06-32-05.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_06-32-05.csv', '300', '1'),
(4970, 'Palm Kernel KCP_SampleList_27-01-2024_06-33-39.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_06-33-39.csv', '294', '1'),
(4971, 'Palm Kernel KCP_SampleList_27-01-2024_06-35-23.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_06-35-23.csv', '299', '1'),
(4972, 'Palm Kernel KCP_SampleList_27-01-2024_06-36-43.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_06-36-43.csv', '294', '1'),
(4973, 'Palm Kernel KCP_SampleList_27-01-2024_07-32-59.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_07-32-59.csv', '301', '1'),
(4974, 'Palm Kernel KCP_SampleList_27-01-2024_07-33-55.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_07-33-55.csv', '301', '1'),
(4975, 'Palm Kernel KCP_SampleList_27-01-2024_07-35-53.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_07-35-53.csv', '300', '1'),
(4976, 'Palm Kernel KCP_SampleList_27-01-2024_08-44-28.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_08-44-28.csv', '300', '1'),
(4977, 'Palm Kernel KCP_SampleList_27-01-2024_08-45-29.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_08-45-29.csv', '301', '1'),
(4978, 'Palm Kernel KCP_SampleList_27-01-2024_08-46-31.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_08-46-31.csv', '301', '1'),
(4979, 'Palm Kernel KCP_SampleList_27-01-2024_09-12-34.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_09-12-34.csv', '300', '1'),
(4980, 'Palm Kernel KCP_SampleList_27-01-2024_09-13-26.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_09-13-26.csv', '301', '1'),
(4981, 'Palm Kernel KCP_SampleList_27-01-2024_09-14-25.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_09-14-25.csv', '301', '1'),
(4982, 'Palm Kernel KCP_SampleList_27-01-2024_10-06-11.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_10-06-11.csv', '301', '1'),
(4983, 'Palm Kernel KCP_SampleList_27-01-2024_10-07-08.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_10-07-08.csv', '301', '1'),
(4984, 'Palm Kernel KCP_SampleList_27-01-2024_10-08-23.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_10-08-23.csv', '300', '1'),
(4985, 'Palm Kernel KCP_SampleList_27-01-2024_11-04-14.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_11-04-14.csv', '301', '1'),
(4986, 'Palm Kernel KCP_SampleList_27-01-2024_11-05-36.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_11-05-36.csv', '301', '1'),
(4987, 'Palm Kernel KCP_SampleList_27-01-2024_11-07-05.csv', 'Z:PRD/Lab/FOSS/CSV/CSV/Palm Kernel KCP_SampleList_27-01-2024_11-07-05.csv', '300', '1');

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
(9712, 'nickoadlyanda', '59c5c6208bd9dc78796d8e4a9bee7b16');

-- --------------------------------------------------------

--
-- Table structure for table `palmkernelincoming`
--

CREATE TABLE `palmkernelincoming` (
  `idincoming` int(11) NOT NULL,
  `analysis_timeincoming` varchar(255) NOT NULL,
  `product_nameincoming` varchar(100) NOT NULL,
  `product_codeincoming` varchar(100) NOT NULL,
  `sample_typeincoming` varchar(100) NOT NULL,
  `sample_numberincoming` varchar(255) NOT NULL,
  `sample_commentincoming` varchar(255) NOT NULL,
  `instrument_nameincoming` varchar(255) NOT NULL,
  `instrument_serial_numberincoming` varchar(255) NOT NULL,
  `olwbincoming` varchar(255) NOT NULL,
  `vmincoming` varchar(255) NOT NULL,
  `oldbincoming` varchar(255) NOT NULL,
  `ffaincoming` varchar(255) NOT NULL,
  `created_atincoming` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palmkernelincoming`
--

INSERT INTO `palmkernelincoming` (`idincoming`, `analysis_timeincoming`, `product_nameincoming`, `product_codeincoming`, `sample_typeincoming`, `sample_numberincoming`, `sample_commentincoming`, `instrument_nameincoming`, `instrument_serial_numberincoming`, `olwbincoming`, `vmincoming`, `oldbincoming`, `ffaincoming`, `created_atincoming`) VALUES
(4, '20-Jan-24 08:52:33', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8711RC-2P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.61', '6.41', '54.07', '0.46', '2024-01-27 04:42:33'),
(5, '20-Jan-24 08:53:27', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK9090LR-4P', '', 'PT Agro Jaya Perdana 2', '91912735', '49.07', '7.58', '53.09', '1.27', '2024-01-27 04:43:46'),
(6, '20-Jan-24 08:54:19', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8596LR-3P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.87', '6.20', '54.23', '1.78', '2024-01-27 04:43:47'),
(7, '23-Jan-24 16:57:13', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'B9584UYZ-6P', '', 'PT Agro Jaya Perdana 2', '91912735', '51.04', '4.16', '53.25', '0.17', '2024-01-27 04:46:01'),
(8, '24-Jan-24 08:51:53', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8483GE-02P', '', 'PT Agro Jaya Perdana 2', '91912735', '49.79', '6.74', '53.39', '0.00', '2024-01-27 04:47:34'),
(9, '24-Jan-24 09:13:07', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8381XR-03P', '', 'PT Agro Jaya Perdana 2', '91912735', '49.48', '7.81', '53.68', '0.54', '2024-01-27 04:48:16'),
(10, '24-Jan-24 09:29:03', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK9427LR-04P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.08', '7.33', '54.04', '1.32', '2024-01-27 04:48:16'),
(11, '24-Jan-24 10:16:53', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8537CF-05P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.07', '4.81', '52.60', '1.58', '2024-01-27 04:48:16'),
(12, '24-Jan-24 10:18:17', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK9482CR-01P', '', 'PT Agro Jaya Perdana 2', '91912735', '47.03', '11.19', '52.95', '1.78', '2024-01-27 04:48:16'),
(13, '24-Jan-24 10:51:08', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BL8688FD-06P', '', 'PT Agro Jaya Perdana 2', '91912735', '47.61', '8.02', '51.76', '2.84', '2024-01-27 04:48:16'),
(14, '24-Jan-24 10:52:18', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8286DZ-08P', '', 'PT Agro Jaya Perdana 2', '91912735', '48.85', '6.17', '52.06', '0.15', '2024-01-27 04:48:16'),
(15, '24-Jan-24 10:54:02', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK9645GG-07P', '', 'PT Agro Jaya Perdana 2', '91912735', '49.49', '5.73', '52.49', '0.35', '2024-01-27 04:48:16'),
(16, '24-Jan-24 14:37:46', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'B9710D-09P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.97', '5.98', '54.22', '2.26', '2024-01-27 04:48:16'),
(17, '24-Jan-24 14:39:10', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8926XA-11P', '', 'PT Agro Jaya Perdana 2', '91912735', '51.37', '4.77', '53.95', '2.85', '2024-01-27 04:48:16'),
(18, '24-Jan-24 14:44:37', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'B9120PYT-10P', '', 'PT Agro Jaya Perdana 2', '91912735', '46.73', '11.60', '52.86', '2.48', '2024-01-27 04:48:16'),
(19, '24-Jan-24 16:04:09', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BL8776LP-12P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.36', '5.11', '53.07', '2.26', '2024-01-27 04:48:16'),
(20, '25-Jan-24 08:43:57', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BL8580FB-02P', '', 'PT Agro Jaya Perdana 2', '91912735', '47.73', '7.89', '51.82', '2.41', '2024-01-27 04:48:16'),
(21, '25-Jan-24 08:45:08', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BL8485GE-01P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.04', '6.41', '53.47', '0.00', '2024-01-27 04:48:16'),
(22, '25-Jan-24 11:50:59', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8358XR-03P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.66', '7.13', '54.55', '1.03', '2024-01-27 04:48:16'),
(23, '25-Jan-24 14:05:35', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8236XR-5P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.52', '6.62', '54.10', '0.72', '2024-01-27 04:48:17'),
(24, '25-Jan-24 14:06:35', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8689RB-4P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.60', '7.01', '54.41', '0.00', '2024-01-27 04:48:17'),
(25, '25-Jan-24 14:43:34', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'B-9552VYZ-06', '', 'PT Agro Jaya Perdana 2', '91912735', '50.09', '4.42', '52.41', '0.48', '2024-01-27 04:48:17'),
(26, '25-Jan-24 16:07:58', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'B9584UYZ-07', '', 'PT Agro Jaya Perdana 2', '91912735', '49.64', '4.22', '51.83', '0.54', '2024-01-27 04:48:17'),
(27, '26-Jan-24 08:32:53', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8291PN-2P', '', 'PT Agro Jaya Perdana 2', '91912735', '47.56', '4.14', '49.62', '0.00', '2024-01-27 04:48:17'),
(28, '26-Jan-24 11:37:28', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '49.67', '6.98', '53.39', '5.97', '2024-01-27 04:48:17'),
(29, '26-Jan-24 11:39:09', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK9000FH-3P', '', 'PT Agro Jaya Perdana 2', '91912735', '46.82', '9.78', '51.89', '3.10', '2024-01-27 04:48:17'),
(30, '26-Jan-24 15:18:22', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8192VO-5P', '', 'PT Agro Jaya Perdana 2', '91912735', '49.69', '6.68', '53.24', '5.62', '2024-01-27 04:48:17'),
(31, '26-Jan-24 17:26:35', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8414FN-06P', '', 'PT Agro Jaya Perdana 2', '91912735', '51.27', '6.71', '54.96', '10.38', '2024-01-27 04:48:17'),
(32, '27-Jan-24 09:52:18', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK8530XE-03P', '', 'PT Agro Jaya Perdana 2', '91912735', '49.84', '5.62', '52.81', '2.40', '2024-01-27 04:48:17'),
(33, '27-Jan-24 09:53:31', 'Palm Kernel Incoming', 'ajp2pk', 'Normal', 'BK9899HW-04P', '', 'PT Agro Jaya Perdana 2', '91912735', '50.36', '5.58', '53.33', '0.10', '2024-01-27 04:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `palmkernelkcp`
--

CREATE TABLE `palmkernelkcp` (
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
  `ffa` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `palmkernelkcp`
--

INSERT INTO `palmkernelkcp` (`id`, `analysis_time`, `product_name`, `product_code`, `sample_type`, `sample_number`, `sample_comment`, `instrument_name`, `instrument_serial_number`, `olwb`, `vm`, `oldb`, `ffa`, `created_at`) VALUES
(3955, '23-Jan-24 15:11:31', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2301-15', '', 'PT Agro Jaya Perdana 2', '91912735', '49.12', '7.33', '53.00', '3.15', '2024-01-26 04:32:24'),
(3956, '23-Jan-24 17:10:32', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2301-17', '', 'PT Agro Jaya Perdana 2', '91912735', '49.67', '6.16', '52.93', '3.20', '2024-01-26 04:32:25'),
(3957, '23-Jan-24 17:11:19', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2301-17', '', 'PT Agro Jaya Perdana 2', '91912735', '46.30', '4.09', '48.28', '1.50', '2024-01-26 04:32:25'),
(3958, '23-Jan-24 17:12:11', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2301-17', '', 'PT Agro Jaya Perdana 2', '91912735', '49.30', '3.60', '51.15', '0.81', '2024-01-26 04:32:25'),
(3959, '23-Jan-24 19:11:41', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2301-18', '', 'PT Agro Jaya Perdana 2', '91912735', '49.35', '7.62', '53.42', '2.26', '2024-01-26 04:32:25'),
(3960, '23-Jan-24 19:12:36', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2301-18', '', 'PT Agro Jaya Perdana 2', '91912735', '52.13', '3.64', '54.10', '0.18', '2024-01-26 04:32:25'),
(3961, '23-Jan-24 19:13:30', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2301-18', '', 'PT Agro Jaya Perdana 2', '91912735', '50.67', '4.44', '53.02', '1.75', '2024-01-26 04:32:25'),
(3962, '23-Jan-24 19:14:20', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2301-19', '', 'PT Agro Jaya Perdana 2', '91912735', '49.67', '7.30', '53.58', '2.59', '2024-01-26 04:32:25'),
(3963, '23-Jan-24 19:15:17', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2301-19', '', 'PT Agro Jaya Perdana 2', '91912735', '51.83', '3.68', '53.82', '0.00', '2024-01-26 04:32:25'),
(3964, '23-Jan-24 19:16:10', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2301-19', '', 'PT Agro Jaya Perdana 2', '91912735', '50.56', '4.22', '52.79', '0.99', '2024-01-26 04:32:25'),
(3965, '23-Jan-24 20:29:32', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2301-20', '', 'PT Agro Jaya Perdana 2', '91912735', '49.64', '7.70', '53.78', '2.77', '2024-01-26 04:32:25'),
(3966, '23-Jan-24 20:30:24', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2301-20', '', 'PT Agro Jaya Perdana 2', '91912735', '52.13', '3.68', '54.12', '0.69', '2024-01-26 04:32:25'),
(3967, '23-Jan-24 20:31:24', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2301-20', '', 'PT Agro Jaya Perdana 2', '91912735', '51.20', '4.05', '53.36', '0.99', '2024-01-26 04:32:25'),
(3968, '23-Jan-24 21:14:48', 'Palm Kernel KCP', '', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '49.78', '7.47', '53.80', '2.72', '2024-01-26 04:32:25'),
(3969, '23-Jan-24 21:15:56', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2301-21', '', 'PT Agro Jaya Perdana 2', '91912735', '50.54', '4.35', '52.84', '0.69', '2024-01-26 04:32:25'),
(3970, '23-Jan-24 21:16:56', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2301-21', '', 'PT Agro Jaya Perdana 2', '91912735', '49.42', '4.83', '51.93', '1.24', '2024-01-26 04:32:26'),
(3971, '23-Jan-24 22:14:15', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2301-22', '', 'PT Agro Jaya Perdana 2', '91912735', '50.17', '6.77', '53.82', '4.46', '2024-01-26 04:32:26'),
(3972, '23-Jan-24 22:15:11', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2301-22', '', 'PT Agro Jaya Perdana 2', '91912735', '51.80', '3.89', '53.90', '0.80', '2024-01-26 04:32:26'),
(3973, '23-Jan-24 22:16:06', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2301-22', '', 'PT Agro Jaya Perdana 2', '91912735', '52.52', '3.92', '54.66', '1.36', '2024-01-26 04:32:26'),
(3974, '23-Jan-24 23:21:16', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2301-23', '', 'PT Agro Jaya Perdana 2', '91912735', '49.17', '5.66', '52.12', '1.65', '2024-01-26 04:32:26'),
(3975, '23-Jan-24 23:22:11', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2301-23', '', 'PT Agro Jaya Perdana 2', '91912735', '51.84', '4.97', '54.55', '1.54', '2024-01-26 04:32:26'),
(3976, '23-Jan-24 23:23:07', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2301-23', '', 'PT Agro Jaya Perdana 2', '91912735', '49.16', '6.89', '52.80', '4.08', '2024-01-26 04:32:26'),
(3977, '24-Jan-24 00:18:14', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-00', '', 'PT Agro Jaya Perdana 2', '91912735', '52.07', '6.56', '55.72', '2.62', '2024-01-26 04:32:26'),
(3978, '24-Jan-24 00:20:00', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-00', '', 'PT Agro Jaya Perdana 2', '91912735', '51.50', '4.60', '53.99', '0.95', '2024-01-26 04:32:26'),
(3979, '24-Jan-24 00:22:43', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-00', '', 'PT Agro Jaya Perdana 2', '91912735', '49.84', '5.08', '52.51', '2.64', '2024-01-26 04:32:26'),
(3980, '24-Jan-24 01:20:47', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-01', '', 'PT Agro Jaya Perdana 2', '91912735', '50.43', '4.78', '52.96', '0.85', '2024-01-26 04:32:26'),
(3981, '24-Jan-24 01:21:43', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-01', '', 'PT Agro Jaya Perdana 2', '91912735', '49.77', '5.04', '52.41', '1.18', '2024-01-26 04:32:26'),
(3982, '24-Jan-24 01:22:46', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-01', '', 'PT Agro Jaya Perdana 2', '91912735', '49.46', '6.70', '53.01', '3.33', '2024-01-26 04:32:26'),
(3983, '24-Jan-24 02:17:06', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-02', '', 'PT Agro Jaya Perdana 2', '91912735', '50.07', '7.26', '53.99', '2.36', '2024-01-26 04:32:26'),
(3984, '24-Jan-24 02:18:20', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-02', '', 'PT Agro Jaya Perdana 2', '91912735', '48.27', '4.59', '50.59', '0.41', '2024-01-26 04:32:26'),
(3985, '24-Jan-24 02:19:18', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-02', '', 'PT Agro Jaya Perdana 2', '91912735', '49.70', '4.61', '52.10', '0.96', '2024-01-26 04:32:26'),
(3986, '24-Jan-24 03:42:37', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-03', '', 'PT Agro Jaya Perdana 2', '91912735', '50.11', '7.41', '54.11', '2.75', '2024-01-26 04:32:26'),
(3987, '24-Jan-24 03:43:37', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-03', '', 'PT Agro Jaya Perdana 2', '91912735', '49.05', '4.57', '51.40', '0.86', '2024-01-26 04:32:27'),
(3988, '24-Jan-24 03:44:34', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-03', '', 'PT Agro Jaya Perdana 2', '91912735', '49.47', '4.52', '51.82', '0.76', '2024-01-26 04:32:27'),
(3989, '24-Jan-24 03:46:36', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.36', '4.24', '51.55', '1.32', '2024-01-26 04:32:27'),
(3990, '24-Jan-24 03:47:44', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.91', '4.01', '52.00', '0.81', '2024-01-26 04:32:27'),
(3991, '24-Jan-24 03:48:39', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.86', '7.02', '53.62', '3.60', '2024-01-26 04:32:27'),
(3992, '24-Jan-24 04:49:50', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-05', '', 'PT Agro Jaya Perdana 2', '91912735', '50.68', '4.58', '53.11', '1.67', '2024-01-26 04:32:27'),
(3993, '24-Jan-24 04:53:40', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-05', '', 'PT Agro Jaya Perdana 2', '91912735', '48.23', '4.81', '50.67', '2.29', '2024-01-26 04:32:27'),
(3994, '24-Jan-24 04:54:37', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-05', '', 'PT Agro Jaya Perdana 2', '91912735', '49.24', '6.79', '52.83', '3.73', '2024-01-26 04:32:27'),
(3995, '24-Jan-24 05:57:45', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-06', '', 'PT Agro Jaya Perdana 2', '91912735', '50.67', '3.96', '52.76', '1.42', '2024-01-26 04:32:27'),
(3996, '24-Jan-24 05:58:48', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-06', '', 'PT Agro Jaya Perdana 2', '91912735', '51.47', '4.20', '53.72', '1.57', '2024-01-26 04:32:27'),
(3997, '24-Jan-24 05:59:54', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-06', '', 'PT Agro Jaya Perdana 2', '91912735', '50.84', '6.17', '54.18', '3.60', '2024-01-26 04:32:27'),
(3998, '24-Jan-24 07:39:45', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-07', '', 'PT Agro Jaya Perdana 2', '91912735', '49.69', '4.49', '52.03', '1.46', '2024-01-26 04:32:28'),
(3999, '24-Jan-24 07:41:15', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-07', '', 'PT Agro Jaya Perdana 2', '91912735', '50.92', '4.26', '53.19', '0.87', '2024-01-26 04:32:28'),
(4000, '24-Jan-24 07:42:12', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-07', '', 'PT Agro Jaya Perdana 2', '91912735', '50.47', '6.32', '53.87', '2.42', '2024-01-26 04:32:28'),
(4001, '24-Jan-24 08:07:43', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2401-08', '', 'PT Agro Jaya Perdana 2', '91912735', '48.86', '6.68', '52.36', '2.91', '2024-01-26 04:32:28'),
(4002, '24-Jan-24 08:08:37', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2401-08', '', 'PT Agro Jaya Perdana 2', '91912735', '48.78', '4.15', '50.89', '1.92', '2024-01-26 04:32:28'),
(4003, '24-Jan-24 08:09:44', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2401-08', '', 'PT Agro Jaya Perdana 2', '91912735', '50.81', '4.66', '53.29', '2.20', '2024-01-26 04:32:28'),
(4004, '24-Jan-24 09:14:41', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2401-09', '', 'PT Agro Jaya Perdana 2', '91912735', '49.50', '6.67', '53.04', '3.94', '2024-01-26 04:32:28'),
(4005, '24-Jan-24 09:15:35', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2401-09', '', 'PT Agro Jaya Perdana 2', '91912735', '51.40', '3.79', '53.42', '2.31', '2024-01-26 04:32:29'),
(4006, '24-Jan-24 09:16:32', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2401-09', '', 'PT Agro Jaya Perdana 2', '91912735', '50.98', '4.77', '53.54', '4.34', '2024-01-26 04:32:29'),
(4007, '24-Jan-24 10:23:42', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-10', '', 'PT Agro Jaya Perdana 2', '91912735', '48.53', '6.23', '51.75', '2.20', '2024-01-26 04:32:29'),
(4008, '24-Jan-24 10:24:37', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-10', '', 'PT Agro Jaya Perdana 2', '91912735', '48.19', '4.32', '50.36', '1.85', '2024-01-26 04:32:29'),
(4009, '24-Jan-24 10:26:31', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-10', '', 'PT Agro Jaya Perdana 2', '91912735', '48.77', '3.59', '50.58', '0.25', '2024-01-26 04:32:29'),
(4010, '24-Jan-24 11:08:51', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2401-11', '', 'PT Agro Jaya Perdana 2', '91912735', '47.38', '8.96', '52.04', '1.85', '2024-01-26 04:32:29'),
(4011, '24-Jan-24 11:09:44', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2401-11', '', 'PT Agro Jaya Perdana 2', '91912735', '48.82', '4.62', '51.19', '0.00', '2024-01-26 04:32:29'),
(4012, '24-Jan-24 11:10:41', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2401-11', '', 'PT Agro Jaya Perdana 2', '91912735', '48.58', '3.99', '50.60', '0.43', '2024-01-26 04:32:29'),
(4013, '24-Jan-24 13:08:59', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2401-12', '', 'PT Agro Jaya Perdana 2', '91912735', '48.01', '7.82', '52.09', '1.25', '2024-01-26 04:32:29'),
(4014, '24-Jan-24 13:09:55', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2401-12', '', 'PT Agro Jaya Perdana 2', '91912735', '49.25', '3.32', '50.95', '0.62', '2024-01-26 04:32:29'),
(4015, '24-Jan-24 13:11:17', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2401-12', '', 'PT Agro Jaya Perdana 2', '91912735', '49.53', '4.34', '51.78', '2.65', '2024-01-26 04:32:29'),
(4016, '24-Jan-24 13:17:40', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2401-13', '', 'PT Agro Jaya Perdana 2', '91912735', '47.54', '7.90', '51.62', '2.07', '2024-01-26 04:32:29'),
(4017, '24-Jan-24 13:18:41', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2401-13', '', 'PT Agro Jaya Perdana 2', '91912735', '50.31', '3.76', '52.27', '0.11', '2024-01-26 04:32:30'),
(4018, '24-Jan-24 13:19:47', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2401-13', '', 'PT Agro Jaya Perdana 2', '91912735', '49.62', '3.98', '51.67', '5.52', '2024-01-26 04:32:30'),
(4019, '24-Jan-24 14:24:04', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2401-14', '', 'PT Agro Jaya Perdana 2', '91912735', '48.35', '7.57', '52.32', '1.22', '2024-01-26 04:32:30'),
(4020, '24-Jan-24 14:25:02', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2401-14', '', 'PT Agro Jaya Perdana 2', '91912735', '52.08', '3.63', '54.05', '0.53', '2024-01-26 04:32:30'),
(4021, '24-Jan-24 14:26:04', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2401-14', '', 'PT Agro Jaya Perdana 2', '91912735', '50.84', '3.67', '52.77', '0.61', '2024-01-26 04:32:30'),
(4022, '24-Jan-24 15:03:53', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-15', '', 'PT Agro Jaya Perdana 2', '91912735', '49.90', '5.33', '52.71', '1.84', '2024-01-26 04:32:30'),
(4023, '24-Jan-24 15:04:59', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-15', '', 'PT Agro Jaya Perdana 2', '91912735', '50.95', '4.18', '53.17', '0.08', '2024-01-26 04:32:30'),
(4024, '24-Jan-24 15:06:03', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-15', '', 'PT Agro Jaya Perdana 2', '91912735', '49.57', '4.12', '51.70', '0.00', '2024-01-26 04:32:30'),
(4025, '24-Jan-24 15:52:35', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-16', '', 'PT Agro Jaya Perdana 2', '91912735', '51.80', '4.00', '53.96', '0.09', '2024-01-26 04:32:30'),
(4026, '24-Jan-24 15:53:46', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-16', '', 'PT Agro Jaya Perdana 2', '91912735', '47.52', '3.56', '49.27', '0.00', '2024-01-26 04:32:30'),
(4027, '24-Jan-24 15:54:47', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-16', '', 'PT Agro Jaya Perdana 2', '91912735', '48.57', '5.35', '51.31', '2.80', '2024-01-26 04:32:31'),
(4028, '24-Jan-24 16:58:33', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-17', '', 'PT Agro Jaya Perdana 2', '91912735', '50.12', '6.59', '53.66', '2.48', '2024-01-26 04:32:31'),
(4029, '24-Jan-24 16:59:56', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-17', '', 'PT Agro Jaya Perdana 2', '91912735', '50.32', '4.34', '52.60', '1.00', '2024-01-26 04:32:31'),
(4030, '24-Jan-24 17:01:17', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-17', '', 'PT Agro Jaya Perdana 2', '91912735', '51.36', '4.10', '53.55', '1.91', '2024-01-26 04:32:31'),
(4031, '24-Jan-24 17:54:55', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-17', '', 'PT Agro Jaya Perdana 2', '91912735', '50.93', '4.40', '53.27', '0.95', '2024-01-26 04:32:31'),
(4032, '24-Jan-24 17:55:48', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-18', '', 'PT Agro Jaya Perdana 2', '91912735', '51.32', '3.89', '53.40', '4.18', '2024-01-26 04:32:31'),
(4033, '24-Jan-24 17:57:10', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-18', '', 'PT Agro Jaya Perdana 2', '91912735', '50.22', '6.52', '53.72', '3.31', '2024-01-26 04:32:31'),
(4034, '24-Jan-24 19:05:35', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-19', '', 'PT Agro Jaya Perdana 2', '91912735', '49.65', '6.79', '53.27', '2.72', '2024-01-26 04:32:31'),
(4035, '24-Jan-24 19:06:26', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-19', '', 'PT Agro Jaya Perdana 2', '91912735', '50.75', '4.14', '52.94', '0.68', '2024-01-26 04:32:31'),
(4036, '24-Jan-24 19:07:21', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2401-19', '', 'PT Agro Jaya Perdana 2', '91912735', '50.91', '4.35', '53.23', '0.36', '2024-01-26 04:32:31'),
(4037, '24-Jan-24 20:42:33', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-20', '', 'PT Agro Jaya Perdana 2', '91912735', '48.84', '6.76', '52.38', '2.97', '2024-01-26 04:32:32'),
(4038, '24-Jan-24 20:43:28', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-20', '', 'PT Agro Jaya Perdana 2', '91912735', '50.18', '4.28', '52.42', '0.14', '2024-01-26 04:32:32'),
(4039, '24-Jan-24 20:44:45', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-20', '', 'PT Agro Jaya Perdana 2', '91912735', '49.92', '5.12', '52.62', '2.21', '2024-01-26 04:32:32'),
(4040, '24-Jan-24 21:09:35', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-21', '', 'PT Agro Jaya Perdana 2', '91912735', '49.03', '6.93', '52.69', '2.76', '2024-01-26 04:32:32'),
(4041, '24-Jan-24 21:10:35', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-21', '', 'PT Agro Jaya Perdana 2', '91912735', '47.27', '4.15', '49.32', '0.37', '2024-01-26 04:32:32'),
(4042, '24-Jan-24 21:11:33', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-21', '', 'PT Agro Jaya Perdana 2', '91912735', '49.13', '5.40', '51.93', '2.72', '2024-01-26 04:32:32'),
(4043, '24-Jan-24 21:27:26', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-21', '', 'PT Agro Jaya Perdana 2', '91912735', '51.52', '4.50', '53.95', '2.20', '2024-01-26 04:32:32'),
(4044, '24-Jan-24 22:08:41', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2401-22', '', 'PT Agro Jaya Perdana 2', '91912735', '51.57', '4.51', '54.00', '3.29', '2024-01-26 04:32:32'),
(4045, '24-Jan-24 22:09:40', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2401-22', '', 'PT Agro Jaya Perdana 2', '91912735', '49.55', '4.70', '51.99', '2.13', '2024-01-26 04:32:32'),
(4046, '24-Jan-24 22:10:37', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-22', '', 'PT Agro Jaya Perdana 2', '91912735', '48.71', '6.81', '52.27', '2.84', '2024-01-26 04:32:32'),
(4047, '24-Jan-24 23:26:58', 'Palm Kernel KCP', '', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '49.87', '5.29', '52.66', '2.49', '2024-01-26 04:32:33'),
(4048, '24-Jan-24 23:28:33', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2401-23', '', 'PT Agro Jaya Perdana 2', '91912735', '49.58', '4.85', '52.11', '2.82', '2024-01-26 04:32:33'),
(4049, '24-Jan-24 23:29:31', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2401-23', '', 'PT Agro Jaya Perdana 2', '91912735', '49.37', '6.84', '53.00', '4.61', '2024-01-26 04:32:33'),
(4050, '25-Jan-24 01:04:38', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-00', '', 'PT Agro Jaya Perdana 2', '91912735', '49.57', '6.59', '53.07', '4.47', '2024-01-26 04:32:33'),
(4051, '25-Jan-24 01:05:27', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-00', '', 'PT Agro Jaya Perdana 2', '91912735', '50.57', '5.25', '53.37', '2.03', '2024-01-26 04:32:33'),
(4052, '25-Jan-24 01:06:17', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-00', '', 'PT Agro Jaya Perdana 2', '91912735', '48.73', '5.56', '51.59', '3.15', '2024-01-26 04:32:33'),
(4053, '25-Jan-24 02:12:50', 'Palm Kernel KCP', '', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '47.86', '4.22', '49.97', '1.22', '2024-01-26 04:32:33'),
(4054, '25-Jan-24 02:14:05', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-02', '', 'PT Agro Jaya Perdana 2', '91912735', '47.85', '4.17', '49.94', '1.79', '2024-01-26 04:32:33'),
(4055, '25-Jan-24 02:14:54', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-01', '', 'PT Agro Jaya Perdana 2', '91912735', '49.53', '4.31', '51.76', '2.10', '2024-01-26 04:32:33'),
(4056, '25-Jan-24 02:15:44', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-02', '', 'PT Agro Jaya Perdana 2', '91912735', '49.47', '4.28', '51.68', '2.25', '2024-01-26 04:32:33'),
(4057, '25-Jan-24 02:16:34', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-01', '', 'PT Agro Jaya Perdana 2', '91912735', '49.36', '6.41', '52.74', '4.03', '2024-01-26 04:32:33'),
(4058, '25-Jan-24 02:17:24', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-02', '', 'PT Agro Jaya Perdana 2', '91912735', '49.39', '6.32', '52.72', '4.08', '2024-01-26 04:32:34'),
(4059, '25-Jan-24 03:56:49', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-03', '', 'PT Agro Jaya Perdana 2', '91912735', '47.72', '4.51', '49.97', '2.48', '2024-01-26 04:32:34'),
(4060, '25-Jan-24 03:57:44', 'Palm Kernel KCP', '', 'Normal', 'KKDD02-2501-04', '', 'PT Agro Jaya Perdana 2', '91912735', '47.73', '4.41', '49.93', '2.49', '2024-01-26 04:32:34'),
(4061, '25-Jan-24 03:58:35', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-03', '', 'PT Agro Jaya Perdana 2', '91912735', '49.44', '4.60', '51.83', '1.91', '2024-01-26 04:32:34'),
(4062, '25-Jan-24 03:59:25', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.31', '4.57', '51.67', '1.86', '2024-01-26 04:32:34'),
(4063, '25-Jan-24 04:00:27', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-03', '', 'PT Agro Jaya Perdana 2', '91912735', '49.15', '6.14', '52.37', '2.29', '2024-01-26 04:32:34'),
(4064, '25-Jan-24 04:01:15', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-04', '', 'PT Agro Jaya Perdana 2', '91912735', '48.84', '6.04', '51.97', '2.23', '2024-01-26 04:32:34'),
(4065, '25-Jan-24 05:03:03', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-05', '', 'PT Agro Jaya Perdana 2', '91912735', '48.22', '6.46', '51.55', '2.58', '2024-01-26 04:32:34'),
(4066, '25-Jan-24 05:03:52', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-05', '', 'PT Agro Jaya Perdana 2', '91912735', '49.82', '4.54', '52.19', '2.48', '2024-01-26 04:32:35'),
(4067, '25-Jan-24 05:04:40', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-05', '', 'PT Agro Jaya Perdana 2', '91912735', '45.76', '4.94', '48.14', '2.04', '2024-01-26 04:32:35'),
(4068, '25-Jan-24 05:59:45', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-06', '', 'PT Agro Jaya Perdana 2', '91912735', '49.38', '6.52', '52.82', '3.31', '2024-01-26 04:32:35'),
(4069, '25-Jan-24 06:00:33', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-06', '', 'PT Agro Jaya Perdana 2', '91912735', '49.90', '4.80', '52.42', '2.67', '2024-01-26 04:32:35'),
(4070, '25-Jan-24 06:01:36', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-06', '', 'PT Agro Jaya Perdana 2', '91912735', '49.51', '4.97', '52.10', '2.18', '2024-01-26 04:32:35'),
(4071, '25-Jan-24 07:37:21', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-07', '', 'PT Agro Jaya Perdana 2', '91912735', '51.75', '6.25', '55.20', '3.38', '2024-01-26 04:32:35'),
(4072, '25-Jan-24 07:38:23', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-07', '', 'PT Agro Jaya Perdana 2', '91912735', '50.93', '4.05', '53.08', '4.50', '2024-01-26 04:32:35'),
(4073, '25-Jan-24 07:39:25', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-07', '', 'PT Agro Jaya Perdana 2', '91912735', '51.79', '4.32', '54.13', '2.44', '2024-01-26 04:32:35'),
(4074, '25-Jan-24 08:20:51', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-08', '', 'PT Agro Jaya Perdana 2', '91912735', '47.25', '7.95', '51.33', '4.24', '2024-01-26 04:32:35'),
(4075, '25-Jan-24 08:21:42', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-07', '', 'PT Agro Jaya Perdana 2', '91912735', '49.01', '4.54', '51.34', '1.65', '2024-01-26 04:32:36'),
(4076, '25-Jan-24 08:22:42', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-08', '', 'PT Agro Jaya Perdana 2', '91912735', '49.09', '4.34', '51.31', '2.23', '2024-01-26 04:32:36'),
(4077, '25-Jan-24 09:17:57', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-09', '', 'PT Agro Jaya Perdana 2', '91912735', '48.71', '7.45', '52.63', '3.93', '2024-01-26 04:32:36'),
(4078, '25-Jan-24 09:19:13', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-09', '', 'PT Agro Jaya Perdana 2', '91912735', '50.88', '4.18', '53.09', '1.18', '2024-01-26 04:32:36'),
(4079, '25-Jan-24 09:20:37', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-09', '', 'PT Agro Jaya Perdana 2', '91912735', '50.19', '4.71', '52.66', '2.54', '2024-01-26 04:32:36'),
(4080, '25-Jan-24 10:17:08', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-10', '', 'PT Agro Jaya Perdana 2', '91912735', '50.91', '6.46', '54.43', '4.28', '2024-01-26 04:32:36'),
(4081, '25-Jan-24 10:18:09', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-10', '', 'PT Agro Jaya Perdana 2', '91912735', '52.93', '3.99', '55.13', '3.34', '2024-01-26 04:32:36'),
(4082, '25-Jan-24 10:19:03', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-10', '', 'PT Agro Jaya Perdana 2', '91912735', '50.91', '4.65', '53.39', '3.04', '2024-01-26 04:32:36'),
(4083, '25-Jan-24 11:25:45', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-11', '', 'PT Agro Jaya Perdana 2', '91912735', '48.10', '6.74', '51.57', '5.07', '2024-01-26 04:32:36'),
(4084, '25-Jan-24 11:26:37', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-11', '', 'PT Agro Jaya Perdana 2', '91912735', '49.50', '4.49', '51.83', '0.80', '2024-01-26 04:32:36'),
(4085, '25-Jan-24 11:27:29', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-11', '', 'PT Agro Jaya Perdana 2', '91912735', '50.21', '4.62', '52.64', '2.69', '2024-01-26 04:32:36'),
(4086, '25-Jan-24 13:16:03', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-13', '', 'PT Agro Jaya Perdana 2', '91912735', '49.82', '6.55', '53.31', '3.53', '2024-01-26 04:32:36'),
(4087, '25-Jan-24 13:17:00', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-13', '', 'PT Agro Jaya Perdana 2', '91912735', '51.22', '4.53', '53.65', '0.09', '2024-01-26 04:32:36'),
(4088, '25-Jan-24 13:17:55', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-13', '', 'PT Agro Jaya Perdana 2', '91912735', '49.03', '5.19', '51.71', '2.42', '2024-01-26 04:32:36'),
(4089, '25-Jan-24 13:18:50', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-12', '', 'PT Agro Jaya Perdana 2', '91912735', '49.20', '6.60', '52.68', '4.28', '2024-01-26 04:32:36'),
(4090, '25-Jan-24 13:19:45', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-12', '', 'PT Agro Jaya Perdana 2', '91912735', '50.67', '4.90', '53.29', '2.45', '2024-01-26 04:32:36'),
(4091, '25-Jan-24 13:20:50', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-12', '', 'PT Agro Jaya Perdana 2', '91912735', '50.17', '4.26', '52.40', '1.51', '2024-01-26 04:32:36'),
(4092, '25-Jan-24 14:29:55', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-14', '', 'PT Agro Jaya Perdana 2', '91912735', '48.87', '6.63', '52.34', '3.08', '2024-01-26 04:32:36'),
(4093, '25-Jan-24 14:30:55', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-13', '', 'PT Agro Jaya Perdana 2', '91912735', '49.23', '4.45', '51.52', '0.85', '2024-01-26 04:32:36'),
(4094, '25-Jan-24 14:31:49', 'Palm Kernel KCP', '', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '50.98', '4.42', '53.34', '1.75', '2024-01-26 04:32:37'),
(4095, '25-Jan-24 15:47:48', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-15', '', 'PT Agro Jaya Perdana 2', '91912735', '47.29', '8.38', '51.62', '3.26', '2024-01-26 04:32:37'),
(4096, '25-Jan-24 15:49:13', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-15', '', 'PT Agro Jaya Perdana 2', '91912735', '48.90', '4.49', '51.20', '2.37', '2024-01-26 04:32:37'),
(4097, '25-Jan-24 15:50:28', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-15', '', 'PT Agro Jaya Perdana 2', '91912735', '49.56', '4.60', '51.95', '2.25', '2024-01-26 04:32:37'),
(4098, '25-Jan-24 16:37:39', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-15', '', 'PT Agro Jaya Perdana 2', '91912735', '50.53', '7.06', '54.37', '0.00', '2024-01-26 04:32:37'),
(4099, '25-Jan-24 16:39:16', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-16', '', 'PT Agro Jaya Perdana 2', '91912735', '49.35', '4.49', '51.67', '1.53', '2024-01-26 04:32:37'),
(4100, '25-Jan-24 16:40:38', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-16', '', 'PT Agro Jaya Perdana 2', '91912735', '51.84', '3.95', '53.98', '0.83', '2024-01-26 04:32:37'),
(4101, '25-Jan-24 17:35:40', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-17', '', 'PT Agro Jaya Perdana 2', '91912735', '49.23', '7.74', '53.36', '2.05', '2024-01-26 04:32:37'),
(4102, '25-Jan-24 17:36:33', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2501-17', '', 'PT Agro Jaya Perdana 2', '91912735', '50.31', '5.26', '53.10', '1.82', '2024-01-26 04:32:37'),
(4103, '25-Jan-24 17:37:26', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2501-17', '', 'PT Agro Jaya Perdana 2', '91912735', '50.47', '4.96', '53.10', '3.01', '2024-01-26 04:32:37'),
(4104, '25-Jan-24 19:11:15', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-18', '', 'PT Agro Jaya Perdana 2', '91912735', '48.95', '6.57', '52.39', '4.63', '2024-01-26 04:32:37'),
(4105, '25-Jan-24 19:13:57', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-18', '', 'PT Agro Jaya Perdana 2', '91912735', '50.52', '5.11', '53.24', '1.92', '2024-01-26 04:32:37'),
(4106, '25-Jan-24 19:15:48', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-18', '', 'PT Agro Jaya Perdana 2', '91912735', '50.73', '4.83', '53.31', '3.29', '2024-01-26 04:32:37'),
(4107, '25-Jan-24 19:18:02', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-19', '', 'PT Agro Jaya Perdana 2', '91912735', '49.70', '6.12', '52.94', '3.13', '2024-01-26 04:32:37'),
(4108, '25-Jan-24 19:20:08', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-19', '', 'PT Agro Jaya Perdana 2', '91912735', '50.07', '4.69', '52.54', '1.39', '2024-01-26 04:32:37'),
(4109, '25-Jan-24 19:21:28', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-19', '', 'PT Agro Jaya Perdana 2', '91912735', '50.58', '5.02', '53.25', '1.36', '2024-01-26 04:32:37'),
(4110, '25-Jan-24 20:41:49', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-20', '', 'PT Agro Jaya Perdana 2', '91912735', '48.49', '7.03', '52.16', '4.75', '2024-01-26 04:32:38'),
(4111, '25-Jan-24 20:42:41', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-20', '', 'PT Agro Jaya Perdana 2', '91912735', '51.46', '4.32', '53.78', '0.66', '2024-01-26 04:32:38'),
(4112, '25-Jan-24 20:43:38', 'Palm Kernel KCP', '', 'Normal', 'KDD2-2501-20', '', 'PT Agro Jaya Perdana 2', '91912735', '49.38', '3.96', '51.42', '1.11', '2024-01-26 04:32:38'),
(4113, '25-Jan-24 21:30:05', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-21', '', 'PT Agro Jaya Perdana 2', '91912735', '49.18', '4.27', '51.38', '2.07', '2024-01-26 04:32:38'),
(4114, '25-Jan-24 21:31:43', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-21', '', 'PT Agro Jaya Perdana 2', '91912735', '45.92', '4.69', '48.18', '1.23', '2024-01-26 04:32:38'),
(4115, '25-Jan-24 21:33:29', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-21', '', 'PT Agro Jaya Perdana 2', '91912735', '48.19', '6.00', '51.26', '6.71', '2024-01-26 04:32:38'),
(4116, '25-Jan-24 22:23:19', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2501-22', '', 'PT Agro Jaya Perdana 2', '91912735', '49.38', '4.16', '51.52', '0.40', '2024-01-26 04:32:38'),
(4117, '25-Jan-24 22:24:59', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2501-22', '', 'PT Agro Jaya Perdana 2', '91912735', '48.88', '4.33', '51.09', '0.75', '2024-01-26 04:32:38'),
(4118, '25-Jan-24 22:27:10', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2501-22', '', 'PT Agro Jaya Perdana 2', '91912735', '48.78', '6.01', '51.90', '3.80', '2024-01-26 04:32:38'),
(4119, '25-Jan-24 23:39:11', 'Palm Kernel KCP', '', 'Normal', '', '', '', '', '', '', '', '', '2024-01-26 04:32:38'),
(4120, '25-Jan-24 23:39:21', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2501-23', '', 'PT Agro Jaya Perdana 2', '91912735', '48.89', '6.56', '52.33', '6.37', '2024-01-26 04:32:38'),
(4121, '25-Jan-24 23:40:16', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2501-23', '', 'PT Agro Jaya Perdana 2', '91912735', '51.24', '4.29', '53.54', '2.15', '2024-01-26 04:32:38'),
(4122, '25-Jan-24 23:41:07', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2501-23', '', 'PT Agro Jaya Perdana 2', '91912735', '51.73', '3.28', '53.48', '1.19', '2024-01-26 04:32:38'),
(4123, '26-Jan-24 00:18:15', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2501-24', '', 'PT Agro Jaya Perdana 2', '91912735', '49.52', '6.49', '52.96', '5.80', '2024-01-26 04:32:38'),
(4124, '26-Jan-24 00:19:15', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2501-24', '', 'PT Agro Jaya Perdana 2', '91912735', '50.51', '4.52', '52.90', '1.86', '2024-01-26 04:32:38'),
(4125, '26-Jan-24 00:20:09', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2501-24', '', 'PT Agro Jaya Perdana 2', '91912735', '51.97', '4.09', '54.19', '0.00', '2024-01-26 04:32:38'),
(4126, '26-Jan-24 01:41:43', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-01', '', 'PT Agro Jaya Perdana 2', '91912735', '49.44', '4.75', '51.90', '0.33', '2024-01-26 04:32:38'),
(4127, '26-Jan-24 01:42:41', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-01', '', 'PT Agro Jaya Perdana 2', '91912735', '50.20', '4.70', '52.67', '3.36', '2024-01-26 04:32:38'),
(4128, '26-Jan-24 01:43:38', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-01', '', 'PT Agro Jaya Perdana 2', '91912735', '51.37', '3.60', '53.28', '1.91', '2024-01-26 04:32:39'),
(4129, '26-Jan-24 02:22:33', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-02', '', 'PT Agro Jaya Perdana 2', '91912735', '48.77', '6.07', '51.92', '3.31', '2024-01-26 04:32:39'),
(4130, '26-Jan-24 02:23:26', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-02', '', 'PT Agro Jaya Perdana 2', '91912735', '49.49', '3.94', '51.52', '1.70', '2024-01-26 04:32:39'),
(4131, '26-Jan-24 02:24:19', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-02', '', 'PT Agro Jaya Perdana 2', '91912735', '50.93', '3.60', '52.83', '1.50', '2024-01-26 04:32:39'),
(4132, '26-Jan-24 03:19:34', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-03', '', 'PT Agro Jaya Perdana 2', '91912735', '47.80', '5.85', '50.77', '3.89', '2024-01-26 04:32:39'),
(4133, '26-Jan-24 03:20:29', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-03', '', 'PT Agro Jaya Perdana 2', '91912735', '49.50', '4.07', '51.60', '2.16', '2024-01-26 04:32:39'),
(4134, '26-Jan-24 03:21:28', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-03', '', 'PT Agro Jaya Perdana 2', '91912735', '49.61', '4.27', '51.82', '2.17', '2024-01-26 04:32:39'),
(4135, '26-Jan-24 04:57:51', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-04', '', 'PT Agro Jaya Perdana 2', '91912735', '47.78', '6.31', '50.99', '4.31', '2024-01-26 04:32:39'),
(4136, '26-Jan-24 04:58:52', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2602-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.96', '3.84', '51.95', '1.70', '2024-01-26 04:32:39'),
(4137, '26-Jan-24 04:59:48', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-04', '', 'PT Agro Jaya Perdana 2', '91912735', '51.10', '3.75', '53.09', '1.24', '2024-01-26 04:32:39'),
(4138, '26-Jan-24 05:00:44', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-05', '', 'PT Agro Jaya Perdana 2', '91912735', '47.09', '6.16', '50.18', '4.93', '2024-01-26 04:32:39'),
(4139, '26-Jan-24 05:01:36', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-05', '', 'PT Agro Jaya Perdana 2', '91912735', '50.32', '3.89', '52.36', '0.59', '2024-01-26 04:32:39'),
(4140, '26-Jan-24 05:02:29', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-05', '', 'PT Agro Jaya Perdana 2', '91912735', '50.30', '3.97', '52.38', '0.00', '2024-01-26 04:32:39'),
(4141, '26-Jan-24 05:54:13', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-06', '', 'PT Agro Jaya Perdana 2', '91912735', '49.62', '6.05', '52.82', '2.90', '2024-01-26 04:32:40'),
(4142, '26-Jan-24 05:55:09', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-06', '', 'PT Agro Jaya Perdana 2', '91912735', '50.72', '3.99', '52.83', '0.35', '2024-01-26 04:32:40'),
(4143, '26-Jan-24 05:56:28', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-06', '', 'PT Agro Jaya Perdana 2', '91912735', '49.60', '3.98', '51.65', '2.28', '2024-01-26 04:32:40'),
(4144, '26-Jan-24 07:29:32', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-07', '', 'PT Agro Jaya Perdana 2', '91912735', '49.74', '6.16', '53.01', '1.39', '2024-01-26 04:32:40'),
(4145, '26-Jan-24 07:30:30', 'Palm Kernel KCP', '', 'Normal', 'KSD1-2601-07', '', 'PT Agro Jaya Perdana 2', '91912735', '51.83', '4.03', '54.01', '0.08', '2024-01-26 04:32:40'),
(4146, '26-Jan-24 07:31:36', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2601-07', '', 'PT Agro Jaya Perdana 2', '91912735', '50.89', '4.27', '53.16', '0.23', '2024-01-26 04:32:40'),
(4147, '26-Jan-24 08:14:52', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-08', '', 'PT Agro Jaya Perdana 2', '91912735', '49.38', '6.34', '52.72', '1.90', '2024-01-26 04:32:40'),
(4148, '26-Jan-24 08:15:48', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-08', '', 'PT Agro Jaya Perdana 2', '91912735', '49.62', '3.88', '51.62', '0.00', '2024-01-26 04:32:40'),
(4149, '26-Jan-24 08:16:40', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-08', '', 'PT Agro Jaya Perdana 2', '91912735', '47.45', '3.71', '49.27', '0.00', '2024-01-26 04:32:40'),
(4150, '26-Jan-24 09:28:45', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-09', '', 'PT Agro Jaya Perdana 2', '91912735', '48.69', '5.86', '51.72', '2.37', '2024-01-26 04:32:40'),
(4151, '26-Jan-24 09:30:02', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-09', '', 'PT Agro Jaya Perdana 2', '91912735', '50.90', '3.77', '52.89', '0.00', '2024-01-26 04:32:40'),
(4152, '26-Jan-24 09:31:20', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-09', '', 'PT Agro Jaya Perdana 2', '91912735', '49.43', '4.03', '51.51', '0.54', '2024-01-26 04:32:40'),
(4153, '26-Jan-24 10:11:40', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-10', '', 'PT Agro Jaya Perdana 2', '91912735', '48.99', '6.76', '52.55', '4.13', '2024-01-26 04:32:40'),
(4154, '26-Jan-24 10:12:47', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-10', '', 'PT Agro Jaya Perdana 2', '91912735', '49.75', '3.88', '51.76', '0.00', '2024-01-26 04:32:41'),
(4155, '26-Jan-24 10:13:39', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-10', '', 'PT Agro Jaya Perdana 2', '91912735', '49.64', '3.95', '51.68', '0.05', '2024-01-26 04:32:41'),
(4156, '26-Jan-24 11:07:44', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-11', '', 'PT Agro Jaya Perdana 2', '91912735', '48.60', '6.62', '52.04', '3.69', '2024-01-26 04:32:41'),
(4157, '26-Jan-24 11:09:39', 'Palm Kernel KCP', '', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '51.01', '3.95', '53.11', '0.28', '2024-01-26 04:32:41'),
(4158, '26-Jan-24 11:11:06', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-11', '', 'PT Agro Jaya Perdana 2', '91912735', '49.51', '3.79', '51.46', '0.43', '2024-01-26 04:32:41'),
(4159, '26-Jan-24 13:24:28', 'Palm Kernel KCP', '', 'Normal', 'KSD-2601-12', '', 'PT Agro Jaya Perdana 2', '91912735', '49.05', '6.22', '52.30', '4.76', '2024-01-26 06:33:52'),
(4160, '26-Jan-24 13:25:29', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-12', '', 'PT Agro Jaya Perdana 2', '91912735', '50.91', '4.37', '53.23', '1.32', '2024-01-26 06:33:52'),
(4161, '26-Jan-24 13:26:26', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-12', '', 'PT Agro Jaya Perdana 2', '91912735', '49.48', '4.50', '51.81', '1.18', '2024-01-26 06:33:52'),
(4162, '26-Jan-24 13:29:17', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-13', '', 'PT Agro Jaya Perdana 2', '91912735', '47.41', '6.00', '50.43', '4.99', '2024-01-26 06:33:52'),
(4163, '26-Jan-24 13:30:11', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-13', '', 'PT Agro Jaya Perdana 2', '91912735', '49.11', '3.94', '51.13', '0.80', '2024-01-26 06:33:52'),
(4164, '26-Jan-24 13:31:54', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-13', '', 'PT Agro Jaya Perdana 2', '91912735', '48.80', '4.06', '50.87', '1.59', '2024-01-26 06:33:52'),
(4165, '26-Jan-24 14:56:51', 'Palm Kernel KCP', '', 'Normal', 'KRP-2601-15', '', 'PT Agro Jaya Perdana 2', '91912735', '45.86', '13.01', '52.72', '2.84', '2024-01-26 08:57:15'),
(4166, '26-Jan-24 15:48:13', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-15', '', 'PT Agro Jaya Perdana 2', '91912735', '48.59', '6.11', '51.75', '5.90', '2024-01-26 08:57:15'),
(4167, '26-Jan-24 15:49:03', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-15', '', 'PT Agro Jaya Perdana 2', '91912735', '45.69', '3.70', '47.45', '0.97', '2024-01-26 08:57:15'),
(4168, '26-Jan-24 15:49:57', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-15', '', 'PT Agro Jaya Perdana 2', '91912735', '51.38', '4.15', '53.60', '3.97', '2024-01-26 08:57:15'),
(4169, '26-Jan-24 16:08:09', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-16', '', 'PT Agro Jaya Perdana 2', '91912735', '46.97', '7.82', '50.96', '4.90', '2024-01-26 09:16:59'),
(4170, '26-Jan-24 16:09:13', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-16', '', 'PT Agro Jaya Perdana 2', '91912735', '51.07', '3.73', '53.05', '1.11', '2024-01-26 09:16:59'),
(4171, '26-Jan-24 16:11:13', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-16', '', 'PT Agro Jaya Perdana 2', '91912735', '50.98', '3.73', '52.96', '1.57', '2024-01-26 09:16:59'),
(4172, '26-Jan-24 18:39:19', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-18', '', 'PT Agro Jaya Perdana 2', '91912735', '49.84', '6.86', '53.50', '4.88', '2024-01-27 03:48:15'),
(4173, '26-Jan-24 18:40:16', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-18', '', 'PT Agro Jaya Perdana 2', '91912735', '50.18', '4.12', '52.34', '1.82', '2024-01-27 03:48:15'),
(4174, '26-Jan-24 18:41:11', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-18', '', 'PT Agro Jaya Perdana 2', '91912735', '51.30', '4.34', '53.62', '1.13', '2024-01-27 03:48:15'),
(4175, '26-Jan-24 19:06:20', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-19', '', 'PT Agro Jaya Perdana 2', '91912735', '49.76', '7.82', '53.98', '5.89', '2024-01-27 03:48:15'),
(4176, '26-Jan-24 19:07:15', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-19', '', 'PT Agro Jaya Perdana 2', '91912735', '49.68', '4.13', '51.82', '1.84', '2024-01-27 03:48:15'),
(4177, '26-Jan-24 19:08:13', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-19', '', 'PT Agro Jaya Perdana 2', '91912735', '51.26', '3.79', '53.28', '2.32', '2024-01-27 03:48:15'),
(4178, '26-Jan-24 20:11:41', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-20', '', 'PT Agro Jaya Perdana 2', '91912735', '50.16', '7.26', '54.09', '5.83', '2024-01-27 03:48:15'),
(4179, '26-Jan-24 20:12:55', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-20', '', 'PT Agro Jaya Perdana 2', '91912735', '49.41', '3.91', '51.42', '1.46', '2024-01-27 03:48:15'),
(4180, '26-Jan-24 20:13:59', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-20', '', 'PT Agro Jaya Perdana 2', '91912735', '50.19', '4.04', '52.30', '1.82', '2024-01-27 03:48:15'),
(4181, '26-Jan-24 21:15:11', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-21', '', 'PT Agro Jaya Perdana 2', '91912735', '49.90', '6.31', '53.25', '2.68', '2024-01-27 03:48:15'),
(4182, '26-Jan-24 21:17:52', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-21', '', 'PT Agro Jaya Perdana 2', '91912735', '50.92', '4.25', '53.18', '2.57', '2024-01-27 03:48:15'),
(4183, '26-Jan-24 21:19:07', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-21', '', 'PT Agro Jaya Perdana 2', '91912735', '50.16', '4.33', '52.43', '3.07', '2024-01-27 03:48:15'),
(4184, '26-Jan-24 22:13:31', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2601-22', '', 'PT Agro Jaya Perdana 2', '91912735', '50.07', '6.27', '53.43', '3.14', '2024-01-27 03:48:15'),
(4185, '26-Jan-24 22:14:26', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2601-22', '', 'PT Agro Jaya Perdana 2', '91912735', '50.20', '4.70', '52.68', '4.14', '2024-01-27 03:48:16'),
(4186, '26-Jan-24 22:15:32', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2601-22', '', 'PT Agro Jaya Perdana 2', '91912735', '51.22', '4.50', '53.63', '2.42', '2024-01-27 03:48:16'),
(4187, '26-Jan-24 23:23:26', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-23', '', 'PT Agro Jaya Perdana 2', '91912735', '48.30', '7.29', '52.10', '5.35', '2024-01-27 03:48:16'),
(4188, '26-Jan-24 23:24:24', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-23', '', 'PT Agro Jaya Perdana 2', '91912735', '48.41', '4.60', '50.75', '4.05', '2024-01-27 03:48:16'),
(4189, '26-Jan-24 23:25:27', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2601-23', '', 'PT Agro Jaya Perdana 2', '91912735', '47.47', '4.96', '49.95', '5.86', '2024-01-27 03:48:16'),
(4190, '26-Jan-24 23:28:20', 'Palm Kernel KCP', '', 'Normal', 'KSD02-U', '', 'PT Agro Jaya Perdana 2', '91912735', '48.89', '4.94', '51.43', '9.79', '2024-01-27 03:48:16'),
(4191, '27-Jan-24 00:15:31', 'Palm Kernel KCP', '', 'Normal', 'KSD2-2601-24', '', 'PT Agro Jaya Perdana 2', '91912735', '51.34', '4.94', '54.01', '1.60', '2024-01-27 03:48:16'),
(4192, '27-Jan-24 00:17:46', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2601-24', '', 'PT Agro Jaya Perdana 2', '91912735', '50.37', '4.80', '52.91', '3.05', '2024-01-27 03:48:16'),
(4193, '27-Jan-24 00:18:42', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2601-24', '', 'PT Agro Jaya Perdana 2', '91912735', '50.02', '6.28', '53.37', '4.46', '2024-01-27 03:48:16'),
(4194, '27-Jan-24 01:27:10', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2701-01', '', 'PT Agro Jaya Perdana 2', '91912735', '50.09', '4.29', '52.33', '2.95', '2024-01-27 03:48:16'),
(4195, '27-Jan-24 01:28:06', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2701-01', '', 'PT Agro Jaya Perdana 2', '91912735', '50.04', '4.17', '52.21', '1.67', '2024-01-27 03:48:16'),
(4196, '27-Jan-24 01:29:06', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2701-01', '', 'PT Agro Jaya Perdana 2', '91912735', '48.50', '6.20', '51.70', '6.06', '2024-01-27 03:48:16'),
(4197, '27-Jan-24 02:27:11', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2701-02', '', 'PT Agro Jaya Perdana 2', '91912735', '48.96', '6.46', '52.34', '4.62', '2024-01-27 03:48:16'),
(4198, '27-Jan-24 02:28:05', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2701-02', '', 'PT Agro Jaya Perdana 2', '91912735', '49.78', '4.44', '52.09', '3.79', '2024-01-27 03:48:16'),
(4199, '27-Jan-24 02:29:03', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2701-02', '', 'PT Agro Jaya Perdana 2', '91912735', '50.20', '4.29', '52.45', '3.54', '2024-01-27 03:48:16'),
(4200, '27-Jan-24 03:27:34', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2701-03', '', 'PT Agro Jaya Perdana 2', '91912735', '46.99', '6.39', '50.19', '5.97', '2024-01-27 03:48:16'),
(4201, '27-Jan-24 03:29:04', 'Palm Kernel KCP', '', 'Normal', 'KSDM-03U', '', 'PT Agro Jaya Perdana 2', '91912735', '48.58', '6.22', '51.80', '5.20', '2024-01-27 03:48:16'),
(4202, '27-Jan-24 03:30:01', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2701-3', '', 'PT Agro Jaya Perdana 2', '91912735', '50.22', '4.38', '52.53', '4.62', '2024-01-27 03:48:16'),
(4203, '27-Jan-24 03:30:58', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2701-03', '', 'PT Agro Jaya Perdana 2', '91912735', '50.51', '4.62', '52.96', '5.95', '2024-01-27 03:48:16'),
(4204, '27-Jan-24 03:57:46', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2701-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.20', '6.52', '52.64', '4.96', '2024-01-27 03:48:16'),
(4205, '27-Jan-24 03:58:44', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2701-04', '', 'PT Agro Jaya Perdana 2', '91912735', '50.64', '5.00', '53.30', '6.96', '2024-01-27 03:48:17'),
(4206, '27-Jan-24 03:59:49', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2701-04', '', 'PT Agro Jaya Perdana 2', '91912735', '49.24', '4.48', '51.55', '4.09', '2024-01-27 03:48:17'),
(4207, '27-Jan-24 05:50:15', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2701-05', '', 'PT Agro Jaya Perdana 2', '91912735', '49.08', '6.62', '52.56', '4.30', '2024-01-27 03:48:17'),
(4208, '27-Jan-24 05:51:10', 'Palm Kernel KCP', '', 'Normal', 'KSD02-2701-05', '', 'PT Agro Jaya Perdana 2', '91912735', '50.96', '4.78', '53.52', '4.66', '2024-01-27 03:48:17'),
(4209, '27-Jan-24 05:52:02', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2701-05', '', 'PT Agro Jaya Perdana 2', '91912735', '51.10', '4.82', '53.69', '3.89', '2024-01-27 03:48:17'),
(4210, '27-Jan-24 06:29:42', 'Palm Kernel KCP', '', 'Normal', '', '', 'PT Agro Jaya Perdana 2', '91912735', '48.68', '5.12', '51.31', '2.85', '2024-01-27 03:48:17'),
(4211, '27-Jan-24 06:32:05', 'Palm Kernel KCP', '', 'Normal', 'KSD01-2701-06', '', 'PT Agro Jaya Perdana 2', '91912735', '47.65', '4.80', '50.05', '4.68', '2024-01-27 03:48:17'),
(4212, '27-Jan-24 06:33:39', 'Palm Kernel KCP', '', 'Normal', 'KSD01-U', '', 'PT Agro Jaya Perdana 2', '91912735', '46.90', '4.82', '49.28', '5.61', '2024-01-27 03:48:17'),
(4213, '27-Jan-24 06:35:23', 'Palm Kernel KCP', '', 'Normal', 'KSDM-2701-06', '', 'PT Agro Jaya Perdana 2', '91912735', '49.09', '6.28', '52.38', '4.68', '2024-01-27 03:48:17'),
(4214, '27-Jan-24 06:36:43', 'Palm Kernel KCP', '', 'Normal', 'KSD01-U', '', 'PT Agro Jaya Perdana 2', '91912735', '48.62', '5.04', '51.20', '5.01', '2024-01-27 03:48:17'),
(4215, '27-Jan-24 07:32:59', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2701-07', '', 'PT Agro Jaya Perdana 2', '91912735', '49.79', '4.78', '52.30', '2.42', '2024-01-27 03:48:17'),
(4216, '27-Jan-24 07:33:55', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2701-07', '', 'PT Agro Jaya Perdana 2', '91912735', '51.34', '5.19', '54.15', '4.08', '2024-01-27 03:48:17'),
(4217, '27-Jan-24 07:35:53', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2701-07', '', 'PT Agro Jaya Perdana 2', '91912735', '49.38', '6.81', '52.98', '5.01', '2024-01-27 03:48:17'),
(4218, '27-Jan-24 08:44:28', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2701-08', '', 'PT Agro Jaya Perdana 2', '91912735', '50.84', '6.46', '54.35', '3.37', '2024-01-27 03:48:17'),
(4219, '27-Jan-24 08:45:29', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2701-08', '', 'PT Agro Jaya Perdana 2', '91912735', '47.80', '5.46', '50.56', '5.07', '2024-01-27 03:48:17'),
(4220, '27-Jan-24 08:46:31', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2701-08', '', 'PT Agro Jaya Perdana 2', '91912735', '48.80', '5.14', '51.44', '4.34', '2024-01-27 03:48:17'),
(4221, '27-Jan-24 09:12:34', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2701-09', '', 'PT Agro Jaya Perdana 2', '91912735', '49.38', '6.76', '52.97', '4.29', '2024-01-27 03:48:17'),
(4222, '27-Jan-24 09:13:26', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2701-09', '', 'PT Agro Jaya Perdana 2', '91912735', '52.55', '5.02', '55.33', '5.23', '2024-01-27 03:48:17'),
(4223, '27-Jan-24 09:14:25', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2701-09', '', 'PT Agro Jaya Perdana 2', '91912735', '53.02', '4.65', '55.60', '6.70', '2024-01-27 03:48:17'),
(4224, '27-Jan-24 10:06:11', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2701-10', '', 'PT Agro Jaya Perdana 2', '91912735', '51.37', '4.46', '53.76', '2.62', '2024-01-27 03:48:17'),
(4225, '27-Jan-24 10:07:08', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2701-10', '', 'PT Agro Jaya Perdana 2', '91912735', '49.97', '5.17', '52.69', '2.80', '2024-01-27 03:48:18'),
(4226, '27-Jan-24 10:08:23', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2701-10', '', 'PT Agro Jaya Perdana 2', '91912735', '48.44', '7.86', '52.57', '3.20', '2024-01-27 03:48:18'),
(4227, '27-Jan-24 11:04:14', 'Palm Kernel KCP', '', 'Normal', 'KSD-02-2701-11', '', 'PT Agro Jaya Perdana 2', '91912735', '49.18', '4.54', '51.51', '2.40', '2024-01-27 04:06:03'),
(4228, '27-Jan-24 11:05:36', 'Palm Kernel KCP', '', 'Normal', 'KSD-01-2701-11', '', 'PT Agro Jaya Perdana 2', '91912735', '46.73', '5.05', '49.22', '3.90', '2024-01-27 04:07:07'),
(4229, '27-Jan-24 11:07:05', 'Palm Kernel KCP', '', 'Normal', 'KSD-M-2701-11', '', 'PT Agro Jaya Perdana 2', '91912735', '49.20', '6.32', '52.52', '3.60', '2024-01-27 04:09:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_data_palmkernelincoming`
--
ALTER TABLE `file_data_palmkernelincoming`
  ADD PRIMARY KEY (`id_fileincoming`);

--
-- Indexes for table `file_data_palmkernelkcp`
--
ALTER TABLE `file_data_palmkernelkcp`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palmkernelincoming`
--
ALTER TABLE `palmkernelincoming`
  ADD PRIMARY KEY (`idincoming`);

--
-- Indexes for table `palmkernelkcp`
--
ALTER TABLE `palmkernelkcp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_data_palmkernelincoming`
--
ALTER TABLE `file_data_palmkernelincoming`
  MODIFY `id_fileincoming` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `file_data_palmkernelkcp`
--
ALTER TABLE `file_data_palmkernelkcp`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4988;

--
-- AUTO_INCREMENT for table `palmkernelincoming`
--
ALTER TABLE `palmkernelincoming`
  MODIFY `idincoming` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `palmkernelkcp`
--
ALTER TABLE `palmkernelkcp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
