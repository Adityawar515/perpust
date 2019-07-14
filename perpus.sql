-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 11:02 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Nawawi', 'admin', '25d55ad283aa400af464c76d713c07ad'),
(2, 'Imam Nawawi', 'imam', 'eaccb8ea6090a40a98aa28c071810371'),
(3, 'Maruloh', 'admin', '9d47cb51d31cc4adbdaa29cde5070c7c');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_anggota` varchar(45) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `username`, `nama_anggota`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(1, 'irfan', 'Irfan Maulana', 'Laki-Laki', '02144445566', 'BSD', 'irfan@gmail.com', '123'),
(2, '', 'Nur Kumalasari', 'Perempuan', '02133335555', 'Ciledug', 'nur@gmail.com', '123'),
(3, '', 'Sanjaya Wijaya', 'Laki-Laki', '02111115555', 'Cimone', 'sanjaya@gmail.com', '123'),
(4, '', 'Eva Irfianingsih', 'Perempuan', '02166665555', 'Tangerang', 'eva@gmail.com', '123'),
(5, '', 'Ifqoh Permatasari', 'Perempuan', '02177775555', 'Cengkareng', 'ifqoh@gmail.com', '123'),
(6, '', 'Indah Riana', 'Perempuan', '02188885555', 'Fatmawati', 'indah@gmail.com', '123'),
(7, '', 'Tiwie Andrawati', 'Perempuan', '02199995555', 'Warung Jati', 'tiwie@gmail.com', '123'),
(11, 'imam', 'Imam Nawawi', 'Laki-Laki', '087829398630', 'jl H Isa no 1 Rengas Ciputat Timur', 'imam.imw@bsi.ac.id', '8f85218eca1bbbe977ff7d1a4300ff2b'),
(9, '', 'Hisbu Utomo', 'Laki-Laki', '02133336666', 'Salemba', 'hisbu@gmail.com', '123'),
(10, '', 'Zaenal Abidin', 'Laki-Laki', '02133337777', 'Bekasi', 'Zaenal@gmail.com', '123'),
(12, 'maruloh', 'Maruloh', 'Laki-Laki', '081519940383', 'Pedongkelan', 'maruloh.mru@gmail.com', '0dc97aed82f234bd20072d33faafd53e'),
(13, 'dendi', 'Dendi', 'Laki-Laki', '081380707667', 'Jatake', 'dendi.info@gmail.com', '12345678'),
(14, '', 'abcd', 'Laki-Laki', '0813xxxxxxxx', 'tangerang', 'dendi.info@gmail.com', 'dendi672'),
(15, '', 'dendik', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(16, '', 'dendiq', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(17, '', 'dendip', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(18, '', 'kurniawan', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(19, '', 'kurniawanq', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(20, '', 'dendio', 'Laki-Laki', '1234', 'ww', 'dendi.info@gmail.com', '1234'),
(21, '', 'kurniawano', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(22, '', 'qq', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(23, 'dendi672', 'dendikur', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(26, 'denku', 'dendi', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(27, '', 'dendik', 'Laki-Laki', '1234', 'jatake', 'dendi.info@gmail.com', '1234'),
(28, 'dendi123', 'dendi', 'Laki-Laki', '12345', 'cikoneng', 'dendi.info@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `thn_terbit` date NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('Rak 1','Rak 2','Rak 3') NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL,
  `status_buku` enum('1','0') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul_buku`, `pengarang`, `thn_terbit`, `penerbit`, `isbn`, `jumlah_buku`, `lokasi`, `gambar`, `tgl_input`, `status_buku`) VALUES
(2, 3, 'Mahir Pemrograman Web Dengan PHP', 'Adri Kusuma Wardana', '2014-03-18', 'Elex Media', '65412345', 2, 'Rak 3', 'gambar1539746444.jpg', '2018-07-24', '1'),
(3, 2, 'Mahir  Berhitung dan Mahir Mewarnai', 'Akhmad Rahmat', '2014-03-03', 'CV.Indo Kreasi', '7623447342', 0, 'Rak 3', 'gambar1539746653.jpg', '2018-07-25', '1'),
(5, 8, 'Mahir Bahasa Inggris', 'Aliuddin', '2013-05-05', 'CV.Indo Kreasi', '3553234454', 7, 'Rak 1', 'gambar1539746902.jpg', '2018-10-17', '1'),
(6, 4, 'Public Speaking', 'Pambudi Prasetyo', '2015-06-06', 'Aldi Pustaka', '843594759', 8, 'Rak 2', 'gambar1539747050.jpg', '2019-01-24', '0'),
(7, 3, 'Trik SQL', 'Ahdim Makaren', '2014-07-07', 'Wacana Ria', '54234762', 5, 'Rak 1', 'gambar1539747068.jpg', '2018-03-14', '1'),
(8, 6, 'Kemurnian Agama', 'Pambudi Prasetyo', '2014-08-08', 'Aldi Pustaka', '980958607', 1, 'Rak 3', 'gambar1539747079.jpg', '2018-07-24', '1'),
(9, 1, 'Mikrokontroler', 'Ahdim Makaren', '2012-09-09', 'Wacana Ria', '12121314', 11, 'Rak 2', 'gambar1539747096.jpg', '2018-04-11', '1'),
(10, 1, '24 Jam Belajar FrameWork', 'Rudi Hartono', '2017-03-02', 'Unjung Pena', '12345345', 9, 'Rak 2', 'gambar1539747110.jpg', '2018-05-08', '1'),
(11, 2, 'JavaScript uncover', 'Andre Pratama', '2015-03-12', 'Duniailkom', '9087654', 6, 'Rak 1', 'gambar1539747128.jpg', '2018-07-24', '1'),
(12, 3, 'Pemrograman dan Hack Android untuk pemula dan adva', 'Edy Winarno ST, M.eng, Ali Zaki, Sm', '2016-09-23', 'Elex Media Komputindo', '4234252', 4, 'Rak 1', 'gambar1539747149.jpg', '2018-07-25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(5) NOT NULL,
  `id_buku` int(5) NOT NULL,
  `denda` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `id_buku`, `denda`) VALUES
