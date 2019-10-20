-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 02:47 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_donordarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_histori`
--

CREATE TABLE `t_histori` (
  `f_id_hadiah` int(11) NOT NULL,
  `f_id_tempat` int(11) NOT NULL,
  `f_tanggal` date NOT NULL,
  `f_debit_poin` int(11) NOT NULL,
  `f_kredit_poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk histori bertambah/berkurangnya poin berdasarkan hadiah';

-- --------------------------------------------------------

--
-- Table structure for table `t_kegiatan_user`
--

CREATE TABLE `t_kegiatan_user` (
  `f_id_kegiatan` int(11) NOT NULL,
  `f_nama_kegiatan` varchar(30) NOT NULL,
  `f_deskripsi_kegiatan` text NOT NULL,
  `f_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_nama_tempat`
--

CREATE TABLE `t_nama_tempat` (
  `f_id_tempat` int(11) NOT NULL,
  `f_nama_tempat` varchar(30) NOT NULL,
  `f_provinsi` varchar(15) NOT NULL,
  `f_kota` varchar(15) NOT NULL,
  `f_alamat` text NOT NULL,
  `f_nomor_telp` varchar(16) NOT NULL,
  `f_email` varchar(25) NOT NULL,
  `f_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_stok_darah`
--

CREATE TABLE `t_stok_darah` (
  `f_id_tempat` int(11) NOT NULL,
  `f_darah_A` int(11) NOT NULL,
  `f_darah_B` int(11) NOT NULL,
  `f_darah_O` int(11) NOT NULL,
  `f_darah_AB` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `f_id_user` int(11) NOT NULL,
  `f_nama_user` varchar(25) NOT NULL,
  `f_golongan_darah` varchar(3) NOT NULL,
  `f_email` varchar(25) NOT NULL,
  `f_password` varchar(15) NOT NULL,
  `f_nomor_hp` varchar(16) NOT NULL,
  `f_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='user biasa';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_histori`
--
ALTER TABLE `t_histori`
  ADD PRIMARY KEY (`f_id_hadiah`),
  ADD KEY `fk_f_id_tempat` (`f_id_tempat`) USING BTREE;

--
-- Indexes for table `t_kegiatan_user`
--
ALTER TABLE `t_kegiatan_user`
  ADD PRIMARY KEY (`f_id_kegiatan`);

--
-- Indexes for table `t_nama_tempat`
--
ALTER TABLE `t_nama_tempat`
  ADD PRIMARY KEY (`f_id_tempat`);

--
-- Indexes for table `t_stok_darah`
--
ALTER TABLE `t_stok_darah`
  ADD KEY `fk_f_id_tempat` (`f_id_tempat`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`f_id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_histori`
--
ALTER TABLE `t_histori`
  MODIFY `f_id_hadiah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `f_id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_histori`
--
ALTER TABLE `t_histori`
  ADD CONSTRAINT `t_histori_ibfk_1` FOREIGN KEY (`f_id_tempat`) REFERENCES `t_stok_darah` (`f_id_tempat`);

--
-- Constraints for table `t_stok_darah`
--
ALTER TABLE `t_stok_darah`
  ADD CONSTRAINT `t_stok_darah_ibfk_1` FOREIGN KEY (`f_id_tempat`) REFERENCES `t_nama_tempat` (`f_id_tempat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
