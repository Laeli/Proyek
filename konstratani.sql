-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2020 at 09:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

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
-- Table structure for table `btmsumberbantuan`
--

CREATE TABLE `btmsumberbantuan` (
  `id_btm` int(11) NOT NULL,
  `presiden_sapi_potong` int(11) NOT NULL,
  `presiden_kambing` int(11) NOT NULL,
  `presiden_kambing_pe` int(11) NOT NULL,
  `presiden_domba` int(11) NOT NULL,
  `apbd2_sapi_potong` int(11) NOT NULL,
  `apbd2_kambing` int(11) NOT NULL,
  `apbd2_kambing_pe` int(11) NOT NULL,
  `apbd2_domba` int(11) NOT NULL,
  `ppw_sapi_potong` int(11) NOT NULL,
  `ppw_kambing` int(11) NOT NULL,
  `ppw_kambing_pe` int(11) NOT NULL,
  `ppw_domba` int(11) NOT NULL,
  `pdk_sapi_potong` int(11) NOT NULL,
  `pdk_kambing` int(11) NOT NULL,
  `pdk_kambing_pe` int(11) NOT NULL,
  `pdk_domba` int(11) NOT NULL,
  `prt_sapi_potong` int(11) NOT NULL,
  `prt_kambing` int(11) NOT NULL,
  `prt_kambing_pe` int(11) NOT NULL,
  `prt_domba` int(11) NOT NULL,
  `ppt_sapi_potong` int(11) NOT NULL,
  `ppt_kambing` int(11) NOT NULL,
  `ppt_kambing_pe` int(11) NOT NULL,
  `ppt_domba` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_ternak_perbulan`
--

CREATE TABLE `mutasi_ternak_perbulan` (
  `id_mutasi` int(11) NOT NULL,
  `jan_keluar_sp` int(11) NOT NULL,
  `jan_keluar_kd` int(11) NOT NULL,
  `jan_masuk_sp` int(11) NOT NULL,
  `jan_masuk_kd` int(11) NOT NULL,
  `feb_keluar_sp` int(11) NOT NULL,
  `feb_keluar_kd` int(11) NOT NULL,
  `feb_masuk_sp` int(11) NOT NULL,
  `feb_masuk_kd` int(11) NOT NULL,
  `mar_keluar_sp` int(11) NOT NULL,
  `mar_keluar_kd` int(11) NOT NULL,
  `mar_masuk_sp` int(11) NOT NULL,
  `mar_masuk_kd` int(11) NOT NULL,
  `apr_keluar_sp` int(11) NOT NULL,
  `apr_keluar_kd` int(11) NOT NULL,
  `apr_masuk_sp` int(11) NOT NULL,
  `apr_masuk_kd` int(11) NOT NULL,
  `mei_keluar_sp` int(11) NOT NULL,
  `mei_keluar_kd` int(11) NOT NULL,
  `mei_masuk_sp` int(11) NOT NULL,
  `mei_masuk_kd` int(11) NOT NULL,
  `jun_keluar_sp` int(11) NOT NULL,
  `jun_keluar_kd` int(11) NOT NULL,
  `jun_masuk_sp` int(11) NOT NULL,
  `jun_masuk_kd` int(11) NOT NULL,
  `jul_keluar_sp` int(11) NOT NULL,
  `jul_keluar_kd` int(11) NOT NULL,
  `jul_masuk_sp` int(11) NOT NULL,
  `jul_masuk_kd` int(11) NOT NULL,
  `ags_keluar_sp` int(11) NOT NULL,
  `ags_keluar_kd` int(11) NOT NULL,
  `ags_masuk_sp` int(11) NOT NULL,
  `ags_masuk_kd` int(11) NOT NULL,
  `sep_keluar_sp` int(11) NOT NULL,
  `sep_keluar_kd` int(11) NOT NULL,
  `sep_masuk_sp` int(11) NOT NULL,
  `sep_masuk_kd` int(11) NOT NULL,
  `okt_keluar_sp` int(11) NOT NULL,
  `okt_keluar_kd` int(11) NOT NULL,
  `okt_masuk_sp` int(11) NOT NULL,
  `okt_masuk_kd` int(11) NOT NULL,
  `nov_keluar_sp` int(11) NOT NULL,
  `nov_keluar_kd` int(11) NOT NULL,
  `nov_masuk_sp` int(11) NOT NULL,
  `nov_masuk_kd` int(11) NOT NULL,
  `des_keluar_kd` int(11) NOT NULL,
  `des_keluar_sp` int(11) NOT NULL,
  `des_masuk_kd` int(11) NOT NULL,
  `des_masuk_sp` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peternakan`
--

CREATE TABLE `peternakan` (
  `id_desa` int(11) NOT NULL,
  `tanggal_entri_data` date NOT NULL,
  `banyak_sapi_potong` int(11) NOT NULL,
  `banyak_sapi_perah` int(11) NOT NULL,
  `banyak_kerbau` int(11) NOT NULL,
  `banyak_kuda` int(11) NOT NULL,
  `banyak_kambing` int(11) NOT NULL,
  `banyak_domba` int(11) NOT NULL,
  `banyak_babi` int(11) NOT NULL,
  `banyak_ayam_kampung` int(11) NOT NULL,
  `banyak_ayam_petelor` int(11) NOT NULL,
  `banyak_ayam_potong` int(11) NOT NULL,
  `banyak_itik` int(11) NOT NULL,
  `banyak_burung_puyuh` int(11) NOT NULL,
  `banyak_burung_merpati` int(11) NOT NULL,
  `id_btm` int(11) NOT NULL,
  `id_mutasi` int(11) NOT NULL,
  `id_produksi_std` int(11) NOT NULL,
  `id_produksi_kulit` int(11) NOT NULL,
  `id_vaksinasi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peternakan`
--

INSERT INTO `peternakan` (`id_desa`, `tanggal_entri_data`, `banyak_sapi_potong`, `banyak_sapi_perah`, `banyak_kerbau`, `banyak_kuda`, `banyak_kambing`, `banyak_domba`, `banyak_babi`, `banyak_ayam_kampung`, `banyak_ayam_petelor`, `banyak_ayam_potong`, `banyak_itik`, `banyak_burung_puyuh`, `banyak_burung_merpati`, `id_btm`, `id_mutasi`, `id_produksi_std`, `id_produksi_kulit`, `id_vaksinasi`, `created_at`, `updated_at`) VALUES
(321, '2020-02-29', 55, 11, 44, 13, 70, 50, 33, 11, 10, 5, 7, 9, 15, 345, 567, 789, 987, 654, '2020-02-05 20:06:49', '2020-02-05 20:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `produksi_kulit`
--

CREATE TABLE `produksi_kulit` (
  `id_produksi_kulit` int(11) NOT NULL,
  `kulit_sapi` int(11) NOT NULL,
  `kulit_kambing` int(11) NOT NULL,
  `kulit_kerbau` int(11) NOT NULL,
  `kulit_domba` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produksi_std`
--

CREATE TABLE `produksi_std` (
  `id_produksi_std` int(11) NOT NULL,
  `susu_perusahaan` int(11) NOT NULL,
  `susu_rakyat` int(11) NOT NULL,
  `telur_rakyat` int(11) NOT NULL,
  `daging` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tanaman_kakao`
--

CREATE TABLE `tanaman_kakao` (
  `id_kakao` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_cengkeh`
--

CREATE TABLE `tnm_cengkeh` (
  `id_cengkeh` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_jmbu_mete`
--

CREATE TABLE `tnm_jmbu_mete` (
  `id_mete` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_kapuk`
--

CREATE TABLE `tnm_kapuk` (
  `id_kpk` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_kelapa`
--

CREATE TABLE `tnm_kelapa` (
  `id_kelapa` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_kpi_arabika`
--

CREATE TABLE `tnm_kpi_arabika` (
  `id_kpiarabika` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tnm_kpi_arabika`
--

INSERT INTO `tnm_kpi_arabika` (`id_kpiarabika`, `luas_panen`, `produksi`, `created_at`, `updated_at`) VALUES
(1, 1234, 15164, '2020-02-06 01:19:44', '2020-02-06 01:19:44'),
(2, 1234, 15164, '2020-02-06 01:19:51', '2020-02-06 01:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `tnm_kpi_robusta`
--

CREATE TABLE `tnm_kpi_robusta` (
  `id_tnm_kpi_robusta` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_lada`
--

CREATE TABLE `tnm_lada` (
  `id_lada` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_mndong`
--

CREATE TABLE `tnm_mndong` (
  `id_mendong` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_nilam`
--

CREATE TABLE `tnm_nilam` (
  `id_nilam` int(11) DEFAULT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_tebu`
--

CREATE TABLE `tnm_tebu` (
  `id_tebu` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_teh`
--

CREATE TABLE `tnm_teh` (
  `id_teh` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tnm_tembakau_rakyat`
--

CREATE TABLE `tnm_tembakau_rakyat` (
  `id_tnmtbk` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tnm_tembakau_rakyat`
--

INSERT INTO `tnm_tembakau_rakyat` (`id_tnmtbk`, `luas_panen`, `produksi`, `created_at`, `updated_at`) VALUES
(1, 41, 41, '2020-02-05 06:56:25', '2020-02-05 00:49:26'),
(2, 21, 24, '2020-02-05 01:02:52', '2020-02-05 01:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `tnm_tembakau_virgin`
--

CREATE TABLE `tnm_tembakau_virgin` (
  `id_tbkvrgn` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tnm_tembakau_virgin`
--

INSERT INTO `tnm_tembakau_virgin` (`id_tbkvrgn`, `luas_panen`, `produksi`, `created_at`, `updated_at`) VALUES
(1, 50, 654, '2020-02-06 00:11:48', '2020-02-06 00:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `tnm_tembakau_vrosteland`
--

CREATE TABLE `tnm_tembakau_vrosteland` (
  `id_tbkvros` int(11) NOT NULL,
  `luas_panen` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tnm_tembakau_vrosteland`
--

INSERT INTO `tnm_tembakau_vrosteland` (`id_tbkvros`, `luas_panen`, `produksi`, `created_at`, `updated_at`) VALUES
(1, 2654, 64564, '2020-02-06 01:03:01', '2020-02-06 01:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaksinasi_ternak`
--

CREATE TABLE `vaksinasi_ternak` (
  `id_vaksinasi` int(11) NOT NULL,
  `sesticema_etizootica` int(11) NOT NULL,
  `new_castle_disease` int(11) NOT NULL,
  `rabies` int(11) NOT NULL,
  `ai` int(11) NOT NULL,
  `antrax` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `btmsumberbantuan`
--
ALTER TABLE `btmsumberbantuan`
  ADD PRIMARY KEY (`id_btm`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_ternak_perbulan`
--
ALTER TABLE `mutasi_ternak_perbulan`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peternakan`
--
ALTER TABLE `peternakan`
  ADD PRIMARY KEY (`id_desa`),
  ADD UNIQUE KEY `id_btm` (`id_btm`),
  ADD UNIQUE KEY `id_mutasi` (`id_mutasi`),
  ADD UNIQUE KEY `id_produksi_std` (`id_produksi_std`),
  ADD UNIQUE KEY `id_produksi_kulit` (`id_produksi_kulit`),
  ADD UNIQUE KEY `id_vaksinasi` (`id_vaksinasi`),
  ADD UNIQUE KEY `id_desa` (`id_desa`),
  ADD KEY `id_desa_2` (`id_desa`),
  ADD KEY `id_desa_3` (`id_desa`);

--
-- Indexes for table `produksi_kulit`
--
ALTER TABLE `produksi_kulit`
  ADD PRIMARY KEY (`id_produksi_kulit`);

--
-- Indexes for table `produksi_std`
--
ALTER TABLE `produksi_std`
  ADD PRIMARY KEY (`id_produksi_std`);

--
-- Indexes for table `tanaman_kakao`
--
ALTER TABLE `tanaman_kakao`
  ADD PRIMARY KEY (`id_kakao`);

--
-- Indexes for table `tnm_cengkeh`
--
ALTER TABLE `tnm_cengkeh`
  ADD PRIMARY KEY (`id_cengkeh`);

--
-- Indexes for table `tnm_jmbu_mete`
--
ALTER TABLE `tnm_jmbu_mete`
  ADD PRIMARY KEY (`id_mete`);

--
-- Indexes for table `tnm_kapuk`
--
ALTER TABLE `tnm_kapuk`
  ADD PRIMARY KEY (`id_kpk`);

--
-- Indexes for table `tnm_kelapa`
--
ALTER TABLE `tnm_kelapa`
  ADD PRIMARY KEY (`id_kelapa`);

--
-- Indexes for table `tnm_kpi_arabika`
--
ALTER TABLE `tnm_kpi_arabika`
  ADD PRIMARY KEY (`id_kpiarabika`);

--
-- Indexes for table `tnm_kpi_robusta`
--
ALTER TABLE `tnm_kpi_robusta`
  ADD PRIMARY KEY (`id_tnm_kpi_robusta`);

--
-- Indexes for table `tnm_lada`
--
ALTER TABLE `tnm_lada`
  ADD PRIMARY KEY (`id_lada`);

--
-- Indexes for table `tnm_mndong`
--
ALTER TABLE `tnm_mndong`
  ADD PRIMARY KEY (`id_mendong`);

--
-- Indexes for table `tnm_tebu`
--
ALTER TABLE `tnm_tebu`
  ADD PRIMARY KEY (`id_tebu`);

--
-- Indexes for table `tnm_teh`
--
ALTER TABLE `tnm_teh`
  ADD PRIMARY KEY (`id_teh`);

--
-- Indexes for table `tnm_tembakau_rakyat`
--
ALTER TABLE `tnm_tembakau_rakyat`
  ADD PRIMARY KEY (`id_tnmtbk`);

--
-- Indexes for table `tnm_tembakau_virgin`
--
ALTER TABLE `tnm_tembakau_virgin`
  ADD PRIMARY KEY (`id_tbkvrgn`);

--
-- Indexes for table `tnm_tembakau_vrosteland`
--
ALTER TABLE `tnm_tembakau_vrosteland`
  ADD PRIMARY KEY (`id_tbkvros`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vaksinasi_ternak`
--
ALTER TABLE `vaksinasi_ternak`
  ADD PRIMARY KEY (`id_vaksinasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peternakan`
--
ALTER TABLE `peternakan`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `tanaman_kakao`
--
ALTER TABLE `tanaman_kakao`
  MODIFY `id_kakao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_cengkeh`
--
ALTER TABLE `tnm_cengkeh`
  MODIFY `id_cengkeh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_jmbu_mete`
--
ALTER TABLE `tnm_jmbu_mete`
  MODIFY `id_mete` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_kapuk`
--
ALTER TABLE `tnm_kapuk`
  MODIFY `id_kpk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_kelapa`
--
ALTER TABLE `tnm_kelapa`
  MODIFY `id_kelapa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_kpi_arabika`
--
ALTER TABLE `tnm_kpi_arabika`
  MODIFY `id_kpiarabika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tnm_kpi_robusta`
--
ALTER TABLE `tnm_kpi_robusta`
  MODIFY `id_tnm_kpi_robusta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_lada`
--
ALTER TABLE `tnm_lada`
  MODIFY `id_lada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_mndong`
--
ALTER TABLE `tnm_mndong`
  MODIFY `id_mendong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_tebu`
--
ALTER TABLE `tnm_tebu`
  MODIFY `id_tebu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_teh`
--
ALTER TABLE `tnm_teh`
  MODIFY `id_teh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnm_tembakau_rakyat`
--
ALTER TABLE `tnm_tembakau_rakyat`
  MODIFY `id_tnmtbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tnm_tembakau_virgin`
--
ALTER TABLE `tnm_tembakau_virgin`
  MODIFY `id_tbkvrgn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tnm_tembakau_vrosteland`
--
ALTER TABLE `tnm_tembakau_vrosteland`
  MODIFY `id_tbkvros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
