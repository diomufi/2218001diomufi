-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2023 at 12:27 AM
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
-- Database: `kelola_keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_nasabah`
--

CREATE TABLE `data_nasabah` (
  `ID_User` varchar(20) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jenis_Kelamin` varchar(50) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Saldo` decimal(50,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_nasabah`
--

INSERT INTO `data_nasabah` (`ID_User`, `Nama`, `Jenis_Kelamin`, `Alamat`, `Saldo`) VALUES
('MF0002', 'Diandra Septia', 'Laki - Laki', 'Jombang', '180000.00'),
('MF0003', 'Wafa Althof', 'Laki - Laki', 'Jombang', '2000000.00'),
('MF0004', 'Setyaji ', 'Laki - Laki', 'Blitar', '1983000.00'),
('MF001', 'Dio Masafan Mufio Rois', 'Laki - Laki', 'Lamongan', '2840000.00'),
('MF005', 'Thio Cashimiro', 'Laki - Laki', 'Timor Leste', '1000.00'),
('MF10', 'Mufi', 'Laki - Laki', 'Jombang', '5000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Nama` varchar(50) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Nama`, `Username`, `Password`) VALUES
('', '', ''),
('Dio Masafan Mufio Rois', 'Mufio1', '123'),
('Dio Masafan Mufio Rois Ahmad', 'Muf1', '123'),
('Dio Masafan Mufio Roiss', 'Mufio2', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `nama_pembeli` varchar(255) DEFAULT NULL,
  `nama_kasir` varchar(255) DEFAULT NULL,
  `metode_pembayaran` varchar(255) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `ID_Pengeluaran` int NOT NULL,
  `User_ID` varchar(20) DEFAULT NULL,
  `Pengeluaran` varchar(255) DEFAULT NULL,
  `Harga` decimal(50,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`ID_Pengeluaran`, `User_ID`, `Pengeluaran`, `Harga`) VALUES
(2, 'MF0002', 'Bakso', '20000.00'),
(3, 'MF001', 'Pentol', '20000.00'),
(4, 'MF001', 'Pentol', '10000.00'),
(5, 'MF001', 'Pentol', '5000.00'),
(6, 'MF001', 'Pentol', '5000.00'),
(7, 'MF001', 'NASGOR', '20000.00'),
(8, 'MF001', 'NASGOR', '20000.00'),
(9, 'MF001', '2', '20000.00'),
(10, 'MF0004', 'Laptop', '2000000.00'),
(11, 'MF0004', 'Pentol', '5000.00'),
(12, 'MF0004', 'Nasgor ', '12000.00'),
(13, 'MF005', 'Rokok', '12000.00'),
(14, 'MF005', 'Laptop', '5487000.00'),
(16, 'MF001', 'Laptop', '2000000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_nasabah`
--
ALTER TABLE `data_nasabah`
  ADD PRIMARY KEY (`ID_User`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Nama`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`ID_Pengeluaran`),
  ADD KEY `User_ID` (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `ID_Pengeluaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `data_nasabah` (`ID_User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
