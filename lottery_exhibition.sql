-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 01:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lottery_exhibition`
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
(4, '2024_08_01_173823_create_sessions_table', 2),
(5, '2024_08_01_174149_create_prizes_table', 2),
(6, '2024_08_01_174159_create_participants_table', 2),
(7, '2024_08_01_175353_create_sessions_table', 3),
(8, '2024_08_01_175717_create_sessions_table', 4),
(9, '2024_08_01_180035_create_prizes_table', 4),
(10, '2024_08_01_180313_create_participants_table', 4),
(11, '2024_08_01_181558_add_user_id_to_sessions_table', 5),
(12, '2024_08_01_181816_add_ip_address_to_sessions_table', 6),
(13, '2024_08_01_182226_add_user_agent_to_sessions_table', 7),
(14, '2024_08_02_081935_update_second_prizes_in_prizes_table', 8),
(15, '2024_08_02_082337_update_adjacent_numbers_in_prizes_table', 9),
(16, '2024_08_02_083857_modify_last_two_digits_in_prizes_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `prizes`
--

CREATE TABLE `prizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_prize` int(11) NOT NULL,
  `second_prizes` text DEFAULT NULL,
  `adjacent_numbers` text DEFAULT NULL,
  `last_two_digits` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`id`, `first_prize`, `second_prizes`, `adjacent_numbers`, `last_two_digits`, `created_at`, `updated_at`) VALUES
(1, 845, '[488,800,35]', '[844,846]', NULL, '2024-08-02 01:39:57', '2024-08-02 01:39:57'),
(2, 851, '[689,736,108]', '[850,852]', NULL, '2024-08-02 02:50:56', '2024-08-02 02:50:56'),
(3, 500, '[166,308,505]', '[499,501]', NULL, '2024-08-02 02:50:58', '2024-08-02 02:50:58'),
(4, 392, '[681,934,619]', '[391,393]', NULL, '2024-08-02 02:51:41', '2024-08-02 02:51:41'),
(5, 475, '[484,116,812]', '[474,476]', NULL, '2024-08-02 02:51:43', '2024-08-02 02:51:43'),
(6, 686, '[422,386,677]', '[685,687]', NULL, '2024-08-02 02:51:44', '2024-08-02 02:51:44'),
(7, 812, '[72,559,906]', '[811,813]', NULL, '2024-08-02 02:52:15', '2024-08-02 02:52:15'),
(8, 487, '[225,993,57]', '[486,488]', NULL, '2024-08-02 02:59:19', '2024-08-02 02:59:19'),
(9, 987, '[120,291,570]', '[986,988]', NULL, '2024-08-02 02:59:20', '2024-08-02 02:59:20'),
(10, 694, '[703,837,685]', '[693,695]', NULL, '2024-08-02 02:59:21', '2024-08-02 02:59:21'),
(11, 450, '[9,333,61]', '[449,451]', NULL, '2024-08-02 02:59:22', '2024-08-02 02:59:22'),
(12, 97, '[79,386,800]', '[96,98]', NULL, '2024-08-02 02:59:55', '2024-08-02 02:59:55'),
(13, 59, '[397,797,889]', '[58,60]', NULL, '2024-08-02 02:59:56', '2024-08-02 02:59:56'),
(14, 63, '[619,231,76]', '[62,64]', NULL, '2024-08-02 02:59:58', '2024-08-02 02:59:58'),
(15, 704, '[84,427,602]', '[703,705]', NULL, '2024-08-02 02:59:59', '2024-08-02 02:59:59'),
(16, 868, '[997,181,627]', '[867,869]', NULL, '2024-08-02 03:00:00', '2024-08-02 03:00:00'),
(17, 298, '[312,537,138]', '[297,299]', NULL, '2024-08-02 03:00:05', '2024-08-02 03:00:05'),
(18, 11, '[460,519,821]', '[10,12]', NULL, '2024-08-02 03:08:34', '2024-08-02 03:08:34'),
(19, 637, '[198,698,611]', '[636,638]', NULL, '2024-08-02 03:08:35', '2024-08-02 03:08:35'),
(20, 418, '[113,948,393]', '[417,419]', NULL, '2024-08-02 03:08:37', '2024-08-02 03:08:37'),
(21, 793, '[731,661,844]', '[792,794]', NULL, '2024-08-02 03:08:37', '2024-08-02 03:08:37'),
(22, 27, '[137,648,538]', '[26,28]', NULL, '2024-08-02 03:08:39', '2024-08-02 03:08:39'),
(23, 204, '[179,207,180]', '[203,205]', NULL, '2024-08-02 03:08:41', '2024-08-02 03:08:41'),
(24, 771, '[74,912,789]', '[770,772]', NULL, '2024-08-02 03:08:42', '2024-08-02 03:08:42'),
(25, 67, '[802,9,991]', '[66,68]', NULL, '2024-08-02 03:08:43', '2024-08-02 03:08:43'),
(26, 753, '[75,80,345]', '[752,754]', NULL, '2024-08-02 03:08:44', '2024-08-02 03:08:44'),
(27, 754, '[454,278,686]', '[753,755]', NULL, '2024-08-02 03:08:46', '2024-08-02 03:08:46'),
(28, 686, '[137,504,239,91]', '[685,687]', NULL, '2024-08-02 03:09:08', '2024-08-02 03:09:08'),
(29, 996, '[838,926,671,197]', '[995,997]', NULL, '2024-08-02 03:09:09', '2024-08-02 03:09:09'),
(30, 207, '[179,907,43,132]', '[206,208]', NULL, '2024-08-02 03:09:10', '2024-08-02 03:09:10'),
(31, 674, '[330,879,656,493]', '[673,675]', NULL, '2024-08-02 03:09:11', '2024-08-02 03:09:11'),
(32, 50, '[208,116,77,551]', '[49,51]', NULL, '2024-08-02 03:09:11', '2024-08-02 03:09:11'),
(33, 785, '[927,405,269,331]', '[784,786]', NULL, '2024-08-02 03:09:13', '2024-08-02 03:09:13'),
(34, 177, '[479,911,300,727]', '[176,178]', NULL, '2024-08-02 03:09:14', '2024-08-02 03:09:14'),
(35, 409, '[512,648,687,123]', '[408,410]', NULL, '2024-08-02 03:09:14', '2024-08-02 03:09:14'),
(36, 527, '[289,632,584]', '[526,528]', NULL, '2024-08-02 03:09:25', '2024-08-02 03:09:25'),
(37, 761, '[983,547,304]', '[760,762]', NULL, '2024-08-02 03:09:26', '2024-08-02 03:09:26'),
(38, 2, '[245,631,280]', '[1,3]', NULL, '2024-08-02 03:09:27', '2024-08-02 03:09:27'),
(39, 233, '[89,677,612]', '[232,234]', NULL, '2024-08-02 03:09:29', '2024-08-02 03:09:29'),
(40, 217, '[727,493,254]', '[216,218]', NULL, '2024-08-02 03:09:31', '2024-08-02 03:09:31'),
(41, 739, '[193,525,450]', '[738,740]', NULL, '2024-08-02 04:03:08', '2024-08-02 04:03:08'),
(42, 270, '[345,318,153]', '[269,271]', NULL, '2024-08-02 04:03:09', '2024-08-02 04:03:09'),
(43, 171, '[875,233,876]', '[170,172]', NULL, '2024-08-02 04:04:34', '2024-08-02 04:04:34'),
(44, 246, '[48,285,3]', '[245,247]', NULL, '2024-08-02 04:04:35', '2024-08-02 04:04:35'),
(45, 369, '[67,174,141]', '[368,370]', NULL, '2024-08-02 04:07:41', '2024-08-02 04:07:41'),
(46, 962, '[33,845,783]', '[961,963]', NULL, '2024-08-02 04:07:42', '2024-08-02 04:07:42'),
(47, 773, '[369,923,278]', '[772,774]', NULL, '2024-08-02 04:07:43', '2024-08-02 04:07:43'),
(48, 331, '[297,717,67]', '[330,332]', NULL, '2024-08-02 04:07:44', '2024-08-02 04:07:44'),
(49, 648, '[381,902,256]', '[647,649]', NULL, '2024-08-02 04:07:45', '2024-08-02 04:07:45'),
(50, 831, '[455,837,186]', '[830,832]', 31, '2024-08-02 04:12:40', '2024-08-02 04:12:40'),
(51, 632, '[745,496,932]', '[631,633]', 52, '2024-08-02 04:12:41', '2024-08-02 04:12:41'),
(52, 888, '[659,962,348]', '[887,889]', 27, '2024-08-02 04:12:42', '2024-08-02 04:12:42'),
(53, 699, '[564,157,451]', '[698,700]', 59, '2024-08-02 04:12:43', '2024-08-02 04:12:43'),
(54, 96, '[570,925,310]', '[95,97]', 18, '2024-08-02 04:12:44', '2024-08-02 04:12:44'),
(55, 591, '[995,697,15]', '[590,592]', 74, '2024-08-02 04:12:45', '2024-08-02 04:12:45'),
(56, 411, '[257,12,72]', '[410,412]', 25, '2024-08-02 04:12:46', '2024-08-02 04:12:46'),
(57, 931, '[510,70,919]', '[930,932]', 60, '2024-08-02 04:12:47', '2024-08-02 04:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `payload`, `last_activity`, `user_id`, `ip_address`, `user_agent`) VALUES
('xHUTlIHSEqzq4URYaofYif2C5DDkWXcLT8iAAXOi', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREwxc011N3Jwbk1HRnhrSFpRRTZLZDV1bDZyTEU0MTd4T20yUWVWUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722599035, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');

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
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
