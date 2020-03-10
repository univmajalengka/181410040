-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2020 pada 15.01
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bagas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `det_transpembelian`
--

CREATE TABLE `det_transpembelian` (
  `id_pembelian` int(7) NOT NULL,
  `no_pembelian` char(7) NOT NULL,
  `kd_oleh_oleh` char(5) NOT NULL,
  `harga_beli` double NOT NULL,
  `persen_harga_jual` smallint(6) NOT NULL DEFAULT 0,
  `jumlah` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `det_transpenjualan`
--

CREATE TABLE `det_transpenjualan` (
  `id_dpenjualan` int(7) NOT NULL,
  `no_penjualan` char(7) NOT NULL,
  `kd_oleh_oleh` char(5) NOT NULL,
  `jumlah` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_oleh_oleh`
--

CREATE TABLE `jenis_oleh_oleh` (
  `kd_jenis` char(3) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oleh_oleh`
--

CREATE TABLE `oleh_oleh` (
  `kd_oleholeh` char(5) NOT NULL,
  `kd_jenis` char(3) NOT NULL,
  `nm_oleholeh` varchar(60) NOT NULL,
  `harga_satuan` int(11) NOT NULL DEFAULT 0,
  `stok` smallint(6) NOT NULL DEFAULT 0,
  `keterangan` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oprator`
--

CREATE TABLE `oprator` (
  `kd_oprator` char(4) NOT NULL,
  `nm_oprator` varchar(45) NOT NULL,
  `kelamin` char(1) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `pass_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `oprator`
--

INSERT INTO `oprator` (`kd_oprator`, `nm_oprator`, `kelamin`, `alamat`, `user_id`, `pass_id`) VALUES
('OP01', 'Nomnom', 'L', 'Kadipaten, Majalengka', 'UwU', 'OwO'),
('OP02', 'Nomino', 'P', 'Kadipaten, Majalengka', 'Iuo', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplayer`
--

CREATE TABLE `suplayer` (
  `kd_spl` char(4) NOT NULL,
  `nama_spl` varchar(35) NOT NULL,
  `alamat_spl` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `keterangan` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transpembelian`
--

CREATE TABLE `transpembelian` (
  `no_pembelian` char(7) NOT NULL,
  `kd_spl` char(4) NOT NULL,
  `tgl_beli` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transpenjualan`
--

CREATE TABLE `transpenjualan` (
  `no_penjualan` char(7) NOT NULL,
  `nm_pembeli` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `tgl_jual` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `det_transpembelian`
--
ALTER TABLE `det_transpembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `no_pembelian` (`no_pembelian`),
  ADD KEY `kd_oleh_oleh` (`kd_oleh_oleh`);

--
-- Indeks untuk tabel `det_transpenjualan`
--
ALTER TABLE `det_transpenjualan`
  ADD PRIMARY KEY (`id_dpenjualan`),
  ADD KEY `kd_oleh_oleh` (`kd_oleh_oleh`),
  ADD KEY `no_penjualan` (`no_penjualan`);

--
-- Indeks untuk tabel `jenis_oleh_oleh`
--
ALTER TABLE `jenis_oleh_oleh`
  ADD PRIMARY KEY (`kd_jenis`);

--
-- Indeks untuk tabel `oleh_oleh`
--
ALTER TABLE `oleh_oleh`
  ADD PRIMARY KEY (`kd_oleholeh`),
  ADD KEY `kd_jenis` (`kd_jenis`);

--
-- Indeks untuk tabel `oprator`
--
ALTER TABLE `oprator`
  ADD PRIMARY KEY (`kd_oprator`);

--
-- Indeks untuk tabel `suplayer`
--
ALTER TABLE `suplayer`
  ADD PRIMARY KEY (`kd_spl`);

--
-- Indeks untuk tabel `transpembelian`
--
ALTER TABLE `transpembelian`
  ADD PRIMARY KEY (`no_pembelian`),
  ADD KEY `kd_spl` (`kd_spl`);

--
-- Indeks untuk tabel `transpenjualan`
--
ALTER TABLE `transpenjualan`
  ADD PRIMARY KEY (`no_penjualan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `det_transpembelian`
--
ALTER TABLE `det_transpembelian`
  MODIFY `id_pembelian` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `det_transpenjualan`
--
ALTER TABLE `det_transpenjualan`
  MODIFY `id_dpenjualan` int(7) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `det_transpembelian`
--
ALTER TABLE `det_transpembelian`
  ADD CONSTRAINT `det_transpembelian_ibfk_1` FOREIGN KEY (`no_pembelian`) REFERENCES `transpembelian` (`no_pembelian`),
  ADD CONSTRAINT `det_transpembelian_ibfk_2` FOREIGN KEY (`kd_oleh_oleh`) REFERENCES `oleh_oleh` (`kd_oleholeh`);

--
-- Ketidakleluasaan untuk tabel `det_transpenjualan`
--
ALTER TABLE `det_transpenjualan`
  ADD CONSTRAINT `det_transpenjualan_ibfk_1` FOREIGN KEY (`no_penjualan`) REFERENCES `transpenjualan` (`no_penjualan`),
  ADD CONSTRAINT `det_transpenjualan_ibfk_2` FOREIGN KEY (`kd_oleh_oleh`) REFERENCES `oleh_oleh` (`kd_oleholeh`);

--
-- Ketidakleluasaan untuk tabel `oleh_oleh`
--
ALTER TABLE `oleh_oleh`
  ADD CONSTRAINT `oleh_oleh_ibfk_1` FOREIGN KEY (`kd_jenis`) REFERENCES `jenis_oleh_oleh` (`kd_jenis`);

--
-- Ketidakleluasaan untuk tabel `transpembelian`
--
ALTER TABLE `transpembelian`
  ADD CONSTRAINT `transpembelian_ibfk_1` FOREIGN KEY (`kd_spl`) REFERENCES `suplayer` (`kd_spl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
