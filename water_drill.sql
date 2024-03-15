-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Mar 2024 pada 16.04
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
-- Struktur dari tabel `admin_data1`
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
-- Dumping data untuk tabel `admin_data1`
--

INSERT INTO `admin_data1` (`id`, `well_number`, `customer_name`, `well_group`, `progress`, `started_day`, `completion_day`) VALUES
(10, '00001', 'john', '', 'in progress', '2024-03-15', NULL),
(11, '00002', 'udin', '', 'in progress', '2024-03-15', NULL),
(12, '00003', 'hana aren', '', 'in progress', '2024-03-15', NULL),
(13, '00004', 'bambang', 'in progress', 'to be done', '2024-03-15', NULL),
(14, '00005', 'yadi', 'in progress', 'in progress', '2024-03-15', NULL),
(15, '00006', 'martin', 'in progress', 'in progress', '2024-03-15', NULL),
(16, '1000', 'John', '', 'in progress', '2024-03-15', NULL),
(17, '00002', 'Yamil', '', 'in progress', '2024-03-15', NULL),
(18, '000071', 'Eduardo Perozzo', '', 'in progress', '2024-03-15', NULL),
(19, '175', 'Eduardo Perozzo', '', 'in progress', '2024-03-15', NULL),
(20, '175', 'Eduardo Perozzo', '', 'in progress', '2024-03-15', NULL),
(21, '00040', 'egi', 'briliant_p', 'in progress', '2024-03-15', NULL),
(22, '00032', 'tami', 'briliant', 'in progress', '2024-03-15', NULL),
(23, '1000', 'John', '1', 'in progress', '2024-03-15', NULL),
(24, '1000', '00002', '', 'in progress', '2024-03-15', NULL),
(25, '10007', 'Amin', '', 'in progress', '2024-03-15', NULL),
(26, '100005', 'Amin', '', 'in progress', '2024-03-15', NULL),
(27, '1000', 'John1', '', 'in progress', '2024-03-15', NULL),
(28, '333222', 'briliano', 'gas', 'in progress', '2024-03-15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bits`
--

CREATE TABLE `bits` (
  `id` int(11) NOT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `measurement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bits`
--

INSERT INTO `bits` (`id`, `driller_user`, `customer_name`, `quantity`, `measurement`) VALUES
(8, '00001', 'john', '', ''),
(9, '00002', 'udin', NULL, NULL),
(10, '00003', 'hana aren', NULL, NULL),
(11, '00004', 'bambang', NULL, NULL),
(12, '00005', 'yadi', '', ''),
(13, '00006', 'martin', NULL, NULL),
(14, '1000', 'John', '', ''),
(15, '00002', 'Yamil', NULL, NULL),
(16, '000071', 'Eduardo Perozzo', NULL, NULL),
(17, '175', 'Eduardo Perozzo', '', ''),
(18, '175', 'Eduardo Perozzo', '', ''),
(19, '00040', 'egi', NULL, NULL),
(20, '00032', 'tami', NULL, NULL),
(21, '1000', 'John', NULL, NULL),
(22, '1000', '00002', NULL, NULL),
(23, '10007', 'Amin', NULL, NULL),
(24, '100005', 'Amin', NULL, NULL),
(25, '1000', 'John1', NULL, NULL),
(26, '333222', 'briliano', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `casing`
--

CREATE TABLE `casing` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `casing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `casing`
--

INSERT INTO `casing` (`id`, `customer_name`, `driller_user`, `casing`) VALUES
(8, 'john', '00001', ''),
(9, 'udin', '00002', NULL),
(10, 'hana aren', '00003', NULL),
(11, 'bambang', '00004', NULL),
(12, 'yadi', '00005', ''),
(13, 'martin', '00006', NULL),
(14, 'John', '1000', 'W'),
(15, 'Yamil', '00002', NULL),
(16, 'Eduardo Perozzo', '000071', NULL),
(17, 'Eduardo Perozzo', '175', ''),
(18, 'Eduardo Perozzo', '175', ''),
(19, 'egi', '00040', NULL),
(20, 'tami', '00032', NULL),
(21, 'John', '1000', NULL),
(22, '00002', '1000', NULL),
(23, 'Amin', '10007', NULL),
(24, 'Amin', '100005', NULL),
(25, 'John1', '1000', NULL),
(26, 'briliano', '333222', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily_consumption`
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
-- Dumping data untuk tabel `daily_consumption`
--

INSERT INTO `daily_consumption` (`id`, `customer_name`, `driller_user`, `diesel_liters`, `engine_oil`, `grease_kg`, `engine_hours`, `bentonite_kg`, `cmc_kg`, `hammer_oil`) VALUES
(8, 'john', '00001', '', '', '', '', '', '', ''),
(9, 'udin', '00002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'bambang', '00004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'yadi', '00005', '23', '24', '10', '', '', '', ''),
(13, 'martin', '00006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'John', '1000', '', '', '', '', '', '', ''),
(15, 'Yamil', '00002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Eduardo Perozzo', '000071', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Eduardo Perozzo', '175', '', '', '', '', '', '', ''),
(18, 'Eduardo Perozzo', '175', '', '', '', '', '', '', ''),
(19, 'egi', '00040', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'tami', '00032', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'John', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '00002', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Amin', '10007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Amin', '100005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'John1', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'briliano', '333222', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `driller_data`
--

CREATE TABLE `driller_data` (
  `id` int(11) NOT NULL,
  `well_number` varchar(100) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `well_group` varchar(50) DEFAULT NULL,
  `started_day` date DEFAULT NULL,
  `work_day` date DEFAULT NULL,
  `completion_day` date DEFAULT NULL,
  `du_driller_user` varchar(50) DEFAULT NULL,
  `du_customer_name` varchar(50) DEFAULT NULL,
  `du_rotary_number` varchar(50) DEFAULT NULL,
  `du_address` varchar(50) DEFAULT NULL,
  `du_meters_drilled` varchar(50) DEFAULT NULL,
  `du_terain_description` varchar(50) DEFAULT NULL,
  `du_waters_tables` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `driller_user`
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
-- Dumping data untuk tabel `driller_user`
--

INSERT INTO `driller_user` (`driller_user`, `customer_name`, `rotary_num`, `address`, `date`, `meters_drilled`, `terain_description`, `water_tables`, `id`) VALUES
('00001', 'john', '3', '', '', '169', '', '', 8),
('00002', 'udin', NULL, NULL, NULL, NULL, NULL, NULL, 9),
('00003', 'hana aren', NULL, NULL, NULL, NULL, NULL, NULL, 10),
('00004', 'bambang', NULL, NULL, NULL, NULL, NULL, NULL, 11),
('00005', 'yadi', '3', '', '', '90', '', '', 12),
('00006', 'martin', NULL, NULL, NULL, NULL, NULL, NULL, 13),
('1000', 'John', '3', 'AVCHIOSS', '', 'NaN', '', 'WD', 14),
('00002', 'Yamil', NULL, NULL, NULL, NULL, NULL, NULL, 15),
('000071', 'Eduardo Perozzo', NULL, NULL, NULL, NULL, NULL, NULL, 16),
('175', 'Eduardo Perozzo', '8', 'Canelones', '2024-02-29', '450', '', '', 17),
('175', 'Eduardo Perozzo', '8', 'Canelones', '2024-02-29', '450', '', '', 18),
('00040', 'egi', NULL, NULL, NULL, NULL, NULL, NULL, 19),
('00032', 'tami', NULL, NULL, NULL, NULL, NULL, NULL, 20),
('1000', 'John', NULL, NULL, NULL, NULL, NULL, NULL, 21),
('1000', '00002', NULL, NULL, NULL, NULL, NULL, NULL, 22),
('10007', 'Amin', NULL, NULL, NULL, NULL, NULL, NULL, 23),
('100005', 'Amin', NULL, NULL, NULL, NULL, NULL, NULL, 24),
('1000', 'John1', NULL, NULL, NULL, NULL, NULL, NULL, 25),
('333222', 'briliano', NULL, NULL, NULL, NULL, NULL, NULL, 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `drill_bits`
--

CREATE TABLE `drill_bits` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_hours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `drill_bits`
--

INSERT INTO `drill_bits` (`id`, `customer_name`, `driller_user`, `type`, `usage_hours`) VALUES
(8, 'john', '00001', '', ''),
(9, 'udin', '00002', NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL),
(11, 'bambang', '00004', NULL, NULL),
(12, 'yadi', '00005', '', ''),
(13, 'martin', '00006', NULL, NULL),
(14, 'John', '1000', '', ''),
(15, 'Yamil', '00002', NULL, NULL),
(16, 'Eduardo Perozzo', '000071', NULL, NULL),
(17, 'Eduardo Perozzo', '175', '', ''),
(18, 'Eduardo Perozzo', '175', '', ''),
(19, 'egi', '00040', NULL, NULL),
(20, 'tami', '00032', NULL, NULL),
(21, 'John', '1000', NULL, NULL),
(22, '00002', '1000', NULL, NULL),
(23, 'Amin', '10007', NULL, NULL),
(24, 'Amin', '100005', NULL, NULL),
(25, 'John1', '1000', NULL, NULL),
(26, 'briliano', '333222', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hammers`
--

CREATE TABLE `hammers` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_hours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hammers`
--

INSERT INTO `hammers` (`id`, `customer_name`, `driller_user`, `type`, `usage_hours`) VALUES
(8, 'john', '00001', '5 Inches', ''),
(9, 'udin', '00002', NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL),
(11, 'bambang', '00004', NULL, NULL),
(12, 'yadi', '00005', '5 Inches', ''),
(13, 'martin', '00006', NULL, NULL),
(14, 'John', '1000', '5 Inches', ''),
(15, 'Yamil', '00002', NULL, NULL),
(16, 'Eduardo Perozzo', '000071', NULL, NULL),
(17, 'Eduardo Perozzo', '175', '5 Pulgadas', ''),
(18, 'Eduardo Perozzo', '175', '5 Pulgadas', ''),
(19, 'egi', '00040', NULL, NULL),
(20, 'tami', '00032', NULL, NULL),
(21, 'John', '1000', NULL, NULL),
(22, '00002', '1000', NULL, NULL),
(23, 'Amin', '10007', NULL, NULL),
(24, 'Amin', '100005', NULL, NULL),
(25, 'John1', '1000', NULL, NULL),
(26, 'briliano', '333222', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inches`
--

CREATE TABLE `inches` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `inches` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inches`
--

INSERT INTO `inches` (`id`, `customer_name`, `driller_user`, `inches`) VALUES
(8, 'john', '00001', ''),
(9, 'udin', '00002', NULL),
(10, 'hana aren', '00003', NULL),
(11, 'bambang', '00004', NULL),
(12, 'yadi', '00005', ''),
(13, 'martin', '00006', NULL),
(14, 'John', '1000', ''),
(15, 'Yamil', '00002', NULL),
(16, 'Eduardo Perozzo', '000071', NULL),
(17, 'Eduardo Perozzo', '175', ''),
(18, 'Eduardo Perozzo', '175', ''),
(19, 'egi', '00040', NULL),
(20, 'tami', '00032', NULL),
(21, 'John', '1000', NULL),
(22, '00002', '1000', NULL),
(23, 'Amin', '10007', NULL),
(24, 'Amin', '100005', NULL),
(25, 'John1', '1000', NULL),
(26, 'briliano', '333222', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_cost`
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
-- Dumping data untuk tabel `input_cost`
--

INSERT INTO `input_cost` (`id`, `diesel_liters`, `engine_oil`, `grease_kg`, `bentonite_km`, `cmc_km`, `hammers_oil`) VALUES
(1, '20', '20', '0', '0', '0', '30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_earn`
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
-- Dumping data untuk tabel `input_earn`
--

INSERT INTO `input_earn` (`id`, `driller`, `assistant`, `diesel_liters`, `engine_oil`, `grease_kg`, `earn_driller`, `earn_assistant`) VALUES
(1, 'Luis Benitez', 'Pablo Pereira', '10', '10', '10', '10', '9'),
(2, 'Jonathan Marcos', 'Silvio Alem', '13', '11', '9', '21', '21'),
(9, 'Jonathan Marcos', 'Silvio Alem', '133', '111', '91', '43', '43'),
(10, 'Eduardo Garrel', 'Silvio Alem', '133', '111', '91', '21', '21'),
(11, 'Jonathan Marcos', 'Silvio Alem', '21', '21', '21', '21', '21'),
(12, 'jothane', 'silvio alemua', '', '', '', '50', '20'),
(13, 'jothanwwe', 'silvio alemua', '', '', '', '50', '20'),
(14, 'Jonathan Marcos', 'Silvio Alem', '', '', '', '1200', '120'),
(15, 'Jonathan Marcos', 'Silvio Alem', '100', '100', '100', '1300', '2400'),
(16, 'Jonathan Marcos', 'Silvio Alem', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
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
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`id`, `customer_name`, `driller_user`, `diesel_liters`, `grease_kg`, `bentonite_kg`, `engine_oil`, `hammer_oil`, `hydraulic_oil`) VALUES
(8, 'john', '00001', '', '', '', '', '', ''),
(9, 'udin', '00002', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'bambang', '00004', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'yadi', '00005', '', '', '', '', '', ''),
(13, 'martin', '00006', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'John', '1000', '', '', '', '', '', ''),
(15, 'Yamil', '00002', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Eduardo Perozzo', '000071', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Eduardo Perozzo', '175', '', '', '', '', '', ''),
(18, 'Eduardo Perozzo', '175', '', '', '', '', '', ''),
(19, 'egi', '00040', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'tami', '00032', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'John', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(22, '00002', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Amin', '10007', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Amin', '100005', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'John1', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'briliano', '333222', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login_user`
--

INSERT INTO `login_user` (`id`, `user`, `password`, `page`, `token`) VALUES
(1, 'udin', 'u123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlciI6InVkaW4iLCJwYWdlIjoiYWRtaW4xIiwiaWF0IjoxNzEwNTEzMDIzLCJleHAiOjE3MTA1MTMyNjN9.AmZY8K7aO08UuO-9cpKu1ZCYnj9vj2Nvo3GpOj73D5E'),
(2, 'john', 'j123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwidXNlciI6ImpvaG4iLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzEwNDU2NTcwLCJleHAiOjE3MTA0NTY4MTB9.7TaekH2YQjTWoxs77GsejJhN8OiOXcM-BiEOOjyC8Pc'),
(3, 'steve', 's123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywidXNlciI6InN0ZXZlIiwicGFnZSI6ImFkbWluMSIsImlhdCI6MTcwOTYwNzAwNSwiZXhwIjoxNzA5NjA3MjQ1fQ.9xKh9HmgVd7LYDTsxWlKys72DiUVn8wSOfvXtAoHmKo'),
(4, 'hana', 'h123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwidXNlciI6ImhhbmEiLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzA5NjA3NjU1LCJleHAiOjE3MDk2MDc4OTV9.c9Kt32jjunDKi4l8tYjeAWqeKyN_f09btZ7vx71wM_8'),
(5, 'aren', 'a123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwidXNlciI6ImFyZW4iLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcxMDQ1NjYzMywiZXhwIjoxNzEwNDU2ODczfQ.0B9qprApfYWfzKC_sPAJByRxuy0g0-UlkswHI_71sc0'),
(6, 'budi', 'b123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwidXNlciI6ImJ1ZGkiLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcwNzYxOTUwNCwiZXhwIjoxNzA3NjE5NzQ0fQ.Ea_a8ZRQptlVs6J32Q5CD22pdqlqcZt5Qq1fEsaQZJ8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reamer`
--

CREATE TABLE `reamer` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `measurement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reamer`
--

INSERT INTO `reamer` (`id`, `customer_name`, `driller_user`, `quantity`, `measurement`) VALUES
(8, 'john', '00001', '', ''),
(9, 'udin', '00002', NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL),
(11, 'bambang', '00004', NULL, NULL),
(12, 'yadi', '00005', '', ''),
(13, 'martin', '00006', NULL, NULL),
(14, 'John', '1000', '', ''),
(15, 'Yamil', '00002', NULL, NULL),
(16, 'Eduardo Perozzo', '000071', NULL, NULL),
(17, 'Eduardo Perozzo', '175', '', ''),
(18, 'Eduardo Perozzo', '175', '', ''),
(19, 'egi', '00040', NULL, NULL),
(20, 'tami', '00032', NULL, NULL),
(21, 'John', '1000', NULL, NULL),
(22, '00002', '1000', NULL, NULL),
(23, 'Amin', '10007', NULL, NULL),
(24, 'Amin', '100005', NULL, NULL),
(25, 'John1', '1000', NULL, NULL),
(26, 'briliano', '333222', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tricone_bits`
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
-- Dumping data untuk tabel `tricone_bits`
--

INSERT INTO `tricone_bits` (`id`, `customer_name`, `driller_user`, `quantity`, `measurement`, `type`) VALUES
(8, 'john', '00001', '', '', ''),
(9, 'udin', '00002', NULL, NULL, NULL),
(10, 'hana aren', '00003', NULL, NULL, NULL),
(11, 'bambang', '00004', NULL, NULL, NULL),
(12, 'yadi', '00005', '', '', ''),
(13, 'martin', '00006', NULL, NULL, NULL),
(14, 'John', '1000', '', '', ''),
(15, 'Yamil', '00002', NULL, NULL, NULL),
(16, 'Eduardo Perozzo', '000071', NULL, NULL, NULL),
(17, 'Eduardo Perozzo', '175', '', '', ''),
(18, 'Eduardo Perozzo', '175', '', '', ''),
(19, 'egi', '00040', NULL, NULL, NULL),
(20, 'tami', '00032', NULL, NULL, NULL),
(21, 'John', '1000', NULL, NULL, NULL),
(22, '00002', '1000', NULL, NULL, NULL),
(23, 'Amin', '10007', NULL, NULL, NULL),
(24, 'Amin', '100005', NULL, NULL, NULL),
(25, 'John1', '1000', NULL, NULL, NULL),
(26, 'briliano', '333222', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `various`
--

CREATE TABLE `various` (
  `id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `driller_user` varchar(255) DEFAULT NULL,
  `various` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `various`
--

INSERT INTO `various` (`id`, `customer_name`, `driller_user`, `various`) VALUES
(8, 'john', '00001', ''),
(9, 'udin', '00002', NULL),
(10, 'hana aren', '00003', NULL),
(11, 'bambang', '00004', NULL),
(12, 'yadi', '00005', ''),
(13, 'martin', '00006', NULL),
(14, 'John', '1000', ''),
(15, 'Yamil', '00002', NULL),
(16, 'Eduardo Perozzo', '000071', NULL),
(17, 'Eduardo Perozzo', '175', ''),
(18, 'Eduardo Perozzo', '175', ''),
(19, 'egi', '00040', NULL),
(20, 'tami', '00032', NULL),
(21, 'John', '1000', NULL),
(22, '00002', '1000', NULL),
(23, 'Amin', '10007', NULL),
(24, 'Amin', '100005', NULL),
(25, 'John1', '1000', NULL),
(26, 'briliano', '333222', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_data1`
--
ALTER TABLE `admin_data1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bits`
--
ALTER TABLE `bits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `casing`
--
ALTER TABLE `casing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daily_consumption`
--
ALTER TABLE `daily_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `driller_data`
--
ALTER TABLE `driller_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `driller_user`
--
ALTER TABLE `driller_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `drill_bits`
--
ALTER TABLE `drill_bits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hammers`
--
ALTER TABLE `hammers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inches`
--
ALTER TABLE `inches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `input_cost`
--
ALTER TABLE `input_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `input_earn`
--
ALTER TABLE `input_earn`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reamer`
--
ALTER TABLE `reamer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tricone_bits`
--
ALTER TABLE `tricone_bits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `various`
--
ALTER TABLE `various`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_data1`
--
ALTER TABLE `admin_data1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `bits`
--
ALTER TABLE `bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `casing`
--
ALTER TABLE `casing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `daily_consumption`
--
ALTER TABLE `daily_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `driller_data`
--
ALTER TABLE `driller_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `driller_user`
--
ALTER TABLE `driller_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `drill_bits`
--
ALTER TABLE `drill_bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `hammers`
--
ALTER TABLE `hammers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `inches`
--
ALTER TABLE `inches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `input_earn`
--
ALTER TABLE `input_earn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `reamer`
--
ALTER TABLE `reamer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tricone_bits`
--
ALTER TABLE `tricone_bits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `various`
--
ALTER TABLE `various`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
