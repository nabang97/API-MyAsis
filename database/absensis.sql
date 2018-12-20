-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 12:30 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amis`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` int(10) UNSIGNED NOT NULL,
  `bp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mata_kuliah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id`, `bp`, `nama`, `kelas`, `mata_kuliah`, `foto`, `created_at`, `updated_at`) VALUES
(33, '1511522019', 'Fauzan Pramulia', 'A 01', 'Pemograman Mobile', '18-Dec-16 05-43-47 IMG-20180530-WA0010 cvxxx.jpg', '2018-12-15 22:43:47', '2018-12-15 22:43:47'),
(34, '1411522001', 'Heru Fernandes', 'AB 3', 'Bahasa Inggris', '18-Dec-16 05-45-38 IMG-20180925-WA0000.jpg', '2018-12-15 22:45:38', '2018-12-15 22:45:38'),
(35, '1311522014', 'Jeck Pertamax', 'C 04', 'Basis Data', '18-Dec-16 05-48-02 P_20180510_162721.jpg', '2018-12-15 22:48:02', '2018-12-15 22:48:02'),
(36, '1511521013', 'Yolanda Parawita', '01', 'Praktikum Damin', '18-Dec-17 03-50-09 temp.jpg', '2018-12-16 20:50:09', '2018-12-16 20:50:09'),
(37, '1511521009', 'tari vandira', '01', 'pemrograman mobile', '18-Dec-17 05-29-29 temp.jpg', '2018-12-16 22:29:29', '2018-12-16 22:29:29'),
(38, '1511521009', 'tari vandira', '01', 'pemrograman mobile', '18-Dec-17 05-29-29 temp.jpg', '2018-12-16 22:29:29', '2018-12-16 22:29:29'),
(39, 'fshssu', 'gshwyy63728', '😈😉😬😠', 'hsgwgw', '18-Dec-18 07-10-36 temp.jpg', '2018-12-18 00:10:36', '2018-12-18 00:10:36'),
(40, '1511522019', 'Fauzan Pramulia', 'A 01', 'Pemograman Mobile', '18-Dec-16 05-43-47 IMG-20180530-WA0010 cvxxx.jpg', '2018-12-15 22:43:47', '2018-12-15 22:43:47'),
(41, '956577', 'hfyh', 'hiohf', '5hfjtc', '18-Dec-18 07-14-30 IMG-20181218-WA0003.jpg', '2018-12-18 00:14:30', '2018-12-18 00:14:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
