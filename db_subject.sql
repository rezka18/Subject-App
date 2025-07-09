-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2025 at 01:06 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_subject`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id_guru` int NOT NULL,
  `id_kelas` int NOT NULL,
  `id_mapel` int NOT NULL,
  `nama_guru` char(100) NOT NULL,
  `mata_pelajaran` char(100) NOT NULL,
  `kelas` char(20) NOT NULL,
  `jam_mengajar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id_guru`, `id_kelas`, `id_mapel`, `nama_guru`, `mata_pelajaran`, `kelas`, `jam_mengajar`) VALUES
(1, 1, 2, 'Adi Susanto', 'Sistem Komputer', 'X TKJ A', '10.00 - 11.00'),
(2, 2, 1, 'Jennie Kim', 'Pemrograman Dasar', 'X TKJ B', '08.00 - 09.00'),
(8, 3, 3, 'Irwandi', 'Jaringan Komputer', 'X TKJ C', '13.00 - 14.00'),
(9, 4, 5, 'Rezka Norhafizah', 'Matematika', 'X RPL A', '09.00 - 10.00'),
(10, 6, 4, 'Ahmad Hambali', 'Sejarah Indonesia', 'X MM A', '10.00 - 11.00'),
(12, 5, 6, 'Widiyanti', 'Bahasa Inggris', 'X RPL B', '13.00 - 14.00');

-- --------------------------------------------------------

--
-- Table structure for table `data_jadwal_mata_pelajaran`
--

CREATE TABLE `data_jadwal_mata_pelajaran` (
  `id_jadwal` int NOT NULL,
  `id_kelas` int NOT NULL,
  `id_mapel` int NOT NULL,
  `ruangan` char(100) NOT NULL,
  `hari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_jadwal_mata_pelajaran`
--

INSERT INTO `data_jadwal_mata_pelajaran` (`id_jadwal`, `id_kelas`, `id_mapel`, `ruangan`, `hari`) VALUES
(1, 1, 1, 'R1', 'Senin'),
(2, 2, 5, 'R2', 'Selasa'),
(4, 4, 2, 'R3', 'Rabu'),
(7, 3, 6, 'R4', 'Jumat'),
(13, 6, 4, 'R2', 'Jumat');

-- --------------------------------------------------------

--
-- Table structure for table `data_kelas`
--

CREATE TABLE `data_kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` char(100) NOT NULL,
  `ruangan` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_kelas`
--

INSERT INTO `data_kelas` (`id_kelas`, `nama_kelas`, `ruangan`) VALUES
(1, 'X TKJ A', 'R1'),
(2, 'X TKJ B', 'R2'),
(3, 'X TKJ C', 'R4'),
(4, 'X RPL A', 'R3'),
(5, 'X RPL B', 'R4'),
(6, 'X MM A', 'R2');

-- --------------------------------------------------------

--
-- Table structure for table `data_mata_pelajaran`
--

CREATE TABLE `data_mata_pelajaran` (
  `id_mapel` int NOT NULL,
  `nama_mapel` char(100) NOT NULL,
  `waktu_belajar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_mata_pelajaran`
--

INSERT INTO `data_mata_pelajaran` (`id_mapel`, `nama_mapel`, `waktu_belajar`) VALUES
(1, 'Pemrograman Dasar', '10.00 - 11.00'),
(2, 'Sistem Komputer', '08.00 - 09.00'),
(3, 'Jaringan Komputer', '11.00 - 12.00'),
(4, 'Sejarah Indonesia', '13.00 - 14.00'),
(5, 'Matematika', '13.00 - 14.00'),
(6, 'Bahasa Inggris', '09.00 - 10.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'Dijah', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `id_mapel` (`id_mapel`),
  ADD UNIQUE KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel_2` (`id_mapel`),
  ADD KEY `id_kelas_2` (`id_kelas`);

--
-- Indexes for table `data_jadwal_mata_pelajaran`
--
ALTER TABLE `data_jadwal_mata_pelajaran`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `id_kelas` (`id_kelas`),
  ADD UNIQUE KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_kelas_2` (`id_kelas`),
  ADD KEY `id_mapel_2` (`id_mapel`);

--
-- Indexes for table `data_kelas`
--
ALTER TABLE `data_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `data_mata_pelajaran`
--
ALTER TABLE `data_mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id_guru` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_jadwal_mata_pelajaran`
--
ALTER TABLE `data_jadwal_mata_pelajaran`
  MODIFY `id_jadwal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `data_kelas`
--
ALTER TABLE `data_kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_mata_pelajaran`
--
ALTER TABLE `data_mata_pelajaran`
  MODIFY `id_mapel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD CONSTRAINT `data_guru_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `data_mata_pelajaran` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_guru_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `data_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_jadwal_mata_pelajaran`
--
ALTER TABLE `data_jadwal_mata_pelajaran`
  ADD CONSTRAINT `data_jadwal_mata_pelajaran_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `data_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_jadwal_mata_pelajaran_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `data_mata_pelajaran` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