('PJ001', 16, 10000),
('PJ001', 6, 10000),
('PJ002', 1, 10000),
('PJ003', 3, 10000),
('PJ003', 8, 10000),
('PJ003', 12, 10000),
('PJ004', 3, 10000),
('PJ004', 1, 10000),
('PJ005', 3, 10000),
('PJ006', 2, 10000),
('PJ007', 3, 10000),
('PJ008', 2, 10000),
('PJ008', 3, 10000),
('PJ009', 2, 10000),
('PJ011', 4, 10000),
('PJ011', 8, 10000),
('PJ011', 12, 10000),
('PJ011', 10, 10000),
('PJ012', 11, 10000),
('PJ013', 4, 10000),
('PJ014', 4, 10000),
('PJ015', 18, 10000),
('PJ016', 8, 10000),
('PJ017', 12, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sains'),
(2, 'Hobby'),
(3, 'Komputer'),
(4, 'Komunikasi'),
(5, 'Hukum'),
(6, 'Agama'),
(7, 'Populer'),
(8, 'Bahasa'),
(9, 'komik');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(5) NOT NULL,
  `tanggal_input` datetime NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `totaldenda` double NOT NULL DEFAULT '0',
  `status_peminjaman` enum('Booking','Selesai','Belum Selesai') DEFAULT 'Belum Selesai',
  `status_pengembalian` enum('Kembali','Belum Kembali') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tanggal_input`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `tgl_pengembalian`, `totaldenda`, `status_peminjaman`, `status_pengembalian`) VALUES
('PJ001', '2019-01-24 12:01:33', 11, '2019-01-24', '2019-01-30', '2019-01-31', 0, 'Selesai', 'Kembali'),
('PJ002', '2019-03-14 15:03:47', 11, '2019-03-20', '2019-03-26', '2019-03-22', 0, 'Selesai', 'Kembali'),
('PJ003', '2019-03-14 16:03:22', 11, '2019-03-20', '2019-03-26', '2019-03-30', 0, 'Selesai', 'Kembali'),
('PJ004', '2019-03-20 15:03:53', 12, '2019-03-20', '2019-03-26', '2019-04-20', 0, 'Selesai', 'Kembali'),
('PJ005', '2019-03-20 15:03:08', 12, '2019-03-20', '2019-03-26', '2019-04-22', 0, 'Selesai', 'Kembali'),
('PJ006', '2019-03-21 11:03:13', 12, '2019-03-21', '2019-03-27', '2019-03-21', 0, 'Selesai', 'Kembali'),
('PJ007', '2019-03-21 13:03:31', 12, '2019-03-21', '2019-03-27', '2019-03-21', 0, 'Selesai', 'Kembali'),
('PJ008', '2019-03-25 10:03:28', 12, '2019-03-25', '2019-03-31', '2019-03-29', 0, 'Selesai', 'Kembali'),
('PJ009', '2019-03-25 16:03:31', 12, '2019-03-25', '2019-03-31', '2019-03-29', 0, 'Selesai', 'Kembali'),
('PJ011', '2019-03-26 14:03:37', 12, '2019-03-26', '2019-04-01', '2019-05-28', 0, 'Selesai', 'Kembali'),
('PJ012', '2019-03-26 14:03:10', 12, '2019-03-26', '2019-04-01', '2019-05-28', 0, 'Selesai', 'Kembali'),
('PJ013', '2019-03-26 21:03:12', 12, '2019-03-26', '2019-04-01', '2019-05-26', 0, 'Selesai', 'Kembali'),
('PJ014', '2019-03-29 18:03:45', 12, '2019-03-29', '2019-04-04', '2019-04-29', 0, 'Selesai', 'Kembali'),
('PJ015', '2019-03-29 18:03:13', 12, '2019-03-29', '2019-04-04', '2019-04-05', 0, 'Selesai', 'Kembali'),
('PJ016', '2019-03-29 18:03:42', 12, '2019-03-29', '2019-04-04', '2019-04-30', 0, 'Selesai', 'Kembali'),
('PJ017', '2019-03-29 18:03:28', 12, '2019-03-29', '2019-04-04', '2019-06-01', 0, 'Selesai', 'Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_pinjam` varchar(5) NOT NULL,
  `tgl_pencatatan` datetime NOT NULL,
  `id_anggota` int(4) NOT NULL,
  `id_buku` int(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `total_denda` double NOT NULL,
  `status_pengembalian` varchar(15) NOT NULL,
  `status_peminjaman` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `status`) VALUES
(1, 'dendi', 'kurniawan', 'dendi.info@gmail.com', 'd1516f23f6bd6661359aaf6625de3b05', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD KEY `id_pinjam` (`id_pinjam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
