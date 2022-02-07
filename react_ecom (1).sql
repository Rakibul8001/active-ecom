-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 06:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_level1`
--

CREATE TABLE `category_level1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat1_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat1_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_level1`
--

INSERT INTO `category_level1` (`id`, `cat1_name`, `cat1_image`) VALUES
(1, 'Electronics', 'http://127.0.0.1:8000/storage/catimg.svg'),
(2, 'Home & Beauty', 'http://127.0.0.1:8000/storage/catimg.svg'),
(3, 'Man\'s Fasion', 'http://127.0.0.1:8000/storage/catimg.svg'),
(4, 'Women\'s Fasion', 'http://127.0.0.1:8000/storage/catimg.svg'),
(5, 'Gadget', 'http://127.0.0.1:8000/storage/catimg.svg'),
(6, 'Health', 'http://127.0.0.1:8000/storage/catimg.svg'),
(7, 'Cloth', 'http://127.0.0.1:8000/storage/catimg.svg');

-- --------------------------------------------------------

--
-- Table structure for table `category_level2`
--

CREATE TABLE `category_level2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat1_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat2_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_level2`
--

INSERT INTO `category_level2` (`id`, `cat1_name`, `cat2_name`) VALUES
(1, 'Electronics', 'Mobile'),
(2, 'Electronics', 'Tv'),
(3, 'Electronics', 'Freeze'),
(4, 'Home & Beauty', 'Rack'),
(5, 'Home & Beauty', 'Show case'),
(6, 'Women\'s Fasion', 'Shirts'),
(7, 'Man\'s Fasion', 'T-shirt'),
(8, 'Man\'s Fasion', 'Jeans');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `message`, `contact_date`, `contact_time`) VALUES
(1, 'Rakibul', '01648477222', 'This is a test message', '05-01-2022', '03:11:42pm'),
(2, 'Rakibul', '01648477222', 'This is a New Message in 9:15 pm', '05-01-2022', '09:16:05pm'),
(3, 'Mr. Rakibul', '01648477222', 'This is a test message!!!!!!!!!', '05-01-2022', '10:45:45pm'),
(4, 'Robin', '01768618001', 'ssssssdddddddggggggggg', '05-01-2022', '11:11:21pm'),
(5, 'asdafsd', '01648477222', 'sdfjkvxkfjksd', '05-01-2022', '11:12:09pm'),
(6, 'Raju', '01648477222', 'fmxncvm,dnz', '05-01-2022', '11:30:36pm'),
(7, 'Rakibul Islam', '01648477222', 'Hello', '04-02-2022', '12:00:58pm'),
(8, 'Rakibul', '01768618001', 'djakhsdfa', '05-02-2022', '09:34:51pm');

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
(1, '2020_10_25_213852_contact_table', 1),
(2, '2020_10_25_214004_visitor_table', 1),
(3, '2020_10_29_202229_siteinfo_table', 1),
(4, '2020_11_07_103320_category_level1_table', 1),
(5, '2020_11_07_103402_category_lavel2_table', 1),
(6, '2022_01_16_223927_create_products_table', 2),
(7, '2022_01_21_112058_create_sliders_table', 3),
(8, '2022_01_21_214228_create_product_details_table', 4),
(9, '2022_01_23_214755_create_notifications_table', 5),
(10, '2022_02_02_221914_create_settings_table', 6),
(11, '2022_02_02_222925_create_otps_table', 7),
(12, '2022_02_07_002946_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(2, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(3, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(4, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(5, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(6, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(7, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22'),
(8, 'As a result, there\'s no need to specify', 'As a result, there\'s no need to specify the id when it\'s already guarded. When you override that property, you are telling Laravel, \"Actually, don\'t guard everything. Only guard the properties that I specify.\" So essentially, you are unguarding other properties.', '2022-01-23 15:55:22', '2022-01-23 15:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `mobile`, `otp`, `created_timestamp`, `created_date`, `created_time`) VALUES
(1, '01648477222', '517371', '1643824301', '02-02-2022', '11:51:41pm'),
(2, '01768618001', '136280', '1643825666', '03-02-2022', '12:14:26am'),
(3, '01648477222', '901393', '1643826036', '03-02-2022', '12:20:36am'),
(4, '01768618001', '431954', '1643826092', '03-02-2022', '12:21:32am'),
(5, '01648477222', '269729', '1643826175', '03-02-2022', '12:22:55am'),
(6, '01768618001', '880685', '1643826273', '03-02-2022', '12:24:33am'),
(7, '01768618001', '687070', '1643951910', '04-02-2022', '11:18:30am'),
(8, '01648477222', '815220', '1643952245', '04-02-2022', '11:24:05am'),
(9, '01648477222', '909219', '1643952516', '04-02-2022', '11:28:36am'),
(10, '01768618001', '946773', '1643952694', '04-02-2022', '11:31:34am'),
(11, '01768618001', '899268', '1643952745', '04-02-2022', '11:32:25am'),
(12, '01768618001', '213986', '1643952810', '04-02-2022', '11:33:30am'),
(13, '01768618001', '887584', '1643952897', '04-02-2022', '11:34:57am'),
(14, '01768618001', '207634', '1643952965', '04-02-2022', '11:36:05am'),
(15, '01648477222', '785160', '1643953062', '04-02-2022', '11:37:42am'),
(16, '01768618001', '479146', '1643953241', '04-02-2022', '11:40:41am'),
(17, '01768618001', '215896', '1643953289', '04-02-2022', '11:41:29am'),
(18, '01768618001', '780186', '1643953364', '04-02-2022', '11:42:44am'),
(19, '01768618001', '805918', '1643953798', '04-02-2022', '11:49:58am'),
(20, '01648477222', '643557', '1643953833', '04-02-2022', '11:50:33am'),
(21, '01648477222', '999072', '1643953927', '04-02-2022', '11:52:07am'),
(22, '01768618001', '857627', '1643954112', '04-02-2022', '11:55:12am'),
(23, '01768618001', '835675', '1643954177', '04-02-2022', '11:56:17am'),
(24, '01768618001', '853916', '1643954477', '04-02-2022', '12:01:17pm'),
(25, '01648477222', '665788', '1643954552', '04-02-2022', '12:02:32pm'),
(26, '01648477222', '473030', '1643954706', '04-02-2022', '12:05:06pm'),
(27, '01768618001', '386408', '1643954749', '04-02-2022', '12:05:49pm'),
(28, '01768618001', '434209', '1643954871', '04-02-2022', '12:07:51pm'),
(29, '01768618001', '995309', '1643955190', '04-02-2022', '12:13:10pm'),
(30, '01768618001', '721034', '1643955237', '04-02-2022', '12:13:57pm'),
(31, '01768618001', '369927', '1643955263', '04-02-2022', '12:14:23pm'),
(32, '01768618001', '934316', '1643955356', '04-02-2022', '12:15:56pm'),
(33, '01768618001', '661011', '1643955430', '04-02-2022', '12:17:10pm'),
(34, '01648477222', '434572', '1643955485', '04-02-2022', '12:18:05pm'),
(35, '01648477222', '609321', '1643955758', '04-02-2022', '12:22:38pm'),
(36, '01768618001', '949785', '1643955905', '04-02-2022', '12:25:05pm'),
(37, '01648477222', '303754', '1643967806', '04-02-2022', '03:43:26pm'),
(38, '01768618001', '892239', '1643968029', '04-02-2022', '03:47:09pm'),
(39, '01648477222', '581417', '1643968115', '04-02-2022', '03:48:35pm'),
(40, '01648477222', '191242', '1643968274', '04-02-2022', '03:51:14pm'),
(41, '01648477222', '800545', '1643968305', '04-02-2022', '03:51:45pm'),
(42, '01768618001', '994676', '1643968467', '04-02-2022', '03:54:27pm'),
(43, '01768618001', '146251', '1643968530', '04-02-2022', '03:55:30pm'),
(44, '01768618001', '402748', '1643968599', '04-02-2022', '03:56:39pm'),
(45, '01648477222', '973870', '1643968632', '04-02-2022', '03:57:12pm'),
(46, '01768618001', '583846', '1643968777', '04-02-2022', '03:59:37pm'),
(47, '01768618001', '452265', '1643968863', '04-02-2022', '04:01:03pm'),
(48, '01648477222', '848597', '1643969006', '04-02-2022', '04:03:26pm'),
(49, '01768618001', '233606', '1643969038', '04-02-2022', '04:03:58pm'),
(50, '01768618001', '733543', '1643969448', '04-02-2022', '04:10:48pm'),
(51, '01768618001', '883763', '1643969544', '04-02-2022', '04:12:24pm'),
(52, '01768618001', '138889', '1643969601', '04-02-2022', '04:13:21pm'),
(53, '01648477222', '326176', '1643969887', '04-02-2022', '04:18:07pm'),
(54, '01768618001', '891581', '1643970019', '04-02-2022', '04:20:19pm'),
(55, '01768618001', '322745', '1643970250', '04-02-2022', '04:24:10pm'),
(56, '01648477222', '436645', '1643970361', '04-02-2022', '04:26:01pm'),
(57, '01768618001', '744039', '1643970575', '04-02-2022', '04:29:35pm'),
(58, '01768618001', '317351', '1643970630', '04-02-2022', '04:30:30pm'),
(59, '01648477222', '322714', '1643970691', '04-02-2022', '04:31:31pm'),
(60, '01648477222', '230179', '1643970810', '04-02-2022', '04:33:30pm'),
(61, '01768618001', '321581', '1643970880', '04-02-2022', '04:34:40pm'),
(62, '01648477222', '833240', '1643970959', '04-02-2022', '04:35:59pm'),
(63, '01648477222', '479023', '1643970990', '04-02-2022', '04:36:30pm'),
(64, '01648477222', '179700', '1643971121', '04-02-2022', '04:38:41pm'),
(65, '01768618001', '915545', '1643971161', '04-02-2022', '04:39:21pm'),
(66, '01768618001', '557326', '1643971214', '04-02-2022', '04:40:14pm'),
(67, '01648477222', '534289', '1643971281', '04-02-2022', '04:41:21pm'),
(68, '01768618001', '767397', '1643971360', '04-02-2022', '04:42:40pm'),
(69, '01768618001', '121823', '1643971506', '04-02-2022', '04:45:06pm'),
(70, '01768618001', '515083', '1643974220', '04-02-2022', '05:30:20pm'),
(71, '01648477222', '175735', '1643974399', '04-02-2022', '05:33:19pm'),
(72, '01648477222', '421512', '1643975951', '04-02-2022', '05:59:11pm'),
(73, '01768618001', '799400', '1643979226', '04-02-2022', '06:53:46pm'),
(74, '01768618001', '504039', '1643989003', '04-02-2022', '09:36:43pm'),
(75, '01768618001', '911775', '1643994864', '04-02-2022', '11:14:24pm'),
(76, '01768618001', '254905', '1643995365', '04-02-2022', '11:22:45pm'),
(77, '01768618001', '679248', '1644073792', '05-02-2022', '09:09:52pm'),
(78, '01768618001', '873975', '1644074816', '05-02-2022', '09:26:56pm'),
(79, '01768618001', '325477', '1644075220', '05-02-2022', '09:33:40pm'),
(80, '01648477222', '814000', '1644170729', '07-02-2022', '12:05:29am');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TU', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Man\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p1', NULL, NULL),
(2, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', 'NA', 'http://127.0.0.1:8000/storage/p2.jpg', 'Electronics', 'Shirts', 'FEATURED', 'Polo', '4', 'p2', NULL, NULL),
(3, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p3', NULL, NULL),
(4, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', 'NA', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p4', NULL, NULL),
(5, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p5', NULL, NULL),
(6, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', 'NA', 'http://127.0.0.1:8000/storage/p1.jpg', 'Electronics', 'Freeze', 'FEATURED', 'Polo', '4', 'p6', NULL, NULL),
(7, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p7', NULL, NULL),
(8, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p8', NULL, NULL),
(9, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', 'NA', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p9', NULL, NULL),
(10, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p10', NULL, NULL),
(11, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p11', NULL, NULL),
(12, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'FEATURED', 'Polo', '4', 'p12', NULL, NULL),
(13, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', 'NA', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p13', NULL, NULL),
(14, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p14', NULL, NULL),
(15, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p15', NULL, NULL),
(16, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p16', NULL, NULL),
(17, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p17', NULL, NULL),
(18, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p18', NULL, NULL),
(19, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p19', NULL, NULL),
(20, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p20', NULL, NULL),
(21, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p21', NULL, NULL),
(22, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p22', NULL, NULL),
(23, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p23', NULL, NULL),
(24, 'Rakib', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'NEW', 'Polo', '4', 'p24', NULL, NULL),
(25, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2500', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p25', NULL, NULL),
(26, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p26', NULL, NULL),
(27, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p27', NULL, NULL),
(28, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', 'NA', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p28', NULL, NULL),
(29, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p29', NULL, NULL),
(30, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p30', NULL, NULL),
(31, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Women\'s Fasion', 'Shirts', 'COLLECTION', 'Polo', '4', 'p31', NULL, NULL),
(32, 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '3000', '2000', 'http://127.0.0.1:8000/storage/p1.jpg', 'Electronics', 'Mobile', 'COLLECTION', 'Polo', '4', 'p32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_code`, `img1`, `img2`, `img3`, `img4`, `desc`, `color`, `size`, `details`, `created_at`, `updated_at`) VALUES
(1, 'p1', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(2, 'p2', 'http://127.0.0.1:8000/storage/p2.jpg', 'http://127.0.0.1:8000/storage/p3.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p2.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(3, 'p3', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(4, 'p4', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(5, 'p29', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(6, 'p30', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(7, 'p31', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(8, 'p32', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(9, 'p5', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(10, 'p6', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(11, 'p7', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(12, 'p8', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(13, 'p9', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(14, 'p10', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(15, 'p11', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(16, 'p12', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(17, 'p13', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(18, 'p14', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(19, 'p15', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(20, 'p16', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(21, 'p17', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(22, 'p18', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(23, 'p19', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(24, 'p20', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(25, 'p21', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(26, 'p22', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(27, 'p23', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(28, 'p24', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(29, 'p25', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(30, 'p26', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(31, 'p27', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL),
(32, 'p28', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'http://127.0.0.1:8000/storage/p1.jpg', 'asdhafkshdia fsidfhaisd fas diahf', 'Red,Black,Gray', 'XL,XXL,S,M,L', 'SJFDKA SDNKJASD AKSND AFSKJDNKASNDK AFSKDNKFASDKHFIASD KFAHSIEFAISDIAHEPFHAPDHFAP DHFIAH', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_code`, `product_name`, `mobile`, `reviewer_photo`, `reviewer_name`, `reviewer_rating`, `reviewer_comment`) VALUES
(1, 'p1', 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '01648477222', NULL, 'Rakibul Islam', '3', 'consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(2, 'p1', 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '01768618001', NULL, 'Raju', '2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(3, 'p2', 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '01648477222', NULL, 'Rakibul Islam', '3', 'consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(4, 'p3', 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', '01768618001', NULL, 'Raju', '2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ssl_wireless_sms_api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssl_wireless_sms_sid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssl_wireless_sms_domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `ssl_wireless_sms_api_token`, `ssl_wireless_sms_sid`, `ssl_wireless_sms_domain`) VALUES
(1, '1shbkYJDtEquUtyXIMF49i77nCt1TCHVeD6IilPC', '8801847121242', 'https://api.smsinbd.com/sms-api/sendsms');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_notice` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `about`, `terms`, `policy`, `purchase_guide`, `about_company`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `delivery_notice`) VALUES
(1, '<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. <br />Edit any of the two areas and see the other changing in real time.&nbsp;</p>\n<ol style=\"list-style: none; font-size: 14px; line-height: 32px; font-weight: bold;\">\n<li style=\"clear: both;\">&nbsp;</li>\n</ol>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p>&nbsp;</p>', '<h1 style=\"color: #5e9ca0;\">How to use the editor:</h1>\r\n<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. <br />Edit any of the two areas and see the other changing in real time.&nbsp;</p>\r\n<ol style=\"list-style: none; font-size: 14px; line-height: 32px; font-weight: bold;\">\r\n<li style=\"clear: both;\">&nbsp;</li>\r\n</ol>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>', '<h1 style=\"color: #5e9ca0;\">How to use the editor:</h1>\r\n<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. <br />Edit any of the two areas and see the other changing in real time.&nbsp;</p>\r\n<ol style=\"list-style: none; font-size: 14px; line-height: 32px; font-weight: bold;\">\r\n<li style=\"clear: both;\">&nbsp;</li>\r\n</ol>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>', '<h1 style=\"color: #5e9ca0;\">to use the editor:</h1>\n<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. <br />Edit any of the two areas and see the other changing in real time.&nbsp;</p>\n<ol style=\"list-style: none; font-size: 14px; line-height: 32px; font-weight: bold;\">\n<li style=\"clear: both;\">&nbsp;</li>\n</ol>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p>&nbsp;</p>', '<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. Edit any of the two areas and see the other changing in real time.</p>', '<p>Shekhertek 8,Mohammadpur,<br>Adabor, Dhaka-1207,<br>01774688159 (Help-Line),<br>Engr.Rabbil@yahoo.com</p>', 'http://localhost:3000/', 'http://localhost:3000/', 'http://localhost:3000/', 'http://localhost:3000/', 'http://localhost:3000/', 'ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `text_color`, `bg_color`, `image`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'Test Product Title', 'This is Product Sub Title....', '#FFFFFF', '#000000', 'https://laz-img-cdn.alicdn.com/images/ims-web/TB1JpZXPRr0gK0jSZFnXXbRRXXa.jpg_2200x2200Q100.jpg', 'p1', NULL, NULL),
(2, 'Test Product Title', 'This is Product Sub Title....', '#FFFFFF', '#000000', 'https://laz-img-cdn.alicdn.com/images/ims-web/TB1JpZXPRr0gK0jSZFnXXbRRXXa.jpg_2200x2200Q100.jpg', 'p1', NULL, NULL),
(3, 'Test Product Title', 'This is Product Sub Title....', '#000000', '#FFFFFF', 'https://soliloquywp.com/wp-content/uploads/2019/04/nb_esc_cover.jpg', 'p1', NULL, NULL),
(4, 'Test Product Title', 'This is Product Sub Title....', '#FFFFFF', '#000000', 'https://laz-img-cdn.alicdn.com/images/ims-web/TB1JpZXPRr0gK0jSZFnXXbRRXXa.jpg_2200x2200Q100.jpg', 'p1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `ip_address`, `visit_time`, `visit_date`) VALUES
(1, '127.0.0.1', '10:34:53pm', '06-01-2022'),
(2, '127.0.0.1', '10:40:17pm', '06-01-2022'),
(3, '127.0.0.1', '10:41:00pm', '06-01-2022'),
(4, '127.0.0.1', '10:46:29pm', '06-01-2022'),
(5, '127.0.0.1', '10:46:29pm', '06-01-2022'),
(6, '127.0.0.1', '10:50:30pm', '06-01-2022'),
(7, '127.0.0.1', '10:52:27pm', '06-01-2022'),
(8, '127.0.0.1', '10:52:28pm', '06-01-2022'),
(9, '127.0.0.1', '10:54:18pm', '06-01-2022'),
(10, '127.0.0.1', '10:54:39pm', '06-01-2022'),
(11, '127.0.0.1', '10:55:19pm', '06-01-2022'),
(12, '127.0.0.1', '10:56:25pm', '06-01-2022'),
(13, '127.0.0.1', '10:57:01pm', '06-01-2022'),
(14, '127.0.0.1', '10:57:42pm', '06-01-2022'),
(15, '127.0.0.1', '10:59:18pm', '06-01-2022'),
(16, '127.0.0.1', '11:01:34pm', '06-01-2022'),
(17, '127.0.0.1', '11:23:45pm', '06-01-2022'),
(18, '127.0.0.1', '11:28:43pm', '06-01-2022'),
(19, '127.0.0.1', '09:37:17am', '07-01-2022'),
(20, '127.0.0.1', '10:10:22am', '07-01-2022'),
(21, '127.0.0.1', '09:42:28pm', '07-01-2022'),
(22, '127.0.0.1', '09:42:44pm', '07-01-2022'),
(23, '127.0.0.1', '09:43:04pm', '07-01-2022'),
(24, '127.0.0.1', '09:43:23pm', '07-01-2022'),
(25, '127.0.0.1', '09:43:44pm', '07-01-2022'),
(26, '127.0.0.1', '09:43:49pm', '07-01-2022'),
(27, '127.0.0.1', '09:43:56pm', '07-01-2022'),
(28, '127.0.0.1', '09:43:59pm', '07-01-2022'),
(29, '127.0.0.1', '09:44:01pm', '07-01-2022'),
(30, '127.0.0.1', '09:55:21pm', '07-01-2022'),
(31, '127.0.0.1', '09:55:44pm', '07-01-2022'),
(32, '127.0.0.1', '09:55:52pm', '07-01-2022'),
(33, '127.0.0.1', '09:56:06pm', '07-01-2022'),
(34, '127.0.0.1', '09:56:30pm', '07-01-2022'),
(35, '127.0.0.1', '09:56:46pm', '07-01-2022'),
(36, '127.0.0.1', '09:56:53pm', '07-01-2022'),
(37, '127.0.0.1', '09:57:19pm', '07-01-2022'),
(38, '127.0.0.1', '10:04:20pm', '07-01-2022'),
(39, '127.0.0.1', '10:05:20pm', '07-01-2022'),
(40, '127.0.0.1', '10:05:28pm', '07-01-2022'),
(41, '127.0.0.1', '10:47:08pm', '07-01-2022'),
(42, '127.0.0.1', '10:48:10pm', '07-01-2022'),
(43, '127.0.0.1', '10:48:16pm', '07-01-2022'),
(44, '127.0.0.1', '10:48:23pm', '07-01-2022'),
(45, '127.0.0.1', '10:48:45pm', '07-01-2022'),
(46, '127.0.0.1', '10:50:08pm', '07-01-2022'),
(47, '127.0.0.1', '10:50:11pm', '07-01-2022'),
(48, '127.0.0.1', '10:50:28pm', '07-01-2022'),
(49, '127.0.0.1', '10:51:07pm', '07-01-2022'),
(50, '127.0.0.1', '10:51:23pm', '07-01-2022'),
(51, '127.0.0.1', '10:51:42pm', '07-01-2022'),
(52, '127.0.0.1', '10:51:46pm', '07-01-2022'),
(53, '127.0.0.1', '10:51:53pm', '07-01-2022'),
(54, '127.0.0.1', '11:17:06pm', '07-01-2022'),
(55, '127.0.0.1', '11:21:20pm', '07-01-2022'),
(56, '127.0.0.1', '11:21:28pm', '07-01-2022'),
(57, '127.0.0.1', '11:22:52pm', '07-01-2022'),
(58, '127.0.0.1', '11:23:46pm', '07-01-2022'),
(59, '127.0.0.1', '11:26:21pm', '07-01-2022'),
(60, '127.0.0.1', '11:26:24pm', '07-01-2022'),
(61, '127.0.0.1', '11:26:26pm', '07-01-2022'),
(62, '127.0.0.1', '11:26:44pm', '07-01-2022'),
(63, '127.0.0.1', '11:26:59pm', '07-01-2022'),
(64, '127.0.0.1', '11:27:03pm', '07-01-2022'),
(65, '127.0.0.1', '11:27:06pm', '07-01-2022'),
(66, '127.0.0.1', '11:27:23pm', '07-01-2022'),
(67, '127.0.0.1', '11:27:27pm', '07-01-2022'),
(68, '127.0.0.1', '11:27:32pm', '07-01-2022'),
(69, '127.0.0.1', '11:27:40pm', '07-01-2022'),
(70, '127.0.0.1', '11:27:46pm', '07-01-2022'),
(71, '127.0.0.1', '11:28:21pm', '07-01-2022'),
(72, '127.0.0.1', '11:28:28pm', '07-01-2022'),
(73, '127.0.0.1', '11:32:44pm', '07-01-2022'),
(74, '127.0.0.1', '11:32:48pm', '07-01-2022'),
(75, '127.0.0.1', '11:33:32pm', '07-01-2022'),
(76, '127.0.0.1', '11:33:35pm', '07-01-2022'),
(77, '127.0.0.1', '11:36:21pm', '07-01-2022'),
(78, '127.0.0.1', '11:36:32pm', '07-01-2022'),
(79, '127.0.0.1', '11:38:55pm', '07-01-2022'),
(80, '127.0.0.1', '11:39:03pm', '07-01-2022'),
(81, '127.0.0.1', '11:40:18pm', '07-01-2022'),
(82, '127.0.0.1', '11:40:26pm', '07-01-2022'),
(83, '127.0.0.1', '11:41:14pm', '07-01-2022'),
(84, '127.0.0.1', '11:41:22pm', '07-01-2022'),
(85, '127.0.0.1', '10:27:47pm', '08-01-2022'),
(86, '127.0.0.1', '10:39:17pm', '08-01-2022'),
(87, '127.0.0.1', '11:12:36pm', '08-01-2022'),
(88, '127.0.0.1', '10:41:18pm', '09-01-2022'),
(89, '127.0.0.1', '10:22:25pm', '10-01-2022'),
(90, '127.0.0.1', '10:30:55pm', '10-01-2022'),
(91, '127.0.0.1', '11:01:26pm', '10-01-2022'),
(92, '127.0.0.1', '11:01:42pm', '10-01-2022'),
(93, '127.0.0.1', '11:01:49pm', '10-01-2022'),
(94, '127.0.0.1', '11:01:55pm', '10-01-2022'),
(95, '127.0.0.1', '11:02:08pm', '10-01-2022'),
(96, '127.0.0.1', '11:02:16pm', '10-01-2022'),
(97, '127.0.0.1', '11:02:22pm', '10-01-2022'),
(98, '127.0.0.1', '11:02:38pm', '10-01-2022'),
(99, '127.0.0.1', '11:08:09pm', '10-01-2022'),
(100, '127.0.0.1', '11:08:27pm', '10-01-2022'),
(101, '127.0.0.1', '11:09:03pm', '10-01-2022'),
(102, '127.0.0.1', '11:09:41pm', '10-01-2022'),
(103, '127.0.0.1', '11:09:45pm', '10-01-2022'),
(104, '127.0.0.1', '11:10:09pm', '10-01-2022'),
(105, '127.0.0.1', '11:10:15pm', '10-01-2022'),
(106, '127.0.0.1', '11:10:22pm', '10-01-2022'),
(107, '127.0.0.1', '11:10:35pm', '10-01-2022'),
(108, '127.0.0.1', '11:10:44pm', '10-01-2022'),
(109, '127.0.0.1', '11:10:47pm', '10-01-2022'),
(110, '127.0.0.1', '11:11:28pm', '10-01-2022'),
(111, '127.0.0.1', '11:11:46pm', '10-01-2022'),
(112, '127.0.0.1', '11:12:39pm', '10-01-2022'),
(113, '127.0.0.1', '11:13:43pm', '10-01-2022'),
(114, '127.0.0.1', '11:27:10pm', '10-01-2022'),
(115, '127.0.0.1', '11:27:12pm', '10-01-2022'),
(116, '127.0.0.1', '11:27:19pm', '10-01-2022'),
(117, '127.0.0.1', '11:32:25pm', '10-01-2022'),
(118, '127.0.0.1', '11:32:30pm', '10-01-2022'),
(119, '127.0.0.1', '11:32:32pm', '10-01-2022'),
(120, '127.0.0.1', '11:32:53pm', '10-01-2022'),
(121, '127.0.0.1', '11:32:57pm', '10-01-2022'),
(122, '127.0.0.1', '11:33:11pm', '10-01-2022'),
(123, '127.0.0.1', '11:34:13pm', '10-01-2022'),
(124, '127.0.0.1', '11:34:41pm', '10-01-2022'),
(125, '127.0.0.1', '11:34:45pm', '10-01-2022'),
(126, '127.0.0.1', '11:35:03pm', '10-01-2022'),
(127, '127.0.0.1', '11:35:22pm', '10-01-2022'),
(128, '127.0.0.1', '11:35:53pm', '10-01-2022'),
(129, '127.0.0.1', '11:36:02pm', '10-01-2022'),
(130, '127.0.0.1', '11:38:11pm', '10-01-2022'),
(131, '127.0.0.1', '11:38:22pm', '10-01-2022'),
(132, '127.0.0.1', '11:38:26pm', '10-01-2022'),
(133, '127.0.0.1', '11:38:33pm', '10-01-2022'),
(134, '127.0.0.1', '11:39:13pm', '10-01-2022'),
(135, '127.0.0.1', '11:39:36pm', '10-01-2022'),
(136, '127.0.0.1', '11:39:49pm', '10-01-2022'),
(137, '127.0.0.1', '11:39:58pm', '10-01-2022'),
(138, '127.0.0.1', '11:40:00pm', '10-01-2022'),
(139, '127.0.0.1', '11:40:02pm', '10-01-2022'),
(140, '127.0.0.1', '11:41:50pm', '10-01-2022'),
(141, '127.0.0.1', '11:41:53pm', '10-01-2022'),
(142, '127.0.0.1', '11:41:56pm', '10-01-2022'),
(143, '127.0.0.1', '11:42:00pm', '10-01-2022'),
(144, '127.0.0.1', '11:42:15pm', '10-01-2022'),
(145, '127.0.0.1', '11:45:29pm', '10-01-2022'),
(146, '127.0.0.1', '11:45:36pm', '10-01-2022'),
(147, '127.0.0.1', '11:45:51pm', '10-01-2022'),
(148, '127.0.0.1', '11:45:56pm', '10-01-2022'),
(149, '127.0.0.1', '11:46:44pm', '10-01-2022'),
(150, '127.0.0.1', '11:47:20pm', '10-01-2022'),
(151, '127.0.0.1', '11:47:22pm', '10-01-2022'),
(152, '127.0.0.1', '11:47:32pm', '10-01-2022'),
(153, '127.0.0.1', '11:47:35pm', '10-01-2022'),
(154, '127.0.0.1', '11:47:36pm', '10-01-2022'),
(155, '127.0.0.1', '11:49:03pm', '10-01-2022'),
(156, '127.0.0.1', '11:51:46pm', '10-01-2022'),
(157, '127.0.0.1', '11:51:52pm', '10-01-2022'),
(158, '127.0.0.1', '11:52:05pm', '10-01-2022'),
(159, '127.0.0.1', '11:52:08pm', '10-01-2022'),
(160, '127.0.0.1', '11:52:13pm', '10-01-2022'),
(161, '127.0.0.1', '11:52:28pm', '10-01-2022'),
(162, '127.0.0.1', '11:52:38pm', '10-01-2022'),
(163, '127.0.0.1', '11:52:45pm', '10-01-2022'),
(164, '127.0.0.1', '11:53:31pm', '10-01-2022'),
(165, '127.0.0.1', '11:53:41pm', '10-01-2022'),
(166, '127.0.0.1', '11:53:45pm', '10-01-2022'),
(167, '127.0.0.1', '11:53:49pm', '10-01-2022'),
(168, '127.0.0.1', '11:53:54pm', '10-01-2022'),
(169, '127.0.0.1', '11:53:58pm', '10-01-2022'),
(170, '127.0.0.1', '11:54:07pm', '10-01-2022'),
(171, '127.0.0.1', '11:54:09pm', '10-01-2022'),
(172, '127.0.0.1', '11:54:12pm', '10-01-2022'),
(173, '127.0.0.1', '11:54:36pm', '10-01-2022'),
(174, '127.0.0.1', '12:25:21am', '11-01-2022'),
(175, '127.0.0.1', '12:25:33am', '11-01-2022'),
(176, '127.0.0.1', '12:26:01am', '11-01-2022'),
(177, '127.0.0.1', '12:26:47am', '11-01-2022'),
(178, '127.0.0.1', '12:27:02am', '11-01-2022'),
(179, '127.0.0.1', '12:27:11am', '11-01-2022'),
(180, '127.0.0.1', '12:30:48am', '11-01-2022'),
(181, '127.0.0.1', '12:31:20am', '11-01-2022'),
(182, '127.0.0.1', '12:31:47am', '11-01-2022'),
(183, '127.0.0.1', '12:32:35am', '11-01-2022'),
(184, '127.0.0.1', '10:15:00pm', '16-01-2022'),
(185, '127.0.0.1', '10:24:16pm', '19-01-2022'),
(186, '127.0.0.1', '10:27:55pm', '19-01-2022'),
(187, '127.0.0.1', '10:48:44pm', '19-01-2022'),
(188, '127.0.0.1', '10:48:53pm', '19-01-2022'),
(189, '127.0.0.1', '10:48:59pm', '19-01-2022'),
(190, '127.0.0.1', '10:49:06pm', '19-01-2022'),
(191, '127.0.0.1', '10:50:30pm', '19-01-2022'),
(192, '127.0.0.1', '10:50:40pm', '19-01-2022'),
(193, '127.0.0.1', '10:52:32pm', '19-01-2022'),
(194, '127.0.0.1', '10:52:37pm', '19-01-2022'),
(195, '127.0.0.1', '10:53:04pm', '19-01-2022'),
(196, '127.0.0.1', '10:53:21pm', '19-01-2022'),
(197, '127.0.0.1', '10:53:24pm', '19-01-2022'),
(198, '127.0.0.1', '10:53:40pm', '19-01-2022'),
(199, '127.0.0.1', '10:54:18pm', '19-01-2022'),
(200, '127.0.0.1', '10:54:22pm', '19-01-2022'),
(201, '127.0.0.1', '10:54:29pm', '19-01-2022'),
(202, '127.0.0.1', '10:54:37pm', '19-01-2022'),
(203, '127.0.0.1', '10:54:42pm', '19-01-2022'),
(204, '127.0.0.1', '10:54:54pm', '19-01-2022'),
(205, '127.0.0.1', '10:55:40pm', '19-01-2022'),
(206, '127.0.0.1', '10:55:46pm', '19-01-2022'),
(207, '127.0.0.1', '10:55:57pm', '19-01-2022'),
(208, '127.0.0.1', '10:56:04pm', '19-01-2022'),
(209, '127.0.0.1', '10:56:12pm', '19-01-2022'),
(210, '127.0.0.1', '10:56:42pm', '19-01-2022'),
(211, '127.0.0.1', '11:04:27pm', '19-01-2022'),
(212, '127.0.0.1', '11:05:02pm', '19-01-2022'),
(213, '127.0.0.1', '11:05:43pm', '19-01-2022'),
(214, '127.0.0.1', '11:11:53pm', '19-01-2022'),
(215, '127.0.0.1', '11:12:01pm', '19-01-2022'),
(216, '127.0.0.1', '11:12:12pm', '19-01-2022'),
(217, '127.0.0.1', '11:12:22pm', '19-01-2022'),
(218, '127.0.0.1', '11:12:24pm', '19-01-2022'),
(219, '127.0.0.1', '11:12:28pm', '19-01-2022'),
(220, '127.0.0.1', '11:12:34pm', '19-01-2022'),
(221, '127.0.0.1', '11:12:46pm', '19-01-2022'),
(222, '127.0.0.1', '11:12:48pm', '19-01-2022'),
(223, '127.0.0.1', '11:12:53pm', '19-01-2022'),
(224, '127.0.0.1', '11:13:58pm', '19-01-2022'),
(225, '127.0.0.1', '11:14:00pm', '19-01-2022'),
(226, '127.0.0.1', '11:14:07pm', '19-01-2022'),
(227, '127.0.0.1', '11:14:11pm', '19-01-2022'),
(228, '127.0.0.1', '11:15:23pm', '19-01-2022'),
(229, '127.0.0.1', '11:22:37pm', '19-01-2022'),
(230, '127.0.0.1', '11:22:40pm', '19-01-2022'),
(231, '127.0.0.1', '11:23:06pm', '19-01-2022'),
(232, '127.0.0.1', '11:23:13pm', '19-01-2022'),
(233, '127.0.0.1', '11:24:16pm', '19-01-2022'),
(234, '127.0.0.1', '11:25:09pm', '19-01-2022'),
(235, '127.0.0.1', '11:31:11pm', '19-01-2022'),
(236, '127.0.0.1', '11:31:19pm', '19-01-2022'),
(237, '127.0.0.1', '11:31:33pm', '19-01-2022'),
(238, '127.0.0.1', '11:31:37pm', '19-01-2022'),
(239, '127.0.0.1', '11:31:40pm', '19-01-2022'),
(240, '127.0.0.1', '11:31:47pm', '19-01-2022'),
(241, '127.0.0.1', '11:31:58pm', '19-01-2022'),
(242, '127.0.0.1', '11:37:27pm', '19-01-2022'),
(243, '127.0.0.1', '11:38:11pm', '19-01-2022'),
(244, '127.0.0.1', '11:38:21pm', '19-01-2022'),
(245, '127.0.0.1', '11:38:33pm', '19-01-2022'),
(246, '127.0.0.1', '10:48:38pm', '20-01-2022'),
(247, '127.0.0.1', '10:58:20pm', '20-01-2022'),
(248, '127.0.0.1', '10:58:26pm', '20-01-2022'),
(249, '127.0.0.1', '10:58:39pm', '20-01-2022'),
(250, '127.0.0.1', '10:58:59pm', '20-01-2022'),
(251, '127.0.0.1', '10:59:03pm', '20-01-2022'),
(252, '127.0.0.1', '10:59:05pm', '20-01-2022'),
(253, '127.0.0.1', '10:59:10pm', '20-01-2022'),
(254, '127.0.0.1', '10:59:26pm', '20-01-2022'),
(255, '127.0.0.1', '10:59:40pm', '20-01-2022'),
(256, '127.0.0.1', '11:28:34pm', '20-01-2022'),
(257, '127.0.0.1', '11:28:35pm', '20-01-2022'),
(258, '127.0.0.1', '11:28:55pm', '20-01-2022'),
(259, '127.0.0.1', '11:29:02pm', '20-01-2022'),
(260, '127.0.0.1', '11:29:10pm', '20-01-2022'),
(261, '127.0.0.1', '11:29:13pm', '20-01-2022'),
(262, '127.0.0.1', '11:29:16pm', '20-01-2022'),
(263, '127.0.0.1', '11:29:28pm', '20-01-2022'),
(264, '127.0.0.1', '11:29:34pm', '20-01-2022'),
(265, '127.0.0.1', '11:29:46pm', '20-01-2022'),
(266, '127.0.0.1', '11:30:05pm', '20-01-2022'),
(267, '127.0.0.1', '11:30:41pm', '20-01-2022'),
(268, '127.0.0.1', '11:33:50pm', '20-01-2022'),
(269, '127.0.0.1', '11:34:57pm', '20-01-2022'),
(270, '127.0.0.1', '11:38:37pm', '20-01-2022'),
(271, '127.0.0.1', '11:41:01pm', '20-01-2022'),
(272, '127.0.0.1', '12:15:15am', '21-01-2022'),
(273, '127.0.0.1', '12:15:55am', '21-01-2022'),
(274, '127.0.0.1', '12:16:18am', '21-01-2022'),
(275, '127.0.0.1', '12:16:30am', '21-01-2022'),
(276, '127.0.0.1', '12:17:45am', '21-01-2022'),
(277, '127.0.0.1', '12:18:59am', '21-01-2022'),
(278, '127.0.0.1', '12:27:21am', '21-01-2022'),
(279, '127.0.0.1', '12:27:29am', '21-01-2022'),
(280, '127.0.0.1', '12:34:19am', '21-01-2022'),
(281, '127.0.0.1', '12:39:48am', '21-01-2022'),
(282, '127.0.0.1', '12:40:05am', '21-01-2022'),
(283, '127.0.0.1', '12:40:13am', '21-01-2022'),
(284, '127.0.0.1', '12:45:50am', '21-01-2022'),
(285, '127.0.0.1', '12:46:07am', '21-01-2022'),
(286, '127.0.0.1', '12:46:32am', '21-01-2022'),
(287, '127.0.0.1', '12:47:07am', '21-01-2022'),
(288, '127.0.0.1', '12:47:19am', '21-01-2022'),
(289, '127.0.0.1', '12:47:28am', '21-01-2022'),
(290, '127.0.0.1', '12:47:49am', '21-01-2022'),
(291, '127.0.0.1', '12:48:11am', '21-01-2022'),
(292, '127.0.0.1', '12:50:07am', '21-01-2022'),
(293, '127.0.0.1', '12:51:14am', '21-01-2022'),
(294, '127.0.0.1', '12:51:35am', '21-01-2022'),
(295, '127.0.0.1', '12:51:51am', '21-01-2022'),
(296, '127.0.0.1', '12:53:54am', '21-01-2022'),
(297, '127.0.0.1', '12:55:13am', '21-01-2022'),
(298, '127.0.0.1', '12:55:49am', '21-01-2022'),
(299, '127.0.0.1', '12:57:43am', '21-01-2022'),
(300, '127.0.0.1', '12:59:32am', '21-01-2022'),
(301, '127.0.0.1', '01:10:45am', '21-01-2022'),
(302, '127.0.0.1', '01:13:30am', '21-01-2022'),
(303, '127.0.0.1', '01:17:39am', '21-01-2022'),
(304, '127.0.0.1', '01:19:27am', '21-01-2022'),
(305, '127.0.0.1', '01:20:25am', '21-01-2022'),
(306, '127.0.0.1', '01:21:31am', '21-01-2022'),
(307, '127.0.0.1', '01:48:15am', '21-01-2022'),
(308, '127.0.0.1', '01:48:23am', '21-01-2022'),
(309, '127.0.0.1', '01:48:47am', '21-01-2022'),
(310, '127.0.0.1', '01:52:39am', '21-01-2022'),
(311, '127.0.0.1', '01:56:09am', '21-01-2022'),
(312, '127.0.0.1', '01:57:51am', '21-01-2022'),
(313, '127.0.0.1', '02:00:49am', '21-01-2022'),
(314, '127.0.0.1', '02:00:59am', '21-01-2022'),
(315, '127.0.0.1', '02:01:07am', '21-01-2022'),
(316, '127.0.0.1', '02:02:31am', '21-01-2022'),
(317, '127.0.0.1', '02:02:46am', '21-01-2022'),
(318, '127.0.0.1', '02:03:22am', '21-01-2022'),
(319, '127.0.0.1', '11:07:32am', '21-01-2022'),
(320, '127.0.0.1', '11:32:59am', '21-01-2022'),
(321, '127.0.0.1', '11:36:13am', '21-01-2022'),
(322, '127.0.0.1', '11:36:25am', '21-01-2022'),
(323, '127.0.0.1', '11:36:37am', '21-01-2022'),
(324, '127.0.0.1', '11:54:02am', '21-01-2022'),
(325, '127.0.0.1', '11:58:31am', '21-01-2022'),
(326, '127.0.0.1', '11:59:16am', '21-01-2022'),
(327, '127.0.0.1', '12:00:32pm', '21-01-2022'),
(328, '127.0.0.1', '12:00:43pm', '21-01-2022'),
(329, '127.0.0.1', '12:00:46pm', '21-01-2022'),
(330, '127.0.0.1', '12:03:14pm', '21-01-2022'),
(331, '127.0.0.1', '12:03:25pm', '21-01-2022'),
(332, '127.0.0.1', '12:12:39pm', '21-01-2022'),
(333, '127.0.0.1', '12:13:50pm', '21-01-2022'),
(334, '127.0.0.1', '08:01:41pm', '21-01-2022'),
(335, '127.0.0.1', '09:16:02pm', '21-01-2022'),
(336, '127.0.0.1', '11:27:50pm', '21-01-2022'),
(337, '127.0.0.1', '11:37:40pm', '21-01-2022'),
(338, '127.0.0.1', '11:38:35pm', '21-01-2022'),
(339, '127.0.0.1', '11:44:09pm', '21-01-2022'),
(340, '127.0.0.1', '11:44:18pm', '21-01-2022'),
(341, '127.0.0.1', '11:44:31pm', '21-01-2022'),
(342, '127.0.0.1', '11:46:04pm', '21-01-2022'),
(343, '127.0.0.1', '12:00:17am', '22-01-2022'),
(344, '127.0.0.1', '12:10:49am', '22-01-2022'),
(345, '127.0.0.1', '12:12:21am', '22-01-2022'),
(346, '127.0.0.1', '12:19:50am', '22-01-2022'),
(347, '127.0.0.1', '12:21:39am', '22-01-2022'),
(348, '127.0.0.1', '09:36:28pm', '22-01-2022'),
(349, '127.0.0.1', '09:36:40pm', '22-01-2022'),
(350, '127.0.0.1', '09:40:04pm', '22-01-2022'),
(351, '127.0.0.1', '09:41:24pm', '22-01-2022'),
(352, '127.0.0.1', '09:45:16pm', '22-01-2022'),
(353, '127.0.0.1', '09:49:38pm', '22-01-2022'),
(354, '127.0.0.1', '09:57:54pm', '22-01-2022'),
(355, '127.0.0.1', '10:08:42pm', '22-01-2022'),
(356, '127.0.0.1', '10:09:00pm', '22-01-2022'),
(357, '127.0.0.1', '10:09:08pm', '22-01-2022'),
(358, '127.0.0.1', '10:10:13pm', '22-01-2022'),
(359, '127.0.0.1', '10:20:24pm', '22-01-2022'),
(360, '127.0.0.1', '10:21:27pm', '22-01-2022'),
(361, '127.0.0.1', '10:21:43pm', '22-01-2022'),
(362, '127.0.0.1', '10:21:49pm', '22-01-2022'),
(363, '127.0.0.1', '10:21:53pm', '22-01-2022'),
(364, '127.0.0.1', '10:22:12pm', '22-01-2022'),
(365, '127.0.0.1', '10:25:55pm', '22-01-2022'),
(366, '127.0.0.1', '10:26:06pm', '22-01-2022'),
(367, '127.0.0.1', '10:27:03pm', '22-01-2022'),
(368, '127.0.0.1', '10:27:12pm', '22-01-2022'),
(369, '127.0.0.1', '10:27:16pm', '22-01-2022'),
(370, '127.0.0.1', '10:27:26pm', '22-01-2022'),
(371, '127.0.0.1', '10:27:37pm', '22-01-2022'),
(372, '127.0.0.1', '10:27:46pm', '22-01-2022'),
(373, '127.0.0.1', '10:29:36pm', '22-01-2022'),
(374, '127.0.0.1', '10:29:51pm', '22-01-2022'),
(375, '127.0.0.1', '10:29:56pm', '22-01-2022'),
(376, '127.0.0.1', '10:30:04pm', '22-01-2022'),
(377, '127.0.0.1', '10:30:15pm', '22-01-2022'),
(378, '127.0.0.1', '10:30:31pm', '22-01-2022'),
(379, '127.0.0.1', '10:30:43pm', '22-01-2022'),
(380, '127.0.0.1', '10:32:14pm', '22-01-2022'),
(381, '127.0.0.1', '10:32:19pm', '22-01-2022'),
(382, '127.0.0.1', '10:32:27pm', '22-01-2022'),
(383, '127.0.0.1', '10:36:26pm', '22-01-2022'),
(384, '127.0.0.1', '10:36:37pm', '22-01-2022'),
(385, '127.0.0.1', '10:36:51pm', '22-01-2022'),
(386, '127.0.0.1', '10:37:03pm', '22-01-2022'),
(387, '127.0.0.1', '10:46:24pm', '22-01-2022'),
(388, '127.0.0.1', '10:48:04pm', '22-01-2022'),
(389, '127.0.0.1', '10:58:06pm', '22-01-2022'),
(390, '127.0.0.1', '10:58:15pm', '22-01-2022'),
(391, '127.0.0.1', '11:19:49pm', '22-01-2022'),
(392, '127.0.0.1', '11:19:57pm', '22-01-2022'),
(393, '127.0.0.1', '11:20:07pm', '22-01-2022'),
(394, '127.0.0.1', '11:20:41pm', '22-01-2022'),
(395, '127.0.0.1', '11:20:59pm', '22-01-2022'),
(396, '127.0.0.1', '11:21:06pm', '22-01-2022'),
(397, '127.0.0.1', '11:21:14pm', '22-01-2022'),
(398, '127.0.0.1', '11:21:21pm', '22-01-2022'),
(399, '127.0.0.1', '11:22:08pm', '22-01-2022'),
(400, '127.0.0.1', '11:22:15pm', '22-01-2022'),
(401, '127.0.0.1', '12:01:03am', '23-01-2022'),
(402, '127.0.0.1', '12:02:59am', '23-01-2022'),
(403, '127.0.0.1', '12:03:14am', '23-01-2022'),
(404, '127.0.0.1', '12:03:17am', '23-01-2022'),
(405, '127.0.0.1', '12:03:21am', '23-01-2022'),
(406, '127.0.0.1', '12:03:23am', '23-01-2022'),
(407, '127.0.0.1', '09:49:37pm', '23-01-2022'),
(408, '127.0.0.1', '11:19:05pm', '23-01-2022'),
(409, '127.0.0.1', '11:19:29pm', '23-01-2022'),
(410, '127.0.0.1', '11:20:08pm', '23-01-2022'),
(411, '127.0.0.1', '11:20:44pm', '23-01-2022'),
(412, '127.0.0.1', '11:41:59pm', '23-01-2022'),
(413, '127.0.0.1', '11:42:00pm', '23-01-2022'),
(414, '127.0.0.1', '11:44:26pm', '23-01-2022'),
(415, '127.0.0.1', '11:44:30pm', '23-01-2022'),
(416, '127.0.0.1', '09:55:52pm', '25-01-2022'),
(417, '127.0.0.1', '09:59:03pm', '25-01-2022'),
(418, '127.0.0.1', '09:59:13pm', '25-01-2022'),
(419, '127.0.0.1', '09:59:20pm', '25-01-2022'),
(420, '127.0.0.1', '10:12:54pm', '25-01-2022'),
(421, '127.0.0.1', '10:13:48pm', '25-01-2022'),
(422, '127.0.0.1', '10:13:56pm', '25-01-2022'),
(423, '127.0.0.1', '10:18:30pm', '25-01-2022'),
(424, '127.0.0.1', '10:18:34pm', '25-01-2022'),
(425, '127.0.0.1', '10:19:02pm', '25-01-2022'),
(426, '127.0.0.1', '10:19:10pm', '25-01-2022'),
(427, '127.0.0.1', '10:20:47pm', '25-01-2022'),
(428, '127.0.0.1', '10:20:50pm', '25-01-2022'),
(429, '127.0.0.1', '10:20:52pm', '25-01-2022'),
(430, '127.0.0.1', '10:20:54pm', '25-01-2022'),
(431, '127.0.0.1', '10:21:01pm', '25-01-2022'),
(432, '127.0.0.1', '10:21:06pm', '25-01-2022'),
(433, '127.0.0.1', '10:21:11pm', '25-01-2022'),
(434, '127.0.0.1', '10:21:17pm', '25-01-2022'),
(435, '127.0.0.1', '10:22:23pm', '25-01-2022'),
(436, '127.0.0.1', '10:22:35pm', '25-01-2022'),
(437, '127.0.0.1', '10:22:38pm', '25-01-2022'),
(438, '127.0.0.1', '10:22:46pm', '25-01-2022'),
(439, '127.0.0.1', '10:22:49pm', '25-01-2022'),
(440, '127.0.0.1', '10:22:55pm', '25-01-2022'),
(441, '127.0.0.1', '10:23:03pm', '25-01-2022'),
(442, '127.0.0.1', '10:23:11pm', '25-01-2022'),
(443, '127.0.0.1', '10:23:26pm', '25-01-2022'),
(444, '127.0.0.1', '10:23:29pm', '25-01-2022'),
(445, '127.0.0.1', '10:23:38pm', '25-01-2022'),
(446, '127.0.0.1', '10:23:43pm', '25-01-2022'),
(447, '127.0.0.1', '10:23:51pm', '25-01-2022'),
(448, '127.0.0.1', '10:23:55pm', '25-01-2022'),
(449, '127.0.0.1', '10:24:02pm', '25-01-2022'),
(450, '127.0.0.1', '10:24:06pm', '25-01-2022'),
(451, '127.0.0.1', '10:25:40pm', '25-01-2022'),
(452, '127.0.0.1', '10:25:43pm', '25-01-2022'),
(453, '127.0.0.1', '10:25:51pm', '25-01-2022'),
(454, '127.0.0.1', '10:25:53pm', '25-01-2022'),
(455, '127.0.0.1', '10:26:36pm', '25-01-2022'),
(456, '127.0.0.1', '10:26:38pm', '25-01-2022'),
(457, '127.0.0.1', '10:29:04pm', '25-01-2022'),
(458, '127.0.0.1', '10:29:19pm', '25-01-2022'),
(459, '127.0.0.1', '10:29:23pm', '25-01-2022'),
(460, '127.0.0.1', '10:29:25pm', '25-01-2022'),
(461, '127.0.0.1', '10:29:36pm', '25-01-2022'),
(462, '127.0.0.1', '10:29:39pm', '25-01-2022'),
(463, '127.0.0.1', '10:29:45pm', '25-01-2022'),
(464, '127.0.0.1', '10:29:58pm', '25-01-2022'),
(465, '127.0.0.1', '10:30:06pm', '25-01-2022'),
(466, '127.0.0.1', '10:30:26pm', '25-01-2022'),
(467, '127.0.0.1', '10:47:29pm', '25-01-2022'),
(468, '127.0.0.1', '10:47:32pm', '25-01-2022'),
(469, '127.0.0.1', '10:47:36pm', '25-01-2022'),
(470, '127.0.0.1', '10:47:38pm', '25-01-2022'),
(471, '127.0.0.1', '10:47:44pm', '25-01-2022'),
(472, '127.0.0.1', '10:48:03pm', '25-01-2022'),
(473, '127.0.0.1', '10:57:55pm', '25-01-2022'),
(474, '127.0.0.1', '10:58:13pm', '25-01-2022'),
(475, '127.0.0.1', '11:01:53pm', '25-01-2022'),
(476, '127.0.0.1', '11:02:20pm', '25-01-2022'),
(477, '127.0.0.1', '11:07:18pm', '25-01-2022'),
(478, '127.0.0.1', '11:07:30pm', '25-01-2022'),
(479, '127.0.0.1', '09:59:05pm', '31-01-2022'),
(480, '127.0.0.1', '10:32:18pm', '31-01-2022'),
(481, '127.0.0.1', '10:32:33pm', '31-01-2022'),
(482, '127.0.0.1', '10:33:28pm', '31-01-2022'),
(483, '127.0.0.1', '10:33:36pm', '31-01-2022'),
(484, '127.0.0.1', '10:33:37pm', '31-01-2022'),
(485, '127.0.0.1', '10:33:47pm', '31-01-2022'),
(486, '127.0.0.1', '10:35:55pm', '31-01-2022'),
(487, '127.0.0.1', '10:37:59pm', '31-01-2022'),
(488, '127.0.0.1', '10:38:14pm', '31-01-2022'),
(489, '127.0.0.1', '10:38:16pm', '31-01-2022'),
(490, '127.0.0.1', '10:38:28pm', '31-01-2022'),
(491, '127.0.0.1', '10:38:39pm', '31-01-2022'),
(492, '127.0.0.1', '10:38:56pm', '31-01-2022'),
(493, '127.0.0.1', '10:39:19pm', '31-01-2022'),
(494, '127.0.0.1', '10:39:37pm', '31-01-2022'),
(495, '127.0.0.1', '10:39:53pm', '31-01-2022'),
(496, '127.0.0.1', '10:44:00pm', '31-01-2022'),
(497, '127.0.0.1', '10:44:21pm', '31-01-2022'),
(498, '127.0.0.1', '10:44:26pm', '31-01-2022'),
(499, '127.0.0.1', '10:44:39pm', '31-01-2022'),
(500, '127.0.0.1', '10:45:05pm', '31-01-2022'),
(501, '127.0.0.1', '10:45:09pm', '31-01-2022'),
(502, '127.0.0.1', '10:47:28pm', '31-01-2022'),
(503, '127.0.0.1', '10:48:04pm', '31-01-2022'),
(504, '127.0.0.1', '10:48:17pm', '31-01-2022'),
(505, '127.0.0.1', '10:48:29pm', '31-01-2022'),
(506, '127.0.0.1', '10:50:49pm', '31-01-2022'),
(507, '127.0.0.1', '10:51:17pm', '31-01-2022'),
(508, '127.0.0.1', '10:51:26pm', '31-01-2022'),
(509, '127.0.0.1', '10:52:46pm', '31-01-2022'),
(510, '127.0.0.1', '10:53:07pm', '31-01-2022'),
(511, '127.0.0.1', '10:54:58pm', '31-01-2022'),
(512, '127.0.0.1', '10:55:09pm', '31-01-2022'),
(513, '127.0.0.1', '10:55:15pm', '31-01-2022'),
(514, '127.0.0.1', '10:55:44pm', '31-01-2022'),
(515, '127.0.0.1', '10:55:52pm', '31-01-2022'),
(516, '127.0.0.1', '10:56:58pm', '31-01-2022'),
(517, '127.0.0.1', '10:57:12pm', '31-01-2022'),
(518, '127.0.0.1', '10:58:11pm', '31-01-2022'),
(519, '127.0.0.1', '10:58:36pm', '31-01-2022'),
(520, '127.0.0.1', '10:59:41pm', '31-01-2022'),
(521, '127.0.0.1', '11:00:02pm', '31-01-2022'),
(522, '127.0.0.1', '11:00:08pm', '31-01-2022'),
(523, '127.0.0.1', '11:00:20pm', '31-01-2022'),
(524, '127.0.0.1', '11:01:39pm', '31-01-2022'),
(525, '127.0.0.1', '11:46:20pm', '31-01-2022'),
(526, '127.0.0.1', '11:46:29pm', '31-01-2022'),
(527, '127.0.0.1', '12:01:55am', '01-02-2022'),
(528, '127.0.0.1', '08:43:19pm', '01-02-2022'),
(529, '127.0.0.1', '08:47:54pm', '01-02-2022'),
(530, '127.0.0.1', '08:49:06pm', '01-02-2022'),
(531, '127.0.0.1', '08:45:27pm', '02-02-2022'),
(532, '127.0.0.1', '10:03:42pm', '02-02-2022'),
(533, '127.0.0.1', '10:03:44pm', '02-02-2022'),
(534, '127.0.0.1', '10:11:02pm', '02-02-2022'),
(535, '127.0.0.1', '10:11:11pm', '02-02-2022'),
(536, '127.0.0.1', '10:50:14am', '04-02-2022'),
(537, '127.0.0.1', '11:18:22am', '04-02-2022'),
(538, '127.0.0.1', '11:33:12am', '04-02-2022'),
(539, '127.0.0.1', '11:33:17am', '04-02-2022'),
(540, '127.0.0.1', '12:00:35pm', '04-02-2022'),
(541, '127.0.0.1', '12:17:56pm', '04-02-2022'),
(542, '127.0.0.1', '03:42:21pm', '04-02-2022'),
(543, '127.0.0.1', '03:42:45pm', '04-02-2022'),
(544, '127.0.0.1', '03:46:54pm', '04-02-2022'),
(545, '127.0.0.1', '03:56:53pm', '04-02-2022'),
(546, '127.0.0.1', '03:59:25pm', '04-02-2022'),
(547, '127.0.0.1', '04:00:51pm', '04-02-2022'),
(548, '127.0.0.1', '04:13:10pm', '04-02-2022'),
(549, '127.0.0.1', '04:16:25pm', '04-02-2022'),
(550, '127.0.0.1', '04:17:54pm', '04-02-2022'),
(551, '127.0.0.1', '04:39:11pm', '04-02-2022'),
(552, '127.0.0.1', '05:30:10pm', '04-02-2022'),
(553, '127.0.0.1', '05:33:09pm', '04-02-2022'),
(554, '127.0.0.1', '06:53:33pm', '04-02-2022'),
(555, '127.0.0.1', '06:53:35pm', '04-02-2022'),
(556, '127.0.0.1', '09:35:52pm', '04-02-2022'),
(557, '127.0.0.1', '09:36:05pm', '04-02-2022'),
(558, '127.0.0.1', '10:10:25pm', '04-02-2022'),
(559, '127.0.0.1', '10:35:49pm', '04-02-2022'),
(560, '127.0.0.1', '10:38:03pm', '04-02-2022'),
(561, '127.0.0.1', '10:38:06pm', '04-02-2022'),
(562, '127.0.0.1', '10:38:10pm', '04-02-2022'),
(563, '127.0.0.1', '10:39:09pm', '04-02-2022'),
(564, '127.0.0.1', '10:39:22pm', '04-02-2022'),
(565, '127.0.0.1', '10:39:24pm', '04-02-2022'),
(566, '127.0.0.1', '10:39:29pm', '04-02-2022'),
(567, '127.0.0.1', '10:40:40pm', '04-02-2022'),
(568, '127.0.0.1', '10:40:45pm', '04-02-2022'),
(569, '127.0.0.1', '10:42:51pm', '04-02-2022'),
(570, '127.0.0.1', '10:45:41pm', '04-02-2022'),
(571, '127.0.0.1', '10:46:17pm', '04-02-2022'),
(572, '127.0.0.1', '10:47:43pm', '04-02-2022'),
(573, '127.0.0.1', '10:47:51pm', '04-02-2022'),
(574, '127.0.0.1', '10:49:24pm', '04-02-2022'),
(575, '127.0.0.1', '10:50:06pm', '04-02-2022'),
(576, '127.0.0.1', '10:50:11pm', '04-02-2022'),
(577, '127.0.0.1', '10:50:19pm', '04-02-2022'),
(578, '127.0.0.1', '10:50:30pm', '04-02-2022'),
(579, '127.0.0.1', '10:50:40pm', '04-02-2022'),
(580, '127.0.0.1', '10:50:47pm', '04-02-2022'),
(581, '127.0.0.1', '10:50:50pm', '04-02-2022'),
(582, '127.0.0.1', '10:51:05pm', '04-02-2022'),
(583, '127.0.0.1', '10:51:11pm', '04-02-2022'),
(584, '127.0.0.1', '10:51:16pm', '04-02-2022'),
(585, '127.0.0.1', '10:51:41pm', '04-02-2022'),
(586, '127.0.0.1', '10:51:46pm', '04-02-2022'),
(587, '127.0.0.1', '10:51:59pm', '04-02-2022'),
(588, '127.0.0.1', '10:52:04pm', '04-02-2022'),
(589, '127.0.0.1', '10:52:48pm', '04-02-2022'),
(590, '127.0.0.1', '10:52:55pm', '04-02-2022'),
(591, '127.0.0.1', '10:53:01pm', '04-02-2022'),
(592, '127.0.0.1', '10:57:22pm', '04-02-2022'),
(593, '127.0.0.1', '11:02:12pm', '04-02-2022'),
(594, '127.0.0.1', '11:02:36pm', '04-02-2022'),
(595, '127.0.0.1', '11:14:57pm', '04-02-2022'),
(596, '127.0.0.1', '11:15:51pm', '04-02-2022'),
(597, '127.0.0.1', '11:15:55pm', '04-02-2022'),
(598, '127.0.0.1', '11:16:17pm', '04-02-2022'),
(599, '127.0.0.1', '11:16:22pm', '04-02-2022'),
(600, '127.0.0.1', '11:16:29pm', '04-02-2022'),
(601, '127.0.0.1', '11:22:00pm', '04-02-2022'),
(602, '127.0.0.1', '11:22:28pm', '04-02-2022'),
(603, '127.0.0.1', '11:23:10pm', '04-02-2022'),
(604, '127.0.0.1', '08:32:55pm', '05-02-2022'),
(605, '127.0.0.1', '08:45:38pm', '05-02-2022'),
(606, '127.0.0.1', '08:45:49pm', '05-02-2022'),
(607, '127.0.0.1', '08:45:58pm', '05-02-2022'),
(608, '127.0.0.1', '08:46:29pm', '05-02-2022'),
(609, '127.0.0.1', '08:47:03pm', '05-02-2022'),
(610, '127.0.0.1', '08:47:15pm', '05-02-2022'),
(611, '127.0.0.1', '08:47:21pm', '05-02-2022'),
(612, '127.0.0.1', '08:47:24pm', '05-02-2022'),
(613, '127.0.0.1', '08:47:34pm', '05-02-2022'),
(614, '127.0.0.1', '08:47:53pm', '05-02-2022'),
(615, '127.0.0.1', '08:47:58pm', '05-02-2022'),
(616, '127.0.0.1', '08:48:06pm', '05-02-2022'),
(617, '127.0.0.1', '08:48:42pm', '05-02-2022'),
(618, '127.0.0.1', '08:48:55pm', '05-02-2022'),
(619, '127.0.0.1', '08:49:11pm', '05-02-2022'),
(620, '127.0.0.1', '08:50:14pm', '05-02-2022'),
(621, '127.0.0.1', '08:50:40pm', '05-02-2022'),
(622, '127.0.0.1', '08:51:44pm', '05-02-2022'),
(623, '127.0.0.1', '08:52:08pm', '05-02-2022'),
(624, '127.0.0.1', '08:52:22pm', '05-02-2022'),
(625, '127.0.0.1', '08:53:23pm', '05-02-2022'),
(626, '127.0.0.1', '08:55:36pm', '05-02-2022'),
(627, '127.0.0.1', '08:55:39pm', '05-02-2022'),
(628, '127.0.0.1', '08:55:47pm', '05-02-2022'),
(629, '127.0.0.1', '08:59:35pm', '05-02-2022'),
(630, '127.0.0.1', '09:01:20pm', '05-02-2022'),
(631, '127.0.0.1', '09:01:25pm', '05-02-2022'),
(632, '127.0.0.1', '09:01:34pm', '05-02-2022'),
(633, '127.0.0.1', '09:01:36pm', '05-02-2022'),
(634, '127.0.0.1', '09:01:41pm', '05-02-2022'),
(635, '127.0.0.1', '09:01:45pm', '05-02-2022'),
(636, '127.0.0.1', '09:01:49pm', '05-02-2022'),
(637, '127.0.0.1', '09:01:52pm', '05-02-2022'),
(638, '127.0.0.1', '09:02:23pm', '05-02-2022'),
(639, '127.0.0.1', '09:02:33pm', '05-02-2022'),
(640, '127.0.0.1', '09:04:11pm', '05-02-2022'),
(641, '127.0.0.1', '09:04:25pm', '05-02-2022'),
(642, '127.0.0.1', '09:04:27pm', '05-02-2022'),
(643, '127.0.0.1', '09:06:10pm', '05-02-2022'),
(644, '127.0.0.1', '09:10:11pm', '05-02-2022'),
(645, '127.0.0.1', '09:13:48pm', '05-02-2022'),
(646, '127.0.0.1', '09:14:01pm', '05-02-2022'),
(647, '127.0.0.1', '09:14:20pm', '05-02-2022'),
(648, '127.0.0.1', '09:14:25pm', '05-02-2022'),
(649, '127.0.0.1', '09:14:33pm', '05-02-2022'),
(650, '127.0.0.1', '09:14:40pm', '05-02-2022'),
(651, '127.0.0.1', '09:14:44pm', '05-02-2022'),
(652, '127.0.0.1', '09:15:14pm', '05-02-2022'),
(653, '127.0.0.1', '09:15:26pm', '05-02-2022'),
(654, '127.0.0.1', '09:15:32pm', '05-02-2022'),
(655, '127.0.0.1', '09:15:55pm', '05-02-2022'),
(656, '127.0.0.1', '09:16:07pm', '05-02-2022'),
(657, '127.0.0.1', '09:16:28pm', '05-02-2022'),
(658, '127.0.0.1', '09:17:01pm', '05-02-2022'),
(659, '127.0.0.1', '09:17:08pm', '05-02-2022'),
(660, '127.0.0.1', '09:17:18pm', '05-02-2022'),
(661, '127.0.0.1', '09:24:11pm', '05-02-2022'),
(662, '127.0.0.1', '09:24:13pm', '05-02-2022'),
(663, '127.0.0.1', '09:24:17pm', '05-02-2022'),
(664, '127.0.0.1', '09:24:25pm', '05-02-2022'),
(665, '127.0.0.1', '09:26:35pm', '05-02-2022'),
(666, '127.0.0.1', '09:26:43pm', '05-02-2022'),
(667, '127.0.0.1', '09:27:23pm', '05-02-2022'),
(668, '127.0.0.1', '09:27:31pm', '05-02-2022'),
(669, '127.0.0.1', '09:28:05pm', '05-02-2022'),
(670, '127.0.0.1', '09:28:22pm', '05-02-2022'),
(671, '127.0.0.1', '09:28:30pm', '05-02-2022'),
(672, '127.0.0.1', '09:33:56pm', '05-02-2022'),
(673, '127.0.0.1', '09:34:14pm', '05-02-2022'),
(674, '127.0.0.1', '09:34:20pm', '05-02-2022'),
(675, '127.0.0.1', '09:34:57pm', '05-02-2022'),
(676, '127.0.0.1', '09:35:21pm', '05-02-2022'),
(677, '127.0.0.1', '09:36:03pm', '05-02-2022'),
(678, '127.0.0.1', '09:40:00pm', '05-02-2022'),
(679, '127.0.0.1', '09:41:23pm', '05-02-2022'),
(680, '127.0.0.1', '10:11:18pm', '05-02-2022'),
(681, '127.0.0.1', '10:46:03pm', '05-02-2022'),
(682, '127.0.0.1', '10:46:14pm', '05-02-2022'),
(683, '127.0.0.1', '10:46:35pm', '05-02-2022'),
(684, '127.0.0.1', '10:46:43pm', '05-02-2022'),
(685, '127.0.0.1', '10:46:47pm', '05-02-2022'),
(686, '127.0.0.1', '10:46:54pm', '05-02-2022'),
(687, '127.0.0.1', '10:47:46pm', '05-02-2022'),
(688, '127.0.0.1', '10:48:03pm', '05-02-2022'),
(689, '127.0.0.1', '11:21:21pm', '05-02-2022'),
(690, '127.0.0.1', '11:22:43pm', '05-02-2022'),
(691, '127.0.0.1', '11:26:33pm', '05-02-2022'),
(692, '127.0.0.1', '11:26:55pm', '05-02-2022'),
(693, '127.0.0.1', '11:35:04pm', '05-02-2022'),
(694, '127.0.0.1', '11:51:48pm', '05-02-2022'),
(695, '127.0.0.1', '12:07:11am', '06-02-2022'),
(696, '127.0.0.1', '12:08:34am', '06-02-2022'),
(697, '127.0.0.1', '12:09:08am', '06-02-2022'),
(698, '127.0.0.1', '12:20:38am', '06-02-2022'),
(699, '127.0.0.1', '12:22:54am', '06-02-2022'),
(700, '127.0.0.1', '12:23:17am', '06-02-2022'),
(701, '127.0.0.1', '12:23:43am', '06-02-2022'),
(702, '127.0.0.1', '12:23:51am', '06-02-2022'),
(703, '127.0.0.1', '12:23:58am', '06-02-2022'),
(704, '127.0.0.1', '12:25:31am', '06-02-2022'),
(705, '127.0.0.1', '12:25:47am', '06-02-2022'),
(706, '127.0.0.1', '12:26:33am', '06-02-2022'),
(707, '127.0.0.1', '12:04:43am', '07-02-2022'),
(708, '127.0.0.1', '12:04:45am', '07-02-2022'),
(709, '127.0.0.1', '12:05:47am', '07-02-2022'),
(710, '127.0.0.1', '12:05:52am', '07-02-2022'),
(711, '127.0.0.1', '12:26:47am', '07-02-2022'),
(712, '127.0.0.1', '12:26:49am', '07-02-2022'),
(713, '127.0.0.1', '12:53:56am', '07-02-2022'),
(714, '127.0.0.1', '12:56:20am', '07-02-2022'),
(715, '127.0.0.1', '12:56:21am', '07-02-2022'),
(716, '127.0.0.1', '12:57:51am', '07-02-2022'),
(717, '127.0.0.1', '10:02:47pm', '07-02-2022'),
(718, '127.0.0.1', '10:19:17pm', '07-02-2022'),
(719, '127.0.0.1', '10:49:03pm', '07-02-2022'),
(720, '127.0.0.1', '10:49:11pm', '07-02-2022'),
(721, '127.0.0.1', '10:49:18pm', '07-02-2022'),
(722, '127.0.0.1', '10:52:06pm', '07-02-2022'),
(723, '127.0.0.1', '11:11:43pm', '07-02-2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_level1`
--
ALTER TABLE `category_level1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_level2`
--
ALTER TABLE `category_level2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_level1`
--
ALTER TABLE `category_level1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_level2`
--
ALTER TABLE `category_level2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siteinfo`
--
ALTER TABLE `siteinfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
