-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 07:42 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zx`
--

-- --------------------------------------------------------

--
-- Table structure for table `method_trans_kartu_kredit`
--

CREATE TABLE `method_trans_kartu_kredit` (
  `id_kartu_kredit` int(10) UNSIGNED NOT NULL,
  `no_kartu_kredit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_transaksi` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `method_trans_kartu_kredit`
--

INSERT INTO `method_trans_kartu_kredit` (`id_kartu_kredit`, `no_kartu_kredit`, `atas_nama`, `id_transaksi`, `created_at`, `updated_at`) VALUES
(1, '1111111111111111', 'aku', 1, '2020-05-21 01:50:05', '2020-05-21 01:50:05'),
(2, '1111111111111111', 'aku', 1, '2020-05-21 01:51:14', '2020-05-21 01:51:14'),
(3, '1111111111111111', 'aku', 2, '2020-05-21 01:57:35', '2020-05-21 01:57:35'),
(4, '1111111111111111', 'aku', 2, '2020-05-21 01:58:05', '2020-05-21 01:58:05'),
(5, '123', 'andik', 3, '2020-05-21 07:28:11', '2020-05-21 07:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `method_trans_trf_bank`
--

CREATE TABLE `method_trans_trf_bank` (
  `id_trf_bank` int(10) UNSIGNED NOT NULL,
  `bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_transaksi` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_03_25_0_create_users_table', 1),
(3, '2018_03_25_1_create_tb_genre_film', 1),
(4, '2018_03_25_2_create_tb_kategori', 1),
(5, '2018_03_25_3_create_tb_film', 1),
(6, '2018_03_25_4_create_tb_studio', 1),
(7, '2018_03_25_5_create_tb_tayang', 1),
(8, '2018_03_25_6_create_tb_kursi', 1),
(9, '2018_03_25_7_create_tb_list_kursi', 1),
(10, '2018_03_25_8_create_tb_booking', 1),
(11, '2018_03_25_90_create_tb_det_booking', 1),
(12, '2018_03_25_91_create_tb_transaksi', 1),
(13, '2018_03_25_92_create_method_trans_trf_bank', 1),
(14, '2018_03_25_93_create_method_trans_kartu_kredit', 1),
(15, '2018_04_07_112448_add_image_to_tb_film', 1),
(16, '2018_04_07_112820_add_image_to_users', 1),
(17, '2018_04_19_110836_add_column_to_genre', 1),
(18, '2018_05_08_003437_add_status_booking', 1),
(19, '2018_05_08_015751_add_at_listkursi', 1),
(20, '2018_05_08_111842_change_column_bukti_trf', 1),
(21, '2018_05_09_033340_add_unique_code', 1),
(22, '2018_05_10_065532_add_status_transaksi', 1),
(23, '2018_05_10_074510_change_status_transaksi', 1),
(24, '2018_05_14_044316_add_status_booking_dibayar', 1),
(25, '2018_05_14_045300_change_data_type_trf', 1),
(26, '2018_05_14_045518_change_data_type_kredit', 1),
(27, '2018_05_23_021721_change_direksi_unique', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `id_booking` int(10) UNSIGNED NOT NULL,
  `status` enum('belum_lunas','gagal','dibayar','lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `batas_transaksi` datetime NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_booking`
--

