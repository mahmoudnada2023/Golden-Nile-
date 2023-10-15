-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 02:36 PM
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
-- Database: `bollares`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-08-01 07:06:22', '2023-08-01 04:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_translations`
--

CREATE TABLE `about_us_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `seo` varchar(255) NOT NULL,
  `keywords` varchar(225) NOT NULL,
  `focus_keyword` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_translations`
--

INSERT INTO `about_us_translations` (`id`, `about_us_id`, `locale`, `title`, `description`, `seo`, `keywords`, `focus_keyword`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Who is Bollaris', '<ol><li>booking Enginge</li><li>book with us</li></ol>', 'Laborum Atque eiusm', 'Nisi perspiciatis n', 'Temporibus dolores v', '2023-08-01 08:05:41', '2023-08-14 05:52:32'),
(2, 1, 'ar', 'من نحن', '<ol><li>موقع حجز</li><li>احجز معنا</li></ol>', '', '', '', '2023-08-01 08:05:41', '2023-08-01 09:09:16'),
(3, 1, 'es', 'Omnis qui soluta ut', '<ol><li>Reserva Enginge</li><li>\r\nreserva con nosotros</li></ol>', 'Voluptate dolores fa', 'Id aut vitae non te', 'Minus tempora dolore', '2023-08-07 04:09:32', '2023-08-14 05:52:14'),
(4, 1, 'pt', 'Quasi adipisci culpa', '<ol><li>motor de reservas</li><li>\r\nreserve conosco</li></ol>', 'Est labore eaque nih', 'Laboris sunt omnis', 'Delectus eaque exce', '2023-08-07 04:09:32', '2023-08-14 05:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bollares', 'bollars-admin@email.com', NULL, '$2y$10$eN2p5kNxVBrbfPPtvUkjieF18uVEW4F.96cPdkMixMV52.BZKoYFa', NULL, '2023-07-17 08:15:44', '2023-07-17 08:15:44'),
(2, 'Admin', 'admin@email.com', NULL, '$2y$10$UpCtDjG6Bf3mBDd0Bvjcnu2vAthxexAlyDHpwInYw4XRconVUCD2W', NULL, '2023-08-13 06:45:43', '2023-08-13 06:45:43'),
(3, 'editor', 'editor@email.com', NULL, '$2y$10$VHuFiRfD8i3fjYU6Ty9ImufSfGF6Ewdks5Kx1.xmy5g1vlIIleGGG', NULL, '2023-08-13 06:46:18', '2023-08-13 06:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_header` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `title` text NOT NULL,
  `subject` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `title`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'M Mohsen', 'm.mohsen@gmail.com', '01111111111', 'title', 'this is subject', '2023-08-07 05:42:13', '2023-08-07 05:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `value` int(11) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `limit`, `remaining`, `start_date`, `end_date`, `status`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'xdW', 5, 5, '2023-08-23', '2023-12-01', '1', 25, '1', '2023-08-02 04:39:06', '2023-08-13 03:58:27'),
