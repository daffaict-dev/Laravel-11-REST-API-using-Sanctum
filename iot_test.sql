-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2025 at 08:15 AM
-- Server version: 10.11.13-MariaDB-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_22_132524_create_personal_access_tokens_table', 1),
(5, '2024_03_22_132652_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `username` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '46fb9a63320581496136f8645105ae453bc56e135eff02e24afb807a106c9570', '[\"*\"]', NULL, NULL, '2025-09-30 18:03:41', '2025-09-30 18:03:41'),
(2, 'App\\Models\\User', 1, 'auth_token', '9f1f3eb65a086da1429a1d53652f930df37b960100ce3bbdc92d43914f2fe81c', '[\"*\"]', NULL, NULL, '2025-09-30 18:04:26', '2025-09-30 18:04:26'),
(3, 'App\\Models\\User', 1, 'auth_token', '2f1c407bc2ab002de4c92a15aa0abcf8a37197f84e1291905f54bf3c5701824a', '[\"*\"]', '2025-09-30 18:51:04', NULL, '2025-09-30 18:05:11', '2025-09-30 18:51:04'),
(4, 'App\\Models\\User', 2, 'auth_token', '88ca47c330f9f16e7b3d851513a177c4a0c86ca68ae9b49ef80b20898d28f51e', '[\"*\"]', NULL, NULL, '2025-09-30 18:08:39', '2025-09-30 18:08:39'),
(5, 'App\\Models\\User', 1, 'auth_token', 'ac84a353c7845ba5e718547150fd51a01c66c583cdf7b68ff3e315e5df5020f5', '[\"*\"]', NULL, NULL, '2025-09-30 18:30:05', '2025-09-30 18:30:05'),
(6, 'App\\Models\\User', 1, 'auth_token', '9aa4f3736150af558f59a1c7e698b75568fcbbc9f52d62591f9bfe98fee585cf', '[\"*\"]', NULL, NULL, '2025-09-30 18:31:47', '2025-09-30 18:31:47'),
(7, 'App\\Models\\User', 1, 'auth_token', '2f39ac3af3e16c74e803a808a376dd9a94984805fa12183c44c5b43fde8adb8e', '[\"*\"]', NULL, NULL, '2025-09-30 18:39:03', '2025-09-30 18:39:03'),
(8, 'App\\Models\\User', 1, 'auth_token', 'ec3aa981c0ad3b1728133094de7f325e304f60c1052db4af4ecd60a168bff5d6', '[\"*\"]', NULL, NULL, '2025-09-30 18:43:38', '2025-09-30 18:43:38'),
(9, 'App\\Models\\User', 1, 'auth_token', '652640f29c86c2b6296ad2a1db26faa6b074c2d56b9102d53a08a86b512c5c2a', '[\"*\"]', NULL, NULL, '2025-09-30 18:44:27', '2025-09-30 18:44:27'),
(10, 'App\\Models\\User', 1, 'auth_token', '6e4a2fc9a7fb7b94c2ed8e264d9ebb4b4b05bc8d38fa21e6acb459ebffb20a36', '[\"*\"]', NULL, NULL, '2025-09-30 18:59:14', '2025-09-30 18:59:14'),
(11, 'App\\Models\\User', 1, 'auth_token', '370f5f4d1ec8a8ef441a3385a102aec98a1f2f94e161f770092743272a0b52ed', '[\"*\"]', NULL, NULL, '2025-09-30 19:01:39', '2025-09-30 19:01:39'),
(12, 'App\\Models\\User', 1, 'auth_token', '9224d10442bef19d1626e40cd5dd3e5f528e66eb5690c0551bf8db9514a74892', '[\"*\"]', NULL, NULL, '2025-09-30 19:12:08', '2025-09-30 19:12:08'),
(13, 'App\\Models\\User', 1, 'auth_token', 'f41ff71f9b219b67acebdd0233d07c4dc82d10d30d129ee31dc7351382eb374a', '[\"*\"]', NULL, NULL, '2025-09-30 19:23:00', '2025-09-30 19:23:00'),
(20, 'App\\Models\\User', 3, 'auth_token', '62ece64754e39006a59c6b2fb88fc932746a9687766069c8c2385a185f9447d2', '[\"*\"]', NULL, NULL, '2025-09-30 19:58:46', '2025-09-30 19:58:46'),
(22, 'App\\Models\\User', 2, 'auth_token', 'b82c0c4bee6beda9a75c6bd85f601f6c4c77f9f456566820fbdd856ed8af995a', '[\"*\"]', '2025-09-30 20:03:57', NULL, '2025-09-30 20:03:43', '2025-09-30 20:03:57'),
(23, 'App\\Models\\User', 1, 'auth_token', '4f3f2358e6722b334e4bdd701c6806a43d6b8056417608fdf7d049b522837252', '[\"*\"]', NULL, NULL, '2025-09-30 21:40:00', '2025-09-30 21:40:00'),
(24, 'App\\Models\\User', 1, 'auth_token', 'aa2095ef7e5f8b6c367329a8687ec85ebe1c4e5f5fd9d31c91900d3ffc2b21f5', '[\"*\"]', NULL, NULL, '2025-09-30 21:47:55', '2025-09-30 21:47:55'),
(25, 'App\\Models\\User', 1, 'auth_token', '31de4b49622035ce26a3287c83a8df85c7c103917155a3963a3ce570b383eee6', '[\"*\"]', NULL, NULL, '2025-09-30 21:48:00', '2025-09-30 21:48:00'),
(26, 'App\\Models\\User', 1, 'auth_token', '7d27cb6a71665d5ba7c6a0fdae7727010f48299468d18fcc7a846edb5a37ea39', '[\"*\"]', NULL, NULL, '2025-09-30 21:48:12', '2025-09-30 21:48:12'),
(27, 'App\\Models\\User', 1, 'auth_token', '84b81c548bc990cb382675b2a5b5f08fa2da10114806d5e9792765845ab414e9', '[\"*\"]', NULL, NULL, '2025-09-30 21:49:04', '2025-09-30 21:49:04'),
(28, 'App\\Models\\User', 2, 'auth_token', 'acf48014072799b8f0bfd0ca8b71e5bc1e777913369d4750bb7af2e3bc17a2b0', '[\"*\"]', NULL, NULL, '2025-09-30 22:15:12', '2025-09-30 22:15:12'),
(29, 'App\\Models\\User', 1, 'auth_token', 'f502f6b67842c446b15414a6254ee3b09b60221f4846e77ef073634c63dacb37', '[\"*\"]', NULL, NULL, '2025-09-30 22:18:16', '2025-09-30 22:18:16'),
(33, 'App\\Models\\User', 4, 'auth_token', '88c57b34fe29eb4be8db4893c8b28bf1d7a7d0aa1e059d5930013bb1e15c6385', '[\"*\"]', NULL, NULL, '2025-09-30 22:55:05', '2025-09-30 22:55:05'),
(34, 'App\\Models\\User', 4, 'auth_token', '5f99537e464d3f2ff6d72ccb6e5614554c32112f84d450dfb4cc8e5085bc174f', '[\"*\"]', '2025-09-30 23:53:30', NULL, '2025-09-30 22:55:18', '2025-09-30 23:53:30'),
(39, 'App\\Models\\User', 1, 'auth_token', '7f55e4ee5d3d9c43025dbe81fd7d7bbe833340828d6340990dd2a6e33ba30b29', '[\"*\"]', '2025-10-01 01:08:46', NULL, '2025-10-01 01:04:11', '2025-10-01 01:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_komponen` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `lokasi_simpan` varchar(255) NOT NULL,
  `stok_min` int(11) NOT NULL,
  `stok_max` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `kode_barang`, `nama_komponen`, `gambar`, `satuan`, `jumlah`, `lokasi_simpan`, `stok_min`, `stok_max`, `created_at`, `updated_at`) VALUES
(1, 'RCNEA001', 'Resistor 1K', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'Biji', 100, 'IOT-1B-10A', 10, 300, '2025-09-30 18:38:28', '2025-09-30 18:38:28'),
(3, 'RCNEA002', 'Resistor 2k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 00:12:08', '2025-10-01 00:12:08'),
(5, 'RCNEA003', 'Resistor 3k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 00:13:42', '2025-10-01 00:13:42'),
(6, 'RCNEA004', 'Resistor 4k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 00:13:50', '2025-10-01 00:13:50'),
(7, 'RCNEA004', 'Resistor 5k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 00:13:57', '2025-10-01 00:13:57'),
(8, 'RCNEA004', 'Resistor 6k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 01:08:20', '2025-10-01 01:08:20'),
(9, 'RCNEA004', 'Resistor 7k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 01:08:25', '2025-10-01 01:08:25'),
(10, 'RCNEA004', 'Resistor 8k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 01:08:28', '2025-10-01 01:08:28'),
(11, 'RCNEA004', 'Resistor 9k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 01:08:33', '2025-10-01 01:08:33'),
(12, 'RCNEA004', 'Resistor 10k', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWPhnbErran4akLccqOyhqy3UFSRtKGR27xA&s', 'biji', 50, 'IOT-1B-10C', 30, 300, '2025-10-01 01:08:37', '2025-10-01 01:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `username_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `username_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'daffa', NULL, '$2y$12$N414oq9uVEruXhEU1xnX..w7dW7dzjIRi.EJ2mOfCDBWd2aYi3Pyi', NULL, '2025-09-30 18:03:41', '2025-09-30 18:03:41'),
(2, 'kemal', NULL, '$2y$12$g8vV6OIsKIlCppbbP0Tw2.7/qrqT.Co1DEgSzKslUP3nFlHoVQeHy', NULL, '2025-09-30 18:08:39', '2025-09-30 18:08:39'),
(3, 'felix', NULL, '$2y$12$HxQ6A/cHLoacX8Y8cHBcOOoHBsG61RmbULQ8hhv1Y7hFkDwZ20uSy', NULL, '2025-09-30 19:58:46', '2025-09-30 19:58:46'),
(4, 'reivan', NULL, '$2y$12$U7Izw2sKHmLTJeWVbZPpZOVUh.R.frOy8kXk6RjbaBVPehUIQrgH6', NULL, '2025-09-30 22:55:05', '2025-09-30 22:55:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