INSERT INTO `tb_booking` (`id_booking`, `status`, `total_pembayaran`, `batas_transaksi`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'lunas', 20000, '2020-05-22 16:49:42', 2, '2020-05-21 01:49:42', '2020-05-21 01:51:06'),
(2, 'lunas', 20000, '2020-05-22 16:57:17', 2, '2020-05-21 01:57:17', '2020-05-21 01:57:59'),
(3, 'dibayar', 40000, '2020-05-22 22:24:39', 3, '2020-05-21 07:24:39', '2020-05-21 07:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `tb_det_booking`
--

CREATE TABLE `tb_det_booking` (
  `id_det_booking` int(10) UNSIGNED NOT NULL,
  `status` enum('deal','pending') COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL,
  `unique_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_list_kursi` int(10) UNSIGNED DEFAULT NULL,
  `id_booking` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_det_booking`
--

INSERT INTO `tb_det_booking` (`id_det_booking`, `status`, `harga`, `unique_code`, `id_list_kursi`, `id_booking`, `created_at`, `updated_at`) VALUES
(1, 'deal', 20000, '0ykz7swSEv', NULL, 1, '2020-05-21 01:49:42', '2020-05-21 01:49:50'),
(2, 'deal', 20000, 'CUvIZJ2L1x', 8, 2, '2020-05-21 01:57:17', '2020-05-21 01:57:30'),
(3, 'deal', 20000, 'Bso8QjtySi', 9, 3, '2020-05-21 07:24:39', '2020-05-21 07:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_film`
--

CREATE TABLE `tb_film` (
  `id_film` int(10) UNSIGNED NOT NULL,
  `nama_film` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_produksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinopsis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_genre_film` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_film`
--

INSERT INTO `tb_film` (`id_film`, `nama_film`, `tahun_produksi`, `direksi`, `pemain`, `sinopsis`, `bahasa`, `negara`, `image`, `id_genre_film`, `id_kategori`, `created_at`, `updated_at`) VALUES
(1, 'The Hash', '2020', 'TVS', 'Haji Lulung', 'Test SInopsis', 'indonesia', '', 'bunny.png', 1, 1, '2020-05-21 01:37:27', '2020-05-21 17:48:53'),
(2, 'Film ABC', '2020', 'TVS', 'Abdul Ghanem', 'Sinopsis FIlm ABC', 'indonesia', '', '79193174-cute-sketch-draw-rabbit-face-cartoon-graphic-design.jpg', 1, 1, '2020-05-21 01:46:28', '2020-05-21 17:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_genre_film`
--

CREATE TABLE `tb_genre_film` (
  `id_genre_film` int(10) UNSIGNED NOT NULL,
  `genre_film` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_genre_film`
--

INSERT INTO `tb_genre_film` (`id_genre_film`, `genre_film`, `created_at`, `updated_at`) VALUES
(1, 'Romance', '2020-05-21 01:37:00', '2020-05-21 01:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_umur` int(11) NOT NULL,
  `max_umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`, `min_umur`, `max_umur`, `created_at`, `updated_at`) VALUES
(1, 'Dewasa', 18, 100, '2020-05-21 01:36:48', '2020-05-21 01:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kursi`
--

CREATE TABLE `tb_kursi` (
  `id_kursi` int(10) UNSIGNED NOT NULL,
  `kode_kursi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kursi`
--

INSERT INTO `tb_kursi` (`id_kursi`, `kode_kursi`, `created_at`, `updated_at`) VALUES
(6, '1', '2020-05-21 01:54:38', '2020-05-21 01:54:38'),
(7, '2', '2020-05-21 01:54:42', '2020-05-21 01:54:42'),
(8, '3', '2020-05-21 01:54:46', '2020-05-21 01:54:46'),
(9, '4', '2020-05-21 01:54:49', '2020-05-21 01:54:49'),
(10, '5', '2020-05-21 01:54:53', '2020-05-21 01:54:53'),
(11, '6', '2020-05-21 01:55:00', '2020-05-21 01:55:00'),
(12, '7', '2020-05-21 01:55:05', '2020-05-21 01:55:05'),
(13, '8', '2020-05-21 01:55:10', '2020-05-21 01:55:10'),
(14, '9', '2020-05-21 01:55:14', '2020-05-21 01:55:14'),
(15, '10', '2020-05-21 01:55:19', '2020-05-21 01:55:19'),
(16, '16', '2020-05-21 19:45:57', '2020-05-21 19:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_list_kursi`
--

CREATE TABLE `tb_list_kursi` (
  `id_list_kursi` int(10) UNSIGNED NOT NULL,
  `id_kursi` int(10) UNSIGNED NOT NULL,
  `id_tayang` int(10) UNSIGNED NOT NULL,
  `status` enum('tersedia','terpesan','sold') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_list_kursi`
--

INSERT INTO `tb_list_kursi` (`id_list_kursi`, `id_kursi`, `id_tayang`, `status`, `created_at`, `updated_at`) VALUES
(5, 6, 1, 'tersedia', '2020-05-21 01:56:15', '2020-05-21 01:56:15'),
(6, 7, 1, 'tersedia', '2020-05-21 01:56:20', '2020-05-21 01:56:20'),
(7, 8, 1, 'tersedia', '2020-05-21 01:56:24', '2020-05-21 01:56:24'),
(8, 9, 1, 'terpesan', '2020-05-21 01:56:28', '2020-05-21 01:57:17'),
(9, 10, 1, 'terpesan', '2020-05-21 01:56:33', '2020-05-21 07:27:30'),
(10, 11, 1, 'tersedia', '2020-05-21 01:56:46', '2020-05-21 01:56:46'),
(11, 12, 1, 'tersedia', '2020-05-21 01:56:50', '2020-05-21 01:56:50'),
(12, 13, 1, 'tersedia', '2020-05-21 01:56:55', '2020-05-21 01:56:55'),
(13, 14, 1, 'tersedia', '2020-05-21 01:57:00', '2020-05-21 01:57:00'),
(14, 15, 1, 'tersedia', '2020-05-21 01:57:04', '2020-05-21 01:57:04'),
(15, 6, 1, 'tersedia', '2020-05-21 17:52:45', '2020-05-21 17:52:45'),
(16, 7, 1, 'tersedia', '2020-05-21 17:52:49', '2020-05-21 17:52:49'),
(17, 6, 2, 'tersedia', '2020-05-21 17:52:54', '2020-05-21 17:52:54'),
(18, 7, 2, 'tersedia', '2020-05-21 17:52:58', '2020-05-21 17:52:58'),
(19, 8, 2, 'tersedia', '2020-05-21 17:53:06', '2020-05-21 17:53:06'),
(20, 6, 3, 'tersedia', '2020-05-21 17:53:10', '2020-05-21 17:53:10'),
(21, 6, 5, 'tersedia', '2020-05-21 19:48:01', '2020-05-21 19:48:01'),
(22, 7, 5, 'tersedia', '2020-05-21 19:48:06', '2020-05-21 19:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_studio`
--

CREATE TABLE `tb_studio` (
  `id_studio` int(10) UNSIGNED NOT NULL,
  `nama_studio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_studio`
--

INSERT INTO `tb_studio` (`id_studio`, `nama_studio`, `created_at`, `updated_at`) VALUES
(1, '1', '2020-05-21 01:47:27', '2020-05-21 01:47:27'),
(2, '2', '2020-05-21 19:46:14', '2020-05-21 19:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tayang`
--

CREATE TABLE `tb_tayang` (
  `id_tayang` int(10) UNSIGNED NOT NULL,
  `waktu_tayang` datetime NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `id_film` int(10) UNSIGNED NOT NULL,
  `id_studio` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_tayang`
--

INSERT INTO `tb_tayang` (`id_tayang`, `waktu_tayang`, `harga_tiket`, `id_film`, `id_studio`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2020-05-22 15:33:00', 20000, 1, 1, 2, '2020-05-21 01:47:43', '2020-05-21 01:47:43'),
(2, '2020-05-24 07:06:00', 20000, 1, 1, 2, '2020-05-21 17:51:15', '2020-05-21 17:51:15'),
(3, '2020-05-25 07:20:00', 20000, 1, 1, 2, '2020-05-21 17:51:32', '2020-05-21 17:51:32'),
(4, '2020-05-24 07:06:00', 20000, 2, 1, 2, '2020-05-21 17:53:51', '2020-05-21 17:53:51'),
(5, '2020-05-27 07:02:00', 20000, 2, 1, 2, '2020-05-21 17:54:08', '2020-05-21 17:54:08'),
(6, '2020-05-25 07:26:00', 20000, 1, 1, 2, '2020-05-21 17:54:31', '2020-05-21 17:54:31'),
(7, '2020-05-31 09:34:00', 20000, 1, 2, 1, '2020-05-21 19:47:47', '2020-05-21 19:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(10) UNSIGNED NOT NULL,
  `method` enum('transfer','kartu_kredit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `id_booking` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('belum_dibayar','dibayar','lunas') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `method`, `waktu_transaksi`, `id_booking`, `id_user`, `created_at`, `updated_at`, `status`) VALUES
(1, 'kartu_kredit', '2020-05-21 16:49:50', 1, 2, '2020-05-21 01:49:50', '2020-05-21 01:51:15', 'dibayar'),
(2, 'kartu_kredit', '2020-05-21 16:57:30', 2, 2, '2020-05-21 01:57:30', '2020-05-21 01:58:05', 'dibayar'),
(3, 'kartu_kredit', '2020-05-21 22:27:51', 3, 3, '2020-05-21 07:27:51', '2020-05-21 07:28:11', 'dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_daftar` date NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `alamat`, `telepon`, `tgl_daftar`, `admin`, `status`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'andik@gmail.com', '$2y$10$ZKJXKtmpCHKQTyVKJAZJG.UF33Er.SoSyHygTkHzZemz81ABc9WQW', '', '', '0000-00-00', 1, 'online', 'andik@gmail.com_05-22-2020.png', 'tdQbBLCdG5sbHd7B8qAKITm1AkvoPx3eYR9dkf1JMeDcqGrCEuY7u01Vg8OB', '2020-05-21 01:34:11', '2020-05-21 19:11:23'),
(2, 'user', 'abdul@mail.com', '$2y$10$72QN48ad5.hpd4.jndDkWum4DzlhGr.xn9uPCVYVHu1lIYbc42m/i', 'Gedangan', '001', '0000-00-00', 0, 'online', 'abdul@mail.com_05-21-2020.webp', '7I6sgcVknzIUroig0H0hIW9EWrIxVN9vH3PLhXHyepLvFbFJYRW0KtVpEFlz', '2020-05-21 01:38:10', '2020-05-21 01:39:10'),
(3, 'user', 'andiks@gmail.com', '$2y$10$Moytg.5U6gOLRa9vnsGT7ewtLXUHdZuAwvBt4GWFgOVnmG53nh5em', '', '', '0000-00-00', 0, 'online', '', 'NSQppShGCeTyoq9ms2OhjKi0nH12gh95hMOrmkEneG8kFmt5ibwxsP21Atv6', '2020-05-21 07:24:13', '2020-05-21 07:24:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `method_trans_kartu_kredit`
--
ALTER TABLE `method_trans_kartu_kredit`
  ADD PRIMARY KEY (`id_kartu_kredit`),
  ADD KEY `method_trans_kartu_kredit_id_transaksi_foreign` (`id_transaksi`);

--
-- Indexes for table `method_trans_trf_bank`
--
ALTER TABLE `method_trans_trf_bank`
  ADD PRIMARY KEY (`id_trf_bank`),
  ADD KEY `method_trans_trf_bank_id_transaksi_foreign` (`id_transaksi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `tb_booking_id_user_foreign` (`id_user`);

--
-- Indexes for table `tb_det_booking`
--
ALTER TABLE `tb_det_booking`
  ADD PRIMARY KEY (`id_det_booking`),
  ADD KEY `tb_det_booking_id_list_kursi_foreign` (`id_list_kursi`),
  ADD KEY `tb_det_booking_id_booking_foreign` (`id_booking`);

--
-- Indexes for table `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `tb_film_id_genre_film_foreign` (`id_genre_film`),
  ADD KEY `tb_film_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `tb_genre_film`
--
ALTER TABLE `tb_genre_film`
  ADD PRIMARY KEY (`id_genre_film`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kursi`
--
ALTER TABLE `tb_kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indexes for table `tb_list_kursi`
--
ALTER TABLE `tb_list_kursi`
  ADD PRIMARY KEY (`id_list_kursi`),
  ADD KEY `tb_list_kursi_id_kursi_foreign` (`id_kursi`),
  ADD KEY `tb_list_kursi_id_tayang_foreign` (`id_tayang`);

--
-- Indexes for table `tb_studio`
--
ALTER TABLE `tb_studio`
  ADD PRIMARY KEY (`id_studio`);

--
-- Indexes for table `tb_tayang`
--
ALTER TABLE `tb_tayang`
  ADD PRIMARY KEY (`id_tayang`),
  ADD KEY `tb_tayang_id_user_foreign` (`id_user`),
  ADD KEY `tb_tayang_id_film_foreign` (`id_film`),
  ADD KEY `tb_tayang_id_studio_foreign` (`id_studio`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `tb_transaksi_id_booking_foreign` (`id_booking`),
  ADD KEY `tb_transaksi_id_user_foreign` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_unique` (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `method_trans_kartu_kredit`
--
ALTER TABLE `method_trans_kartu_kredit`
  MODIFY `id_kartu_kredit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `method_trans_trf_bank`
--
ALTER TABLE `method_trans_trf_bank`
  MODIFY `id_trf_bank` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `id_booking` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_det_booking`
--
ALTER TABLE `tb_det_booking`
  MODIFY `id_det_booking` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id_film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_genre_film`
--
ALTER TABLE `tb_genre_film`
  MODIFY `id_genre_film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kursi`
--
ALTER TABLE `tb_kursi`
  MODIFY `id_kursi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_list_kursi`
--
ALTER TABLE `tb_list_kursi`
  MODIFY `id_list_kursi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_studio`
--
ALTER TABLE `tb_studio`
  MODIFY `id_studio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tayang`
--
ALTER TABLE `tb_tayang`
  MODIFY `id_tayang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `method_trans_kartu_kredit`
--
ALTER TABLE `method_trans_kartu_kredit`
  ADD CONSTRAINT `method_trans_kartu_kredit_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`) ON DELETE CASCADE;

--
-- Constraints for table `method_trans_trf_bank`
--
ALTER TABLE `method_trans_trf_bank`
  ADD CONSTRAINT `method_trans_trf_bank_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`) ON DELETE CASCADE;

--
-- Constraints for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD CONSTRAINT `tb_booking_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_det_booking`
--
ALTER TABLE `tb_det_booking`
  ADD CONSTRAINT `tb_det_booking_id_booking_foreign` FOREIGN KEY (`id_booking`) REFERENCES `tb_booking` (`id_booking`) ON DELETE SET NULL,
  ADD CONSTRAINT `tb_det_booking_id_list_kursi_foreign` FOREIGN KEY (`id_list_kursi`) REFERENCES `tb_list_kursi` (`id_list_kursi`) ON DELETE SET NULL;

--
-- Constraints for table `tb_film`
--
ALTER TABLE `tb_film`
  ADD CONSTRAINT `tb_film_id_genre_film_foreign` FOREIGN KEY (`id_genre_film`) REFERENCES `tb_genre_film` (`id_genre_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_film_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE;

--
-- Constraints for table `tb_list_kursi`
--
ALTER TABLE `tb_list_kursi`
  ADD CONSTRAINT `tb_list_kursi_id_kursi_foreign` FOREIGN KEY (`id_kursi`) REFERENCES `tb_kursi` (`id_kursi`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_list_kursi_id_tayang_foreign` FOREIGN KEY (`id_tayang`) REFERENCES `tb_tayang` (`id_tayang`) ON DELETE CASCADE;

--
-- Constraints for table `tb_tayang`
--
ALTER TABLE `tb_tayang`
  ADD CONSTRAINT `tb_tayang_id_film_foreign` FOREIGN KEY (`id_film`) REFERENCES `tb_film` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_tayang_id_studio_foreign` FOREIGN KEY (`id_studio`) REFERENCES `tb_studio` (`id_studio`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_tayang_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_id_booking_foreign` FOREIGN KEY (`id_booking`) REFERENCES `tb_booking` (`id_booking`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_transaksi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
