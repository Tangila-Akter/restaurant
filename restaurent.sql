-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 04:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurent`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `food_id`, `quality`, `created_at`, `updated_at`) VALUES
(1, '1', '6', '1', '2022-03-22 09:27:59', '2022-03-22 09:27:59'),
(2, '1', '2', '4', '2022-03-22 09:44:27', '2022-03-22 09:44:27'),
(5, '9', '6', '1', '2022-04-03 00:17:12', '2022-04-03 00:17:12'),
(6, '1', '7', '4', '2022-04-07 12:58:05', '2022-04-07 12:58:05'),
(7, '10', '8', '1', '2022-04-10 13:08:05', '2022-04-10 13:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, 'bb', '3467', '1649357995.png', 'mushroom gggggg', '2022-03-12 15:08:55', '2022-04-07 12:59:55'),
(6, 'aa', '22', '1647954978.png', 'aa soup', '2022-03-19 07:37:08', '2022-03-22 07:16:18'),
(7, 'gg', '44', '1648319069.jpg', 'gg', '2022-03-26 12:24:29', '2022-03-26 12:24:29'),
(8, 'jjj', '5', '1648966882.jpg', 'jjjj', '2022-04-03 00:21:05', '2022-04-03 00:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `foodchefs`
--

CREATE TABLE `foodchefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foodchefs`
--

INSERT INTO `foodchefs` (`id`, `name`, `speciality`, `image`, `created_at`, `updated_at`) VALUES
(2, 'leo', 'salade', '1648654308.jpg', '2022-03-22 07:20:55', '2022-03-30 09:31:48'),
(3, 'sunzo', 'soup', '1648966500.jpg', '2022-03-25 12:17:27', '2022-04-03 00:15:01'),
(4, 'raju', 'noodles', '1648320310.jpg', '2022-03-26 12:45:10', '2022-03-26 12:45:10'),
(6, 'vorta', 'vorta', '1648967334.jpg', '2022-04-03 00:28:30', '2022-04-03 00:28:54');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_13_182122_create_sessions_table', 1),
(7, '2022_02_27_172532_create_food_table', 2),
(8, '2022_03_10_221727_create_reservations_table', 3),
(9, '2022_03_19_184729_create_foodchefs_table', 4),
(10, '2022_03_22_143029_create_carts_table', 5),
(11, '2022_03_22_181117_create_orders_table', 6),
(12, '2022_04_03_011817_create_reservations_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foodname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `foodname`, `price`, `quality`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'aa', '22', '1', 'Tangila Akter', '0186609382', 'Mohammadpur housing limited 2, Dhaka', '2022-03-25 09:42:05', '2022-03-25 09:42:05'),
(2, 'bb', '3467', '4', 'Tangila Akter', '0186609382', 'Mohammadpur housing limited 2, Dhaka', '2022-03-25 09:42:05', '2022-03-25 09:42:05'),
(3, 'bb', '3467', '1', 'Tangila Akter', '0186609382', 'Mohammadpur housing limited 2, Dhaka', '2022-03-25 09:42:05', '2022-03-25 09:42:05'),
(4, 'aa', '22', '1', 'Tangila Akter', '0186609382', 'Mohammadpur housing limited 2, Dhaka', '2022-04-03 00:11:47', '2022-04-03 00:11:47'),
(5, 'bb', '3467', '4', 'Tangila Akter', '0186609382', 'Mohammadpur housing limited 2, Dhaka', '2022-04-03 00:11:47', '2022-04-03 00:11:47'),
(6, 'aa', '22', '1', 'sunzo', '555555555', 'hhhhh', '2022-04-03 00:18:33', '2022-04-03 00:18:33'),
(7, 'aa', '22', '1', 'dipa', '33333', 'fdgds', '2022-04-07 12:58:37', '2022-04-07 12:58:37'),
(8, 'bb', '3467', '4', 'dipa', '33333', 'fdgds', '2022-04-07 12:58:37', '2022-04-07 12:58:37'),
(9, 'gg', '44', '4', 'dipa', '33333', 'fdgds', '2022-04-07 12:58:37', '2022-04-07 12:58:37'),
(10, 'jjj', '5', '1', 'leo', '00000000000', 'Mohammadpur housing limited 2, Dhaka', '2022-04-10 13:08:27', '2022-04-10 13:08:27');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `guest`, `date`, `time`, `message`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tangila Akter', 'eich@gmail.com', '0186609382', '9', '27.04.2022', '09:20', 'hi', NULL, NULL, '2022-04-02 19:20:30', '2022-04-02 19:20:30'),
(2, 'leo', 'aa@gmail.com', '00000000000', '3', '19.04.2022', '11:22', 'hi theree', NULL, NULL, '2022-04-02 19:23:01', '2022-04-02 19:23:01'),
(3, 'sunzo', 'sun@gmail.com', '5555555555', '6', '27.04.2022', '13:22', 'jjjjjj', NULL, NULL, '2022-04-03 00:22:56', '2022-04-03 00:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3kFyIZJlljTILwVafBXoXqLra9k0hkmmckoxqbWi', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkExa2RuN1YzWXNPNkt2UWlxbG40TmhtZG5mUXcxUkRrU0dkaWNZOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3QvcmVzdGF1cmVudC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1650563297),
('fSEaqnK1ABM7Pj7lnyKPG7NBwmAqjNs94U4tp36N', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkszTnp4NWtYS05sTmJQeE5SeWRpd0oxS09xcVExQVI2aXJhVE8xdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3QvcmVzdGF1cmVudC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1651114369),
('PWm98qlfIsMVmKPTbMjDXMuETLILIrp9H10y1Vxh', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTHFURFZHRFhVdEtaVW8zb2o4MTFKR2xsQjUyRnNzUFpqblRCdHJqSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvcmVzdGF1cmVudC9wdWJsaWMvdmlld2NoZWYiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY0OTYxNzc0MDt9czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ5UTZPME80R1dTOC5IZW10L2Y4QzJ1Q3piNDZ5amdTbDI3d3dHVUZZQ3J5ZmFMd2J5NFFsaSI7fQ==', 1649617799),
('TDAQtyRTLZqcDevmr8RedkRhiKdTgEm0PgSI5WFs', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFlFOUlxTE5BeVpTcHdqQjBIYXNCVHBWekpFbVZPbmp5aW91MVZ6bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3QvcmVzdGF1cmVudC9wdWJsaWMiO319', 1649363802);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Tangila Akter', 'aa@gmail.com', '0', NULL, '$2y$10$ROV/MA/sFm131rmcbk47yeQuD0E9OA1y8eRphQ/arbeNrS0I39m72', NULL, NULL, NULL, NULL, NULL, '2022-02-15 06:55:10', '2022-02-15 06:55:10'),
(2, 'admin', 'admin@gmail.com', '1', NULL, '$2y$10$9Q6O0O4GWS8.Hemt/f8C2uCzb46yjgSl27wwGUFYCryfaLwby4Qli', NULL, NULL, NULL, NULL, NULL, '2022-02-15 07:54:16', '2022-02-15 07:54:16'),
(5, 'bb', 'bb@gmail.com', '0', NULL, '$2y$10$yeNjHvrjpibc4W01DesWs.znbZCap9cyA/TJEZz2teX8gc4Gg6mf.', NULL, NULL, NULL, NULL, NULL, '2022-03-10 13:44:14', '2022-03-10 13:44:14'),
(6, 'cc', 'cc@gmail.com', '0', NULL, '$2y$10$UHboQMdIkJWNDs.2Jq6Cou.hBME16zyI2HQchH434p2AZcD5lftzO', NULL, NULL, NULL, NULL, NULL, '2022-03-22 07:38:17', '2022-03-22 07:38:17'),
(9, 'sunzo', 'gg@gmail.com', '0', NULL, '$2y$10$wygpx/O0IaZRbrFoPNQnB.yk2zGx8CN0mr15AGNISYaaBBkssOei6', NULL, NULL, NULL, NULL, NULL, '2022-04-03 00:16:17', '2022-04-03 00:16:17'),
(10, 'ff', 'ff@gmail.com', '0', NULL, '$2y$10$iP3LxM6wRgjCeym1MMij8ODDpk0affKVrGy63Bq7TzlXYt2pbiwF.', NULL, NULL, NULL, NULL, NULL, '2022-04-10 13:07:34', '2022-04-10 13:07:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodchefs`
--
ALTER TABLE `foodchefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foodchefs`
--
ALTER TABLE `foodchefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
