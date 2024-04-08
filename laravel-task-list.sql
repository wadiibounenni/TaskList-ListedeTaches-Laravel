-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 02:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-task-list`
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
(4, '2024_03_22_112603_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Pfk2nVnowmls4as2Hi39zt14yrS9U1S2IYpENnsK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3BRenlzNHFlRGRuUElzWW9RVEV2YU90cHRCam1UNWl4dHh0dVVreCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrcy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712536520);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `long_description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 'zerr\"zer', 'ezrzerzerze', 'zerzerzerzerze', 0, '2024-03-22 12:27:58', '2024-03-22 12:30:31'),
(2, 'sqdfdsfsdf', 'sdfsdfsdf', 'dsfddsfsdfsd', 0, '2024-03-22 13:02:20', '2024-03-22 13:02:20'),
(8, 'ssdfsdf', 'dfsdsdf', 'dssdfsdfsdf', 1, '2024-03-23 08:34:12', '2024-03-23 08:34:28'),
(10, 'hello world', 'zsdfzdf1', 'zdfddfdsf', 0, '2024-03-30 08:35:01', '2024-03-30 12:29:49'),
(11, 'hala', 'sdsdsdf', 'sdsdfsdsdfd', 0, '2024-03-30 08:46:40', '2024-03-30 08:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raymond Bernhard', 'collin.will@example.org', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'lzqswupp1Z', '2024-03-22 09:39:03', '2024-03-22 09:39:03'),
(2, 'Amiya Carroll', 'jgislason@example.org', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'UWiwhzgda0', '2024-03-22 09:39:03', '2024-03-22 09:39:03'),
(3, 'Kirsten Gleason', 'davis.nettie@example.net', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'vVTEtmjFCn', '2024-03-22 09:39:03', '2024-03-22 09:39:03'),
(4, 'Sydni Waelchi Jr.', 'armando.reichert@example.net', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'XHn7sJmhCY', '2024-03-22 09:39:03', '2024-03-22 09:39:03'),
(5, 'Brook O\'Keefe', 'peter.koss@example.net', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'gPoqG30iXM', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(6, 'Stewart Kessler V', 'lance.kreiger@example.net', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'QKOSTxit4w', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(7, 'Prof. Wilford Reynolds', 'cartwright.weston@example.net', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'FCmJV30BiD', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(8, 'Zella Robel', 'mandy.runte@example.net', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'BnxOHNoNqE', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(9, 'Cedrick Ullrich Sr.', 'dickens.jennyfer@example.com', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'ECyTK6PQnl', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(10, 'Prof. Edgardo Olson II', 'nikita55@example.org', '2024-03-22 09:39:03', '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'dxumDHr57Q', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(11, 'Miss Astrid Mosciski', 'lehner.earnestine@example.net', NULL, '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', 'PZ7ouBeI3V', '2024-03-22 09:39:04', '2024-03-22 09:39:04'),
(12, 'Kylee Rolfson', 'elody.okeefe@example.net', NULL, '$2y$12$FUoZQ.YgcO.hPW/SLgUeMulOceZQO81bksG5fxmtw0Cw12TA4n6YC', '2jYjXTEnsu', '2024-03-22 09:39:04', '2024-03-22 09:39:04');

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