(3, 'Madeson Carroll', 20, 10, '2023-08-03', '2023-08-15', '1', 50, '2', '2023-08-02 05:50:44', '2023-08-13 04:02:56'),
(4, 'Karyn Murray', 81, 81, '1994-08-17', '1990-08-28', '1', 54, '1', '2023-08-13 04:00:57', '2023-08-13 04:00:57'),
(5, 'Nathaniel Colon', 21, 21, '1989-08-16', '1990-08-25', '1', 47, '2', '2023-08-13 04:01:52', '2023-08-13 04:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `facilites`
--

CREATE TABLE `facilites` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilites`
--

INSERT INTO `facilites` (`id`, `main_photo`, `created_at`, `updated_at`) VALUES
(4, '1691492271.LOGO-01.png', '2023-08-08 07:44:54', '2023-08-08 07:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `facilite_photos`
--

CREATE TABLE `facilite_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facilite_id` int(10) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilite_photos`
--

INSERT INTO `facilite_photos` (`id`, `facilite_id`, `photo`, `created_at`, `updated_at`) VALUES
(16, 4, '1691492215.success1.png', '2023-08-08 07:56:58', '2023-08-08 07:56:58'),
(17, 4, '1691492215.news1.png', '2023-08-08 07:56:59', '2023-08-08 07:56:59'),
(18, 4, '1691492245.football1.png', '2023-08-08 07:57:53', '2023-08-08 07:57:53'),
(19, 4, '1691498595.news-reporter1.png', '2023-08-08 09:43:17', '2023-08-08 09:43:17'),
(20, 4, '1691498609.trophy(1)1.png', '2023-08-08 09:43:30', '2023-08-08 09:43:30'),
(21, 4, '1691498647.default.png', '2023-08-08 09:44:09', '2023-08-08 09:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `facilite_translations`
--

CREATE TABLE `facilite_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facilite_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilite_translations`
--

INSERT INTO `facilite_translations` (`id`, `facilite_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(10, 4, 'en', 'Voluptatibus dolor easd edit', 'Dolore totam dolorem.asda edit', '2023-08-08 07:44:54', '2023-08-08 07:57:53'),
(11, 4, 'es', 'Natus quia asperioreasd edit', 'Ad qui ut optio, nat.asda edit', '2023-08-08 07:44:54', '2023-08-08 07:57:53'),
(12, 4, 'pt', 'asdasd edit', 'Ex eius culpa, anim .asd edit', '2023-08-08 07:44:54', '2023-08-08 07:57:53');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `photo`, `created_at`, `updated_at`) VALUES
(44, '1691326769.LOGO-01.png', '2023-08-06 09:59:29', '2023-08-06 09:59:29'),
(46, '1691391982.LOGO-04.png', '2023-08-07 04:06:22', '2023-08-07 04:06:22'),
(63, '1691658700.social-media(1)1.png', '2023-08-10 06:11:41', '2023-08-10 06:11:41'),
(64, '1691658701.success1.png', '2023-08-10 06:11:41', '2023-08-10 06:11:41'),
(66, '1691658708.news1.png', '2023-08-10 06:11:48', '2023-08-10 06:11:48'),
(68, '1691658709.football1.png', '2023-08-10 06:11:49', '2023-08-10 06:11:49');

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
(5, '2023_07_17_105828_create_admins_table', 1),
(6, '2023_07_18_071923_create_permission_tables', 2),
(7, '2023_08_01_063917_create_about_us_table', 3),
(10, '2023_08_01_122448_create_social_media_table', 4),
(11, '2023_08_01_131054_create_coupons_table', 5),
(12, '2023_08_03_091155_create_sliders_table', 6),
(13, '2023_08_06_060910_create_settings_table', 7),
(14, '2023_08_06_073547_create_setting_translations_table', 8),
(15, '2023_08_06_082518_create_galleries_table', 9),
(16, '2023_08_07_072835_create_contact_us_table', 10),
(17, '2023_08_07_100259_create_pages_table', 11),
(18, '2023_08_07_100342_create_page_translations_table', 12),
(19, '2023_08_01_074323_create_about_us_translations_table.php', 3),
(20, '2023_08_08_060743_create_facilites_table', 13),
(21, '2023_08_08_060825_create_facilite_photos_table', 14),
(22, '2023_08_08_061549_create_facilite_translations_table', 15),
(23, '2023_08_08_110724_create_side_seeings_table', 16),
(24, '2023_08_08_110804_create_side_seeing_photos_table', 17),
(25, '2023_08_08_111422_create_side_seeing_translations_table', 18),
(26, '2023_08_13_100124_create_slider_translations_table', 19),
(27, '2023_08_14_091553_create_subscribers_table', 20),
(28, '2023_08_14_111524_create_newsletters_table', 21),
(29, '2023_08_14_113737_create_jobs_table', 22),
(30, '2023_08_21_114205_create_blogs_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 2),
(4, 'App\\Models\\Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Et quia sit incidunt', 'Molestias esse sequi. ff', '2023-08-14 10:07:11', '2023-08-14 10:07:11'),
(2, 'Rerum sit sit labore f', 'Velit, sapiente labo. f', '2023-08-14 10:11:44', '2023-08-14 10:11:44'),
(3, 'Enim accusantium num f', 'Molestias minima vol. f', '2023-08-14 10:19:08', '2023-08-14 10:19:08'),
(4, 'Corporis dolore eius d', 'Quis ut eius est cup. d', '2023-08-14 10:26:29', '2023-08-14 10:26:29'),
(5, 'Adipisicing in ut qu f', 'Veniam, error aute s. f', '2023-08-14 10:30:56', '2023-08-14 10:30:56'),
(6, 'Totam id magnam nec f', 'Quis quia labore qua. f', '2023-08-14 10:32:18', '2023-08-14 10:32:18'),
(7, 'Recusandae Sunt ven f', 'Aliqua. Rerum debiti. f', '2023-08-14 10:37:34', '2023-08-14 10:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`) VALUES
(2, '2023-08-07 09:28:56', '2023-08-07 09:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `seo` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `description`, `seo`, `created_at`, `updated_at`) VALUES
(4, 2, 'en', 'Consequatur Reprehe', 'haitham', 'Qui non tempore ali', '2023-08-07 09:28:57', '2023-08-07 09:28:57'),
(5, 2, 'es', 'Eaque provident dol', 'haitham', 'Excepteur omnis in m', '2023-08-07 09:28:57', '2023-08-07 09:28:57'),
(6, 2, 'pt', 'Eum est vel laborio', 'haitham', 'Minus laborum Dolor', '2023-08-07 09:28:57', '2023-08-07 09:28:57');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'View Admins', 'web', '2023-07-31 10:26:41', '2023-07-31 10:30:17'),
(2, 'Add Admin', 'web', '2023-07-31 10:27:05', '2023-07-31 10:27:05'),
(3, 'Edit Admin', 'web', '2023-07-31 10:27:21', '2023-07-31 10:27:21'),
(4, 'Delete Admin', 'web', '2023-07-31 10:27:31', '2023-07-31 10:27:31'),
(5, 'View Roles', 'web', '2023-07-31 10:27:52', '2023-07-31 10:27:52'),
(6, 'Add Role', 'web', '2023-07-31 10:28:01', '2023-07-31 10:28:01'),
(7, 'Edit Role', 'web', '2023-07-31 10:28:09', '2023-07-31 10:28:09'),
(8, 'Delete Role', 'web', '2023-07-31 10:28:18', '2023-07-31 10:28:18'),
(9, 'View Aboutus', 'web', '2023-08-01 03:42:34', '2023-08-01 03:42:34'),
(11, 'Edit Aboutus', 'web', '2023-08-01 03:42:59', '2023-08-01 03:42:59'),
(13, 'View Social', 'web', '2023-08-01 09:31:46', '2023-08-01 09:31:46'),
(14, 'Add Social', 'web', '2023-08-01 09:32:06', '2023-08-01 09:32:06'),
(15, 'Edit Social', 'web', '2023-08-01 09:32:15', '2023-08-01 09:32:15'),
(16, 'Delete Social', 'web', '2023-08-01 09:32:32', '2023-08-01 09:32:32'),
(17, 'View Coupon', 'web', '2023-08-01 10:14:25', '2023-08-01 10:14:25'),
(18, 'Add Coupon', 'web', '2023-08-01 10:14:36', '2023-08-01 10:14:36'),
(19, 'Edit Coupon', 'web', '2023-08-01 10:14:47', '2023-08-01 10:14:47'),
(20, 'Delete Coupon', 'web', '2023-08-01 10:15:00', '2023-08-01 10:15:00'),
(21, 'View User', 'web', '2023-08-02 07:08:33', '2023-08-02 07:08:33'),
(23, 'Edit User', 'web', '2023-08-02 07:08:53', '2023-08-02 07:08:53'),
(25, 'View Slider', 'web', '2023-08-03 06:15:00', '2023-08-03 06:15:00'),
(26, 'Add Slider', 'web', '2023-08-03 06:15:11', '2023-08-03 06:15:11'),
(27, 'Edit Slider', 'web', '2023-08-03 06:15:22', '2023-08-03 06:15:22'),
(28, 'Delete Slider', 'web', '2023-08-03 06:15:34', '2023-08-03 08:12:33'),
(29, 'Send Email', 'web', '2023-08-03 09:23:45', '2023-08-03 09:23:45'),
(30, 'Edit Setting', 'web', '2023-08-06 03:18:47', '2023-08-06 03:18:47'),
(31, 'View Gallery', 'web', '2023-08-06 05:30:09', '2023-08-06 05:30:09'),
(32, 'Add Gallery', 'web', '2023-08-06 05:30:20', '2023-08-06 05:30:20'),
(34, 'Delete Gallery', 'web', '2023-08-06 05:37:25', '2023-08-06 05:37:25'),
(35, 'View Messages', 'web', '2023-08-07 05:45:07', '2023-08-13 02:59:19'),
(40, 'View Facilite', 'web', '2023-08-08 03:11:27', '2023-08-08 03:11:27'),
(41, 'Add Facilite', 'web', '2023-08-08 03:11:42', '2023-08-08 03:11:42'),
(42, 'Edit Facilite', 'web', '2023-08-08 03:12:03', '2023-08-08 03:12:03'),
(43, 'Delete Facilite', 'web', '2023-08-08 03:12:30', '2023-08-08 03:12:30'),
(44, 'View SideSeeing', 'web', '2023-08-08 08:30:36', '2023-08-08 08:30:36'),
(45, 'Add SideSeeing', 'web', '2023-08-08 08:30:48', '2023-08-08 08:30:48'),
(46, 'Edit SideSeeing', 'web', '2023-08-08 08:31:02', '2023-08-08 08:31:02'),
(47, 'Delete SideSeeing', 'web', '2023-08-08 08:31:14', '2023-08-08 08:31:14'),
(49, 'View Subscriber', 'web', '2023-08-14 06:38:42', '2023-08-14 06:38:42'),
(50, 'View Newsletter', 'web', '2023-08-14 08:19:07', '2023-08-14 08:19:07'),
(51, 'Add Newsletter', 'web', '2023-08-14 08:19:19', '2023-08-14 08:19:19');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2023-07-31 10:19:00', '2023-07-31 10:19:00'),
(2, 'admin', 'web', '2023-07-31 10:32:58', '2023-07-31 10:32:58'),
(4, 'editor', 'web', '2023-08-13 06:45:05', '2023-08-13 06:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 4),
(11, 1),
(11, 2),
(11, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(15, 4),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(17, 4),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(19, 4),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(21, 4),
(23, 1),
(23, 2),
(23, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(27, 4),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(40, 1),
(40, 2),
(40, 4),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(42, 4),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(46, 4),
(47, 1),
(47, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_name` text NOT NULL,
  `logo` text NOT NULL,
  `footer_logo` text NOT NULL,
  `location` text NOT NULL,
  `points_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `logo`, `footer_logo`, `location`, `points_price`, `created_at`, `updated_at`) VALUES
(1, 'Bollaris', '1692011444.LOGO-04.png', '1691561099.LOGO-01.png', 'https://www.googlemap.com/lol', 25, '2023-08-06 04:05:49', '2023-08-14 08:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `footer_description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `footer_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', '<p><strong>نظام الحجوزات رقم واحد</strong></p>', '2023-08-06 08:03:22', '2023-08-06 05:12:02'),
(2, 1, 'en', '<p><strong>#1 Booking System</strong></p>', '2023-08-06 08:03:22', '2023-08-06 05:12:02'),
(3, 1, 'es', '<p>#1 Sistema de Reservas</p>', '2023-08-06 10:04:25', '2023-08-06 10:04:25'),
(4, 1, 'pt', '<p>#1 Sistema de Reservas</p>', '2023-08-06 10:04:25', '2023-08-06 10:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `side_seeings`
--

CREATE TABLE `side_seeings` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_photo` text NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `side_seeings`
--

INSERT INTO `side_seeings` (`id`, `main_photo`, `price`, `created_at`, `updated_at`) VALUES
(5, '1691498153.LOGO-01.png', 25, '2023-08-08 09:35:55', '2023-08-13 03:10:25'),
(6, '1691907283.blank.jpg', 884, '2023-08-13 03:14:43', '2023-08-13 03:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `side_seeing_photos`
--

CREATE TABLE `side_seeing_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `side_seeing_id` int(10) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `side_seeing_photos`
--

INSERT INTO `side_seeing_photos` (`id`, `side_seeing_id`, `photo`, `created_at`, `updated_at`) VALUES
(29, 5, '1691498143.social-media(1)1.png', '2023-08-08 09:35:55', '2023-08-08 09:35:55'),
(30, 5, '1691498144.Gamer_new@3x.png', '2023-08-08 09:35:55', '2023-08-08 09:35:55'),
(31, 5, '1691498149.success1.png', '2023-08-08 09:35:55', '2023-08-08 09:35:55'),
(32, 5, '1691498149.news1.png', '2023-08-08 09:35:55', '2023-08-08 09:35:55'),
(33, 5, '1691498149.news-reporter1.png', '2023-08-08 09:35:56', '2023-08-08 09:35:56'),
(36, 5, '1691498738.default.png', '2023-08-08 09:45:41', '2023-08-08 09:45:41'),
(37, 6, '1691907272.social-media(1)1.png', '2023-08-13 03:14:44', '2023-08-13 03:14:44'),
(38, 6, '1691907273.Gamer_new@3x.png', '2023-08-13 03:14:44', '2023-08-13 03:14:44'),
(39, 6, '1691907278.success1.png', '2023-08-13 03:14:44', '2023-08-13 03:14:44'),
(40, 6, '1691907278.news1.png', '2023-08-13 03:14:44', '2023-08-13 03:14:44'),
(41, 6, '1691907279.news-reporter1.png', '2023-08-13 03:14:44', '2023-08-13 03:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `side_seeing_translations`
--

CREATE TABLE `side_seeing_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `side_seeing_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `long_description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `side_seeing_translations`
--

INSERT INTO `side_seeing_translations` (`id`, `side_seeing_id`, `locale`, `title`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 5, 'en', 'Animi quasi magnam', 'Odit officia unde qu', 'In aute amet, offici.', '2023-08-08 09:35:55', '2023-08-08 09:38:45'),
(2, 5, 'es', 'Sit placeat volupt', 'Assumenda veniam pa', 'Fugiat, eveniet, quo.', '2023-08-08 09:35:55', '2023-08-08 09:38:45'),
(3, 5, 'pt', 'Facere deleniti et s', 'Optio debitis volup', 'Harum iste est accus.', '2023-08-08 09:35:55', '2023-08-08 09:38:45'),
(4, 6, 'en', 'Perspiciatis est ob g', 'Aspernatur labore pe g', 'Recusandae. Temporib. g', '2023-08-13 03:14:43', '2023-08-13 03:14:43'),
(5, 6, 'es', 'Magna necessitatibus g', 'Veniam deserunt qui g', 'Mollit et ea ut volu. g', '2023-08-13 03:14:43', '2023-08-13 03:14:43'),
(6, 6, 'pt', 'Voluptatem quasi pr g', 'Reprehenderit volup g', 'Velit ipsum cupidata. g', '2023-08-13 03:14:43', '2023-08-13 03:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` longtext NOT NULL,
  `type` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `media`, `type`, `created_at`, `updated_at`) VALUES
(7, '1691064127.pexels-pixabay-856787-1920x1080-30fps.mp4', 'video', '2023-08-03 08:58:27', '2023-08-03 09:02:07'),
(8, '1691063926.LOGO-01.png', 'image', '2023-08-03 08:58:46', '2023-08-03 08:58:46'),
(10, '1691064039.trophy(1)1.png', 'image', '2023-08-03 09:00:39', '2023-08-03 09:00:39'),
(11, '1691412179.LOGO-04.png', 'image', '2023-08-07 09:42:59', '2023-08-07 09:42:59'),
(12, '1691921826.social-media(1)1.png', 'image', '2023-08-13 07:17:06', '2023-08-13 07:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, 12, 'en', 'Laboriosam veritati', 'Qui qui sed consecte', '2023-08-13 07:17:06', '2023-08-13 07:17:06'),
(2, 12, 'es', 'Ab non enim veniam', 'Magna recusandae El', '2023-08-13 07:17:06', '2023-08-13 07:17:06'),
(3, 12, 'pt', 'Voluptatem aut fugit', 'Tempora quidem est r', '2023-08-13 07:17:06', '2023-08-13 07:17:06'),
(4, 10, 'en', NULL, NULL, '2023-08-13 07:26:16', '2023-08-13 07:26:16'),
(5, 10, 'es', NULL, NULL, '2023-08-13 07:26:16', '2023-08-13 07:26:16'),
(6, 10, 'pt', NULL, NULL, '2023-08-13 07:26:16', '2023-08-13 07:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(4, 'Facebook', 'https:/www.facebook.com', '2023-08-01 10:05:54', '2023-08-01 10:06:03'),
(5, 'Twitter', 'http://www.twitter.com', '2023-08-01 10:06:22', '2023-08-01 10:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@mail.com', '2023-08-14 06:31:40', '2023-08-14 06:31:40'),
(2, 'user1@mail.com', '2023-08-14 06:34:54', '2023-08-14 06:34:54'),
(3, 'user2@mail.com', '2023-08-14 06:35:02', '2023-08-14 06:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_person_name` varchar(200) DEFAULT NULL,
  `contact_person_phone` varchar(200) DEFAULT NULL,
  `company_paper_attachment` varchar(200) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `reset_code` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact_person_name`, `contact_person_phone`, `company_paper_attachment`, `email_verified_at`, `password`, `code`, `reset_code`, `remember_token`, `points`, `status`, `created_at`, `updated_at`) VALUES
(4, 'M M Osman', 'm.m.osman@gmail.com', NULL, NULL, NULL, '2023-07-30 21:00:00', '$2y$10$sM2oI7KeHWDClkui9y/OR.cO.vijPBeaWEEhmBmBnJzIYlpB9Licq', 116637, 811139, NULL, 0, '2', '2023-07-31 04:21:22', '2023-08-03 09:19:17'),
(5, 'M Mohsen', 'm.mohsen@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$bVSjYLiFF1josrlkJr1NXO71N2/OmmSxbQwMiEdetSycz74y2/FqW', 777287, 280328, NULL, 0, '1', '2023-07-31 10:03:47', '2023-10-09 07:26:10'),
(6, 'ALI', 'm.ALI@gmail.com', 'test', '01550115518', 'http://127.0.0.1:8000/public/uploads/1696847129_TBOH Hotel API Specifications (V1.6).pdf', NULL, '$2y$10$xzAshX4QbUB2IEh0jyJLJuwptT5ZNro3XSjIGLDXdd71YYW2xu/4q', NULL, NULL, NULL, 0, '1', '2023-10-09 07:25:29', '2023-10-09 07:25:29'),
(7, 'ALIl', 'm.ALlI@gmail.com', 'test', '01550115518', 'http://127.0.0.1:8000/public/uploads/1697011730_Bollaris.pdf', NULL, '$2y$10$AiPBEE0N6gfGagezBOvy3OhdjNzZA2K/eFf23hdX0G0OgS6Xby3bK', NULL, NULL, NULL, 0, '1', '2023-10-11 05:08:50', '2023-10-11 05:08:50'),
(8, 'mahmod', 'm.mahmod@gmail.com', 'mahmod', '01550115518', 'http://127.0.0.1:8000/public/uploads/1697017248_Bollaris.pdf', NULL, '$2y$10$4lClf/KmJR95gxmEF9zuTuNueyrJoQVawH8HP2TbmDS/uew7hwviK', NULL, NULL, NULL, 0, '1', '2023-10-11 06:40:48', '2023-10-11 06:40:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_us_foreign` (`about_us_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_name_unique` (`name`);

--
-- Indexes for table `facilites`
--
ALTER TABLE `facilites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilite_photos`
--
ALTER TABLE `facilite_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilite_foreign` (`facilite_id`);

--
-- Indexes for table `facilite_translations`
--
ALTER TABLE `facilite_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilite_foreign_translation` (`facilite_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_foreign` (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_foreign` (`setting_id`);

--
-- Indexes for table `side_seeings`
--
ALTER TABLE `side_seeings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `side_seeing_photos`
--
ALTER TABLE `side_seeing_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `side_seeing_foreign` (`side_seeing_id`);

--
-- Indexes for table `side_seeing_translations`
--
ALTER TABLE `side_seeing_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `side_seeing_foreign_translation` (`side_seeing_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_foreign` (`slider_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `facilites`
--
ALTER TABLE `facilites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facilite_photos`
--
ALTER TABLE `facilite_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `facilite_translations`
--
ALTER TABLE `facilite_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `side_seeings`
--
ALTER TABLE `side_seeings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `side_seeing_photos`
--
ALTER TABLE `side_seeing_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `side_seeing_translations`
--
ALTER TABLE `side_seeing_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  ADD CONSTRAINT `about_us_foreign` FOREIGN KEY (`about_us_id`) REFERENCES `about_us` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `facilite_photos`
--
ALTER TABLE `facilite_photos`
  ADD CONSTRAINT `facilite_foreign` FOREIGN KEY (`facilite_id`) REFERENCES `facilites` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `facilite_translations`
--
ALTER TABLE `facilite_translations`
  ADD CONSTRAINT `facilite_foreign_translation` FOREIGN KEY (`facilite_id`) REFERENCES `facilites` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `side_seeing_photos`
--
ALTER TABLE `side_seeing_photos`
  ADD CONSTRAINT `side_seeing_foreign` FOREIGN KEY (`side_seeing_id`) REFERENCES `side_seeings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `side_seeing_translations`
--
ALTER TABLE `side_seeing_translations`
  ADD CONSTRAINT `side_seeing_foreign_translation` FOREIGN KEY (`side_seeing_id`) REFERENCES `side_seeings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
