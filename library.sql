-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2018 at 05:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `image`, `bookfile`, `info`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'history book1', 'mohammed', '1524712348thumnnail.jpg', '1524712348book.pdf', 'history history history history history history history history', 1, 7, '2018-04-26 03:12:28', '2018-04-26 03:12:28'),
(10, 'history book2', 'Mohammed Hassan', '1524712407thumnnail.jpg', '1524712407book.pdf', 'history2  history2  history2  history2  history2  history2  history2  history2  history2', 1, 7, '2018-04-26 03:13:27', '2018-04-26 03:13:27'),
(11, 'history book3', 'Mohammed Hassan', '1524712465thumnnail.jpg', '1524712465book.pdf', 'history3 history3 history3 history3 history3 history3 history3 history3', 1, 7, '2018-04-26 03:14:25', '2018-04-26 03:14:25'),
(13, 'literature book2', 'Mohammed Hassan', '1524712674thumnnail.jpg', '1524712674book.pdf', 'literature book2 literature book2 literature book2 literature book2 literature book2 literature book2 literature book2', 1, 8, '2018-04-26 03:17:54', '2018-04-26 03:17:54'),
(15, 'philosphy book1', 'Mohammed Hassan', '1524713573thumnnail.jpg', '1524713573book.pdf', 'philosphy book1 philosphy book1 philosphy book1 philosphy book1 philosphy book1', 12, 9, '2018-04-26 03:32:53', '2018-04-26 03:32:53'),
(16, 'literature book1', 'Mohammed Hassan', '1524713758thumnnail.jpg', '1524713758book.pdf', 'literature book1 literature book1 literature book1 literature book1 literature book1', 1, 8, '2018-04-26 03:35:58', '2018-04-26 03:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'history', '2018-04-26 03:04:03', '2018-04-26 03:04:03'),
(8, 'literature', '2018-04-26 03:09:24', '2018-04-26 03:09:24'),
(9, 'philosophy', '2018-04-26 03:09:35', '2018-04-26 03:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `book_id`, `comment`, `created_at`, `updated_at`) VALUES
(4, 9, 14, 'amazing', '2018-04-26 03:22:16', '2018-04-26 03:22:16'),
(5, 12, 13, 'amazing', '2018-04-26 03:30:45', '2018-04-26 03:30:45'),
(6, 12, 9, 'amazing', '2018-04-26 03:30:51', '2018-04-26 03:30:51'),
(7, 12, 10, 'amazing', '2018-04-26 03:30:58', '2018-04-26 03:30:58'),
(8, 12, 11, 'amazing', '2018-04-26 03:31:06', '2018-04-26 03:31:06'),
(9, 12, 12, 'amazing', '2018-04-26 03:31:12', '2018-04-26 03:31:12'),
(10, 12, 15, 'amazing', '2018-04-26 03:32:59', '2018-04-26 03:32:59'),
(11, 1, 15, 'wow', '2018-04-26 03:33:28', '2018-04-26 03:33:28'),
(12, 1, 13, 'wow', '2018-04-26 03:33:39', '2018-04-26 03:33:39'),
(13, 1, 12, 'wow', '2018-04-26 03:33:53', '2018-04-26 03:33:53'),
(14, 1, 10, 'wow', '2018-04-26 03:34:33', '2018-04-26 03:34:33'),
(15, 1, 9, 'wow', '2018-04-26 03:34:43', '2018-04-26 03:34:43'),
(16, 1, 16, 'wow', '2018-04-26 03:36:06', '2018-04-26 03:36:06'),
(17, 12, 16, 'amazing', '2018-04-26 03:36:30', '2018-04-26 03:36:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_22_011608_create_roles_table', 1),
(4, '2018_04_22_011902_create_roles_users_table', 1),
(5, '2018_04_22_012321_create_categories_table', 1),
(6, '2018_04_22_012447_create_books_table', 1),
(7, '2018_04_22_022301_create_comments_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admins', NULL, NULL),
(2, 'users', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 9, 2, NULL, NULL),
(4, 11, 2, NULL, NULL),
(5, 12, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed Hassan', 'admin@admin.com', '$2y$10$ZKVNTZ91t2eIDL71kijthOqL7g.QKIign5GnlL8Pz3T8jxgIFH48S', 'G5DZtR8E6GlN7QGxkpL9SkpcSU8CP3gPLZDg3t09OPIkVTmE7d2q1ZwjjfPT', '2018-04-23 23:03:26', '2018-04-23 23:03:26'),
(12, 'test', 'test@test.com', '$2y$10$augvoKsrDv38QhKKqIUYce1QOVYLhq3Rm6eoQ5jAgJKUzT43R3tg6', '8oZC5XwbObO4bP9WpWOEDHt4n9AOpbprTzZTwddfzVlbWTJZn8epCl1pFAvq', '2018-04-26 03:30:11', '2018-04-26 03:30:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
