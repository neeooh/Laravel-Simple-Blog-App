-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2018 at 08:18 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

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
(3, '2018_02_07_092441_create_posts_table', 1),
(4, '2018_02_12_111807_add_user_id_to_posts', 2),
(5, '2018_02_12_113200_add_user_id_to_posts', 3),
(6, '2018_02_12_123309_add_cover_image_to_posts', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('matt@matt.com', '$2y$10$C8NHlZ8U64FW1C7Orsh5COkeNYD2UqvTF3594LuS4HKruNLfAYfNq', '2018-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(11, 'Post One', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elit ac viverra dapibus. Nullam vitae interdum enim. Fusce sem mi, commodo et lectus nec, semper imperdiet felis. Aenean sit amet tellus varius, <strong><s>viverra augue vel, facilisis est. Nunc ut ultricies tellus.</s></strong> Fusce non orci in nibh porta cursus molestie sed mauris. Aenean quis pulvinar lacus. Morbi id purus sed erat efficitur faucibus. In ut metus non quam feugiat scelerisque in sit amet sem. In eget suscipit ante. Integer egestas dui sed lorem tincidunt, eget tempus mi volutpat. Donec vehicula finibus ex, eget suscipit ipsum aliquam non. In posuere eros et lacus congue pharetra. Fusce cursus mi dui, ut efficitur nisi pulvinar at. Nullam mattis consequat ante, eu congue nunc faucibus et.</p>\r\n\r\n<p>Donec dapibus dui id odio finibus, sit amet bibendum ligula maximus. Integer laoreet, massa sed bibendum ullamcorper, purus elit sagittis est, eget varius tellus ante nec ante. Phasellus purus odio, varius sit amet quam sit amet, pretium egestas dui.<strong> Phasellus rhoncus fringilla massa sit amet ultricies. Nunc pulvinar molestie tellus, vel posuere sapien imperdiet non.</strong> Integer in suscipit est. Ut tristique elementum orci, eget faucibus elit vestibulum ac. Cras et justo quis mauris vestibulum imperdiet.</p>\r\n\r\n<p>In finibus gravida dui, ac scelerisque lorem rutrum quis. Nam vehicula ante quis orci fermentum, ut aliquam nunc ultrices. Nullam semper vitae metus vitae aliquam. Morbi ac felis ac tortor rhoncus aliquet eget et nunc. Curabitur non lacus viverra, interdum sem sit amet, placerat sem. Donec maximus tortor sed elit scelerisque, at vehicula purus ultrices. Nam mollis erat pharetra odio posuere interdum. Donec dolor ligula, vestibulum vel maximus ac, aliquet sed sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi quis magna ut massa aliquam eleifend non sed ligula. Nunc vel euismod elit. Pellentesque id rhoncus augue. Sed ac consequat enim.</p>', '2018-02-12 18:38:25', '2018-02-12 18:38:25', 2, 'evo-orange-porsche-wallpapers_2476_1920x144052_1518460705.jpg'),
(12, 'Post Two', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elit ac viverra dapibus. Nullam vitae interdum enim. Fusce sem mi, commodo et lectus nec, semper imperdiet felis. Aenean sit amet tellus varius, viverra augue vel, facilisis est. Nunc ut ultricies tellus. Fusce non orci in nibh porta cursus molestie sed mauris. Aenean quis pulvinar lacus. Morbi id purus sed erat efficitur faucibus. In ut metus non quam feugiat scelerisque in sit amet sem. In eget suscipit ante. Integer egestas dui sed lorem tincidunt, eget tempus mi volutpat. Donec vehicula finibus ex, eget suscipit ipsum aliquam non. In posuere eros et lacus congue pharetra. Fusce cursus mi dui, ut efficitur nisi pulvinar at. Nullam mattis consequat ante, eu congue nunc faucibus et.</p>\r\n\r\n<p>Donec dapibus dui id odio finibus, sit amet bibendum ligula maximus. Integer laoreet, massa sed bibendum ullamcorper, purus elit sagittis est, eget varius tellus ante nec ante. Phasellus purus odio, varius sit amet quam sit amet, pretium egestas dui. Phasellus rhoncus fringilla massa sit amet ultricies. Nunc pulvinar molestie tellus, vel posuere sapien imperdiet non. Integer in suscipit est. Ut tristique elementum orci, eget faucibus elit vestibulum ac. Cras et justo quis mauris vestibulum imperdiet.</p>\r\n\r\n<p>In finibus gravida dui, ac scelerisque lorem rutrum quis. Nam vehicula ante quis orci fermentum, ut aliquam nunc ultrices. Nullam semper vitae metus vitae aliquam. Morbi ac felis ac tortor rhoncus aliquet eget et nunc. Curabitur non lacus viverra, interdum sem sit amet, placerat sem. Donec maximus tortor sed elit scelerisque, at vehicula purus ultrices. Nam mollis erat pharetra odio posuere interdum. Donec dolor ligula, vestibulum vel maximus ac, aliquet sed sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi quis magna ut massa aliquam eleifend non sed ligula. Nunc vel euismod elit. Pellentesque id rhoncus augue. Sed ac consequat enim.</p>', '2018-02-12 18:39:30', '2018-02-12 18:39:30', 2, 'maldives_tropical_beach_sky_90634_2560x1024_1518460770.jpg'),
(13, 'Post Three', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elit ac viverra dapibus. Nullam vitae interdum enim. Fusce sem mi, commodo et lectus nec, semper imperdiet felis. Aenean sit amet tellus varius, viverra augue vel, facilisis est. Nunc ut ultricies tellus. Fusce non orci in nibh porta cursus molestie sed mauris. Aenean quis pulvinar lacus. Morbi id purus sed erat efficitur faucibus. In ut metus non quam feugiat scelerisque in sit amet sem. In eget suscipit ante. Integer egestas dui sed lorem tincidunt, eget tempus mi volutpat. Donec vehicula finibus ex, eget suscipit ipsum aliquam non. In posuere eros et lacus congue pharetra. Fusce cursus mi dui, ut efficitur nisi pulvinar at. Nullam mattis consequat ante, eu congue nunc faucibus et.</p>\r\n\r\n<p>Donec dapibus dui id odio finibus, sit amet bibendum ligula maximus. Integer laoreet, massa sed bibendum ullamcorper, purus elit sagittis est, eget varius tellus ante nec ante. Phasellus purus odio, varius sit amet quam sit amet, pretium egestas dui. Phasellus rhoncus fringilla massa sit amet ultricies. Nunc pulvinar molestie tellus, vel posuere sapien imperdiet non. Integer in suscipit est. Ut tristique elementum orci, eget faucibus elit vestibulum ac. Cras et justo quis mauris vestibulum imperdiet.</p>\r\n\r\n<p>In finibus gravida dui, ac scelerisque lorem rutrum quis. Nam vehicula ante quis orci fermentum, ut aliquam nunc ultrices. Nullam semper vitae metus vitae aliquam. Morbi ac felis ac tortor rhoncus aliquet eget et nunc. Curabitur non lacus viverra, interdum sem sit amet, placerat sem. Donec maximus tortor sed elit scelerisque, at vehicula purus ultrices. Nam mollis erat pharetra odio posuere interdum. Donec dolor ligula, vestibulum vel maximus ac, aliquet sed sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi quis magna ut massa aliquam eleifend non sed ligula. Nunc vel euismod elit. Pellentesque id rhoncus augue. Sed ac consequat enim.</p>', '2018-02-12 18:44:05', '2018-02-12 18:45:48', 3, 'WallpaperFusion-lamborghini-aventador-lp-720-4-50-anniversario-3840x1080_1518461148.jpg'),
(14, 'Post Four', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elit ac viverra dapibus. Nullam vitae interdum enim. Fusce sem mi, commodo et lectus nec, semper imperdiet felis. Aenean sit amet tellus varius, viverra augue vel, facilisis est. Nunc ut ultricies tellus. Fusce non orci in nibh porta cursus molestie sed mauris. Aenean quis pulvinar lacus. Morbi id purus sed erat efficitur faucibus. In ut metus non quam feugiat scelerisque in sit amet sem. In eget suscipit ante. Integer egestas dui sed lorem tincidunt, eget tempus mi volutpat. Donec vehicula finibus ex, eget suscipit ipsum aliquam non. In posuere eros et lacus congue pharetra. Fusce cursus mi dui, ut efficitur nisi pulvinar at. Nullam mattis consequat ante, eu congue nunc faucibus et.</p>\r\n\r\n<p>Donec dapibus dui id odio finibus, sit amet bibendum ligula maximus. Integer laoreet, massa sed bibendum ullamcorper, purus elit sagittis est, eget varius tellus ante nec ante. Phasellus purus odio, varius sit amet quam sit amet, pretium egestas dui. Phasellus rhoncus fringilla massa sit amet ultricies. Nunc pulvinar molestie tellus, vel posuere sapien imperdiet non. Integer in suscipit est. Ut tristique elementum orci, eget faucibus elit vestibulum ac. Cras et justo quis mauris vestibulum imperdiet.</p>\r\n\r\n<p>In finibus gravida dui, ac scelerisque lorem rutrum quis. Nam vehicula ante quis orci fermentum, ut aliquam nunc ultrices. Nullam semper vitae metus vitae aliquam. Morbi ac felis ac tortor rhoncus aliquet eget et nunc. Curabitur non lacus viverra, interdum sem sit amet, placerat sem. Donec maximus tortor sed elit scelerisque, at vehicula purus ultrices. Nam mollis erat pharetra odio posuere interdum. Donec dolor ligula, vestibulum vel maximus ac, aliquet sed sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi quis magna ut massa aliquam eleifend non sed ligula. Nunc vel euismod elit. Pellentesque id rhoncus augue. Sed ac consequat enim.</p>', '2018-02-12 18:47:05', '2018-02-12 18:47:05', 3, 'Porsche911_1518461225.jpg');

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
(2, 'John Appl', 'test@test.com', '$2y$10$40I9RkHKDTL0nKUAfjiv4.a8kgKlpnGmjnDq508oUyyDZsgFIE3my', 'tNOOP4l9RtRXIkostvFo3VFN5uhbCmDqe9mXQ0ELqc7d2jUSwGhSbTHAzEbi', '2018-02-12 12:03:39', '2018-02-12 12:03:39'),
(3, 'Matt', 'matt@matt.com', '$2y$10$UVKpxl9YCxCnR10pYb2VtOk5Uu9kLlKtXE/E0/.gPmrB.57yruGdW', '66yl6CrfgBj4KJA5BHdTCh73hu2olg6e9twdLYxvunDGl4Nh4hgnpCGvCPlR', '2018-02-12 18:42:27', '2018-02-12 18:42:27');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
