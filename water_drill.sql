-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Apr 2024 pada 05.37
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
(10, '00001', 'john', '', 'completed', '2024-03-15', '2024-03-20'),
(11, '00002', 'udin', '', 'in progress', '2024-03-15', NULL),
(12, '00003', 'hana aren', '', 'in progress', '2024-03-15', NULL),
(13, '00004', 'bambang', 'in progress', 'to be done', '2024-03-15', NULL),
(14, '00005', 'yadi', 'in progress', 'in progress', '2024-03-15', NULL),
(15, '00006', 'martin', 'in progress', 'in progress', '2024-03-15', NULL),
(16, '1000', 'John', '', 'in progress', '2024-03-15', NULL),
(17, '00002', 'Yamil', '', 'in progress', '2024-03-15', NULL),
(18, '000071', 'Eduardo Perozzo', '', 'completed', '2024-03-15', '2024-03-20'),
(19, '175', 'Eduardo Perozzo', '', 'in progress', '2024-03-15', NULL),
(20, '175', 'Eduardo Perozzo', '', 'in progress', '2024-03-15', NULL),
(21, '00040', 'egi', 'briliant_p', 'in progress', '2024-03-15', NULL),
(22, '00032', 'tami', 'briliant', 'in progress', '2024-03-15', NULL),
(23, '1000', 'John', '1', 'in progress', '2024-03-15', NULL),
(24, '1000', '00002', '', 'in progress', '2024-03-15', NULL),
(25, '10007', 'Amin', '', 'in progress', '2024-03-15', NULL),
(26, '100005', 'Amin', '', 'in progress', '2024-03-15', NULL),
(27, '1000', 'John1', '', 'in progress', '2024-03-15', NULL),
(28, '333222', 'briliano', 'gas', 'in progress', '2024-03-15', NULL),
(30, '2323232', 'gui', 'elpzo', 'in progress', '2024-03-16', NULL),
(31, '3333333', 'gan', 'dui', 'in progress', '2024-03-16', NULL),
(32, '45453534', 'dtt', 'hhy', 'completed', '2024-03-16', '2024-03-16'),
(33, '4434334', 'tyytyt', 'ghgh', 'in progress', '2024-03-16', NULL),
(34, '12890', 'qwert', 'gfds', 'to be done', '2024-03-16', NULL),
(35, '000079', 'Amin', '', 'completed', '2024-03-18', '2024-03-18'),
(36, '10000', 'Amin', '1', 'completed', '2024-03-18', '2024-03-18'),
(37, '50000007', 'Amin', '', 'in progress', '2024-03-20', NULL),
(38, '10100', 'Roca ', '', 'completed', '2024-03-26', '2024-03-26'),
(39, '', '', '', 'in progress', '2024-03-26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `driller_data`
--

CREATE TABLE `driller_data` (
  `id` int(11) NOT NULL,
  `well_group` varchar(50) DEFAULT NULL,
  `work_day` date DEFAULT NULL,
  `du_driller_user` varchar(50) DEFAULT NULL,
  `du_driller` varchar(50) DEFAULT NULL,
  `du_customer_name` varchar(50) DEFAULT NULL,
  `du_rotary_number` varchar(50) DEFAULT NULL,
  `du_address` varchar(50) DEFAULT NULL,
  `du_meters_drilled` varchar(50) DEFAULT NULL,
  `du_terain_description` varchar(50) DEFAULT NULL,
  `du_waters_tables` varchar(50) DEFAULT NULL,
  `du_assistant` varchar(50) DEFAULT NULL,
  `db_type` varchar(50) DEFAULT NULL,
  `db_usage_hours` varchar(50) DEFAULT NULL,
  `tb_quantity` varchar(50) DEFAULT NULL,
  `tb_measurement` varchar(50) DEFAULT NULL,
  `tb_type` varchar(50) DEFAULT NULL,
  `b_quantity` varchar(50) DEFAULT NULL,
  `b_measurement` varchar(50) DEFAULT NULL,
  `c_casing` varchar(50) DEFAULT NULL,
  `v_various` varchar(255) DEFAULT NULL,
  `dc_diesel_liters` varchar(50) DEFAULT NULL,
  `dc_engine_oils` varchar(50) DEFAULT NULL,
  `dc_grease_kg` varchar(50) DEFAULT NULL,
  `dc_engine_hours` varchar(50) DEFAULT NULL,
  `dc_bentonite_kg` varchar(50) DEFAULT NULL,
  `dc_cmc_kg` varchar(50) DEFAULT NULL,
  `dc_hammer_oils` varchar(50) DEFAULT NULL,
  `h_type` varchar(50) DEFAULT NULL,
  `h_usage_hours` varchar(50) DEFAULT NULL,
  `i_diesel_liters` varchar(50) DEFAULT NULL,
  `i_grease_kg` varchar(50) DEFAULT NULL,
  `i_bentonite_kg` varchar(50) DEFAULT NULL,
  `i_engine_oils` varchar(50) DEFAULT NULL,
  `i_hammer_oils` varchar(50) DEFAULT NULL,
  `i_hydraulic_oils` varchar(50) DEFAULT NULL,
  `r_quantity` varchar(50) DEFAULT NULL,
  `r_measurement` varchar(50) DEFAULT NULL,
  `inches` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `driller_data`
--

INSERT INTO `driller_data` (`id`, `well_group`, `work_day`, `du_driller_user`, `du_driller`, `du_customer_name`, `du_rotary_number`, `du_address`, `du_meters_drilled`, `du_terain_description`, `du_waters_tables`, `du_assistant`, `db_type`, `db_usage_hours`, `tb_quantity`, `tb_measurement`, `tb_type`, `b_quantity`, `b_measurement`, `c_casing`, `v_various`, `dc_diesel_liters`, `dc_engine_oils`, `dc_grease_kg`, `dc_engine_hours`, `dc_bentonite_kg`, `dc_cmc_kg`, `dc_hammer_oils`, `h_type`, `h_usage_hours`, `i_diesel_liters`, `i_grease_kg`, `i_bentonite_kg`, `i_engine_oils`, `i_hammer_oils`, `i_hydraulic_oils`, `r_quantity`, `r_measurement`, `inches`) VALUES
(28, NULL, '2024-03-14', '00005', '', 'yadi', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(29, NULL, '2024-03-14', '00005', '', 'yadi', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(30, NULL, '2024-03-14', '00006', '', 'martin', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(31, NULL, '2024-03-14', '00006', '', 'martin', '3', '', '22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(32, NULL, '2024-03-14', '00005', 'dffd', 'yadi', '3', '', '', '', '', 'fdfds', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(33, NULL, '2024-03-14', '00006', '', 'martin', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(34, NULL, '2024-03-06', '00006', '', 'martin', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(35, NULL, '2024-03-21', '000071', 'jack', 'Eduardo Perozzo', '3', '', '122', '', '', 'steven', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(36, NULL, '2024-03-21', '00001', 'jack', 'john', '3', '', '23', '', '', 'steven', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(37, NULL, '2024-03-07', '00001', 'jack', 'john', '3', '', '34', '', '', 'steven', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(38, NULL, '2024-03-22', '00001', 'jack', 'john', '3', '', '56', '', '', 'steven', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(39, NULL, '2024-03-14', '00001', 'jack', 'john', '3', '', '32', '', '', 'steve', '', '', '', '', '', '', '', '', '', '33', '23', '23', '22', '112', '4', '222', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(40, NULL, '2024-03-20', '00001', 'Yonathan', 'john', '3', 'Canelones', '30', 'humedo', '20', 'Silvio', 'bit', '4', '5', '5,5', '2,8', '5', '3', 'acero', '', '4', '4', '4', '4', '4', '4', '4', '5 Pulgadas', '5', '6', '7', '7', '7', '7', '7', '5', '5', '6,8'),
(41, NULL, '2024-03-21', '00001', 'Yonathan', 'john', '3', 'Canelones', '35', 'humedo', '20', 'Silvio', 'bit', '4', '5', '5,5', '2,8', '5', '3', 'acero', '', '4', '4', '4', '4', '4', '4', '4', '5 Pulgadas', '5', '6', '7', '7', '7', '7', '7', '5', '5', '6,8'),
(42, NULL, '2024-03-21', '00001', 'Yonathan', 'john', '3', 'Canelones', '35', 'humedo', '20', 'Silvio', 'bit', '4', '5', '5,5', '2,8', '5', '3', 'acero', '', '4', '4', '4', '4', '4', '4', '4', '5 Pulgadas', '5', '6', '7', '7', '7', '7', '7', '5', '5', '6,8'),
(43, NULL, '2024-03-21', '00001', 'Yonathan', 'john', '3', 'Canelones', '35', 'humedo', '20', 'Silvio', 'bit', '4', '5', '5,5', '2,8', '5', '3', 'acero', '', '5', '4', '4', '4', '4', '4', '4', '5 Pulgadas', '5', '6', '7', '7', '7', '7', '7', '5', '5', '6,8'),
(44, NULL, '2024-03-19', '50000007', 'Yonathan', 'Amin', '3', '', '', '', '', 'Silvio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(45, NULL, '2024-03-19', '50000007', 'Yonathan', 'Amin', '3', '', '5', '', '', 'Silvio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(46, NULL, '2024-03-19', '50000007', 'Yonathan', 'Amin', '3', '', '5', '', '4', 'Silvio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', ''),
(47, NULL, '2024-03-19', '50000007', 'Yonathan', 'Amin', '3', '', '5', '', '4', 'Silvio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5 Pulgadas', '', '', '', '', '', '', '', '', '', '');

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
(1, '20', '20', '4', '0', '0', '30');

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
(2, 'Jonathan Marcos', 'Silvio Alem', '13', '11', '9', '21', '21'),
(9, 'Jonathan Marcos', 'Silvio Alem', '133', '111', '91', '43', '43'),
(10, 'Eduardo Garrel', 'Silvio Alem', '133', '111', '91', '21', '21'),
(11, 'Jonathan Marcos', 'Silvio Alem', '21', '21', '21', '21', '21'),
(12, 'jothane', 'silvio alemua', '', '', '', '50', '20'),
(13, 'jothanwwe', 'silvio alemua', '', '', '', '50', '20'),
(14, 'Jonathan Marcos', 'Silvio Alem', '', '', '', '1200', '120'),
(15, 'Jonathan Marcos', 'Silvio Alem', '100', '100', '100', '1300', '2400'),
(17, 'Luis Benitez', 'Mariano Cardozo', NULL, NULL, NULL, '1400', '1100');

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
(1, 'udin', 'u123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlciI6InVkaW4iLCJwYWdlIjoiYWRtaW4xIiwiaWF0IjoxNzEyMDc4OTc3LCJleHAiOjE3MTIwNzkyMTd9.pknJ4akTXZnlT8j3lhIjbRguBldXIOj49Xoz0iLyqSw'),
(2, 'john', 'j123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwidXNlciI6ImpvaG4iLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzEwOTA2OTU2LCJleHAiOjE3MTA5MDcxOTZ9.jTByuaXrg8Ic8Vtlk2Znnx1fMoKeWI9nfaKJFf1XlfM'),
(3, 'steve', 's123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywidXNlciI6InN0ZXZlIiwicGFnZSI6ImFkbWluMSIsImlhdCI6MTcwOTYwNzAwNSwiZXhwIjoxNzA5NjA3MjQ1fQ.9xKh9HmgVd7LYDTsxWlKys72DiUVn8wSOfvXtAoHmKo'),
(4, 'hana', 'h123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwidXNlciI6ImhhbmEiLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzA5NjA3NjU1LCJleHAiOjE3MDk2MDc4OTV9.c9Kt32jjunDKi4l8tYjeAWqeKyN_f09btZ7vx71wM_8'),
(5, 'aren', 'a123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwidXNlciI6ImFyZW4iLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcxMjM5NTQ3OCwiZXhwIjoxNzEyMzk1NzE4fQ.-425adCkNT857wHG_uUf6yYU6xwTSGcc-qrjNG3uKIY'),
(6, 'budi', 'b123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwidXNlciI6ImJ1ZGkiLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcwNzYxOTUwNCwiZXhwIjoxNzA3NjE5NzQ0fQ.Ea_a8ZRQptlVs6J32Q5CD22pdqlqcZt5Qq1fEsaQZJ8');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_data1`
--
ALTER TABLE `admin_data1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `driller_data`
--
ALTER TABLE `driller_data`
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
-- Indeks untuk tabel `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_data1`
--
ALTER TABLE `admin_data1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `driller_data`
--
ALTER TABLE `driller_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `input_earn`
--
ALTER TABLE `input_earn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
