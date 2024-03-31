-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2024 at 06:45 AM
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
  `progress` varchar(255) NOT NULL,
  `started_day` date DEFAULT NULL,
  `completion_day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_data1`
--

INSERT INTO `admin_data1` (`id`, `well_number`, `customer_name`, `well_group`, `progress`, `started_day`, `completion_day`) VALUES
(10, '00001', 'john', '', 'completed', NULL, NULL),
(11, '00002', 'udin', '', 'to be done', NULL, NULL),
(12, '00003', 'hana aren', '', 'in progress', NULL, NULL),
(13, '00004', 'bambang', '', 'completed', NULL, NULL),
(14, '00005', 'yadi', '', 'completed', NULL, NULL),
(15, '00006', 'martin', '', 'completed', NULL, NULL),
(16, '1000', 'John', '', 'in progress', NULL, NULL),
(17, 'Yamil', '00002', '', 'completed', NULL, NULL),
(18, '00007', 'hani', '', 'completed', NULL, NULL),
(19, '00008', 'huna', '', 'completed', NULL, NULL),
(20, '10000007', 'AA', '1', 'completed', NULL, NULL),
(21, '00009', 'johan', '6', 'in progress', NULL, NULL),
(22, '88888', 'hayu', 'kerjakan', 'in progress', '2024-03-31', NULL);

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
(15, 'Yamil', '00002', '3', ''),
(16, '00007', 'hani', NULL, NULL),
(17, '00008', 'huna', NULL, NULL),
(18, '10000007', 'AA', NULL, NULL),
(19, '00009', 'johan', NULL, NULL);

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
(15, '00002', 'Yamil', '4'),
(16, 'hani', '00007', NULL),
(17, 'huna', '00008', NULL),
(18, 'AA', '10000007', NULL),
(19, 'johan', '00009', NULL);

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
(15, '00002', 'Yamil', '200', '20', '10', '20', '5', '20', '10'),
(16, 'hani', '00007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'huna', '00008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AA', '10000007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'johan', '00009', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driller_data`
--

CREATE TABLE `driller_data` (
  `id` int(11) NOT NULL,
  `well_group` varchar(50) DEFAULT NULL,
  `work_day` date DEFAULT NULL,
  `du_driller_user` varchar(50) DEFAULT NULL,
  `du_driller` varchar(50) DEFAULT NULL,
  `du_customer_name` varchar(50) DEFAULT NULL,
  `du_drills_day` varchar(50) DEFAULT NULL,
  `du_address` varchar(50) DEFAULT NULL,
  `du_total_date` varchar(50) DEFAULT NULL,
  `du_land_description` varchar(50) DEFAULT NULL,
  `du_leaks` varchar(50) DEFAULT NULL,
  `du_napas` varchar(50) DEFAULT NULL,
  `dc_engine_hours` varchar(50) DEFAULT NULL,
  `dc_gasoil_lts` varchar(50) DEFAULT NULL,
  `dc_grease_kgs` varchar(50) DEFAULT NULL,
  `dc_bentonite_kgs` varchar(50) DEFAULT NULL,
  `dc_engine_oils` varchar(50) DEFAULT NULL,
  `dc_hammer_lts` varchar(50) DEFAULT NULL,
  `dc_hydraulic_lts` varchar(50) DEFAULT NULL,
  `s_engine_hours` varchar(50) DEFAULT NULL,
  `s_gasoil_lts` varchar(255) DEFAULT NULL,
  `s_grease_kgs` varchar(50) DEFAULT NULL,
  `s_bentonite_kgs` varchar(50) DEFAULT NULL,
  `s_engine_oils` varchar(50) DEFAULT NULL,
  `s_hammer_lts` varchar(50) DEFAULT NULL,
  `s_hydraulic_lts` varchar(50) DEFAULT NULL,
  `s_pipes_5` varchar(50) DEFAULT NULL,
  `s_pipes_6` varchar(50) DEFAULT NULL,
  `s_pipes_8` varchar(50) DEFAULT NULL,
  `s_filtros_6` varchar(50) DEFAULT NULL,
  `v_various` varchar(50) DEFAULT NULL,
  `t_total_depth` varchar(50) DEFAULT NULL,
  `t_flow` varchar(50) DEFAULT NULL,
  `t_static_level` varchar(50) DEFAULT NULL,
  `t_dynamic` varchar(50) DEFAULT NULL,
  `t_tubed` varchar(50) DEFAULT NULL,
  `t_filtres` varchar(50) DEFAULT NULL,
  `t_drillers` varchar(50) DEFAULT NULL,
  `t_helpers` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driller_data`
--

INSERT INTO `driller_data` (`id`, `well_group`, `work_day`, `du_driller_user`, `du_driller`, `du_customer_name`, `du_drills_day`, `du_address`, `du_total_date`, `du_land_description`, `du_leaks`, `du_napas`, `dc_engine_hours`, `dc_gasoil_lts`, `dc_grease_kgs`, `dc_bentonite_kgs`, `dc_engine_oils`, `dc_hammer_lts`, `dc_hydraulic_lts`, `s_engine_hours`, `s_gasoil_lts`, `s_grease_kgs`, `s_bentonite_kgs`, `s_engine_oils`, `s_hammer_lts`, `s_hydraulic_lts`, `s_pipes_5`, `s_pipes_6`, `s_pipes_8`, `s_filtros_6`, `v_various`, `t_total_depth`, `t_flow`, `t_static_level`, `t_dynamic`, `t_tubed`, `t_filtres`, `t_drillers`, `t_helpers`) VALUES
(1, NULL, '2024-03-31', '1000', NULL, 'John', '3', 'dsds', '', 'fdsfds', 'fdsfds', 'fdsfds', '32', '77', '8', '88', '88', '8', '8', '8', '98', '98', '98', '9', '89', '89', '8', '98', '98', '9', '9', '98', '', '98', '9', '89', '89', 'nganga', 'uidn'),
(2, NULL, '2024-03-31', '00003', NULL, 'hana aren', '898', 'ertre', '89', '898', 'jj', 'kjkjk', '988', '8', '88', '8', '8', '8', '8', '8', '88', '8', '8', '8', '88', '8', '8', '8', '8', '8', 'jkkkkkkkkkkkkkkkkkkkk', '98', '9', '9', '89', '8', '98989', 'johan', 'budi'),
(3, NULL, '2024-04-01', '00003', NULL, 'hana aren', '7777', 'ioio', 'ioioi', 'jkjk', 'jkj', 'kjk', '7', '7', '7', '77', '7', '7', '77', '77', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', 'knmnmnmnmnmn', '88', '88', '88', '88', '7777', '77777', 'halui', 'yhai'),
(4, NULL, '2024-03-31', '88888', NULL, 'hayu', '99999', 'jjj', '999', 'jjk', 'kkk', 'k', '888', '99', '999', '00', '9', '98', '888', '88989', '8989', '98', '989', '89', '8', '98', '989', '898', '9898', '9898', 'jhhjhjhjhj', '89898', '98', '98', '98', '98', '99', 'ahmad', 'yadi');

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
('Yamil', '00002', '3', 'Av chiossi', '', '23', 'D', '3', 15),
('00007', 'hani', NULL, NULL, NULL, NULL, NULL, NULL, 16),
('00008', 'huna', NULL, NULL, NULL, NULL, NULL, NULL, 17),
('10000007', 'AA', NULL, NULL, NULL, NULL, NULL, NULL, 18),
('00009', 'johan', NULL, NULL, NULL, NULL, NULL, NULL, 19);

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
(15, '00002', 'Yamil', '3', '3'),
(16, 'hani', '00007', NULL, NULL),
(17, 'huna', '00008', NULL, NULL),
(18, 'AA', '10000007', NULL, NULL),
(19, 'johan', '00009', NULL, NULL);

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
(15, '00002', 'Yamil', '5 Pulgadas', '1'),
(16, 'hani', '00007', NULL, NULL),
(17, 'huna', '00008', NULL, NULL),
(18, 'AA', '10000007', NULL, NULL),
(19, 'johan', '00009', NULL, NULL);

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
(15, '00002', 'Yamil', '8'),
(16, 'hani', '00007', NULL),
(17, 'huna', '00008', NULL),
(18, 'AA', '10000007', NULL),
(19, 'johan', '00009', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `input_cost`
--

CREATE TABLE `input_cost` (
  `id` int(11) NOT NULL,
  `diesel_liters` varchar(255) DEFAULT NULL,
  `engine_oil` varchar(255) DEFAULT NULL,
  `grease_kg` varchar(255) DEFAULT NULL,
  `bentonite_km` varchar(255) DEFAULT NULL,
  `cmc_km` varchar(255) DEFAULT NULL,
  `hammers_oil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `input_cost`
--

INSERT INTO `input_cost` (`id`, `diesel_liters`, `engine_oil`, `grease_kg`, `bentonite_km`, `cmc_km`, `hammers_oil`) VALUES
(1, '20', '20', '0', '0', '0', '30');

-- --------------------------------------------------------

--
-- Table structure for table `input_earn`
--

CREATE TABLE `input_earn` (
  `id` int(11) NOT NULL,
  `driller` varchar(255) DEFAULT NULL,
  `assistant` varchar(255) DEFAULT NULL,
  `earn_driller` varchar(255) DEFAULT NULL,
  `earn_assistant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `input_earn`
--

INSERT INTO `input_earn` (`id`, `driller`, `assistant`, `earn_driller`, `earn_assistant`) VALUES
(1, 'ranklin Giménez', 'Silvio Alem', '', ''),
(2, 'Jonathan Marcos', 'Silvio Alem', '21', '21'),
(9, 'Jonathan Marcos', 'Silvio Alem', '43', '43'),
(10, 'Eduardo Garrel', 'Silvio Alem', '21', '21'),
(11, 'Jonathan Marcos', 'Silvio Alem', '21', '21'),
(12, 'jothane', 'silvio alemua', '50', '20'),
(13, 'jothanwwe', 'silvio alemua', '50', '20'),
(14, 'Jonathan Marcos', 'Silvio Alem', '1200', '120');

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
(15, '00002', 'Yamil', '1', '1', '1', '1', '1', '1'),
(16, 'hani', '00007', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'huna', '00008', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AA', '10000007', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'johan', '00009', NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 'udin', 'u123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlciI6InVkaW4iLCJwYWdlIjoiYWRtaW4xIiwiaWF0IjoxNzExODU4NTg3LCJleHAiOjE3MTE4NTg4Mjd9.dbDWWhngMzcvD-xEJGrOYoEEBYqLdJ2XhBA2_pbJsKs'),
(2, 'john', 'j123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwidXNlciI6ImpvaG4iLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzEwNDk2MTIyLCJleHAiOjE3MTA0OTYzNjJ9.1T4v7VZzSfAs1ugZq9ttjR88Q5jXQxUvBzQYDxVPwDo'),
(3, 'steve', 's123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywidXNlciI6InN0ZXZlIiwicGFnZSI6ImFkbWluMSIsImlhdCI6MTcwNzYxNzU2NywiZXhwIjoxNzA3NjE3ODA3fQ.pBBS3gpf37kKl7QhVLLv1UTPwp3bNWYz_Qs3hcGDqC4'),
(4, 'hana', 'h123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwidXNlciI6ImhhbmEiLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzA3NjE4NTg4LCJleHAiOjE3MDc2MTg4Mjh9.HRaHSNIBEAoLnLXw5NjSCvoqmW7NDXtD2qkXXks1fV4'),
(5, 'aren', 'a123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwidXNlciI6ImFyZW4iLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcxMDQ5NjQ1OCwiZXhwIjoxNzEwNDk2Njk4fQ.y5tMmCl4tvTByHOwcUkZWARUcYGm_-dRIFM4AdMj0h0'),
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
(15, '00002', 'Yamil', '3', '1'),
(16, 'hani', '00007', NULL, NULL),
(17, 'huna', '00008', NULL, NULL),
(18, 'AA', '10000007', NULL, NULL),
(19, 'johan', '00009', NULL, NULL);

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
(15, '00002', 'Yamil', '2', 'W', 'Bit'),
(16, 'hani', '00007', NULL, NULL, NULL),
(17, 'huna', '00008', NULL, NULL, NULL),
(18, 'AA', '10000007', NULL, NULL, NULL),
(19, 'johan', '00009', NULL, NULL, NULL);

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
(15, '00002', 'Yamil', 'Isjaja'),
(16, 'hani', '00007', NULL),
(17, 'huna', '00008', NULL),
(18, 'AA', '10000007', NULL),
(19, 'johan', '00009', NULL);

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
-- Indexes for table `driller_data`
--
ALTER TABLE `driller_data`
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
-- Indexes for table `input_cost`
--
ALTER TABLE `input_cost`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bits`
--
ALTER TABLE `bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `casing`
--
ALTER TABLE `casing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `daily_consumption`
--
ALTER TABLE `daily_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `driller_data`
--
ALTER TABLE `driller_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driller_user`
--
ALTER TABLE `driller_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `drill_bits`
--
ALTER TABLE `drill_bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hammers`
--
ALTER TABLE `hammers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inches`
--
ALTER TABLE `inches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `input_cost`
--
ALTER TABLE `input_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `input_earn`
--
ALTER TABLE `input_earn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reamer`
--
ALTER TABLE `reamer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tricone_bits`
--
ALTER TABLE `tricone_bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `various`
--
ALTER TABLE `various`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
