-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 02.42
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Pengaturan encoding
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------
-- Database: `sewa`
-- --------------------------------------------------------

-- Struktur tabel `pesanan`
CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_sewa` varchar(50) NOT NULL,
  `tanggal_pengembalian` varchar(50) NOT NULL,
  `durasi` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data untuk tabel `pesanan`
INSERT INTO `pesanan` (`id`, `nama`, `email`, `nama_produk`, `jumlah`, `harga`, `tanggal_sewa`, `tanggal_pengembalian`, `durasi`, `total`) VALUES
(1, 'asep', 'admin@gmail.com', 'Camera', 1, 50000, '2024-06-08', '2024-06-10', 2, 100000),
(2, 'evo', 'amrsabill@gmail.com', 'Microphone', 1, 20000, '2024-06-04', '2024-06-07', 3, 60000),
(8, 'amri', 'admin@gmail.com', 'Genset', 1, 250000, '2024-06-11', '2024-06-15', 4, 1000000),
(13, 'AMRI SABILLY', 'amrsabill@gmail.com', 'Standing AC 5 PK', 4, 750000, '2024-06-12', '2024-06-30', 18, 54000000),
(14, 'evo', 'asep@udins', 'Standing AC 5 PK', 2, 750000, '2024-06-12', '2024-06-29', 17, 25500000);

-- --------------------------------------------------------

-- Struktur tabel `produk`
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data untuk tabel `produk`
INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `foto`, `jenis`, `lokasi`, `deskripsi`) VALUES
(1, 'Microphone', 20000, 'mic.png', 'satuan', 'Jakarta', ''),
(6, 'Cable Protector', 25000, 'img2.jpg', 'Satuan', 'Jakarta', ''),
(7, 'Fresnel', 400000, 'img3.jpg', 'satuan', 'Jakarta', ''),
(15, 'Mic', 20000, 'camera.png', 'Satuan', 'yogya', 'jgg'),
(16, 'Genset Soundproof 40 kVA', 2250, 'img1.jpg', 'Satuan', 'Jakarta', 'Genset untuk acara besar.'),
(17, 'LED Screen P 3.9 Indoor', 550, 'img4.jpg', 'Satuan', 'Jakarta', ''),
(18, 'Par LED 54', 175000, 'img5.jpg', 'Satuan', 'Jakarta', 'Lighting event.'),
(19, 'Microphone ', 50000, 'img6.jpg', 'Satuan', 'Jakarta', ''),
(20, 'Barikade Rowing', 60000, 'img7.jpg', 'Satuan', 'Jakarta', ''),
(21, 'Rigging Alumunium', 350000, 'img8.jpg', 'Satuan', 'Jakarta', ''),
(22, 'Misty Fan', 400000, 'img9.jpg', 'Satuan', 'Jakarta', ''),
(23, 'Standing AC 5 PK', 750000, 'img10.jpg', 'Satuan', 'Jakarta', 'AC untuk indoor event.'),
(24, 'IN Ear Monitor Shure PSM 300', 650000, 'img15.jpg', 'Satuan', 'Jakarta', ''),
(25, 'Midas M32+DL32', 2000000, 'img16.jpg', 'Satuan', 'Jakarta', ''),
(26, 'Remote Event', 8500000, 'img12.jpg', 'Paket', 'Jakarta', ''),
(27, 'Paket Adem', 3800000, 'img20.jpg', 'Paket', 'Jakarta', 'Event adem nyaman.'),
(28, 'Paket Pesta Di Rumah 2', 5000000, 'img23.jpg', 'Paket', 'Jakarta', ''),
(29, 'Paket Dokumentasi ', 6500000, 'img21.jpg', 'Paket', 'Jakarta', '');

-- --------------------------------------------------------

-- Struktur tabel `tb_user`
CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data untuk tabel `tb_user`
INSERT INTO `tb_user` (`id_user`, `username`, `email`, `password`, `tipe`) VALUES
(5, 'admin', 'admin@gmail.com', 'admin', 'admin'),
(6, 'evo', 'evo@gmail.com', 'evo', 'evo');

-- --------------------------------------------------------

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
