-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2021 pada 09.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status_peminjaman_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `stok`, `photo`, `status_peminjaman_id`, `created_at`, `updated_at`) VALUES
(12, '123433', 'Barang Teswww', 64, 'barang/20210621050149.png', 2, '2021-06-20 22:01:49', '2021-07-09 00:54:28'),
(13, '12121', 'Obeng', 1, 'barang/20210708071959.png', 2, '2021-07-08 00:19:59', '2021-07-09 00:37:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IPA', 'ipa12345', '2021-06-19 03:50:06', '2021-07-01 09:32:47'),
(4, 'IPS', '12121', '2021-06-19 11:33:07', '2021-07-07 23:56:43'),
(5, 'Otomotif', '12345', '2021-07-08 00:21:51', '2021-07-08 00:21:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-06-18 08:57:34', '2021-06-18 08:58:23'),
(2, 'Kepsek', '2021-06-18 08:57:34', '2021-06-18 08:58:23'),
(3, 'Siswa', '2021-06-18 08:58:04', '2021-06-18 08:58:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `penanggung_jawab` varchar(50) NOT NULL,
  `note_barang` text DEFAULT NULL,
  `status_pengajuan_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `barang_id`, `users_id`, `tanggal_peminjaman`, `tanggal_pengembalian`, `jumlah`, `penanggung_jawab`, `note_barang`, `status_pengajuan_id`, `created_at`, `updated_at`) VALUES
(26, 12, 7, '2021-08-07', '2021-08-01', 12, '', 'Ambil Nih', 1, '2021-07-08 02:50:52', '2021-07-08 02:51:29'),
(27, 13, 3, '2021-08-05', '2021-07-27', 1, '', 'Barangnya Rusak Nih', 4, '2021-07-09 00:37:06', '2021-07-09 00:42:17'),
(28, 12, 7, '2021-08-03', '2021-08-04', 12, 'Bu Guru', 'Ambil Nih', 1, '2021-07-09 00:54:28', '2021-07-09 00:55:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pengajuan`
--

CREATE TABLE `status_pengajuan` (
  `id` int(11) NOT NULL,
  `name_pengajuan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_pengajuan`
--

INSERT INTO `status_pengajuan` (`id`, `name_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 'Acc', '2021-06-21 02:51:56', '2021-06-21 02:51:56'),
(2, 'Tidak Acc', '2021-06-21 02:51:56', '2021-06-21 02:51:56'),
(3, 'Diajukan', '2021-07-01 17:45:32', '2021-07-01 17:45:32'),
(4, 'Dikembalikan', '2021-07-09 06:59:57', '2021-07-09 06:59:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` int(11) DEFAULT NULL,
  `jurusan_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `nis`, `jurusan_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'endijulian080798@gmail.com', 'admin', 0, 0, 1, NULL, '$2y$10$0Cw9CiublTLJiF6bwE8mMOEhqdTkHqEjPZM8n.RkZk.erwoFc/aSK', NULL, '2021-06-18 08:59:16', '2021-06-18 12:35:15'),
(2, 'Kepala Sekolah', 'test@gmail.com', 'kepsek', 1233456768, 1, 2, NULL, '$2y$10$0Cw9CiublTLJiF6bwE8mMOEhqdTkHqEjPZM8n.RkZk.erwoFc/aSK', NULL, '2021-06-18 11:42:30', '2021-07-01 09:33:37'),
(3, 'Siswa', 'endi@gmail.com', 'siswa', 0, 1, 3, NULL, '$2y$10$Mx9djQGbMtsM1hohAQQMh.OMMF9/XWjGa3WYmbSp9Bb7pRM1ajNRi', NULL, '2021-06-18 11:43:36', '2021-07-01 10:05:55'),
(6, 'Gondrong', 'rifandi738@gmail.com', 'gonds', 123456, 1, 1, NULL, '$2y$10$X0xoqyrgX215guC1mXNSYuS4QWsnOP6IBgI.DuJkA6ZynHkiNXOkG', NULL, '2021-07-07 23:55:23', '2021-07-07 23:55:23'),
(7, 'Gondrong', 'rifandi73@gmail.com', 'gonds12', 123456, 4, 3, NULL, '$2y$10$CDG3By1VQbdpWIey4uGso.vkjRSrjCeQ0sdXz8ybdwEZNEd3sLWg6', NULL, '2021-07-07 23:56:23', '2021-07-07 23:56:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
