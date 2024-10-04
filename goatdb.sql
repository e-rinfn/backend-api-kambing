-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 01:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goatdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cares`
--

CREATE TABLE `cares` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `tipePerawatan` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `GoatId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cares`
--

INSERT INTO `cares` (`id`, `tanggal`, `tipePerawatan`, `catatan`, `createdAt`, `updatedAt`, `GoatId`) VALUES
(6, '2024-08-22 00:00:00', 'Vaksin', 'Oleh Mang Aip', '2024-08-21 01:40:29', '2024-08-21 01:40:29', NULL),
(7, '2024-08-21 00:00:00', 'Vaksin', 'Pegawai diberikan vaksinasi', '2024-08-21 03:37:59', '2024-08-21 03:37:59', NULL),
(8, '2024-08-22 00:00:00', 'Vaksin 2', 'Mang AIP', '2024-08-21 23:17:37', '2024-08-21 23:17:37', NULL),
(9, '2024-08-22 00:00:00', 'Hello', 'Hello', '2024-08-21 23:21:32', '2024-08-21 23:21:32', NULL),
(10, '2024-08-23 00:00:00', 'Hello', 'Hello', '2024-08-21 23:27:10', '2024-08-21 23:27:10', NULL),
(11, '2024-08-23 00:00:00', 'Hello', 'Hello', '2024-08-21 23:27:47', '2024-08-21 23:27:47', 6);

-- --------------------------------------------------------

--
-- Table structure for table `goats`
--

CREATE TABLE `goats` (
  `id` int(11) NOT NULL,
  `noTag` varchar(255) NOT NULL,
  `tanggalLahir` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `bobot` float DEFAULT NULL,
  `kelamin` enum('jantan','betina') DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `induk` varchar(255) DEFAULT NULL,
  `pejantan` varchar(255) DEFAULT NULL,
  `posisiKandang` varchar(255) DEFAULT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `harga` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goats`
--

INSERT INTO `goats` (`id`, `noTag`, `tanggalLahir`, `nama`, `bobot`, `kelamin`, `jenis`, `induk`, `pejantan`, `posisiKandang`, `asal`, `harga`, `status`, `createdAt`, `updatedAt`, `UserId`) VALUES
(1, 'GT100', '2024-08-16 00:00:00', 'Kambing A', 50, 'betina', 'Saanen', 'IND001', 'PEJ001', 'Kandang 1', 'Peternakan A', 5000000, 'tersedia', '2024-08-15 10:36:58', '2024-08-17 11:36:35', NULL),
(6, 'GT002', '2023-01-01 00:00:00', 'Kambing A', 50, 'jantan', 'Saanen', 'IND001', 'PEJ001', 'Kandang 1', 'Peternakan A', 5000000, 'sehat', '2024-08-16 00:42:09', '2024-08-16 00:42:09', NULL),
(8, 'G123', '2024-08-17 00:00:00', 'Samson', 3.4, '', 'Saneen', 'Simsin', 'Sumsun', 'Depan', 'Peternakan A', 2000000, 'tersedia', '2024-08-17 11:15:37', '2024-08-17 11:15:37', NULL),
(19, 'GT1000', '2024-08-22 00:00:00', 'Samsin', 4.5, 'betina', 'Saneen', 'Mamang', 'Mimin', 'Depan', 'Peternakan A', 50000000, 'tersedia', '2024-08-22 10:24:51', '2024-08-22 10:24:51', NULL),
(22, 'GT10000', '2024-08-22 00:00:00', 'Mamang', 6.4, 'jantan', 'Saaneeen', 'Induk', 'Induk', 'Belakang', 'Peternakan B', 3000000, 'tersedia', '2024-08-22 10:26:19', '2024-08-22 10:26:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','pegawai') DEFAULT 'pegawai',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'erinfn', '$2a$10$9uiHY8PgUgiX.nPSswDTBezIMZMhkxp6iqYFyXgg5sqjCGQre7E3q', 'admin', '2024-08-15 10:35:11', '2024-08-15 10:35:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cares`
--
ALTER TABLE `cares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `GoatId` (`GoatId`);

--
-- Indexes for table `goats`
--
ALTER TABLE `goats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noTag` (`noTag`),
  ADD UNIQUE KEY `noTag_2` (`noTag`),
  ADD UNIQUE KEY `noTag_3` (`noTag`),
  ADD UNIQUE KEY `noTag_4` (`noTag`),
  ADD UNIQUE KEY `noTag_5` (`noTag`),
  ADD UNIQUE KEY `noTag_6` (`noTag`),
  ADD UNIQUE KEY `noTag_7` (`noTag`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `username_4` (`username`),
  ADD UNIQUE KEY `username_5` (`username`),
  ADD UNIQUE KEY `username_6` (`username`),
  ADD UNIQUE KEY `username_7` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cares`
--
ALTER TABLE `cares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `goats`
--
ALTER TABLE `goats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cares`
--
ALTER TABLE `cares`
  ADD CONSTRAINT `cares_ibfk_1` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cares_ibfk_2` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cares_ibfk_3` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cares_ibfk_4` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cares_ibfk_5` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cares_ibfk_6` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cares_ibfk_7` FOREIGN KEY (`GoatId`) REFERENCES `goats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `goats`
--
ALTER TABLE `goats`
  ADD CONSTRAINT `goats_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `goats_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `goats_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `goats_ibfk_4` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `goats_ibfk_5` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `goats_ibfk_6` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `goats_ibfk_7` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
