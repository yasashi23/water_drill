-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Apr 2024 pada 05.53
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
(10, '00001', 'john', '', 'completed', '2024-04-16', NULL),
(11, '00002', 'udin', '', 'to be done', '2024-04-04', NULL),
(12, '00003', 'hana aren', '', 'in progress', '2024-04-05', NULL),
(13, '00004', 'bambang', '', 'completed', '2024-04-05', NULL),
(14, '00005', 'yadi', '', 'completed', '2024-04-12', NULL),
(15, '00006', 'martin', '', 'completed', '2024-04-24', NULL),
(16, '1000', 'John', '', 'in progress', '2024-04-12', NULL),
(17, 'Yamil', '00002', '', 'completed', '2024-04-19', NULL),
(18, '00007', 'hani', '', 'completed', '2024-04-12', NULL),
(19, '00008', 'huna', '', 'completed', '2024-04-05', NULL),
(20, '10000007', 'AA', '1', 'completed', '2024-04-05', NULL),
(21, '00009', 'johan', '6', 'in progress', '2024-04-05', NULL),
(22, '88888', 'hayu', 'kerjakan', 'in progress', '2024-03-31', NULL),
(23, '2000', 'Amin1', '1', 'completed', '2024-04-23', '2024-04-23'),
(24, '2055', 'Amin', '1', 'in progress', '2024-04-23', NULL);

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
-- Dumping data untuk tabel `driller_data`
--

INSERT INTO `driller_data` (`id`, `well_group`, `work_day`, `du_driller_user`, `du_driller`, `du_customer_name`, `du_drills_day`, `du_address`, `du_total_date`, `du_land_description`, `du_leaks`, `du_napas`, `dc_engine_hours`, `dc_gasoil_lts`, `dc_grease_kgs`, `dc_bentonite_kgs`, `dc_engine_oils`, `dc_hammer_lts`, `dc_hydraulic_lts`, `s_engine_hours`, `s_gasoil_lts`, `s_grease_kgs`, `s_bentonite_kgs`, `s_engine_oils`, `s_hammer_lts`, `s_hydraulic_lts`, `s_pipes_5`, `s_pipes_6`, `s_pipes_8`, `s_filtros_6`, `v_various`, `t_total_depth`, `t_flow`, `t_static_level`, `t_dynamic`, `t_tubed`, `t_filtres`, `t_drillers`, `t_helpers`) VALUES
(1, NULL, '2024-03-31', '1000', NULL, 'John', '3', 'dsds', '', 'fdsfds', 'fdsfds', 'fdsfds', '32', '77', '8', '88', '88', '8', '8', '8', '98', '98', '98', '9', '89', '89', '8', '98', '98', '9', '9', '98', '', '98', '9', '89', '89', 'nganga', 'uidn'),
(2, NULL, '2024-03-31', '00003', NULL, 'hana aren', '898', 'ertre', '89', '898', 'jj', 'kjkjk', '988', '8', '88', '8', '8', '8', '8', '8', '88', '8', '8', '8', '88', '8', '8', '8', '8', '8', 'jkkkkkkkkkkkkkkkkkkkk', '98', '9', '9', '89', '8', '98989', 'johan', 'budi'),
(3, NULL, '2024-04-01', '00003', NULL, 'hana aren', '7777', 'ioio', 'ioioi', 'jkjk', 'jkj', 'kjk', '7', '7', '7', '77', '7', '7', '77', '77', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', 'knmnmnmnmnmn', '88', '88', '88', '88', '7777', '77777', 'halui', 'yhai'),
(4, NULL, '2024-03-31', '88888', NULL, 'hayu', '99999', 'jjj', '999', 'jjk', 'kkk', 'k', '888', '99', '999', '00', '9', '98', '888', '88989', '8989', '98', '989', '89', '8', '98', '989', '898', '9898', '9898', 'jhhjhjhjhj', '89898', '98', '98', '98', '98', '99', 'ahmad', 'yadi');

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
  `earn_driller` varchar(255) DEFAULT NULL,
  `earn_assistant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `input_earn`
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
(1, 'udin', 'u123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlciI6InVkaW4iLCJwYWdlIjoiYWRtaW4xIiwiaWF0IjoxNzEzOTAzMTEzLCJleHAiOjE3MTM5MDMzNTN9.ae8ZmB4ONUqqE4v8I5U1ZIixtxmeVAJujG23u48dPws'),
(2, 'john', 'j123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwidXNlciI6ImpvaG4iLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzEzOTAzMDg4LCJleHAiOjE3MTM5MDMzMjh9.OU94ALMbvsRhcKNJegeyL9M8rrvR8nWqbHy0nStZLus'),
(3, 'steve', 's123', 'admin1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywidXNlciI6InN0ZXZlIiwicGFnZSI6ImFkbWluMSIsImlhdCI6MTcwNzYxNzU2NywiZXhwIjoxNzA3NjE3ODA3fQ.pBBS3gpf37kKl7QhVLLv1UTPwp3bNWYz_Qs3hcGDqC4'),
(4, 'hana', 'h123', 'admin2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwidXNlciI6ImhhbmEiLCJwYWdlIjoiYWRtaW4yIiwiaWF0IjoxNzA3NjE4NTg4LCJleHAiOjE3MDc2MTg4Mjh9.HRaHSNIBEAoLnLXw5NjSCvoqmW7NDXtD2qkXXks1fV4'),
(5, 'aren', 'a123', 'driller', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwidXNlciI6ImFyZW4iLCJwYWdlIjoiZHJpbGxlciIsImlhdCI6MTcxMzkwMzE1NSwiZXhwIjoxNzEzOTAzMzk1fQ.8fP2U1ojbjMA0UhBpS-91VEedziQsW6rQTPkLDUWD78'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `driller_data`
--
ALTER TABLE `driller_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `input_cost`
--
ALTER TABLE `input_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `input_earn`
--
ALTER TABLE `input_earn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
