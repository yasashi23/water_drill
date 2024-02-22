-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2024 at 02:56 AM
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
-- Database: `water_drill`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data1`
--

CREATE TABLE `admin_data1` (
  `id` int(11) NOT NULL,
  `well_number` varchar(255) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `well_group` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_data1`
--

INSERT INTO `admin_data1` (`id`, `well_number`, `customer_name`, `well_group`, `progress`) VALUES
(10, '00001', 'john', '', 'completed'),
(11, '00002', 'udin', '', 'completed'),
(12, '00003', 'hana aren', '', 'completed'),
(13, '00004', 'bambang', 'in progress', 'in progress'),
(14, '00005', 'yadi', 'in progress', 'in progress'),
(15, '00006', 'martin', 'in progress', 'in progress'),
(16, '1000', 'John', '', 'in progress'),
(17, 'Yamil', '00002', '', 'in progress');

-- --------------------------------------------------------

--
-- Table structure for table `bits`
--

CREATE TABLE `bits` (
  `id` int(11) NOT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `measurement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bits`
--

INSERT INTO `bits` (`id`, `driller_user`, `customer_name`, `quantity`, `measurement`) VALUES
(8, '00001', 'john', '', ''),
(9, '00002', 'udin', NULL, NULL),
(10, '00003', 'hana aren', NULL, NULL),
(11, '00004', 'bambang', NULL, NULL),
(12, '00005', 'yadi', '', ''),
(13, '00006', 'martin', NULL, NULL),
(14, '1000', 'John', '', ''),
(15, 'Yamil', '00002', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `casing`
--

CREATE TABLE `casing` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `casing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casing`
--

INSERT INTO `casing` (`id`, `customer_name`, `driller_user`, `casing`) VALUES
(8, 'john', '00001', ''),
(9, 'udin', '00002', NULL),
(10, 'hana aren', '00003', NULL),
(11, 'bambang', '00004', NULL),
(12, 'yadi', '00005', ''),
(13, 'martin', '00006', NULL),
(14, 'John', '1000', 'W'),
(15, '00002', 'Yamil', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_consumption`
--

CREATE TABLE `daily_consumption` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `diesel_liters` varchar(255) DEFAULT NULL,
  `engine_oil` varchar(255) DEFAULT NULL,
  `grease_kg` varchar(255) DEFAULT NULL,
  `engine_hours` varchar(255) DEFAULT NULL,
  `bentonite_kg` varchar(255) DEFAULT NULL,
  `cmc_kg` varchar(255) DEFAULT NULL,
  `hammer_oil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_consumption`
--

INSERT INTO `daily_consumption` (`id`, `customer_name`, `driller_user`, `diesel_liters`, `engine_oil`, `grease_kg`, `engine_hours`, `bentonite_kg`, `cmc_kg`, `hammer_oil`) VALUES
(8, 'john', '00001', '', '', '', '', '', '', ''),
(9, 'udin', '00002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'bambang', '00004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'yadi', '00005', '23', '24', '10', '', '', '', ''),
(13, 'martin', '00006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'John', '1000', '', '', '', '', '', '', ''),
(15, '00002', 'Yamil', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driller_user`
--

CREATE TABLE `driller_user` (
  `driller_user` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `rotary_num` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `meters_drilled` text DEFAULT NULL,
  `terain_description` varchar(255) DEFAULT NULL,
  `water_tables` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driller_user`
--

INSERT INTO `driller_user` (`driller_user`, `customer_name`, `rotary_num`, `address`, `date`, `meters_drilled`, `terain_description`, `water_tables`, `id`) VALUES
('00001', 'john', '3', '', '', '169', '', '', 8),
('00002', 'udin', NULL, NULL, NULL, NULL, NULL, NULL, 9),
('00003', 'hana aren', NULL, NULL, NULL, NULL, NULL, NULL, 10),
('00004', 'bambang', NULL, NULL, NULL, NULL, NULL, NULL, 11),
('00005', 'yadi', '3', '', '', '90', '', '', 12),
('00006', 'martin', NULL, NULL, NULL, NULL, NULL, NULL, 13),
('1000', 'John', '3', 'AVCHIOSS', '', 'NaN', '', 'WD', 14),
('Yamil', '00002', NULL, NULL, NULL, NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Table structure for table `drill_bits`
--

CREATE TABLE `drill_bits` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_hours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drill_bits`
--

INSERT INTO `drill_bits` (`id`, `customer_name`, `driller_user`, `type`, `usage_hours`) VALUES
(8, 'john', '00001', '', ''),
(9, 'udin', '00002', NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL),
(11, 'bambang', '00004', NULL, NULL),
(12, 'yadi', '00005', '', ''),
(13, 'martin', '00006', NULL, NULL),
(14, 'John', '1000', '', ''),
(15, '00002', 'Yamil', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hammers`
--

CREATE TABLE `hammers` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_hours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hammers`
--

INSERT INTO `hammers` (`id`, `customer_name`, `driller_user`, `type`, `usage_hours`) VALUES
(8, 'john', '00001', '5 Inches', ''),
(9, 'udin', '00002', NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL),
(11, 'bambang', '00004', NULL, NULL),
(12, 'yadi', '00005', '5 Inches', ''),
(13, 'martin', '00006', NULL, NULL),
(14, 'John', '1000', '5 Inches', ''),
(15, '00002', 'Yamil', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inches`
--

CREATE TABLE `inches` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `inches` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inches`
--

INSERT INTO `inches` (`id`, `customer_name`, `driller_user`, `inches`) VALUES
(8, 'john', '00001', ''),
(9, 'udin', '00002', NULL),
(10, 'hana aren', '00003', NULL),
(11, 'bambang', '00004', NULL),
(12, 'yadi', '00005', ''),
(13, 'martin', '00006', NULL),
(14, 'John', '1000', ''),
(15, '00002', 'Yamil', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `input_earn`
--

CREATE TABLE `input_earn` (
  `id` int(11) NOT NULL,
  `driller` varchar(255) DEFAULT NULL,
  `assistant` varchar(255) DEFAULT NULL,
  `diesel_liters` varchar(255) DEFAULT NULL,
  `engine_oil` varchar(255) DEFAULT NULL,
  `grease_kg` varchar(255) DEFAULT NULL,
  `earn_driller` varchar(255) DEFAULT NULL,
  `earn_assistant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `input_earn`
--

INSERT INTO `input_earn` (`id`, `driller`, `assistant`, `diesel_liters`, `engine_oil`, `grease_kg`, `earn_driller`, `earn_assistant`) VALUES
(1, 'Jonathan Marcos', 'Silvio Alem', '10', '10', '10', '10', '9'),
(2, 'Jonathan Marcos', 'Silvio Alem', '13', '11', '9', '21', '21'),
(9, 'Jonathan Marcos', 'Silvio Alem', '133', '111', '91', '43', '43'),
(10, 'Eduardo Garrel', 'Silvio Alem', '133', '111', '91', '21', '21'),
(11, 'Jonathan Marcos', 'Silvio Alem', '21', '21', '21', '21', '21'),
(12, 'jothane', 'silvio alemua', '', '', '', '50', '20'),
(13, 'jothanwwe', 'silvio alemua', '', '', '', '50', '20'),
(14, 'Jonathan Marcos', 'Silvio Alem', '', '', '', '1200', '120');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `diesel_liters` varchar(255) DEFAULT NULL,
  `grease_kg` varchar(255) DEFAULT NULL,
  `bentonite_kg` varchar(255) DEFAULT NULL,
  `engine_oil` varchar(255) DEFAULT NULL,
  `hammer_oil` varchar(255) DEFAULT NULL,
  `hydraulic_oil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `customer_name`, `driller_user`, `diesel_liters`, `grease_kg`, `bentonite_kg`, `engine_oil`, `hammer_oil`, `hydraulic_oil`) VALUES
(8, 'john', '00001', '', '', '', '', '', ''),
(9, 'udin', '00002', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'bambang', '00004', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'yadi', '00005', '', '', '', '', '', ''),
(13, 'martin', '00006', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'John', '1000', '', '', '', '', '', ''),
(15, '00002', 'Yamil', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `user`, `password`, `page`, `token`) VALUES
(1, 'udin', 'u123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlciI6InVkaW4iLCJwYWdlIjoiYWRtaW4xIiwiaWF0IjoxNzA4MzUyOTgyLCJleHAiOjE3MDgzNTMyMjJ9.xIylkJ9f0wTXUg0vzbu_7wdabqWcTdECHZQYZi20SjE'),
(2, 'john', 'j123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwidXNlciI6ImpvaG4iLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzA4MzUzMTgyLCJleHAiOjE3MDgzNTM0MjJ9.LWYW7qZMPYoAgfWiLoI00ux2XC0Q4nGFUGkattH_-K4'),
(3, 'steve', 's123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywidXNlciI6InN0ZXZlIiwicGFnZSI6ImFkbWluMSIsImlhdCI6MTcwNzYxNzU2NywiZXhwIjoxNzA3NjE3ODA3fQ.pBBS3gpf37kKl7QhVLLv1UTPwp3bNWYz_Qs3hcGDqC4'),
(4, 'hana', 'h123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwidXNlciI6ImhhbmEiLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzA3NjE4NTg4LCJleHAiOjE3MDc2MTg4Mjh9.HRaHSNIBEAoLnLXw5NjSCvoqmW7NDXtD2qkXXks1fV4'),
(5, 'aren', 'a123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwidXNlciI6ImFyZW4iLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcwODM1MjgwNiwiZXhwIjoxNzA4MzUzMDQ2fQ.xA-lCtZZr9xz0CkribgAeo7DlJU9-8E2PLEyeCvrgIY'),
(6, 'budi', 'b123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwidXNlciI6ImJ1ZGkiLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcwNzYxOTUwNCwiZXhwIjoxNzA3NjE5NzQ0fQ.Ea_a8ZRQptlVs6J32Q5CD22pdqlqcZt5Qq1fEsaQZJ8');

-- --------------------------------------------------------

--
-- Table structure for table `reamer`
--

CREATE TABLE `reamer` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `measurement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reamer`
--

INSERT INTO `reamer` (`id`, `customer_name`, `driller_user`, `quantity`, `measurement`) VALUES
(8, 'john', '00001', '', ''),
(9, 'udin', '00002', NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL),
(11, 'bambang', '00004', NULL, NULL),
(12, 'yadi', '00005', '', ''),
(13, 'martin', '00006', NULL, NULL),
(14, 'John', '1000', '', ''),
(15, '00002', 'Yamil', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tricone_bits`
--

CREATE TABLE `tricone_bits` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `measurement` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tricone_bits`
--

INSERT INTO `tricone_bits` (`id`, `customer_name`, `driller_user`, `quantity`, `measurement`, `type`) VALUES
(8, 'john', '00001', '', '', ''),
(9, 'udin', '00002', NULL, NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL, NULL),
(11, 'bambang', '00004', NULL, NULL, NULL),
(12, 'yadi', '00005', '', '', ''),
(13, 'martin', '00006', NULL, NULL, NULL),
(14, 'John', '1000', '', '', ''),
(15, '00002', 'Yamil', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `various`
--

CREATE TABLE `various` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `various` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `various`
--

INSERT INTO `various` (`id`, `customer_name`, `driller_user`, `various`) VALUES
(8, 'john', '00001', ''),
(9, 'udin', '00002', NULL),
(10, 'hana aren', '00003', NULL),
(11, 'bambang', '00004', NULL),
(12, 'yadi', '00005', ''),
(13, 'martin', '00006', NULL),
(14, 'John', '1000', ''),
(15, '00002', 'Yamil', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data1`
--
ALTER TABLE `admin_data1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bits`
--
ALTER TABLE `bits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casing`
--
ALTER TABLE `casing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_consumption`
--
ALTER TABLE `daily_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driller_user`
--
ALTER TABLE `driller_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drill_bits`
--
ALTER TABLE `drill_bits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hammers`
--
ALTER TABLE `hammers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inches`
--
ALTER TABLE `inches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_earn`
--
ALTER TABLE `input_earn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reamer`
--
ALTER TABLE `reamer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tricone_bits`
--
ALTER TABLE `tricone_bits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `various`
--
ALTER TABLE `various`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_data1`
--
ALTER TABLE `admin_data1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bits`
--
ALTER TABLE `bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `casing`
--
ALTER TABLE `casing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `daily_consumption`
--
ALTER TABLE `daily_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driller_user`
--
ALTER TABLE `driller_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `drill_bits`
--
ALTER TABLE `drill_bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hammers`
--
ALTER TABLE `hammers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inches`
--
ALTER TABLE `inches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `input_earn`
--
ALTER TABLE `input_earn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reamer`
--
ALTER TABLE `reamer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tricone_bits`
--
ALTER TABLE `tricone_bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `various`
--
ALTER TABLE `various`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
