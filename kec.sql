-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2026 at 01:05 PM
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
-- Database: `kec`
--

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `nama_profil` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alokasi` varchar(30) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_profil`, `username`, `password`, `alokasi`, `status`) VALUES
(1, 'Agung Gumelar', 'admin', '$2y$10$Pecdz2c.kyGUVo4rM2YlmuF21tjepWa/UeZ4HjFA0lUwDdnRsg5k6', 'Kecamatan', 'super');

-- --------------------------------------------------------

--
-- Table structure for table `qr`
--

CREATE TABLE `qr` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr`
--

INSERT INTO `qr` (`id`, `code`, `create_date`) VALUES
(1, '100220260001', '2026-02-10'),
(2, '100220260002', '2026-02-10'),
(3, '100220260003', '2026-02-10'),
(4, '110220260001', '2026-02-11'),
(5, '110220260002', '2026-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `jenis_surat` varchar(100) NOT NULL,
  `nama_pemohon` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tmp_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text NOT NULL,
  `nama_orangtua` varchar(100) DEFAULT NULL,
  `nik_orangtua` int(16) NOT NULL,
  `tmp_lahir_orangtua` varchar(100) DEFAULT NULL,
  `tgl_lahir_orangtua` date DEFAULT NULL,
  `keperluan` text NOT NULL,
  `status` varchar(20) DEFAULT 'Menunggu',
  `tanggal_pengajuan` datetime DEFAULT current_timestamp(),
  `tanggal_selesai` datetime DEFAULT NULL,
  `token_id` int(11) DEFAULT NULL,
  `desa` varchar(25) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `jk_orangtua` varchar(2) NOT NULL,
  `status_perkawinan` varchar(20) NOT NULL,
  `status_perkawinan_orangtua` varchar(30) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `pekerjaan_orangtua` varchar(100) NOT NULL,
  `alamat_orangtua` varchar(100) NOT NULL,
  `validasi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `no_surat`, `jenis_surat`, `nama_pemohon`, `nik`, `tmp_lahir`, `tgl_lahir`, `alamat`, `nama_orangtua`, `nik_orangtua`, `tmp_lahir_orangtua`, `tgl_lahir_orangtua`, `keperluan`, `status`, `tanggal_pengajuan`, `tanggal_selesai`, `token_id`, `desa`, `jk`, `jk_orangtua`, `status_perkawinan`, `status_perkawinan_orangtua`, `pekerjaan`, `pekerjaan_orangtua`, `alamat_orangtua`, `validasi`) VALUES
(1, 'SKTM/001/2026', 'Surat Keterangan Tidak Mampu', 'Budi Santoso', '1234567890123456', NULL, NULL, 'Jl. Merdeka No. 123, RT 01/02, Desa Sukamaju', NULL, 0, NULL, NULL, 'Untuk pengajuan beasiswa', 'Selesai', '2026-02-09 17:37:17', NULL, 1, '', '', '', '0', '', '', '', '', ''),
(2, 'SKTM/002/2026', 'Surat Keterangan Tidak Mampu', 'Siti Aminah', '2345678901234567', NULL, NULL, 'Jl. Pahlawan No. 45, RT 03/01, Desa Mekarjaya', NULL, 0, NULL, NULL, 'Untuk pengajuan BPJS', 'Menunggu', '2026-02-09 17:37:17', NULL, 1, '', '', '', '0', '', '', '', '', ''),
(3, 'SKU/001/2026', 'Surat Keterangan Usaha', 'Ahmad Fauzi', '3456789012345678', NULL, NULL, 'Jl. Raya Cipadung No. 78, RT 02/03, Desa Cipadung', NULL, 0, NULL, NULL, 'Untuk perpanjang SIUP', 'Proses', '2026-02-09 17:37:17', NULL, 1, '', '', '', '0', '', '', '', '', ''),
(4, 'SKTM/20260210/0001', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 17:46:32', NULL, NULL, 'desa1', '', '', '0', '', '', '', '', ''),
(5, 'SKTM/20260210/0002', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 17:46:45', NULL, NULL, 'desa1', '', '', '0', '', '', '', '', ''),
(6, 'SKTM/20260210/0003', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 18:00:01', NULL, NULL, 'desa1', '', '', '0', '', '', '', '', ''),
(7, 'SKTM/20260210/0004', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 18:04:03', NULL, NULL, 'desa2', '', '', '0', '', '', '', '', ''),
(8, 'SKTM/20260210/0005', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 18:52:54', NULL, NULL, 'desa2', '', '', '', '', '', '', '', ''),
(9, 'SKTM/20260210/0006', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 18:54:57', NULL, NULL, 'desa1', '', '', '', '', '', '', '', ''),
(10, 'SKTM/20260210/0007', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-10 19:24:32', NULL, NULL, 'desa1', '', '', '', '', '', '', '', ''),
(11, 'SKTM/20260211/0001', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 11:23:24', NULL, NULL, 'desa2', '', '', '', '', '', '', '', ''),
(12, 'SKTM/20260211/0002', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 11:43:36', NULL, NULL, 'desa1', '', '', '', '', '', '', '', ''),
(13, 'SKTM/20260211/0003', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 11:45:58', NULL, NULL, 'desa1', '', '', '', '', '', '', '', ''),
(14, 'SKTM/20260211/0004', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 12:05:58', NULL, NULL, 'desa1', '', '', '', '', '', '', '', ''),
(20, 'SKTM/20260211/0005', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 12:15:58', NULL, NULL, 'desa1', '', '', '', '', '', '', '', ''),
(21, 'SKTM/20260211/0006', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 12:17:09', NULL, NULL, 'desa2', '', '', '', '', '', '', '', ''),
(25, 'SKTM/20260211/0007', 'Surat Keterangan Tidak Mampu', 'asfa', '3205290101450001', 'daasd', '2026-02-12', 'dfsdf asdfa', 'c awa ', 52467, 'fdagasg', '2026-02-11', 'gaagag', 'Diproses', '2026-02-11 12:24:00', NULL, NULL, 'desa2', 'L', 'L', 'Kawin', 'Cerai Mati', 'wqetqwefgf', 'ag aga', 'ga a', '0'),
(26, 'SKTM/20260211/0008', 'Surat Keterangan Tidak Mampu', 'asfa', '32502401000004', 'Garut', '2026-02-11', 'wsafvasvcsadvas', 'casvasvasc', 2147483647, 'asvAd av', '2026-02-11', 'ascascasc', 'Diproses', '2026-02-11 12:40:01', NULL, NULL, 'desa1', 'L', 'P', 'Kawin', 'Kawin', 'wiraswasta', 'cacac', 'ascvascac', '0'),
(28, 'SKTM/20260211/0009', 'Surat Keterangan Tidak Mampu', '', '', NULL, NULL, '', NULL, 0, NULL, NULL, '', 'Menunggu', '2026-02-11 12:50:44', NULL, NULL, 'desa5', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD UNIQUE KEY `no_surat` (`no_surat`),
  ADD KEY `id_user` (`token_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qr`
--
ALTER TABLE `qr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`token_id`) REFERENCES `profil` (`id_profil`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
