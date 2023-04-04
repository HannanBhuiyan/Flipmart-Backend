-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 08:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_bios`
--

CREATE TABLE `admin_bios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_bios`
--

INSERT INTO `admin_bios` (`id`, `auth_id`, `company_name`, `bio`, `created_at`, `updated_at`) VALUES
(1, 9, 'FlipMart', '<p>Sed sed eros sit amet dolor convallis bibendum vel nec nunc. Vestibulum a finibus felis. Nunc ligula libero, malesuada id mauris luctus, tempus blandit justo. Nam sollicitudin pharetra consectetur. Vivamus feugiat magna sed diam finibus ultrices. Duis eget eros enim. Duis fringilla odio non mi scelerisque sollicitudin. Nulla velit enim, condimentum sed sollicitudin at, pulvinar eu justo. Nunc iaculis aliquam risus, ut egestas nibh.</p>', '2023-03-21 22:40:02', '2023-03-23 22:58:36'),
(2, 13, '2nd Admin', '<p>Aenean nec metus vel est porta elementum. Pellentesque aliquet dolor sed vestibulum consequat. Nulla pellentesque mauris ex, quis interdum lacus hendrerit nec. Quisque ut arcu efficitur, finibus neque sed, fermentum diam. Quisque malesuada, velit quis placerat lacinia, sem urna commodo felis, nec vestibulum sapien enim nec odio. Quisque quam nunc, ultricies non laoreet et, congue vitae risus. Morbi convallis, urna quis condimentum porta, augue erat pulvinar sapien, eget laoreet lorem nunc vitae leo. Aliquam dolor est, fringilla vel sapien in, tristique finibus enim. Praesent lobortis consequat erat, vel tempus libero. Praesent vehicula, neque sed semper sagittis, velit sem pulvinar enim, at scelerisque est nibh ac sem. Morbi suscipit nisi sit amet nulla luctus dapibus. Proin pharetra neque vel leo pretium ultricies. In dictum erat quis diam imperdiet posuere. Vestibulum a rutrum nisi. Nulla id dignissim nibh. Nullam sagittis dignissim felis id vestibulum.</p>', '2023-03-23 22:52:37', '2023-03-23 22:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_social_links`
--

CREATE TABLE `admin_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_link` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_social_links`
--

INSERT INTO `admin_social_links` (`id`, `social_link`, `name`, `class_name`, `created_at`, `updated_at`) VALUES
(2, 'https://twitter.com/', 'Twitter', 'fa-brands fa-twitter', '2023-03-16 01:28:45', '2023-03-16 01:28:45'),
(3, 'https://www.linkedin.com/', 'LinkedIn', 'fa-brands fa-linkedin', '2023-03-16 01:31:03', '2023-03-16 01:31:03'),
(4, 'https://www.youtube.com/', 'Youtube', 'fa-brands fa-youtube', '2023-03-16 01:32:03', '2023-03-16 01:32:03'),
(5, 'https://www.google.com/', 'Google Plus', 'fa-brands fa-google-plus-g', '2023-03-16 01:34:13', '2023-03-16 01:34:13'),
(7, 'https://www.pinterest.com/', 'Pinterest', 'fa-brands fa-pinterest', '2023-03-20 03:22:12', '2023-03-20 03:22:12'),
(8, 'https://www.facebook.com/', 'Facebook', 'fa-brands fa-facebook', '2023-03-22 23:59:56', '2023-03-22 23:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogcomment_replies`
--

CREATE TABLE `blogcomment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcomment_id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcomment_replies`
--

