-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2020 pada 18.44
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konstratani`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id_desa`, `nama_desa`, `kecamatan`, `kabupaten`, `updated_at`, `created_at`) VALUES
(1, 'Guwosari', 'Pajangan', 'Bantul', '2020-02-27 04:49:04', '2020-02-27 04:49:04'),
(2, 'Sendang Sari', 'Pajangan', 'Bantul', '2020-02-27 04:49:04', '2020-02-27 04:49:04'),
(3, 'Triwidadi', 'Pajangan', 'Bantul', '2020-02-27 07:23:57', '2020-02-27 07:23:57'),
(4, 'Madurejo', 'Prambanan', 'Sleman', '2020-03-04 17:06:55', '2020-03-04 17:06:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `nama_dusun` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_desa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`nama_dusun`, `created_at`, `updated_at`, `id_desa`) VALUES
('beloran', '2020-03-04 17:08:33', '2020-03-04 05:21:52', 4),
('candisingo', '2020-03-04 17:08:33', '2020-03-04 05:22:29', 4),
('dukuh', '2020-03-04 17:08:33', '2020-03-04 05:23:11', 4),
('gangsiran', '2020-03-04 17:08:33', '2020-03-04 05:23:11', 4),
('kebondalem', '2020-03-04 17:08:33', '2020-03-04 05:23:57', 4),
('kembang', '2020-03-04 17:08:33', '2020-03-04 05:23:57', 4),
('ketandan', '2020-03-04 17:08:33', '2020-03-04 05:25:50', 4),
('majasem', '2020-03-04 17:08:33', '2020-03-04 05:25:50', 4),
('mutihan', '2020-03-04 17:08:33', '2020-03-04 05:27:27', 4),
('nogosari', '2020-03-04 17:08:33', '2020-03-04 05:27:27', 4),
('potrojayan', '2020-03-04 17:08:33', '2020-03-04 05:27:59', 4),
('sembir', '2020-03-04 17:08:33', '2020-03-04 05:27:59', 4),
('serut', '2020-03-04 17:08:33', '2020-03-04 05:28:47', 4),
('sorogedog kidul', '2020-03-04 17:08:33', '2020-03-04 05:28:47', 4),
('sorogedong lor', '2020-03-04 17:08:33', '2020-03-04 05:29:24', 4),
('tinjon', '2020-03-04 17:08:33', '2020-03-04 05:29:24', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `frekuensi_tanam`
--

CREATE TABLE `frekuensi_tanam` (
  `id_frekuensi` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `teririgasi_satu` decimal(8,2) NOT NULL,
  `teririgasi_dua` decimal(8,2) NOT NULL,
  `teririgasi_tiga` decimal(8,2) NOT NULL,
  `tidak_ditanami` decimal(8,2) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `frekuensi_tanam`
--

INSERT INTO `frekuensi_tanam` (`id_frekuensi`, `tanggal_input`, `teririgasi_satu`, `teririgasi_dua`, `teririgasi_tiga`, `tidak_ditanami`, `updated_at`, `created_at`) VALUES
(3, '2020-02-17', '2000.54', '2000.54', '2000.54', '2000.54', '2020-02-17 08:53:38', '2020-02-17 08:52:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hama`
--

CREATE TABLE `hama` (
  `id_hama` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `tikus` decimal(8,2) NOT NULL,
  `wereng_coklat` decimal(8,2) NOT NULL,
  `penggerek` decimal(8,2) NOT NULL,
  `tungro` decimal(8,2) NOT NULL,
  `blb` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hama`
--

INSERT INTO `hama` (`id_hama`, `tanggal_input`, `tikus`, `wereng_coklat`, `penggerek`, `tungro`, `blb`, `created_at`, `updated_at`) VALUES
(4, '2020-02-14', '3000.54', '3000.54', '3000.54', '3000.54', '3000.54', '2020-02-14 16:12:41', '2020-02-14 16:12:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ltt_jagung`
--

CREATE TABLE `ltt_jagung` (
  `id_jagung` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `ltt_jagung` decimal(8,2) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ltt_jagung`
--

INSERT INTO `ltt_jagung` (`id_jagung`, `tanggal_input`, `ltt_jagung`, `id`, `created_at`, `updated_at`) VALUES
(3, '2020-02-25', '1001.98', 105, '2020-02-25 05:56:18', '2020-02-25 06:10:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ltt_psawah`
--

CREATE TABLE `ltt_psawah` (
  `id_lttpsawah` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `ltt_psawah` decimal(8,2) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ltt_psawah`
--

INSERT INTO `ltt_psawah` (`id_lttpsawah`, `tanggal_input`, `ltt_psawah`, `id`, `nama_dusun`, `created_at`, `updated_at`) VALUES
(10, '2020-03-05', '22.00', 1, 'beloran', '2020-03-04 08:35:52', '2020-03-04 08:35:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `luas_baku`
--

CREATE TABLE `luas_baku` (
  `id_lbka` int(11) NOT NULL,
  `nama_desa` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `luas_baku` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `luas_baku`
--

INSERT INTO `luas_baku` (`id_lbka`, `nama_desa`, `id`, `tanggal_input`, `luas_baku`, `created_at`, `updated_at`) VALUES
(1, 'Guwosari', 1, '2020-03-02', '45.00', '2020-03-04 16:44:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_jagung`
--

CREATE TABLE `tanam_jagung` (
  `id_pjagung` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `luas_baku` decimal(8,2) NOT NULL,
  `panen_pjagung` decimal(8,2) NOT NULL,
  `produksi_pjagung` decimal(8,2) NOT NULL,
  `rata_pjagung` decimal(8,2) NOT NULL,
  `ltt` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_jagung`
--

INSERT INTO `tanam_jagung` (`id_pjagung`, `tanggal_input`, `luas_baku`, `panen_pjagung`, `produksi_pjagung`, `rata_pjagung`, `ltt`, `created_at`, `updated_at`, `id_user`) VALUES
(4, '2020-02-14', '3000.54', '3000.54', '3000.54', '3000.54', '3000.54', '2020-02-14 14:44:10', '2020-02-14 14:45:19', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_kedelai`
--

CREATE TABLE `tanam_kedelai` (
  `id_kedelai` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `luas_baku` decimal(8,2) NOT NULL,
  `panen_kedelai` decimal(8,2) NOT NULL,
  `produksi_kedelai` decimal(8,2) NOT NULL,
  `rata_kedelai` decimal(8,2) NOT NULL,
  `ltt` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_kedelai`
--

INSERT INTO `tanam_kedelai` (`id_kedelai`, `tanggal_input`, `luas_baku`, `panen_kedelai`, `produksi_kedelai`, `rata_kedelai`, `ltt`, `created_at`, `updated_at`, `id_user`) VALUES
(2, '2020-02-14', '3000.54', '3000.54', '3000.54', '3000.54', '3000.54', '2020-02-14 15:54:21', '2020-02-14 15:55:21', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_ktanah`
--

CREATE TABLE `tanam_ktanah` (
  `id_ktanah` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `panen_ktanah` decimal(8,2) NOT NULL,
  `produksi_ktanah` decimal(8,2) NOT NULL,
  `rata_ktanah` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_ktanah`
--

INSERT INTO `tanam_ktanah` (`id_ktanah`, `tanggal_input`, `panen_ktanah`, `produksi_ktanah`, `rata_ktanah`, `created_at`, `updated_at`, `id_user`) VALUES
(2, '2020-02-14', '2000.89', '2000.89', '2000.89', '2020-02-14 15:35:16', '2020-02-14 15:36:13', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_pangan`
--

CREATE TABLE `tanam_pangan` (
  `id_tp` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `sawah_irigasi` decimal(8,2) NOT NULL,
  `sawah_nonirigasi` decimal(8,2) NOT NULL,
  `tegal` decimal(8,2) NOT NULL,
  `ladang` decimal(8,2) NOT NULL,
  `sem_tdk_diusahakan` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_desa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_pladang`
--

CREATE TABLE `tanam_pladang` (
  `id_pladang` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `panen_pladang` decimal(8,2) NOT NULL,
  `produksi_pladang` decimal(8,2) NOT NULL,
  `rata_pladang` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_pladang`
--

INSERT INTO `tanam_pladang` (`id_pladang`, `tanggal_input`, `panen_pladang`, `produksi_pladang`, `rata_pladang`, `created_at`, `updated_at`, `id_user`) VALUES
(3, '2020-02-14', '2000.54', '2000.54', '2000.54', '2020-02-14 14:27:36', '2020-02-14 14:28:35', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_psawah`
--

CREATE TABLE `tanam_psawah` (
  `id_psawah` int(11) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `tanggal_input` date NOT NULL,
  `luas_panen` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_psawah`
--

INSERT INTO `tanam_psawah` (`id_psawah`, `nama_dusun`, `tanggal_input`, `luas_panen`, `created_at`, `updated_at`) VALUES
(8, 'beloran', '2020-03-04', '5.00', '2020-03-04 08:15:33', '2020-03-04 08:15:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_ujalar`
--

CREATE TABLE `tanam_ujalar` (
  `id_ujalar` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `panen_ujalar` decimal(8,2) NOT NULL,
  `produksi_ujalar` decimal(8,2) NOT NULL,
  `rata_ujalar` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_ujalar`
--

INSERT INTO `tanam_ujalar` (`id_ujalar`, `tanggal_input`, `panen_ujalar`, `produksi_ujalar`, `rata_ujalar`, `created_at`, `updated_at`, `id_user`) VALUES
(1, '0000-00-00', '70.00', '70.00', '70.00', '2020-02-05 09:13:16', '2020-02-05 09:17:33', 0),
(2, '0000-00-00', '8.00', '8.00', '8.00', '2020-02-05 10:11:20', '2020-02-05 10:11:20', 0),
(1, '0000-00-00', '70.00', '70.00', '70.00', '2020-02-05 09:13:16', '2020-02-05 09:17:33', 0),
(2, '0000-00-00', '8.00', '8.00', '8.00', '2020-02-05 10:11:20', '2020-02-05 10:11:20', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanam_ukayu`
--

CREATE TABLE `tanam_ukayu` (
  `id_ukayu` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `panen_ukayu` decimal(8,2) NOT NULL,
  `produksi_ukayu` decimal(8,2) NOT NULL,
  `rata_ukayu` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanam_ukayu`
--

INSERT INTO `tanam_ukayu` (`id_ukayu`, `tanggal_input`, `panen_ukayu`, `produksi_ukayu`, `rata_ukayu`, `created_at`, `updated_at`, `id_user`) VALUES
(1, '0000-00-00', '91.00', '91.00', '91.00', '2020-02-05 10:11:52', '2020-02-05 10:15:33', 0),
(2, '2020-02-14', '2000.52', '2000.52', '2000.52', '2020-02-14 15:23:19', '2020-02-14 15:24:01', 0),
(1, '0000-00-00', '91.00', '91.00', '91.00', '2020-02-05 10:11:52', '2020-02-05 10:15:33', 0),
(2, '2020-02-14', '2000.52', '2000.52', '2000.52', '2020-02-14 15:23:19', '2020-02-14 15:24:01', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ubinan`
--

CREATE TABLE `ubinan` (
  `id_ubinan` int(11) NOT NULL,
  `tanggal_input` date NOT NULL,
  `periode` int(11) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `u1` decimal(8,2) NOT NULL,
  `u2` decimal(8,2) NOT NULL,
  `u3` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ubinan`
--

INSERT INTO `ubinan` (`id_ubinan`, `tanggal_input`, `periode`, `nama_dusun`, `u1`, `u2`, `u3`, `created_at`, `updated_at`) VALUES
(3, '2020-03-05', 2, 'tinjon', '33.00', '33.00', '33.00', '2020-03-04 07:53:08', '2020-03-04 07:53:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_desa` int(11) NOT NULL,
  `jabatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` enum('1','0','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `no_telp`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `id_desa`, `jabatan`, `isAdmin`, `role`) VALUES
(1, 'Laeli', 'laeli@gmail.com', '089647095502', NULL, '$2y$10$ua8BTwWre39LLLxt39twJOsiop/Ns07D5I/Cz8cEbNXcfXci2027.', NULL, '2020-02-26 21:50:59', '2020-02-26 21:50:59', 4, 'user', '1', 'user'),
(2, 'Oka', 'oka@gmail.com', '089654789654', NULL, '$2y$10$mmU4GW0rkZX529vyxRMPUerVsbs8NjSftmjb8u1Jo3xxSC2VGDPYu', NULL, '2020-02-27 00:25:00', '2020-02-27 00:25:00', 2, 'User', '1', 'user'),
(3, 'Hapis', 'hapis@gmail.com', '089754896547', NULL, '$2y$10$r6l3zdV72Dzz795dmtEQSuKIAuJzgeYEfpPcBvFMkhXnxm9VB86Ry', NULL, '2020-02-27 00:39:04', '2020-02-27 00:39:04', 3, 'user', '1', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`nama_dusun`);

--
-- Indeks untuk tabel `frekuensi_tanam`
--
ALTER TABLE `frekuensi_tanam`
  ADD PRIMARY KEY (`id_frekuensi`);

--
-- Indeks untuk tabel `hama`
--
ALTER TABLE `hama`
  ADD PRIMARY KEY (`id_hama`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indeks untuk tabel `ltt_jagung`
--
ALTER TABLE `ltt_jagung`
  ADD PRIMARY KEY (`id_jagung`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `ltt_psawah`
--
ALTER TABLE `ltt_psawah`
  ADD PRIMARY KEY (`id_lttpsawah`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `luas_baku`
--
ALTER TABLE `luas_baku`
  ADD PRIMARY KEY (`id_lbka`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanam_jagung`
--
ALTER TABLE `tanam_jagung`
  ADD PRIMARY KEY (`id_pjagung`),
  ADD UNIQUE KEY `foregn_key` (`id_user`);

--
-- Indeks untuk tabel `tanam_kedelai`
--
ALTER TABLE `tanam_kedelai`
  ADD PRIMARY KEY (`id_kedelai`),
  ADD UNIQUE KEY `foregn_key` (`id_user`);

--
-- Indeks untuk tabel `tanam_ktanah`
--
ALTER TABLE `tanam_ktanah`
  ADD PRIMARY KEY (`id_ktanah`),
  ADD UNIQUE KEY `foregn_key` (`id_user`);

--
-- Indeks untuk tabel `tanam_pangan`
--
ALTER TABLE `tanam_pangan`
  ADD PRIMARY KEY (`id_tp`),
  ADD KEY `id_user` (`id_desa`);

--
-- Indeks untuk tabel `tanam_pladang`
--
ALTER TABLE `tanam_pladang`
  ADD PRIMARY KEY (`id_pladang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tanam_psawah`
--
ALTER TABLE `tanam_psawah`
  ADD PRIMARY KEY (`id_psawah`);

--
-- Indeks untuk tabel `ubinan`
--
ALTER TABLE `ubinan`
  ADD PRIMARY KEY (`id_ubinan`),
  ADD KEY `nama_dusun` (`nama_dusun`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_desa` (`id_desa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `frekuensi_tanam`
--
ALTER TABLE `frekuensi_tanam`
  MODIFY `id_frekuensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hama`
--
ALTER TABLE `hama`
  MODIFY `id_hama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ltt_jagung`
--
ALTER TABLE `ltt_jagung`
  MODIFY `id_jagung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ltt_psawah`
--
ALTER TABLE `ltt_psawah`
  MODIFY `id_lttpsawah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `luas_baku`
--
ALTER TABLE `luas_baku`
  MODIFY `id_lbka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tanam_jagung`
--
ALTER TABLE `tanam_jagung`
  MODIFY `id_pjagung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tanam_psawah`
--
ALTER TABLE `tanam_psawah`
  MODIFY `id_psawah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ubinan`
--
ALTER TABLE `ubinan`
  MODIFY `id_ubinan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ubinan`
--
ALTER TABLE `ubinan`
  ADD CONSTRAINT `ubinan_ibfk_1` FOREIGN KEY (`nama_dusun`) REFERENCES `dusun` (`nama_dusun`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `desa` (`id_desa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
