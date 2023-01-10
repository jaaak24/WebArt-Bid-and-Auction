-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 02:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webart`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `tgl_bid` date NOT NULL,
  `status` enum('waiting-list','winner') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `product_id`, `price`, `tgl_bid`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 4500000, '2023-01-08', 'waiting-list', '2023-01-08 08:50:44', '2023-01-08 08:50:44'),
(2, 4, 2, 4000000, '2023-01-08', 'waiting-list', '2023-01-08 08:51:01', '2023-01-08 08:51:01'),
(3, 5, 1, 5000000, '2023-01-08', 'winner', '2023-01-08 08:52:24', '2023-01-08 08:53:45'),
(4, 4, 3, 5000000, '2023-01-08', 'waiting-list', '2023-01-08 12:03:27', '2023-01-08 12:03:27'),
(5, 5, 3, 5500000, '2023-01-08', 'waiting-list', '2023-01-08 12:04:00', '2023-01-08 12:04:00'),
(6, 5, 2, 4500000, '2023-01-08', 'waiting-list', '2023-01-08 12:04:26', '2023-01-08 12:04:26'),
(7, 6, 2, 4600000, '2023-01-08', 'waiting-list', '2023-01-08 12:05:45', '2023-01-08 12:05:45'),
(8, 7, 2, 5200000, '2023-01-08', 'waiting-list', '2023-01-08 12:08:03', '2023-01-08 12:08:03'),
(9, 7, 3, 6200000, '2023-01-08', 'waiting-list', '2023-01-08 12:08:49', '2023-01-08 12:08:49'),
(10, 8, 3, 6500000, '2023-01-08', 'waiting-list', '2023-01-08 12:09:49', '2023-01-08 12:09:49'),
(11, 8, 2, 5800000, '2023-01-08', 'waiting-list', '2023-01-08 12:10:17', '2023-01-08 12:10:17'),
(13, 4, 2, 6000000, '2023-01-08', 'winner', '2023-01-08 12:13:15', '2023-01-08 12:14:49'),
(14, 5, 3, 6600000, '2023-01-08', 'waiting-list', '2023-01-08 12:13:58', '2023-01-08 12:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_06_054909_create_roles_table', 1),
(6, '2023_01_06_061428_create_products_table', 1),
(7, '2023_01_06_065951_create_categories_table', 1),
(8, '2023_01_06_120820_create_bids_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `open_price` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('done','onprocess') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `product_image`, `open_price`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Statue Garden Angel', 'Statue', 'Products/txDlJOTMLJY9hVRfkKpPNeluDDbR9OZKynCQLU1K.png', 3500000, '2023-01-08', '2023-01-09', 'done', '2023-01-08 08:49:35', '2023-01-08 12:14:49'),
(3, 'Statue Hermes and Aphrodite', 'Statue', 'Products/j1dH4SZcreaIzYanXbabgyQzDcmWWKIsAeHNMvHM.png', 4000000, '2023-01-08', '2023-01-10', 'onprocess', '2023-01-08 11:55:21', '2023-01-08 11:55:21'),
(4, 'Art Canvas', 'art canvas 500 x 250', 'Products/SY2Get67y6EnmtPgQIsyblSpWtaY1jD2TA9sccD2.jpg', 650000, '2023-01-09', '2023-01-15', 'onprocess', '2023-01-09 01:05:22', '2023-01-09 01:05:22'),
(5, 'Art Canvas', 'art canvas 500 x 250', 'Products/Gsk58ccILV14jezW38raj3r24k4KspV55Y81eWgq.jpg', 450000, '2023-01-09', '2023-01-15', 'onprocess', '2023-01-09 01:06:57', '2023-01-09 01:07:18'),
(6, 'Coins', 'coin from multiverse lain', 'Products/HZrMGZ0zZzaH1RuOpRJcJrKb6HKG3pwIZhourqnO.jpg', 1000000, '2023-01-09', '2023-01-15', 'onprocess', '2023-01-09 01:09:32', '2023-01-09 01:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-01-08 08:45:17', '2023-01-08 08:45:17'),
(2, 'user', '2023-01-08 08:45:17', '2023-01-08 08:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `no_telp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin1', 1, 'admin1@example.com', NULL, '$2y$10$CRjjDM1.q8tPZC96GUHP0ehx/CvZsId3170ii6TwN41HqQ6HxfhvO', '123', NULL, '2023-01-08 08:45:18', '2023-01-08 08:45:18'),
(2, 'Admin2', 1, 'admin2@example.com', NULL, '$2y$10$7gci6a.dSQGHYSslu4LBpuVEamjUw2uu3H467IcSFgZJ2HjSMa30.', '123', NULL, '2023-01-08 08:45:18', '2023-01-08 08:45:18'),
(3, 'Admin3', 1, 'admin3@example.com', NULL, '$2y$10$iPxwlgYgyWbOA6zcyO5Qk.L8RLv9.WqRsJYnZxCov1cyR71aUo68u', '123', NULL, '2023-01-08 08:45:18', '2023-01-08 08:45:18'),
(4, 'Fahreza Anggriantaka', 2, 'fahreza107@gmail.com', NULL, '$2y$10$remjtM7DKcfevDFEtY1kIORgyS3WsnezEVerBy.TulWjqrwTSXtBm', '081331930455', NULL, '2023-01-08 08:50:31', '2023-01-08 08:50:31'),
(5, 'Ahmad Nahid Ma\'aly', 2, 'fahreza2420@gmail.com', NULL, '$2y$10$cMwOW/VEy.U4Zgbq1ALkVO11mseJSvH6kmR7IoNb04BoSuyU5OccC', '081331930277', NULL, '2023-01-08 08:52:08', '2023-01-08 08:52:08'),
(6, 'Ariq Aqilla', 2, 'rejaaak@student.telkomuniversity.ac.id', NULL, '$2y$10$JhLZFQI89iCDTEOwQdz4ROYntqOpguU5mIDDu6P1YWuPjsylmX5gG', '081331930899', NULL, '2023-01-08 12:05:28', '2023-01-08 12:05:28'),
(7, 'Hilzahra Putri Dienyya', 2, 'asdf@gmail.com', NULL, '$2y$10$5RYpiQ0UhTk0a/am1UzsDux7X4Lpqg9ItBBKEb/C38BmAxozAX2UC', '081331930322', NULL, '2023-01-08 12:07:50', '2023-01-08 12:07:50'),
(8, 'Taresa Vindy', 2, 'asdf1@gmail.com', NULL, '$2y$10$9i4aZHhQvYpBmAC47TWdnOxws9jsZH8Lr6VsWbNrvj70djfpxA.Cm', '081331930654', NULL, '2023-01-08 12:09:39', '2023-01-08 12:09:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
