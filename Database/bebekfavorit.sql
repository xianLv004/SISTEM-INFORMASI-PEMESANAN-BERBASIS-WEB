-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 04:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bebekfavorit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(3, 'Makanan Ringan'),
(2, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `kode_menu`, `nama`, `harga`, `gambar`, `kategori`, `status`) VALUES
(1, 'MN01', 'Nasi Bebek Goreng Bumbu Hitam (besar)', 31000, 'nasi bebek.jpeg', 'Makanan', 'tersedia'),
(2, ' MN02', 'Bebek Goreng Bumbu Hitam (besar)', 28000, 'bebek besar.jpg', 'Makanan', 'tersedia'),
(3, ' MN03', 'Nasi Ayam Goreng Bumbu Hitam', 18000, 'ayam.jpg', 'Makanan', 'tersedia'),
(4, ' MN04', 'Ayam Goreng Bumbu Hitam', 14000, 'ayam2.jpg', 'Makanan', 'tersedia'),
(5, ' MN05', '( 1 Ekor ) Bebek Bumbu Hitam Ukuran Kecil', 85000, 'bebek utuh.jpg', 'Makanan', 'tersedia'),
(6, ' MN06', 'Kepala Bebek Goreng', 6000, 'kepala.jpeg', 'Makanan', 'tersedia'),
(7, ' MN07', 'Ati Ampela Bebek Goreng', 5000, 'ati.jpg', 'Makanan', 'tersedia'),
(8, ' MN08', 'Krongsengan Ceker Pedas', 5000, 'ceker.jpg', 'Makanan', 'tersedia'),
(9, ' MN09', 'Telur Bebek Ceplok/Dadar/Dadar Pedas', 5000, 'teluir.jpg', 'Makanan', 'tersedia'),
(10, ' MN10', 'Kubis Goreng', 5000, 'kjol.jpg', 'Makanan', 'tersedia'),
(11, ' MN11', 'Nasi Putih', 4000, 'nasi.jpg', 'Makanan', 'tersedia'),
(12, ' MN12', 'Teh Manis (Es/Hangat)', 3000, 'es-teh-manis.jpg', 'Minuman', 'tidak tersedia'),
(13, ' MN13', 'Teh Tawar (Es/Hangat)', 3000, 'es-teh-manis.jpg', 'Minuman', 'tersedia'),
(14, ' MN14', 'Jeruk (Es/Hangat)', 4000, 'jeruk.jpg', 'Minuman', 'tersedia'),
(15, ' MN15', 'Lemon Tea', 5000, 'es-lemon-tea.jpg', 'Minuman', 'tersedia'),
(16, ' MN16', 'Milo (Es/Panas)', 5000, 'milo.jpg', 'Minuman', 'tersedia'),
(17, ' MN17', 'Kopi Hitam', 5000, 'kopi.jpg', 'Minuman', 'tersedia'),
(18, ' MN16', 'Air Mineral', 4000, 'air.jpg', 'Minuman', 'tersedia'),
(19, ' MN19', 'Teh Pucuk', 4000, 'teh.jpg', 'Minuman', 'tersedia'),
(20, ' MN20', 'Fanta Merah', 4000, 'fabta.jpg', 'Minuman', 'tidak tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `kode_pesanan`, `kode_menu`, `qty`) VALUES
(74, '63dcba653463', 'MN01', 2),
(75, '63dcba653463', ' MN11', 2),
(76, '63dcba653463', ' MN12', 2),
(77, '63dcbb5d1605', ' MN03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_pesanan`, `nama_pelanggan`, `waktu`) VALUES
(29, '63dcba653463', 'Adinda ', '2023-02-03 14:40:21'),
(30, '63dcbb5d1605', 'Adinda ', '2023-02-03 14:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(5, 'meja1', '10705f86b703823d889c434c01419350');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `kategori_ibfk_1` (`nama_kategori`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `kategori` (`kategori`),
  ADD KEY `kode_menu` (`kode_menu`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD UNIQUE KEY `kode_menu` (`kode_menu`),
  ADD KEY `kode_pesanan` (`kode_pesanan`),
  ADD KEY `kode_menu_2` (`kode_menu`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `kode_pesanan` (`kode_pesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`nama_kategori`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_pesanan`) REFERENCES `pesanan` (`kode_pesanan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