INSERT INTO `blogcomment_replies` (`id`, `blogcomment_id`, `auth_id`, `description`, `created_at`, `updated_at`) VALUES
(4, 15, 9, 'checked again', '2023-03-25 03:37:44', '2023-03-25 03:37:44'),
(5, 15, 9, 'hi', '2023-03-25 03:45:14', '2023-03-25 03:45:14'),
(6, 15, 9, 'dfvbfdmfnbfjkbnfdlkgfdb nghklgfkn/fghnilgovnmlkjlm fjlrm vrog a\'x,cm fjrkg cjrlv bnmfg,hirtog', '2023-03-25 03:58:59', '2023-03-25 03:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail_image` varchar(255) NOT NULL,
  `feature_image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `auth_id`, `title`, `slug`, `thumbnail_image`, `feature_image`, `description`, `created_at`, `updated_at`) VALUES
(3, 9, 'velit eu pharetra nunc Praesent luctus leo vitae suscipit', 'velit-eu-pharetra-nunc-praesent-luctus-leo-vitae-suscipit-', 'backend/images/blog/1761132699066128.jpg', 'backend/images/blog/1761132699648964.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper mauris eget nisi tincidunt egestas. Nunc lacinia lacus id leo lacinia, vel ultricies magna accumsan. Cras varius lectus in nulla tempor, in feugiat leo euismod. Sed tincidunt pulvinar libero, id iaculis ligula tincidunt eu. Nunc tincidunt, ex eget auctor ullamcorper, dui nunc condimentum turpis, eget facilisis ligula enim venenatis neque. Aliquam eget commodo nisi. Nunc ac fringilla arcu. Nullam in odio vel augue ultrices semper. Integer molestie odio lacinia, egestas velit eu, pharetra nunc. Praesent luctus leo vitae suscipit dapibus. In ultrices lobortis metus, nec commodo ex rhoncus a. Curabitur et mi ut erat porttitor pellentesque ac nec mauris. Aliquam vestibulum molestie orci, sit amet sodales dolor vehicula at.</p>', '2023-03-21 06:15:13', '2023-03-22 22:50:23'),
(4, 9, 'Aliquam vestibulum molestie orci', 'aliquam-vestibulum-molestie-orci', 'backend/images/blog/1760979537638253.jpg', 'backend/images/blog/1760979537763514.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper mauris eget nisi tincidunt egestas. Nunc lacinia lacus id leo lacinia, vel ultricies magna accumsan. Cras varius lectus in nulla tempor, in feugiat leo euismod. Sed tincidunt pulvinar libero, id iaculis ligula tincidunt eu. Nunc tincidunt, ex eget auctor ullamcorper, dui nunc condimentum turpis, eget facilisis ligula enim venenatis neque. Aliquam eget commodo nisi. Nunc ac fringilla arcu. Nullam in odio vel augue ultrices semper. Integer molestie odio lacinia, egestas velit eu, pharetra nunc. Praesent luctus leo vitae suscipit dapibus. In ultrices lobortis metus, nec commodo ex rhoncus a. Curabitur et mi ut erat porttitor pellentesque ac nec mauris. Aliquam vestibulum molestie orci, sit amet sodales dolor vehicula at.</p>', '2023-03-21 06:15:57', '2023-03-21 06:15:57'),
(5, 9, 'volutpat ac lorem. Donec vel commodo ligula', 'volutpat-ac-lorem.-donec-vel-commodo-ligula', 'backend/images/blog/1761312195019862.jpg', 'backend/images/blog/1760979889877418.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare dignissim ultricies. Aenean ex nulla, blandit vel luctus eget, volutpat nec odio. Fusce luctus massa quis mauris vulputate, ac pharetra purus dictum. Nunc nec sem et felis vulputate consectetur et at orci. Donec vulputate mi velit, id eleifend magna egestas eu. Etiam efficitur nibh ut nisi scelerisque, a feugiat justo porta. Sed tempor quam eu ultrices vehicula. Quisque eu est sollicitudin, imperdiet magna ac, pulvinar nibh.Pellentesque convallis, est sit amet suscipit hendrerit, enim lectus fringilla dui, ac egestas dolor metus quis mi. Nunc posuere dui eget aliquet vulputate. Vestibulum facilisis lacus risus, at vulputate sapien scelerisque ut. Phasellus facilisis mi sed ipsum laoreet mattis. Nullam auctor dolor ut augue commodo porta. Proin ac velit semper, vulputate risus eget, maximus urna. Vivamus tortor turpis, porttitor id sodales quis, volutpat ac lorem. Donec vel commodo ligula. Fusce ut ante quis risus feugiat gravida. Nullam consectetur nisl non dignissim gravida. Maecenas interdum turpis orci, ut volutpat magna tempor quis. Curabitur elit ante, males</p>', '2023-03-21 06:21:33', '2023-03-24 22:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `auth_id`, `blog_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(13, 13, 4, '23 march blog comment', 'approved', '2023-03-22 22:33:52', '2023-03-22 23:45:48'),
(14, 13, 5, 'hello', 'approved', '2023-03-25 03:21:35', '2023-03-27 00:49:33'),
(15, 13, 5, 'check', 'approved', '2023-03-25 03:27:10', '2023-03-25 03:58:46'),
(17, 13, 5, 'again check', 'approved', '2023-03-27 00:49:17', '2023-03-27 23:53:26'),
(18, 13, 4, 'comment 1', 'approved', '2023-03-27 23:52:27', '2023-03-27 23:53:24'),
(19, 13, 4, 'comment 2', 'approved', '2023-03-27 23:52:41', '2023-03-27 23:53:21'),
(20, 13, 4, 'comment 2', 'approved', '2023-03-27 23:52:46', '2023-03-27 23:53:19'),
(21, 13, 4, 'comment 4', 'approved', '2023-03-27 23:52:53', '2023-03-27 23:53:17'),
(22, 13, 4, 'comment 5', 'pending', '2023-03-27 23:52:59', '2023-03-28 21:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_bn` varchar(255) NOT NULL,
  `brand_name_en` varchar(255) NOT NULL,
  `brand_slug_bn` varchar(255) NOT NULL,
  `brand_slug_en` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_bn`, `brand_name_en`, `brand_slug_bn`, `brand_slug_en`, `brand_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'স্যামসাং', 'Samsung', 'স্যামসাং', 'samsung', 'backend/images/brand/1758982269106477.png', '2023-03-28 04:09:42', '2023-02-27 05:10:13', '2023-03-28 04:09:42'),
(4, 'নিউট্রিজিনা', 'NEUTROGENA', 'নিউট্রিজিনা', 'neutrogena', 'backend/images/brand/1760708017606959.png', NULL, '2023-03-18 06:20:15', NULL),
(6, 'Gucci', 'Gucci', 'Gucci', 'gucci', 'backend/images/brand/1760708943298379.png', NULL, '2023-03-18 06:34:57', NULL),
(7, 'Chanels', 'Chanel', 'Chanels', 'chanel', 'backend/images/brand/1760860500045559.png', NULL, '2023-03-18 06:35:39', '2023-03-19 22:43:53'),
(8, 'louis vuitton', 'Louis Vuitton', 'louis-vuitton', 'louis-vuitton', 'backend/images/brand/1760860724288233.png', NULL, '2023-03-19 22:44:45', '2023-03-19 22:47:27'),
(9, 'Chanel', 'Gucci', 'Chanel', 'gucci', 'backend/images/brand/1761603797943189.jfif', '2023-03-28 03:48:10', '2023-03-28 03:38:01', '2023-03-28 03:48:10'),
(10, 'Gucci', 'Gucci', 'Gucci', 'gucci', 'backend/images/brand/1761604430575662.png', '2023-03-28 04:00:40', '2023-03-28 03:48:21', '2023-03-28 04:00:40'),
(11, 'Gucci1', 'Gucci1', 'Gucci1', 'gucci1', 'backend/images/brand/1761605223788236.png', '2023-03-28 04:04:36', '2023-03-28 04:00:49', '2023-03-28 04:04:36'),
(12, 'Gucci', 'Gucci', 'Gucci', 'gucci', 'backend/images/brand/1761605544057254.png', '2023-03-28 04:06:14', '2023-03-28 04:06:03', '2023-03-28 04:06:14'),
(13, 'স্যামসাং', 'Samsung', 'স্যামসাং', 'samsung', 'backend/images/brand/1761605959934012.png', NULL, '2023-03-28 04:12:40', NULL),
(14, 'Gucci', 'Gucci', 'Gucci', 'gucci', 'backend/images/brand/1761605968424051.png', '2023-03-28 04:13:00', '2023-03-28 04:12:47', '2023-03-28 04:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_bn` varchar(255) NOT NULL,
  `category_name_en` varchar(255) NOT NULL,
  `category_slug_bn` varchar(255) NOT NULL,
  `category_slug_en` varchar(255) NOT NULL,
  `category_icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_bn`, `category_name_en`, `category_slug_bn`, `category_slug_en`, `category_icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 'ইলেক্ট্রনিক', 'Electronic', 'ইলেক্ট্রনিক', 'electronic', 'backend/images/category/1758711914433767.png', NULL, '2023-02-24 04:47:08', '2023-02-24 05:33:02'),
(9, 'মহিলাদের ফ্যাশন', 'Women\'s Fashion', 'মহিলাদের-ফ্যাশন', 'women\'s-fashion', 'backend/images/category/1758716469334648.png', NULL, '2023-02-24 05:38:53', '2023-02-24 06:45:26'),
(10, 'ক্রীড়া ও বহিরাঙ্গন', 'Sports & Outdoors', 'ক্রীড়া-ও-বহিরাঙ্গন', 'sports-&-outdoors', 'backend/images/category/1758712338321298.png', NULL, '2023-02-24 05:39:47', '2023-02-24 06:27:05'),
(11, 'শিশুদের জিনিসপত্র', 'Babies Accessories', 'শিশুদের-জিনিসপত্র', 'babies-accessories', 'backend/images/category/1758712516407655.png', NULL, '2023-02-24 05:42:36', '2023-02-24 05:42:36'),
(12, 'পুরুষদের ফ্যাশন', 'Men\'s Fashion', 'পুরুষদের-ফ্যাশন', 'men\'s-fashion', 'backend/images/category/1758716409805350.png', NULL, '2023-02-24 06:44:29', '2023-02-24 06:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_single_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_single_id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(12, 2, 'User', '23 march', 'approved', '2023-03-22 22:11:35', '2023-03-22 22:11:47'),
(13, 2, 'User', 'product comment', 'approved', '2023-03-22 23:13:28', '2023-03-22 23:13:40'),
(15, 2, 'User', '2nd comment', 'approved', '2023-03-22 23:14:42', '2023-03-25 04:24:57'),
(16, 5, 'User', 'Hello', 'approved', '2023-03-25 04:21:56', '2023-03-25 04:22:17'),
(17, 5, 'User', 'hello', 'pending', '2023-03-25 04:40:07', '2023-03-27 02:44:53'),
(18, 11, 'User', 'toy Comment', 'pending', '2023-03-26 21:14:07', '2023-03-27 02:44:48'),
(19, 5, 'User', 'hi', 'approved', '2023-03-26 21:38:44', '2023-03-27 02:50:05'),
(20, 15, 'User', 'check image', 'approved', '2023-03-27 00:34:48', '2023-03-27 02:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `reply_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 18, 'Admin', 'hello', '2023-03-26 22:18:58', '2023-03-26 22:18:58'),
(7, 20, 'Admin', 'hello', '2023-03-27 02:46:53', '2023-03-27 02:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'active is 1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SAVE 60%', 60, '2023-03-25', 1, '2023-02-27 22:08:33', '2023-03-22 01:09:29'),
(2, 'SAVE 30%', 30, '2023-04-08', 1, '2023-03-22 00:10:15', '2023-03-22 04:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `discount_banners`
--

CREATE TABLE `discount_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_left` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_banners`
--

INSERT INTO `discount_banners` (`id`, `image_left`, `status`, `created_at`, `updated_at`) VALUES
(1, 'backend/images/discountbanner/1761777903225015.png', 'approved', '2023-03-30 01:44:10', '2023-03-30 02:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `discount_banner_twos`
--

CREATE TABLE `discount_banner_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_banner_twos`
--

INSERT INTO `discount_banner_twos` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'backend/images/discountbanner/1761852635287799.png', 'approved', '2023-03-30 21:33:27', '2023-03-30 21:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'active is = 1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `district_name`, `status`, `created_at`, `updated_at`) VALUES
(13, 5, 'Rangamati', 1, '2023-03-18 00:24:42', '2023-03-18 00:24:42'),
(14, 5, 'Chittagong', 1, '2023-03-18 00:24:48', '2023-03-18 00:24:48'),
(15, 1, 'Gazipur', 1, '2023-03-18 00:24:54', '2023-03-22 06:23:11'),
(16, 1, 'Madaripur', 1, '2023-03-18 00:25:01', '2023-03-22 06:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'active is  1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2023-02-27 22:52:17', '2023-03-22 04:59:58'),
(5, 'Chattogram', 0, '2023-02-27 22:54:00', '2023-03-22 05:21:37');

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
(1, '2014_10_12_000000_create_users_table', 11),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_30_044920_create_roles_table', 1),
(5, '2021_07_04_162724_create_brands_table', 1),
(6, '2021_07_08_160946_create_categories_table', 1),
(7, '2021_07_10_100441_create_sub_categories_table', 1),
(8, '2021_07_10_152655_create_sub_sub_categories_table', 1),
(9, '2021_07_14_175959_create_products_table', 1),
(10, '2021_07_16_081519_create_multi_images_table', 1),
(11, '2021_07_18_091059_create_sliders_table', 1),
(12, '2021_08_09_144833_create_wishlists_table', 1),
(13, '2021_08_17_063714_create_coupons_table', 1),
(14, '2021_08_17_141812_create_divisions_table', 1),
(15, '2021_08_17_200513_create_districts_table', 1),
(16, '2021_08_18_092846_create_states_table', 1),
(17, '2021_08_24_101832_create_shippings_table', 1),
(21, '2021_10_04_141054_create_comments_table', 14),
(22, '2021_10_05_070035_create_comment_replies_table', 1),
(24, '2021_08_24_182702_create_orders_table', 12),
(25, '2021_08_24_182724_create_order_items_table', 2),
(31, '2023_03_03_052237_create_blogs_table', 4),
(32, '2023_03_03_052621_create_blog_comments_table', 4),
(34, '2023_03_11_042550_create_blogcomment_replies_table', 5),
(42, '2023_03_11_124030_create_admin_social_links_table', 8),
(43, '2023_03_14_064510_create_admin_bios_table', 9),
(44, '2021_09_22_141340_create_review_models_table', 13),
(46, '2023_03_29_085954_create_page_banners_table', 15),
(47, '2023_03_02_094934_create_discount_banners_table', 16),
(48, '2023_03_29_085730_create_discount_banner_twos_table', 17),
(53, '2023_03_31_044509_create_visitor_checks_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `product_id`, `photo_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'backend/images/product/multiImage/1758803354166805.jpg', NULL, '2023-02-25 05:46:26', '2023-03-23 03:33:12'),
(2, '1', 'backend/images/product/multiImage/1758803354380772.jpg', NULL, '2023-02-25 05:46:26', '2023-03-23 03:33:12'),
(3, '1', 'backend/images/product/multiImage/1758803354580820.jpg', NULL, '2023-02-25 05:46:27', '2023-03-23 03:33:12'),
(4, '2', 'backend/images/product/multiImage/1758960483231718.png', NULL, '2023-02-26 23:23:56', '2023-03-23 04:25:27'),
(5, '2', 'backend/images/product/multiImage/1758960483537049.jpg', NULL, '2023-02-26 23:23:56', '2023-03-23 04:25:27'),
(6, '3', 'backend/images/product/multiImage/1761225912741548.jpg', NULL, '2023-03-23 23:31:58', '2023-03-24 00:27:24'),
(7, '3', 'backend/images/product/multiImage/1758966626956833.jpg', NULL, '2023-02-27 01:01:35', '2023-03-24 00:27:24'),
(8, '3', 'backend/images/product/multiImage/1758966627232870.jpg', NULL, '2023-02-27 01:01:35', '2023-03-24 00:27:24'),
(11, '5', 'backend/images/product/multiImage/1758969707903052.jpg', NULL, '2023-02-27 01:50:34', '2023-03-23 03:33:12'),
(12, '5', 'backend/images/product/multiImage/1758969708198450.jpg', NULL, '2023-02-27 01:50:34', '2023-03-23 03:33:12'),
(13, '6', 'backend/images/product/multiImage/1758970562573137.jpeg', NULL, '2023-02-27 02:04:08', '2023-03-23 03:33:12'),
(14, '6', 'backend/images/product/multiImage/1758970562782842.jpg', NULL, '2023-02-27 02:04:09', '2023-03-23 03:33:12'),
(18, '8', 'backend/images/product/multiImage/1759066330434176.jpg', NULL, '2023-02-28 03:26:20', '2023-03-23 03:33:12'),
(19, '8', 'backend/images/product/multiImage/1759066330667458.jpg', NULL, '2023-02-28 03:26:20', '2023-03-23 03:33:12'),
(22, '10', 'backend/images/product/multiImage/1760514576942981.jpg', NULL, '2023-03-16 03:05:35', '2023-03-23 03:33:12'),
(23, '11', 'backend/images/product/multiImage/1761241281176007.jpg', NULL, '2023-03-24 03:36:15', NULL),
(24, '11', 'backend/images/product/multiImage/1761241281424532.jpg', NULL, '2023-03-24 03:36:15', NULL),
(25, '11', 'backend/images/product/multiImage/1761241281616131.jpg', NULL, '2023-03-24 03:36:15', NULL),
(26, '12', 'backend/images/product/multiImage/1761496597464656.jpeg', NULL, '2023-03-26 23:14:23', NULL),
(27, '12', 'backend/images/product/multiImage/1761496597639959.jpg', NULL, '2023-03-26 23:14:23', NULL),
(28, '13', 'backend/images/product/multiImage/1761497028787857.jpg', NULL, '2023-03-26 23:21:15', NULL),
(29, '13', 'backend/images/product/multiImage/1761497029069925.jpg', NULL, '2023-03-26 23:21:15', NULL),
(30, '14', 'backend/images/product/multiImage/1761498371701357.jpg', NULL, '2023-03-26 23:42:35', NULL),
(31, '14', 'backend/images/product/multiImage/1761498371883070.webp', NULL, '2023-03-26 23:42:36', NULL),
(32, '15', 'backend/images/product/thumbnail/1761501699486714.webp', NULL, '2023-03-27 00:35:29', '2023-03-27 00:35:29'),
(33, '15', 'backend/images/product/multiImage/1761499092103612.jpg', NULL, '2023-03-26 23:54:02', NULL),
(34, '15', 'backend/images/product/multiImage/1761499092403315.jpg', NULL, '2023-03-26 23:54:02', NULL),
(38, '17', 'backend/images/product/thumbnail/1761500973957931.jpg', '2023-03-27 00:25:53', '2023-03-27 00:23:57', '2023-03-27 00:25:53'),
(39, '17', 'backend/images/product/thumbnail/1761500974032865.jpg', '2023-03-27 00:25:53', '2023-03-27 00:23:57', '2023-03-27 00:25:53'),
(40, '17', 'backend/images/product/thumbnail/1761500974099289.jpg', '2023-03-27 00:25:53', '2023-03-27 00:23:57', '2023-03-27 00:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `postCode` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `picked_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `postCode`, `address`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(6, 13, 1, 15, 11, 'User', 'user@gmail.com', '017989887766', 1200, 'Road:12 House:12 gazipur dhaka', NULL, 'SSL Payment', '641af66c604ec', 'BDT', 550.00, NULL, 'SPM84771477', '22 March 2023', 'March', '2022', NULL, NULL, NULL, NULL, NULL, '22 March 2023', NULL, NULL, 'Cancel', '2023-03-22 06:37:00', '2023-03-22 06:55:00'),
(7, 13, 1, 15, 11, 'User', 'user@gmail.com', '017989887766', 1200, 'Road:12 House:12 gazipur dhaka', NULL, 'SSL Payment', '641af66cb547e', 'BDT', 550.00, NULL, 'SPM66745331', '22 March 2023', 'March', '2023', '22 March 2023', '22 March 2023', '23 March 2023', '23 March 2023', '23 March 2023', NULL, NULL, NULL, 'Delivered', '2023-03-22 06:37:00', '2023-03-23 06:14:13'),
(8, 13, 1, 15, 11, 'User', 'user@gmail.com', '01788888888', 1200, 'House:23, Road:12', NULL, 'SSL Payment', '642287cf6561a', 'BDT', 500.00, NULL, 'SPM31285625', '28 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2023-03-28 00:23:11', NULL),
(9, 13, 1, 15, 11, 'User', 'user@gmail.com', '01788888888', 1200, 'House:23, Road:12', NULL, 'SSL Payment', '642287cfcfbdb', 'BDT', 500.00, NULL, 'SPM45927897', '28 March 2023', 'March', '2020', '30 March 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Confirm', '2023-03-28 00:23:11', '2023-03-29 21:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(9, 6, 2, NULL, '150ml', '1', 550.00, '2023-03-22 06:37:00', NULL),
(10, 7, 2, NULL, '150ml', '1', 550.00, '2023-03-22 06:37:00', NULL),
(11, 8, 11, NULL, NULL, '1', 500.00, '2023-03-28 00:23:11', NULL),
(12, 9, 11, NULL, NULL, '1', 500.00, '2023-03-28 00:23:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_banners`
--

CREATE TABLE `page_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_banners`
--

INSERT INTO `page_banners` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'backend/images/discountbanner/1761854876295934.jpg', 'approved', '2023-03-30 22:09:04', '2023-03-30 22:09:16');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `product_name_en` varchar(255) NOT NULL,
  `product_name_bn` varchar(255) NOT NULL,
  `product_slug_en` varchar(255) NOT NULL,
  `product_slug_bn` varchar(255) NOT NULL,
  `product_tags_en` varchar(255) NOT NULL,
  `product_tags_bn` varchar(255) NOT NULL,
  `product_title_en` varchar(255) NOT NULL,
  `product_title_bn` varchar(255) NOT NULL,
  `product_desc_en` text NOT NULL,
  `product_desc_bn` text NOT NULL,
  `product_size_en` varchar(255) DEFAULT NULL,
  `product_size_bn` varchar(255) DEFAULT NULL,
  `product_color_en` varchar(255) DEFAULT NULL,
  `product_color_bn` varchar(255) DEFAULT NULL,
  `product_code` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `product_thumbnail` varchar(255) NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `spacial_offer` int(11) DEFAULT NULL,
  `spacial_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_bn`, `product_slug_en`, `product_slug_bn`, `product_tags_en`, `product_tags_bn`, `product_title_en`, `product_title_bn`, `product_desc_en`, `product_desc_bn`, `product_size_en`, `product_size_bn`, `product_color_en`, `product_color_bn`, `product_code`, `product_qty`, `selling_price`, `discount_price`, `product_thumbnail`, `hot_deals`, `featured`, `spacial_offer`, `spacial_deals`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 11, 4, 18, 'Aveeno Baby Moisturizing Lotion, 150ml', 'Aveeno বেবি ময়েশ্চারাইজিং লোশন, 150ml', 'aveeno-baby-moisturizing-lotion-150ml', 'Aveeno-বেবি-ময়েশ্চারাইজিং-লোশন-150ml', 'baby', 'বেবি', 'Aveeno Baby Moisturizing Lotion', 'Aveeno-বেবি-ময়েশ্চারাইজিং-লোশন', '<p>Product details of Aveeno Baby Moisturizing Lotion, 150ml Product Type: Baby Lotion Capacity: 150 ml Parabens Free Leaves skin feeling moisturised 24 hours Suitable for body and face With a soft fragrance Paediatrician tested Made In France</p>', '<p>Product details of Aveeno বেবি ময়েশ্চারাইজিং লোশন, 150ml Product Type: Baby Lotion Capacity: 150 ml Parabens Free Leaves skin feeling moisturised 24 hours Suitable for body and face With a soft fragrance Paediatrician tested Made In France</p>', '150ml', '১৫০ এম এল', NULL, NULL, 5890, 300, 650, 550, 'backend/images/product/thumbnail/1758960483018567.jpg', 1, NULL, NULL, NULL, 1, NULL, '2023-03-29 01:22:06', '2023-03-29 01:22:06'),
(3, 11, 4, 18, 'Aveeno Baby Daily Care 2-in-1  300ml, Made in UK', 'Aveeno বেবি ডেইলি কেয়ার 2-ইন-1 শ্যাম্পু এবং কন্ডিশনার 300ml, যুক্তরাজ্যে তৈরি', 'aveeno-baby-daily-care-2-in-1--300ml-made-in-uk', 'Aveeno-বেবি-ডেইলি-কেয়ার-2-ইন-1-শ্যাম্পু-এবং-কন্ডিশনার-300ml-যুক্তরাজ্যে-তৈরি', 'baby', 'বেবি', 'Aveeno Baby Daily Care 2-in-1 Shampoo & Conditioner', 'Aveeno-বেবি-ডেইলি-কেয়ার-2-ইন-1-শ্যাম্পু-এবং-কন্ডিশনার', '<p><strong>Aveeno Baby Daily Care 2-in-1 Shampoo &amp; Conditioner 300ml, Made in UK</strong></p>\r\n\r\n<ul>\r\n	<li>Scent Natural Oat Extract</li>\r\n	<li>Brand Aveeno Baby</li>\r\n	<li>Product Gently cleanses and nourishes</li>\r\n	<li>Hair type All</li>\r\n	<li>Format Lotion</li>\r\n	<li>AVEENO Baby Daily Care 2-in-1 Shampoo and Conditioner gently cleanses and nourishes baby&#39;s hair for easy combing</li>\r\n	<li>for baby&#39;s delicate skin. pH-balanced and tear-free</li>\r\n	<li>free from sulphates, soap and dyes. Paediatrician and Dermatologist tested</li>\r\n	<li>Made in UK</li>\r\n</ul>', '<p>Aveeno বেবি ডেইলি কেয়ার 2-ইন-1 শ্যাম্পু এবং কন্ডিশনার 300ml, যুক্তরাজ্যে তৈরি</p>\r\n\r\n<ul>\r\n	<li>Scent Natural Oat Extract</li>\r\n	<li>Brand Aveeno Baby</li>\r\n	<li>Product Gently cleanses and nourishes</li>\r\n	<li>Hair type All</li>\r\n	<li>Format Lotion</li>\r\n	<li>AVEENO Baby Daily Care 2-in-1 Shampoo and Conditioner gently cleanses and nourishes baby&#39;s hair for easy combing</li>\r\n	<li>for baby&#39;s delicate skin. pH-balanced and tear-free</li>\r\n	<li>free from sulphates, soap and dyes. Paediatrician and Dermatologist tested</li>\r\n	<li>Made in UK</li>\r\n</ul>', '300ml', '৩০০ এম এল', NULL, NULL, 58900, 400, 1600, 1299, 'backend/images/product/thumbnail/1758966626330089.jpg', 1, 1, 1, NULL, 1, NULL, '2023-03-29 02:31:51', '2023-03-29 02:31:51'),
(5, 7, 8, 10, 'OPPO A95 8GB RAM 128GB ROM - 5000 mAh Battery', 'Oppo a95 8gb ram 128gb rom-5000 mah ব্যাটারি', 'oppo-a95-8gb-ram-128gb-rom---5000-mah-battery', 'Oppo-a95-8gb-ram-128gb-rom-5000-mah-ব্যাটারি', 'OPPO', 'Oppo', 'OPPO A95 8GB RAM 128GB ROM - 5000 mAh Battery', 'Oppo a95 8gb ram 128gb rom-5000 mah ব্যাটারি', '<h2>OPPO A95 8GB RAM 128GB ROM - 5000 mAh Battery</h2>\r\n\r\n<ul>\r\n	<li>NO RETURN applicable if the seal is broken</li>\r\n	<li>Dimensions: 160.3 x 73.8 x 8 mm (6.31 x 2.91 x 0.31 in)</li>\r\n	<li>Weight: 175 g (6.17 oz)</li>\r\n	<li>SIM: Dual SIM (Nano-SIM, dual stand-by)</li>\r\n	<li>Display Type: AMOLED, 430 nits (typ), 800 nits (peak)</li>\r\n	<li>Size: 6.43 inches</li>\r\n	<li>OS: Android 11, ColorOS 11.1</li>\r\n	<li>Chipset: Qualcomm SM6115 Snapdragon 662 (11 nm)</li>\r\n	<li>CPU: Octa-core</li>\r\n	<li>GPU: Adreno 618</li>\r\n	<li>Memory Card slot: microSDXC</li>\r\n	<li>Internal: 128GB 8GB RAM</li>\r\n	<li>Main Camera (Quad): 48MP+2MP+2MP</li>\r\n	<li>AI Front Camera : 16MP</li>\r\n	<li>USB: USB Type-C 2.0, USB On-The-Go</li>\r\n	<li>Sensors: Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</li>\r\n	<li>Battery Type:Li-Po 5000 mAh, non-removable</li>\r\n	<li>Charging: Fast charging 33W, 54% in 30 min (advertised)</li>\r\n</ul>\r\n\r\n<h2>Specifications of OPPO A95 8GB RAM 128GB ROM - 5000 mAh Battery</h2>\r\n\r\n<ul>\r\n	<li>Brand: OPPO</li>\r\n	<li>SKU:232766355_BD-1175539127</li>\r\n	<li>Battery Capacity (mAh):5000 - 5999 mAh</li>\r\n	<li>Screen Size (inches): 6 Inch and Above</li>\r\n	<li>Operating System:Android</li>\r\n	<li>Camera Front (Megapixels): 16 - 20MP</li>\r\n	<li>RAM Memory: 8 GB</li>\r\n	<li>Camera Back (Megapixels): 21 - 25 MP</li>\r\n	<li>Storage Capacity: 128GB</li>\r\n	<li>Number of SIM: Dual SIM</li>\r\n</ul>\r\n\r\n<p><em><strong>What&rsquo;s in the box: </strong></em>NO RETURN applicable if the seal is broken</p>', '<h2>&nbsp;Oppo a95 8gb ram 128gb rom-5000 mah ব্যাটারি</h2>\r\n\r\n<ul>\r\n	<li>NO RETURN applicable if the seal is broken</li>\r\n	<li>Dimensions: 160.3 x 73.8 x 8 mm (6.31 x 2.91 x 0.31 in)</li>\r\n	<li>Weight: 175 g (6.17 oz)</li>\r\n	<li>SIM: Dual SIM (Nano-SIM, dual stand-by)</li>\r\n	<li>Display Type: AMOLED, 430 nits (typ), 800 nits (peak)</li>\r\n	<li>Size: 6.43 inches</li>\r\n	<li>OS: Android 11, ColorOS 11.1</li>\r\n	<li>Chipset: Qualcomm SM6115 Snapdragon 662 (11 nm)</li>\r\n	<li>CPU: Octa-core</li>\r\n	<li>GPU: Adreno 618</li>\r\n	<li>Memory Card slot: microSDXC</li>\r\n	<li>Internal: 128GB 8GB RAM</li>\r\n	<li>Main Camera (Quad): 48MP+2MP+2MP</li>\r\n	<li>AI Front Camera : 16MP</li>\r\n	<li>USB: USB Type-C 2.0, USB On-The-Go</li>\r\n	<li>Sensors: Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</li>\r\n	<li>Battery Type:Li-Po 5000 mAh, non-removable</li>\r\n	<li>Charging: Fast charging 33W, 54% in 30 min (advertised)</li>\r\n</ul>\r\n\r\n<h2>Specifications of Oppo a95 8gb ram 128gb rom-5000 mah ব্যাটারি</h2>\r\n\r\n<ul>\r\n	<li>Brand: OPPO</li>\r\n	<li>SKU:232766355_BD-1175539127</li>\r\n	<li>Battery Capacity (mAh):5000 - 5999 mAh</li>\r\n	<li>Screen Size (inches): 6 Inch and Above</li>\r\n	<li>Operating System:Android</li>\r\n	<li>Camera Front (Megapixels): 16 - 20MP</li>\r\n	<li>RAM Memory: 8 GB</li>\r\n	<li>Camera Back (Megapixels): 21 - 25 MP</li>\r\n	<li>Storage Capacity: 128GB</li>\r\n	<li>Number of SIM: Dual SIM</li>\r\n</ul>\r\n\r\n<p><em><strong>What&rsquo;s in the box: </strong></em>NO RETURN applicable if the seal is broken</p>', NULL, NULL, 'Blue', 'নীল', 30900, 3, 27990, NULL, 'backend/images/product/thumbnail/1758969707634960.jpg', NULL, 1, NULL, NULL, 1, NULL, '2023-02-27 01:50:33', '2023-03-23 01:56:13'),
(11, 11, 9, 19, 'HelloKimi 6 PCS Anime Figurine Toys Japan Anime Naruto Figure PVC Action Figurine Model Doll Figure Toys Collection Doll Toys Naruto Uzumaki Model Toys', 'হ্যালোকিমি 6 পিসি এনিমে ফিগারিন খেলনা জাপান এনিমে নারুটো ফিগার পিভিসি অ্যাকশন ফিগারিন মডেল ডল ফিগার খেলনা সংগ্রহ পুতুল খেলনা naruto uzumaki মডেল খেলনা', 'hellokimi-6-pcs-anime-figurine-toys-japan-anime-naruto-figure-pvc-action-figurine-model-doll-figure-toys-collection-doll-toys-naruto-uzumaki-model-toys', 'হ্যালোকিমি-6-পিসি-এনিমে-ফিগারিন-খেলনা-জাপান-এনিমে-নারুটো-ফিগার-পিভিসি-অ্যাকশন-ফিগারিন-মডেল-ডল-ফিগার-খেলনা-সংগ্রহ-পুতুল-খেলনা-naruto-uzumaki-মডেল-খেলনা', 'hellokimi', 'hellokimi', 'HelloKimi 6 PCS Anime Figurine Toys Japan Anime Naruto Figure PVC Action Figurine Model Doll Figure Toys Collection Doll Toys Naruto Uzumaki Model Toys', 'হ্যালোকিমি 6 পিসি এনিমে ফিগারিন খেলনা জাপান এনিমে নারুটো ফিগার পিভিসি অ্যাকশন ফিগারিন মডেল ডল ফিগার খেলনা সংগ্রহ পুতুল খেলনা naruto uzumaki মডেল খেলনা', '<p>Product name: Japan Anime Figurine Toys</p>\r\n\r\n<p>Product material: PVC</p>\r\n\r\n<p>Product weight: About 90g</p>\r\n\r\n<p>Product size: 7-8CM</p>\r\n\r\n<p>Clean Paint Job and Stance: These toy utilizing cool style sculpting technology to bring out the coolest possible scenes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Great Addition to The Collection: Combine these figurine model dolls, letting the world of Demon Slayer unfold right on your tabletop.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Safe and Durable: With all of our products made from PVC materials, that they are not only fun but also safe for you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Great Gift: As a surprising gift for children adults definitely a collection necessary for Naruto.</p>', '<p>Product name: Japan Anime Figurine Toys</p>\r\n\r\n<p>Product material: PVC</p>\r\n\r\n<p>Product weight: About 90g</p>\r\n\r\n<p>Product size: 7-8CM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Clean Paint Job and Stance: These toy utilizing cool style sculpting technology to bring out the coolest possible scenes.</p>\r\n\r\n<p>Great Addition to The Collection: Combine these figurine model dolls, letting the world of Demon Slayer unfold right on your tabletop.</p>\r\n\r\n<p>Safe and Durable: With all of our products made from PVC materials, that they are not only fun but also safe for you.</p>\r\n\r\n<p>Great Gift: As a surprising gift for children adults definitely a collection necessary for Naruto.</p>', NULL, NULL, NULL, NULL, 1000, 1, 500, NULL, 'backend/images/product/thumbnail/1761241280804162.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2023-03-24 03:36:14', NULL),
(12, 7, 8, 9, 'Samsung Galaxy A03 (4GB/64GB) Smartphone Mobile', 'স্যামসাং গ্যালাক্সি A03 4GB/64GB Smartphone', 'samsung-galaxy-a03-(4gb/64gb)-smartphone-mobile', 'স্যামসাং-গ্যালাক্সি-A03-4GB/64GB-Smartphone', 'samsung', 'স্যামসাং', 'Samsung Galaxy A03 (4GB/64GB) Smartphone', 'স্যামসাং গ্যালাক্সি A03 4GB/64GB Smartphone', '<p>hjmh</p>', '<p>khj</p>', NULL, NULL, NULL, NULL, 600, 12, 3000, NULL, 'backend/images/product/thumbnail/1761496597296562.jpeg', NULL, NULL, NULL, NULL, 1, NULL, '2023-03-26 23:14:23', NULL),
(13, 7, 7, 11, 'Canon EOS 90D DSLR Camera (Body Only) - Black', 'ক্যানন eos 90d dslr ক্যামেরা (কেবলমাত্র বডি)-কালো', 'canon-eos-90d-dslr-camera-(body-only)---black', 'ক্যানন-eos-90d-dslr-ক্যামেরা-(কেবলমাত্র-বডি)-কালো', 'canon', 'ক্যানন', 'Canon EOS 90D DSLR Camera (Body Only)', 'ক্যানন-eos-90d-dslr-ক্যামেরা', '<p>hello</p>', '<p>hello</p>', NULL, NULL, NULL, NULL, 678, 5, 3000, NULL, 'backend/images/product/thumbnail/1761497028624498.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2023-03-26 23:21:14', NULL),
(14, 10, 5, 14, 'Sport Mouth Guard EVA Teeth Protector Mouthguard Tooth Brace Protection Karate', 'স্পোর্ট মাউথ গার্ড ইভা দাঁত রক্ষাকারী মাউথগার্ড টুথ ব্রেস প্রোটেকশন কারাতে', 'sport-mouth-guard-eva-teeth-protector-mouthguard-tooth-brace-protection-karate', 'স্পোর্ট-মাউথ-গার্ড-ইভা-দাঁত-রক্ষাকারী-মাউথগার্ড-টুথ-ব্রেস-প্রোটেকশন-কারাতে', 'karate', 'karate', 'Sport Mouth Guard EVA Teeth Protector Mouthguard Tooth Brace Protection Karate', 'স্পোর্ট মাউথ গার্ড ইভা দাঁত রক্ষাকারী মাউথগার্ড টুথ ব্রেস প্রোটেকশন কারাতে', '<p>kli</p>', '<p>kjkj</p>', NULL, NULL, NULL, NULL, 55, 89, 200, NULL, 'backend/images/product/thumbnail/1761498371513209.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2023-03-29 02:01:02', '2023-03-29 02:01:02'),
(15, 10, 5, 16, 'Karate Gloves - Wesing - Blue', 'Karate Gloves - Wesing - Blue', 'karate-gloves---wesing---blue', 'Karate-Gloves---Wesing---Blue', 'Karate', 'karate', 'Karate Gloves - Wesing - Blue - Size - S', 'Karate Gloves - Wesing - Blue', '<h2>Product details of Karate Gloves - Wesing - Blue - Size - S</h2>\r\n\r\n<ul>\r\n	<li>Three layers of protective foam.</li>\r\n	<li>Attached thumb.</li>\r\n	<li>Palm holes for breathability.</li>\r\n	<li>Anti-microbial inner lining.</li>\r\n	<li>Inner cord for a more secure fit and better strike accuracy.</li>\r\n	<li>Double stitching to increase product durability.</li>\r\n	<li>Large velcro fastening for better wrist support.</li>\r\n</ul>', '<h2>Product details of Karate Gloves - Wesing - Blue - Size - S</h2>\r\n\r\n<ul>\r\n	<li>Three layers of protective foam.</li>\r\n	<li>Attached thumb.</li>\r\n	<li>Palm holes for breathability.</li>\r\n	<li>Anti-microbial inner lining.</li>\r\n	<li>Inner cord for a more secure fit and better strike accuracy.</li>\r\n	<li>Double stitching to increase product durability.</li>\r\n	<li>Large velcro fastening for better wrist support.</li>\r\n</ul>', NULL, NULL, NULL, NULL, 43, 70, 700, NULL, 'backend/images/product/thumbnail/1761501577646453.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2023-03-26 23:54:01', '2023-03-27 00:33:33'),
(17, 12, 11, 15, 'HelloKimi 6 PCS Anime Figurine Toys Japan Anime Naruto Figure PVC Action Figurine Model Doll Figure Toys Collection Doll Toys Naruto Uzumaki Model Toys', 'হ্যালোকিমি 6 পিসি এনিমে ফিগারিন খেলনা জাপান এনিমে নারুটো ফিগার পিভিসি অ্যাকশন ফিগারিন মডেল ডল ফিগার খেলনা সংগ্রহ পুতুল খেলনা naruto uzumaki মডেল খেলনা', 'hellokimi-6-pcs-anime-figurine-toys-japan-anime-naruto-figure-pvc-action-figurine-model-doll-figure-toys-collection-doll-toys-naruto-uzumaki-model-toys', 'হ্যালোকিমি-6-পিসি-এনিমে-ফিগারিন-খেলনা-জাপান-এনিমে-নারুটো-ফিগার-পিভিসি-অ্যাকশন-ফিগারিন-মডেল-ডল-ফিগার-খেলনা-সংগ্রহ-পুতুল-খেলনা-naruto-uzumaki-মডেল-খেলনা', 'hellokimi', 'hellokimi', 'HelloKimi 6 PCS Anime Figurine Toys Japan Anime Naruto Figure PVC Action Figurine Model Doll Figure Toys Collection Doll Toys Naruto Uzumaki Model Toys', 'হ্যালোকিমি 6 পিসি এনিমে ফিগারিন খেলনা জাপান এনিমে নারুটো ফিগার পিভিসি অ্যাকশন ফিগারিন মডেল ডল ফিগার খেলনা সংগ্রহ পুতুল খেলনা naruto uzumaki মডেল খেলনা', '<p>hi</p>', '<p>ui</p>', NULL, NULL, NULL, NULL, 56, 3, 45, NULL, 'backend/images/product/thumbnail/1761500973845791.jpg', NULL, NULL, NULL, NULL, 1, '2023-03-27 00:25:53', '2023-03-27 00:23:57', '2023-03-27 00:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `review_models`
--

CREATE TABLE `review_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_models`
--

INSERT INTO `review_models` (`id`, `user_id`, `product_id`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(3, 13, 5, 'check review', 2, 'pending', '2023-03-25 03:05:16', '2023-03-27 03:26:08'),
(4, 13, 2, 'again check', 4, 'approved', '2023-03-27 03:27:44', '2023-03-27 03:28:06');

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

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authID` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `postCode` int(11) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `authID`, `division_id`, `district_id`, `state_id`, `shipping_name`, `shipping_email`, `shipping_phone`, `postCode`, `shipping_address`, `payment_method`, `created_at`, `updated_at`) VALUES
(9, 13, 1, 15, 11, 'User', 'user@gmail.com', '017989887766', 1200, 'Road:12 House:12 gazipur dhaka', 'sshost', '2023-03-22 06:36:47', '2023-03-22 06:36:47'),
(10, 13, 1, 15, 11, 'User', 'user@gmail.com', '01788888888', 1200, 'House:23, Road:12', 'sshost', '2023-03-28 00:23:05', '2023-03-28 00:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subTitle_en` varchar(255) DEFAULT NULL,
  `subTitle_bn` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_bn` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `description_bn` varchar(255) DEFAULT NULL,
  `sliderImage` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subTitle_en`, `subTitle_bn`, `title_en`, `title_bn`, `description_en`, `description_bn`, `sliderImage`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'backend/images/sliders/1759054032130114.jpg', 1, '2023-02-28 00:10:52', '2023-03-16 23:01:55'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'backend/images/sliders/1759054045541300.jpg', 1, '2023-02-28 00:11:04', '2023-02-28 00:13:05'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 'backend/images/sliders/1759054054455566.jpg', 0, '2023-02-28 00:11:13', '2023-03-22 03:59:57'),
(4, 'NEUTROGENA', NULL, NULL, NULL, NULL, NULL, 'backend/images/sliders/1759054076328571.jpg', 1, '2023-02-28 00:11:34', '2023-03-22 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'active is = 1 ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `division_id`, `district_id`, `state_name`, `status`, `created_at`, `updated_at`) VALUES
(8, 5, 14, 'Sadar', 1, '2023-03-18 00:25:13', '2023-03-18 00:25:13'),
(10, 1, 15, 'kaliakoir', 1, '2023-03-18 00:38:46', '2023-03-18 00:39:03'),
(11, 1, 15, 'Gazipur Sadar', 1, '2023-03-18 00:39:51', '2023-03-18 00:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_bn` varchar(255) NOT NULL,
  `subcategory_name_en` varchar(255) NOT NULL,
  `subcategory_slug_bn` varchar(255) NOT NULL,
  `subcategory_slug_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_bn`, `subcategory_name_en`, `subcategory_slug_bn`, `subcategory_slug_en`, `created_at`, `updated_at`) VALUES
(4, 11, 'শিশুর ব্যক্তিগত পরিচর্যা', 'Baby Personal Care', 'শিশুর-ব্যক্তিগত-পরিচর্যা', 'baby-personal-care', '2023-02-24 06:22:42', '2023-03-20 23:31:37'),
(5, 10, 'বক্সিং, মার্শাল আর্টস এবং এমএমএ', 'Boxing, Martial Arts & MMA', 'বক্সিং,-মার্শাল-আর্টস-এবং-এমএমএ', 'boxing,-martial-arts-&-mma', '2023-02-24 06:23:42', '2023-02-24 06:54:23'),
(6, 10, 'ব্যায়াম এবং ফিটনেস', 'Exercise & Fitness', 'ব্যায়াম-এবং-ফিটনেস', 'exercise-&-fitness', '2023-02-24 06:26:14', '2023-02-24 06:26:14'),
(7, 7, 'ক্যামেরা', 'Cameras', 'ক্যামেরা', 'cameras', '2023-02-24 22:12:34', '2023-02-24 22:12:34'),
(8, 7, 'মোবাইল এবং ট্যাবলেট', 'Mobiles & Tablets', 'মোবাইল-এবং-ট্যাবলেট', 'mobiles-&-tablets', '2023-02-24 22:14:05', '2023-02-24 22:14:05'),
(9, 11, 'খেলনাগুলো', 'Toys', 'খেলনাগুলো', 'toys', '2023-02-24 22:15:14', '2023-03-30 03:44:47'),
(11, 12, 'কাপড়', 'Cloths', 'কাপড়', 'cloths', '2023-02-25 00:59:34', '2023-02-25 00:59:34'),
(12, 9, 'কাপড়', 'Cloths', 'কাপড়', 'cloths', '2023-02-25 00:59:46', '2023-02-25 00:59:46'),
(16, 12, 'জুতা', 'shoe', 'জুতা', 'shoe', '2023-03-26 23:59:55', '2023-03-26 23:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_bn` varchar(255) NOT NULL,
  `subsubcategory_name_en` varchar(255) NOT NULL,
  `subsubcategory_slug_bn` varchar(255) NOT NULL,
  `subsubcategory_slug_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_bn`, `subsubcategory_name_en`, `subsubcategory_slug_bn`, `subsubcategory_slug_en`, `created_at`, `updated_at`) VALUES
(1, 9, 12, 'শাড়ি', 'Sarees', 'শাড়ি', 'sarees', '2023-02-25 01:02:55', '2023-02-25 01:02:55'),
(2, 9, 12, 'কুর্তি', 'Kurtis', 'কুর্তি', 'kurtis', '2023-02-25 01:03:45', '2023-02-25 01:03:45'),
(3, 12, 11, 'জিন্স', 'Jeans', 'জিন্স', 'jeans', '2023-02-25 01:05:21', '2023-02-25 01:05:21'),
(6, 11, 4, 'লোশন', 'Lotion & Creams', 'লোশন', 'lotion-&-creams', '2023-02-25 01:34:46', '2023-03-18 04:42:46'),
(7, 10, 6, 'ট্রেডমিলস', 'Treadmills', 'ট্রেডমিলস', 'treadmills', '2023-02-25 01:36:19', '2023-02-25 01:38:54'),
(8, 10, 6, 'বাইক অনুশীলন', 'Exercise Bikes', 'বাইক-অনুশীলন', 'exercise-bikes', '2023-02-25 01:37:32', '2023-02-25 01:37:32'),
(9, 7, 8, 'Samsung মোবাইল', 'Samsung Mobile', 'Samsung-মোবাইল', 'samsung-mobile', '2023-02-25 01:40:05', '2023-02-25 01:41:39'),
(10, 7, 8, 'OPPO মোবাইল', 'OPPO Mobile', 'OPPO-মোবাইল', 'oppo-mobile', '2023-02-25 01:41:30', '2023-03-18 04:19:24'),
(11, 7, 7, 'ডিএসএলআর', 'DSLR', 'ডিএসএলআর', 'dslr', '2023-02-25 01:45:59', '2023-03-18 04:19:12'),
(14, 10, 5, 'প্রতিরক্ষামূলক জিনিসপত্র', 'Protective Gear', 'প্রতিরক্ষামূলক-জিনিসপত্র', 'protective-gear', '2023-02-25 01:57:21', '2023-02-25 01:57:21'),
(15, 12, 11, 'শার্ট', 'Casual Shirts', 'শার্ট', 'casual-shirts', '2023-02-25 02:01:04', '2023-02-25 02:01:04'),
(16, 10, 5, 'ঘুসাঘুসির দস্তানা', 'Boxing Gloves', 'ঘুসাঘুসির-দস্তানা', 'boxing-gloves', '2023-02-25 02:03:39', '2023-02-25 02:03:39'),
(18, 11, 4, 'শ্যাম্পু ও কন্ডিশনার', 'Shampoo & Conditioners', 'শ্যাম্পু-ও-কন্ডিশনার', 'shampoo-&-conditioners', '2023-03-18 04:43:07', '2023-03-18 04:43:07'),
(19, 11, 9, 'অ্যাকশন ফিগার', 'Actions Figure', 'অ্যাকশন-ফিগার', 'actions-figure', '2023-03-20 00:37:51', '2023-03-30 03:32:45'),
(20, 12, 11, 'প্যান্ট', 'Pant', 'প্যান্ট', 'pant', '2023-03-26 23:58:20', '2023-03-26 23:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `Isban` tinyint(4) NOT NULL DEFAULT 0,
  `last_seen` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `Isban`, `last_seen`, `email`, `phone`, `provider_id`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Admin', 1, 0, '2023-04-01 08:29:47', 'admin@gmail.com', '091112223', NULL, 'fontend/assets/images/upload/1761944417298914.jpg', NULL, '$2y$10$dDFbDsvQSgALS9fR9losgezyA0Yke3tVD0.ueoNI9PphvmS9UwYQe', NULL, NULL, '2023-04-01 02:29:47'),
(11, 'hannan', 2, 0, '2023-03-22 08:02:29', 'hanann@gmail.com', '01790113718', NULL, 'fontend/assets/images/upload/profile_img.png', NULL, '$2y$10$fxbeeLh0yyPUv4CSeIuoheIbzlegHx9wgae23PPejIWBNI2XJjT9W', NULL, '2023-03-22 01:54:32', '2023-03-22 02:02:29'),
(12, 'Tajrin Zerin', 2, 1, '2023-03-22 09:09:33', 'zerin.opediatech@gmail.com', NULL, '116022661947697804492', 'https://lh3.googleusercontent.com/a/AGNmyxaR8fGrJBzJRYExZY_cGdK7YAszWRi4g9kzQINy=s96-c', NULL, NULL, NULL, '2023-03-22 03:09:29', '2023-03-23 22:53:34'),
(13, 'User', 2, 0, '2023-04-01 04:21:59', 'user@gmail.com', '01790113718', NULL, 'fontend/assets/images/upload/1761944584747117.png', NULL, '$2y$10$PrjWW7G8wkAlyn/oa0eNL.QldBCBuaKL7EPrsYlG.ritLD2s2zQZq', NULL, '2023-03-22 06:35:19', '2023-03-31 22:21:59'),
(14, 'zerin', 2, 0, '2023-04-01 04:00:19', 'zerin@gmail.com', '01790113718', NULL, 'fontend/assets/images/upload/1761944907078664.png', NULL, '$2y$10$oC63FTEloq0wsrfqcAG4nevpc8obxaYiO8d50w5em99PtyCxXOPb2', NULL, '2023-03-31 21:59:32', '2023-03-31 22:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_checks`
--

CREATE TABLE `visitor_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_count` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_checks`
--

INSERT INTO `visitor_checks` (`id`, `visit_count`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 15, '127.0.0.2', '2023-03-31 00:35:20', '2023-03-31 00:39:54'),
(2, 11, '127.0.0.1', '2023-03-31 00:58:34', '2023-04-01 02:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 4, 6, '2023-02-27 02:04:42', NULL),
(2, 4, 5, '2023-02-28 00:46:46', NULL),
(3, 4, 4, '2023-02-28 00:46:50', NULL),
(4, 5, 2, '2023-02-28 05:38:34', NULL),
(7, 4, 3, '2023-03-02 00:57:12', NULL),
(8, 9, 3, '2023-03-27 03:35:14', NULL),
(9, 13, 3, '2023-03-27 03:35:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_bios`
--
ALTER TABLE `admin_bios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_bios_auth_id_foreign` (`auth_id`);

--
-- Indexes for table `admin_social_links`
--
ALTER TABLE `admin_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcomment_replies`
--
ALTER TABLE `blogcomment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogcomment_replies_blogcomment_id_foreign` (`blogcomment_id`),
  ADD KEY `blogcomment_replies_auth_id_foreign` (`auth_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_auth_id_foreign` (`auth_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_comments_auth_id_foreign` (`auth_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
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
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replies_reply_id_foreign` (`reply_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_banners`
--
ALTER TABLE `discount_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_banner_twos`
--
ALTER TABLE `discount_banner_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
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
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `page_banners`
--
ALTER TABLE `page_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_models`
--
ALTER TABLE `review_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_models_user_id_foreign` (`user_id`),
  ADD KEY `review_models_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitor_checks`
--
ALTER TABLE `visitor_checks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_checks_ip_address_unique` (`ip_address`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_bios`
--
ALTER TABLE `admin_bios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_social_links`
--
ALTER TABLE `admin_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogcomment_replies`
--
ALTER TABLE `blogcomment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_banners`
--
ALTER TABLE `discount_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount_banner_twos`
--
ALTER TABLE `discount_banner_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_banners`
--
ALTER TABLE `page_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `review_models`
--
ALTER TABLE `review_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `visitor_checks`
--
ALTER TABLE `visitor_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_bios`
--
ALTER TABLE `admin_bios`
  ADD CONSTRAINT `admin_bios_auth_id_foreign` FOREIGN KEY (`auth_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogcomment_replies`
--
ALTER TABLE `blogcomment_replies`
  ADD CONSTRAINT `blogcomment_replies_auth_id_foreign` FOREIGN KEY (`auth_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogcomment_replies_blogcomment_id_foreign` FOREIGN KEY (`blogcomment_id`) REFERENCES `blog_comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_auth_id_foreign` FOREIGN KEY (`auth_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_auth_id_foreign` FOREIGN KEY (`auth_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_models`
--
ALTER TABLE `review_models`
  ADD CONSTRAINT `review_models_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_models_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
