-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2026 at 11:14 AM
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
-- Database: `motidukan`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color` varchar(20) NOT NULL DEFAULT '#6366f1',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `color`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Moti', 'moti', 'Pearls and beads', NULL, '#8b5cf6', 1, 1, '2026-03-26 02:01:02', '2026-03-26 02:01:02'),
(2, 'Taaro', 'taaro', 'Gold/silver threads and wire', NULL, '#f59e0b', 1, 2, '2026-03-26 02:01:02', '2026-03-26 02:01:02'),
(3, 'Dhaagey', 'dhaagey', 'Thread bundles and spools', NULL, '#10b981', 1, 3, '2026-03-26 02:01:02', '2026-03-26 02:01:02'),
(4, 'Guchhiyaan', 'guchhiyaan', 'Thread clusters and tassels', NULL, '#ef4444', 1, 4, '2026-03-26 02:01:02', '2026-03-26 02:01:02'),
(5, 'Lace', 'lace', 'Decorative laces', NULL, '#3b82f6', 1, 5, '2026-03-26 02:01:02', '2026-03-26 02:01:02'),
(6, 'Buttons', 'buttons', 'Buttons and fasteners', NULL, '#f97316', 1, 6, '2026-03-26 02:01:02', '2026-03-26 02:01:02');

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
(4, '2026_03_26_000001_create_categories_table', 1),
(5, '2026_03_26_000002_create_products_table', 1),
(6, '2026_03_26_000003_create_sales_table', 1),
(7, '2026_03_26_000004_create_sale_items_table', 1),
(8, '2026_03_26_000005_create_stock_movements_table', 1),
(9, '2026_03_26_063806_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
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
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `unit_type` enum('weight','length','piece','dozen') NOT NULL DEFAULT 'piece',
  `unit_label` varchar(30) NOT NULL DEFAULT 'piece',
  `price_per_unit` decimal(12,2) NOT NULL,
  `cost_price` decimal(12,2) DEFAULT NULL,
  `stock_quantity` decimal(12,3) NOT NULL DEFAULT 0.000,
  `low_stock_alert` decimal(12,3) NOT NULL DEFAULT 10.000,
  `stock_unit` varchar(30) NOT NULL DEFAULT 'piece',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `sku`, `description`, `image`, `images`, `unit_type`, `unit_label`, `price_per_unit`, `cost_price`, `stock_quantity`, `low_stock_alert`, `stock_unit`, `is_active`, `is_featured`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Safed Moti (White Pearls)', 'MTI-001', 'Premium quality white pearls, sold per tola (11.66g)', NULL, NULL, 'weight', 'tola', 850.00, 600.00, 468.200, 50.000, 'tola', 1, 1, 0, '2026-03-26 02:01:02', '2026-03-26 02:25:58'),
(2, 1, 'Rang Birangi Moti (Colorful Beads)', 'MTI-002', 'Mixed colorful beads for crafts', NULL, NULL, 'weight', 'tola', 450.00, 300.00, 754.100, 80.000, 'tola', 1, 1, 0, '2026-03-26 02:01:02', '2026-03-26 02:25:58'),
(3, 2, 'Sona Taaro (Gold Thread)', 'TAR-001', 'Gold metallic thread for embroidery', NULL, NULL, 'weight', 'tola', 1200.00, 900.00, 163.200, 20.000, 'tola', 1, 1, 0, '2026-03-26 02:01:02', '2026-03-26 02:25:58'),
(4, 3, 'Reshi Dhaaga (Silk Thread)', 'DHA-001', 'Fine silk thread, sold per gaz', NULL, NULL, 'length', 'gaz', 120.00, 80.00, 4942.500, 500.000, 'gaz', 1, 0, 0, '2026-03-26 02:01:02', '2026-03-26 02:25:58'),
(5, 5, 'Safed Lace (White Lace)', 'LAC-001', 'Decorative white lace trim, per gaz', NULL, NULL, 'length', 'gaz', 85.00, 55.00, 2925.600, 300.000, 'gaz', 1, 0, 0, '2026-03-26 02:01:03', '2026-03-26 02:25:58'),
(6, 6, 'Sitaaray Button (Star Buttons)', 'BTN-001', 'Star shaped decorative buttons', NULL, NULL, 'piece', 'piece', 15.00, 8.00, 1794.000, 200.000, 'piece', 1, 0, 0, '2026-03-26 02:01:03', '2026-03-26 02:25:58'),
(7, 3, 'Dhaaga Reel (Thread Spool)', 'DHA-002', 'Thread spools sold per dozen (12 pcs)', NULL, NULL, 'dozen', 'dozen', 360.00, 240.00, 116.000, 15.000, 'dozen', 1, 0, 0, '2026-03-26 02:01:03', '2026-03-26 02:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `amount_paid` decimal(12,2) NOT NULL DEFAULT 0.00,
  `change_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` enum('cash','card','bank_transfer','credit') NOT NULL DEFAULT 'cash',
  `status` enum('completed','cancelled','refunded') NOT NULL DEFAULT 'completed',
  `notes` text DEFAULT NULL,
  `sold_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_number`, `user_id`, `subtotal`, `discount_amount`, `discount_percent`, `tax_amount`, `total_amount`, `amount_paid`, `change_amount`, `payment_method`, `status`, `notes`, `sold_at`, `created_at`, `updated_at`) VALUES
(1, 'MD-20260326-0001', 2, 1615.00, 0.00, 0.00, 0.00, 1615.00, 1707.00, 92.00, 'card', 'completed', NULL, '2026-03-19 20:01:40', '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(2, 'MD-20260326-0002', 2, 6395.00, 0.00, 0.00, 0.00, 6395.00, 6443.00, 48.00, 'cash', 'completed', NULL, '2026-03-20 00:01:40', '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(4, 'MD-20260326-0003', 2, 135.00, 6.75, 0.00, 0.00, 128.25, 261.25, 133.00, 'cash', 'completed', NULL, '2026-03-19 19:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(5, 'MD-20260326-0004', 2, 90.00, 0.00, 0.00, 0.00, 90.00, 93.00, 3.00, 'cash', 'completed', NULL, '2026-03-19 21:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(6, 'MD-20260326-0005', 2, 2319.50, 115.98, 0.00, 0.00, 2203.52, 2401.52, 198.00, 'cash', 'completed', NULL, '2026-03-19 19:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(7, 'MD-20260326-0006', 2, 6447.00, 322.35, 0.00, 0.00, 6124.65, 6317.65, 193.00, 'card', 'completed', NULL, '2026-03-19 18:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(8, 'MD-20260326-0007', 2, 4325.00, 216.25, 0.00, 0.00, 4108.75, 4264.75, 156.00, 'cash', 'completed', NULL, '2026-03-20 00:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(9, 'MD-20260326-0008', 2, 5239.00, 0.00, 0.00, 0.00, 5239.00, 5365.00, 126.00, 'cash', 'completed', NULL, '2026-03-20 01:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(10, 'MD-20260326-0009', 2, 5160.00, 0.00, 0.00, 0.00, 5160.00, 5210.00, 50.00, 'cash', 'completed', NULL, '2026-03-20 20:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(11, 'MD-20260326-0010', 2, 1605.00, 0.00, 0.00, 0.00, 1605.00, 1662.00, 57.00, 'cash', 'completed', NULL, '2026-03-20 18:02:25', '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(12, 'MD-20260326-0011', 2, 7197.50, 0.00, 0.00, 0.00, 7197.50, 7205.50, 8.00, 'cash', 'completed', NULL, '2026-03-20 23:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(13, 'MD-20260326-0012', 2, 2415.00, 0.00, 0.00, 0.00, 2415.00, 2547.00, 132.00, 'cash', 'completed', NULL, '2026-03-20 19:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(14, 'MD-20260326-0013', 2, 1800.00, 0.00, 0.00, 0.00, 1800.00, 1901.00, 101.00, 'cash', 'completed', NULL, '2026-03-20 23:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(15, 'MD-20260326-0014', 2, 2880.00, 144.00, 0.00, 0.00, 2736.00, 2815.00, 79.00, 'cash', 'completed', NULL, '2026-03-21 20:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(16, 'MD-20260326-0015', 2, 6960.00, 0.00, 0.00, 0.00, 6960.00, 7127.00, 167.00, 'cash', 'completed', NULL, '2026-03-21 22:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(17, 'MD-20260326-0016', 2, 5087.00, 0.00, 0.00, 0.00, 5087.00, 5229.00, 142.00, 'cash', 'completed', NULL, '2026-03-21 20:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(18, 'MD-20260326-0017', 2, 30.00, 1.50, 0.00, 0.00, 28.50, 228.50, 200.00, 'card', 'completed', NULL, '2026-03-21 19:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(19, 'MD-20260326-0018', 2, 3318.50, 165.93, 0.00, 0.00, 3152.57, 3171.57, 19.00, 'cash', 'completed', NULL, '2026-03-21 20:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(20, 'MD-20260326-0019', 2, 2951.50, 147.58, 0.00, 0.00, 2803.92, 2939.92, 136.00, 'cash', 'completed', NULL, '2026-03-21 20:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(21, 'MD-20260326-0020', 2, 5565.00, 0.00, 0.00, 0.00, 5565.00, 5711.00, 146.00, 'card', 'completed', NULL, '2026-03-22 22:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(22, 'MD-20260326-0021', 2, 7264.00, 0.00, 0.00, 0.00, 7264.00, 7410.00, 146.00, 'cash', 'completed', NULL, '2026-03-23 01:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(23, 'MD-20260326-0022', 2, 1524.00, 0.00, 0.00, 0.00, 1524.00, 1593.00, 69.00, 'cash', 'completed', NULL, '2026-03-23 01:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(24, 'MD-20260326-0023', 2, 2207.00, 0.00, 0.00, 0.00, 2207.00, 2281.00, 74.00, 'cash', 'completed', NULL, '2026-03-23 22:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(25, 'MD-20260326-0024', 2, 2302.50, 0.00, 0.00, 0.00, 2302.50, 2357.50, 55.00, 'cash', 'completed', NULL, '2026-03-23 22:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(26, 'MD-20260326-0025', 2, 3970.00, 198.50, 0.00, 0.00, 3771.50, 3818.50, 47.00, 'card', 'completed', NULL, '2026-03-23 21:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(27, 'MD-20260326-0026', 2, 7683.00, 384.15, 0.00, 0.00, 7298.85, 7378.85, 80.00, 'cash', 'completed', NULL, '2026-03-24 23:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(28, 'MD-20260326-0027', 2, 1764.00, 0.00, 0.00, 0.00, 1764.00, 1777.00, 13.00, 'cash', 'completed', NULL, '2026-03-24 19:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(29, 'MD-20260326-0028', 2, 6056.00, 302.80, 0.00, 0.00, 5753.20, 5926.20, 173.00, 'cash', 'completed', NULL, '2026-03-24 20:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(30, 'MD-20260326-0029', 2, 5662.50, 283.13, 0.00, 0.00, 5379.37, 5456.37, 77.00, 'cash', 'completed', NULL, '2026-03-24 19:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(31, 'MD-20260326-0030', 2, 2820.00, 141.00, 0.00, 0.00, 2679.00, 2863.00, 184.00, 'card', 'completed', NULL, '2026-03-25 18:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(32, 'MD-20260326-0031', 2, 1710.00, 0.00, 0.00, 0.00, 1710.00, 1781.00, 71.00, 'cash', 'completed', NULL, '2026-03-25 19:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(33, 'MD-20260326-0032', 2, 2139.00, 0.00, 0.00, 0.00, 2139.00, 2205.00, 66.00, 'cash', 'completed', NULL, '2026-03-25 23:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(34, 'MD-20260326-0033', 2, 3658.50, 0.00, 0.00, 0.00, 3658.50, 3706.50, 48.00, 'cash', 'completed', NULL, '2026-03-25 23:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(35, 'MD-20260326-0034', 2, 4513.00, 0.00, 0.00, 0.00, 4513.00, 4577.00, 64.00, 'cash', 'completed', NULL, '2026-03-26 00:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(36, 'MD-20260326-0035', 2, 4047.00, 202.35, 0.00, 0.00, 3844.65, 3866.65, 22.00, 'cash', 'completed', NULL, '2026-03-25 22:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(37, 'MD-20260326-0036', 2, 1626.50, 81.33, 0.00, 0.00, 1545.17, 1614.17, 69.00, 'cash', 'completed', NULL, '2026-03-25 22:02:26', '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(38, 'MD-20260326-0037', 2, 5774.00, 0.00, 0.00, 0.00, 5774.00, 5808.00, 34.00, 'cash', 'completed', NULL, '2026-03-19 18:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(39, 'MD-20260326-0038', 2, 6280.00, 314.00, 0.00, 0.00, 5966.00, 5974.00, 8.00, 'cash', 'completed', NULL, '2026-03-19 21:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(40, 'MD-20260326-0039', 2, 1632.00, 0.00, 0.00, 0.00, 1632.00, 1662.00, 30.00, 'cash', 'completed', NULL, '2026-03-20 01:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(41, 'MD-20260326-0040', 2, 6000.00, 300.00, 0.00, 0.00, 5700.00, 5892.00, 192.00, 'cash', 'completed', NULL, '2026-03-20 00:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(42, 'MD-20260326-0041', 2, 7467.00, 373.35, 0.00, 0.00, 7093.65, 7155.65, 62.00, 'cash', 'completed', NULL, '2026-03-19 21:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(43, 'MD-20260326-0042', 2, 5401.00, 270.05, 0.00, 0.00, 5130.95, 5244.95, 114.00, 'cash', 'completed', NULL, '2026-03-20 23:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(44, 'MD-20260326-0043', 2, 3330.00, 166.50, 0.00, 0.00, 3163.50, 3195.50, 32.00, 'cash', 'completed', NULL, '2026-03-21 01:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(45, 'MD-20260326-0044', 2, 3216.00, 160.80, 0.00, 0.00, 3055.20, 3142.20, 87.00, 'cash', 'completed', NULL, '2026-03-20 20:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(46, 'MD-20260326-0045', 2, 1440.00, 72.00, 0.00, 0.00, 1368.00, 1381.00, 13.00, 'cash', 'completed', NULL, '2026-03-21 00:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(47, 'MD-20260326-0046', 2, 3105.00, 155.25, 0.00, 0.00, 2949.75, 2980.75, 31.00, 'card', 'completed', NULL, '2026-03-21 22:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(48, 'MD-20260326-0047', 2, 5390.00, 0.00, 0.00, 0.00, 5390.00, 5467.00, 77.00, 'card', 'completed', NULL, '2026-03-21 20:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(49, 'MD-20260326-0048', 2, 1167.50, 0.00, 0.00, 0.00, 1167.50, 1244.50, 77.00, 'cash', 'completed', NULL, '2026-03-21 20:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(50, 'MD-20260326-0049', 2, 6930.00, 0.00, 0.00, 0.00, 6930.00, 7070.00, 140.00, 'cash', 'completed', NULL, '2026-03-21 21:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(51, 'MD-20260326-0050', 2, 5551.00, 0.00, 0.00, 0.00, 5551.00, 5725.00, 174.00, 'card', 'completed', NULL, '2026-03-22 19:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(52, 'MD-20260326-0051', 2, 663.00, 0.00, 0.00, 0.00, 663.00, 844.00, 181.00, 'card', 'completed', NULL, '2026-03-22 21:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(53, 'MD-20260326-0052', 2, 4040.00, 0.00, 0.00, 0.00, 4040.00, 4167.00, 127.00, 'card', 'completed', NULL, '2026-03-22 21:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(54, 'MD-20260326-0053', 2, 7938.50, 396.93, 0.00, 0.00, 7541.57, 7716.57, 175.00, 'card', 'completed', NULL, '2026-03-22 19:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(55, 'MD-20260326-0054', 2, 1707.00, 0.00, 0.00, 0.00, 1707.00, 1817.00, 110.00, 'cash', 'completed', NULL, '2026-03-22 20:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(56, 'MD-20260326-0055', 2, 3665.00, 0.00, 0.00, 0.00, 3665.00, 3849.00, 184.00, 'cash', 'completed', NULL, '2026-03-23 20:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(57, 'MD-20260326-0056', 2, 873.00, 0.00, 0.00, 0.00, 873.00, 926.00, 53.00, 'cash', 'completed', NULL, '2026-03-23 18:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(58, 'MD-20260326-0057', 2, 3382.00, 169.10, 0.00, 0.00, 3212.90, 3244.90, 32.00, 'cash', 'completed', NULL, '2026-03-23 22:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(59, 'MD-20260326-0058', 2, 3930.00, 196.50, 0.00, 0.00, 3733.50, 3919.50, 186.00, 'cash', 'completed', NULL, '2026-03-23 19:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(60, 'MD-20260326-0059', 2, 4361.00, 218.05, 0.00, 0.00, 4142.95, 4260.95, 118.00, 'card', 'completed', NULL, '2026-03-24 01:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(61, 'MD-20260326-0060', 2, 3229.50, 161.48, 0.00, 0.00, 3068.02, 3205.02, 137.00, 'card', 'completed', NULL, '2026-03-24 00:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(62, 'MD-20260326-0061', 2, 4125.00, 0.00, 0.00, 0.00, 4125.00, 4222.00, 97.00, 'cash', 'completed', NULL, '2026-03-24 00:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(63, 'MD-20260326-0062', 2, 461.00, 0.00, 0.00, 0.00, 461.00, 572.00, 111.00, 'cash', 'completed', NULL, '2026-03-24 18:25:57', '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(64, 'MD-20260326-0063', 2, 3769.50, 188.48, 0.00, 0.00, 3581.02, 3683.02, 102.00, 'cash', 'completed', NULL, '2026-03-24 20:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(65, 'MD-20260326-0064', 2, 2808.00, 140.40, 0.00, 0.00, 2667.60, 2843.60, 176.00, 'cash', 'completed', NULL, '2026-03-24 19:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(66, 'MD-20260326-0065', 2, 1845.00, 0.00, 0.00, 0.00, 1845.00, 2041.00, 196.00, 'cash', 'completed', NULL, '2026-03-25 00:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(67, 'MD-20260326-0066', 2, 1770.00, 88.50, 0.00, 0.00, 1681.50, 1841.50, 160.00, 'cash', 'completed', NULL, '2026-03-25 01:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(68, 'MD-20260326-0067', 2, 4095.00, 0.00, 0.00, 0.00, 4095.00, 4231.00, 136.00, 'cash', 'completed', NULL, '2026-03-25 19:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(69, 'MD-20260326-0068', 2, 1278.00, 63.90, 0.00, 0.00, 1214.10, 1351.10, 137.00, 'cash', 'completed', NULL, '2026-03-25 19:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(70, 'MD-20260326-0069', 2, 3775.00, 0.00, 0.00, 0.00, 3775.00, 3835.00, 60.00, 'cash', 'completed', NULL, '2026-03-26 01:25:58', '2026-03-26 02:25:58', '2026-03-26 02:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  `unit_label` varchar(30) NOT NULL,
  `quantity` decimal(12,3) NOT NULL,
  `price_per_unit` decimal(12,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `product_name`, `unit_type`, `unit_label`, `quantity`, `price_per_unit`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.900, 850.00, 1615.00, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(2, 2, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.900, 850.00, 2465.00, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(3, 2, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 5.000, 450.00, 2250.00, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(4, 2, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 1.400, 1200.00, 1680.00, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(5, 4, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 9.000, 15.00, 135.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(6, 5, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 6.000, 15.00, 90.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(7, 6, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 1.600, 1200.00, 1920.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(8, 6, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 4.700, 85.00, 399.50, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(9, 7, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.300, 450.00, 1935.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(10, 7, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.100, 1200.00, 2520.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(11, 7, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 4.600, 120.00, 552.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(12, 7, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 4.000, 360.00, 1440.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(13, 8, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.100, 850.00, 935.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(14, 8, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.500, 1200.00, 3000.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(15, 8, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 2.500, 120.00, 300.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(16, 8, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 6.000, 15.00, 90.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(17, 9, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 3.100, 1200.00, 3720.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(18, 9, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 9.400, 85.00, 799.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(19, 9, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 2.000, 360.00, 720.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(20, 10, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.500, 850.00, 1275.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(21, 10, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 3.100, 1200.00, 3720.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(22, 10, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 11.000, 15.00, 165.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(23, 11, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 0.600, 850.00, 510.00, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(24, 11, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 2.400, 450.00, 1080.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(25, 11, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 1.000, 15.00, 15.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(26, 12, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.100, 850.00, 1785.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(27, 12, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 3.900, 1200.00, 4680.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(28, 12, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 6.500, 85.00, 552.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(29, 12, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 12.000, 15.00, 180.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(30, 13, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 2.600, 450.00, 1170.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(31, 13, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 1.000, 1200.00, 1200.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(32, 13, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 3.000, 15.00, 45.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(33, 14, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 3.600, 450.00, 1620.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(34, 14, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 12.000, 15.00, 180.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(35, 15, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 3.100, 450.00, 1395.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(36, 15, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 3.000, 15.00, 45.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(37, 15, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 4.000, 360.00, 1440.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(38, 16, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 4.800, 850.00, 4080.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(39, 16, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.400, 1200.00, 2880.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(40, 17, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.100, 850.00, 935.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(41, 17, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 3.200, 1200.00, 3840.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(42, 17, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 2.600, 120.00, 312.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(43, 18, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 2.000, 15.00, 30.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(44, 19, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.200, 450.00, 540.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(45, 19, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 4.400, 120.00, 528.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(46, 19, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 5.300, 85.00, 450.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(47, 19, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 5.000, 360.00, 1800.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(48, 20, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 6.000, 120.00, 720.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(49, 20, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 1.900, 85.00, 161.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(50, 20, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 18.000, 15.00, 270.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(51, 20, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 5.000, 360.00, 1800.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(52, 21, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.100, 850.00, 1785.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(53, 21, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.400, 450.00, 1980.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(54, 21, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 5.000, 360.00, 1800.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(55, 22, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.200, 850.00, 1870.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(56, 22, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 5.000, 450.00, 2250.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(57, 22, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.000, 1200.00, 2400.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(58, 22, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 6.200, 120.00, 744.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(59, 23, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 9.700, 120.00, 1164.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(60, 23, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 1.000, 360.00, 360.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(61, 24, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.100, 850.00, 935.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(62, 24, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 0.800, 1200.00, 960.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(63, 24, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 2.100, 120.00, 252.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(64, 24, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 4.000, 15.00, 60.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(65, 25, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 2.500, 450.00, 1125.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(66, 25, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 6.200, 120.00, 744.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(67, 25, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 5.100, 85.00, 433.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(68, 26, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.600, 850.00, 1360.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(69, 26, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 3.400, 450.00, 1530.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(70, 26, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 3.000, 360.00, 1080.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(71, 27, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.100, 850.00, 935.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(72, 27, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 4.300, 1200.00, 5160.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(73, 27, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 8.700, 120.00, 1044.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(74, 27, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 6.400, 85.00, 544.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(75, 28, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 8.700, 120.00, 1044.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(76, 28, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 2.000, 360.00, 720.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(77, 29, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 5.000, 850.00, 4250.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(78, 29, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 8.300, 120.00, 996.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(79, 29, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 6.000, 15.00, 90.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(80, 29, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 2.000, 360.00, 720.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(81, 30, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.100, 1200.00, 2520.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(82, 30, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 4.600, 120.00, 552.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(83, 30, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 9.300, 85.00, 790.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(84, 30, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 5.000, 360.00, 1800.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(85, 31, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 8.500, 120.00, 1020.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(86, 31, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 5.000, 360.00, 1800.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(87, 32, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 3.600, 450.00, 1620.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(88, 32, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 6.000, 15.00, 90.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(89, 33, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 2.000, 450.00, 900.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(90, 33, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 3.500, 120.00, 420.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(91, 33, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 5.400, 85.00, 459.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(92, 33, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 1.000, 360.00, 360.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(93, 34, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.600, 450.00, 2070.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(94, 34, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 7.800, 120.00, 936.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(95, 34, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 4.500, 85.00, 382.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(96, 34, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 18.000, 15.00, 270.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(97, 35, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 4.900, 850.00, 4165.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(98, 35, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 2.900, 120.00, 348.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(99, 36, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.200, 850.00, 1870.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(100, 36, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 0.500, 450.00, 225.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(101, 36, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 1.400, 1200.00, 1680.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(102, 36, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 3.200, 85.00, 272.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(103, 37, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 0.900, 1200.00, 1080.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(104, 37, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 5.900, 85.00, 501.50, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(105, 37, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 3.000, 15.00, 45.00, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(106, 38, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.800, 850.00, 2380.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(107, 38, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.800, 450.00, 810.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(108, 38, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 1.700, 1200.00, 2040.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(109, 38, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 6.400, 85.00, 544.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(110, 39, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.000, 850.00, 850.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(111, 39, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 4.300, 1200.00, 5160.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(112, 39, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 18.000, 15.00, 270.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(113, 40, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.500, 850.00, 1275.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(114, 40, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 4.200, 85.00, 357.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(115, 41, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 4.400, 1200.00, 5280.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(116, 41, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 2.000, 360.00, 720.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(117, 42, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 4.800, 850.00, 4080.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(118, 42, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 1.700, 1200.00, 2040.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(119, 42, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 9.600, 120.00, 1152.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(120, 42, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 13.000, 15.00, 195.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(121, 43, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.500, 850.00, 2125.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(122, 43, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.500, 1200.00, 3000.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(123, 43, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 2.300, 120.00, 276.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(124, 44, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 5.000, 450.00, 2250.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(125, 44, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 3.000, 360.00, 1080.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(126, 45, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 2.900, 450.00, 1305.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(127, 45, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 3.600, 85.00, 306.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(128, 45, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 11.000, 15.00, 165.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(129, 45, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 4.000, 360.00, 1440.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(130, 46, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 4.000, 360.00, 1440.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(131, 47, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.500, 450.00, 2025.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(132, 47, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 3.000, 360.00, 1080.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(133, 48, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 4.400, 850.00, 3740.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(134, 48, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.100, 450.00, 495.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(135, 48, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 5.000, 15.00, 75.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(136, 48, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 3.000, 360.00, 1080.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(137, 49, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.600, 450.00, 720.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(138, 49, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 3.500, 85.00, 297.50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(139, 49, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 10.000, 15.00, 150.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(140, 50, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 3.000, 450.00, 1350.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(141, 50, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 4.300, 1200.00, 5160.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(142, 50, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 4.000, 15.00, 60.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(143, 50, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 1.000, 360.00, 360.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(144, 51, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 4.300, 1200.00, 5160.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(145, 51, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 4.600, 85.00, 391.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(146, 52, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 7.800, 85.00, 663.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(147, 53, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 2.500, 850.00, 2125.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(148, 53, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.900, 450.00, 855.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(149, 53, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 4.000, 85.00, 340.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(150, 53, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 2.000, 360.00, 720.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(151, 54, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 4.700, 1200.00, 5640.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(152, 54, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 7.100, 85.00, 603.50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(153, 54, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 17.000, 15.00, 255.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(154, 54, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 4.000, 360.00, 1440.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(155, 55, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.500, 450.00, 675.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(156, 55, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 8.600, 120.00, 1032.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(157, 56, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 3.800, 850.00, 3230.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(158, 56, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 5.000, 15.00, 75.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(159, 56, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 1.000, 360.00, 360.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(160, 57, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 6.000, 120.00, 720.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(161, 57, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 1.800, 85.00, 153.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(162, 58, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.600, 450.00, 2070.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(163, 58, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 5.400, 120.00, 648.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(164, 58, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 6.400, 85.00, 544.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(165, 58, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 8.000, 15.00, 120.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(166, 59, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 4.200, 850.00, 3570.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(167, 59, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 1.000, 360.00, 360.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(168, 60, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 3.100, 450.00, 1395.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(169, 60, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 9.200, 120.00, 1104.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(170, 60, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 9.200, 85.00, 782.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(171, 60, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 3.000, 360.00, 1080.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(172, 61, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 2.400, 1200.00, 2880.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(173, 61, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 2.700, 85.00, 229.50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(174, 61, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 8.000, 15.00, 120.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(175, 62, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 3.300, 1200.00, 3960.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(176, 62, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 11.000, 15.00, 165.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(177, 63, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 2.600, 85.00, 221.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(178, 63, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 16.000, 15.00, 240.00, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(179, 64, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 0.900, 850.00, 765.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(180, 64, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.400, 450.00, 1980.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(181, 64, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 8.700, 85.00, 739.50, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(182, 64, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 19.000, 15.00, 285.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(183, 65, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 1.600, 450.00, 720.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(184, 65, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 6.400, 120.00, 768.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(185, 65, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 16.000, 15.00, 240.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(186, 65, 7, 'Dhaaga Reel (Thread Spool)', 'dozen', 'dozen', 3.000, 360.00, 1080.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(187, 66, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.100, 450.00, 1845.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(188, 67, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.500, 850.00, 1275.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(189, 67, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 1.600, 120.00, 192.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(190, 67, 5, 'Safed Lace (White Lace)', 'length', 'gaz', 1.800, 85.00, 153.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(191, 67, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 10.000, 15.00, 150.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(192, 68, 3, 'Sona Taaro (Gold Thread)', 'weight', 'tola', 3.200, 1200.00, 3840.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(193, 68, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 17.000, 15.00, 255.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(194, 69, 4, 'Reshi Dhaaga (Silk Thread)', 'length', 'gaz', 8.400, 120.00, 1008.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(195, 69, 6, 'Sitaaray Button (Star Buttons)', 'piece', 'piece', 18.000, 15.00, 270.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(196, 70, 1, 'Safed Moti (White Pearls)', 'weight', 'tola', 1.900, 850.00, 1615.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(197, 70, 2, 'Rang Birangi Moti (Colorful Beads)', 'weight', 'tola', 4.800, 450.00, 2160.00, '2026-03-26 02:25:58', '2026-03-26 02:25:58');

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
('AG9cNdLJeGWKcwtifNyGrAZvpGsm9mkKPmI5xUz5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1d6Q0s2UTlxcWJ3RVlURG9vRzJRNXZIUGNzWXgwNzJuNFh0bkJzTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774513495),
('EjBRwBZFKSvWqtk8FtaAdCX0qexPrGRlhyFgw5eG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.19041.6456', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianZnYkZubWVvYlNMbTZGOG9RM20ySm80Z2Q1SjJNZDQ0Vm0wcVREaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774509047),
('GwX4UffvgeQ6v8tu7jWmxbUIwI3poBLlxOVeJ9Rv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWld4YnVrV0piTzlUV1hzbDczR1hMc29EbnBoSUphTkN4cVlJa1Q5TSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774509621),
('iwAtplvXY8Ik25ybHxYmA98HFKDMdU54ojC8n4Hw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.19041.6456', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWERvU21BT3doMDhXMEtWSjFMclVHakpuZUxYQ3NaZTRtd09qaHFzSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774509003),
('qqohF8JbEOEy9tTSaw6tcNAFDoEUkvRwPlqSyU3W', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.19041.6456', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW5sckhrYnI4SXF6STVXY2loSUFraEpQMDE2RThJaWN4MmhzN0FvdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774508913),
('XGk6OG9YExZzm2g7CIsvPo1Ucmo2YJxBb0kdGVfk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.19041.6456', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWl3bU9aR29Ob1VxVk9WRzhTUlNkUEFEeVJHc2IyZ1E1UXNtNXR3UCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774509018);

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('purchase','sale','adjustment','return') NOT NULL,
  `quantity` decimal(12,3) NOT NULL,
  `quantity_before` decimal(12,3) NOT NULL,
  `quantity_after` decimal(12,3) NOT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`id`, `product_id`, `type`, `quantity`, `quantity_before`, `quantity_after`, `notes`, `user_id`, `sale_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'sale', -1.900, 500.000, 498.100, 'Seeded sale', 2, 1, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(2, 1, 'sale', -2.900, 498.100, 495.200, 'Seeded sale', 2, 2, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(3, 2, 'sale', -5.000, 800.000, 795.000, 'Seeded sale', 2, 2, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(4, 3, 'sale', -1.400, 200.000, 198.600, 'Seeded sale', 2, 2, '2026-03-26 02:01:40', '2026-03-26 02:01:40'),
(5, 6, 'sale', -9.000, 2000.000, 1991.000, 'Seeded sale', 2, 4, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(6, 6, 'sale', -6.000, 1991.000, 1985.000, 'Seeded sale', 2, 5, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(7, 3, 'sale', -1.600, 200.000, 198.400, 'Seeded sale', 2, 6, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(8, 5, 'sale', -4.700, 3000.000, 2995.300, 'Seeded sale', 2, 6, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(9, 2, 'sale', -4.300, 800.000, 795.700, 'Seeded sale', 2, 7, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(10, 3, 'sale', -2.100, 198.400, 196.300, 'Seeded sale', 2, 7, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(11, 4, 'sale', -4.600, 5000.000, 4995.400, 'Seeded sale', 2, 7, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(12, 7, 'sale', -4.000, 150.000, 146.000, 'Seeded sale', 2, 7, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(13, 1, 'sale', -1.100, 500.000, 498.900, 'Seeded sale', 2, 8, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(14, 3, 'sale', -2.500, 196.300, 193.800, 'Seeded sale', 2, 8, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(15, 4, 'sale', -2.500, 4995.400, 4992.900, 'Seeded sale', 2, 8, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(16, 6, 'sale', -6.000, 1985.000, 1979.000, 'Seeded sale', 2, 8, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(17, 3, 'sale', -3.100, 193.800, 190.700, 'Seeded sale', 2, 9, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(18, 5, 'sale', -9.400, 2995.300, 2985.900, 'Seeded sale', 2, 9, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(19, 7, 'sale', -2.000, 146.000, 144.000, 'Seeded sale', 2, 9, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(20, 1, 'sale', -1.500, 498.900, 497.400, 'Seeded sale', 2, 10, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(21, 3, 'sale', -3.100, 190.700, 187.600, 'Seeded sale', 2, 10, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(22, 6, 'sale', -11.000, 1979.000, 1968.000, 'Seeded sale', 2, 10, '2026-03-26 02:02:25', '2026-03-26 02:02:25'),
(23, 1, 'sale', -0.600, 497.400, 496.800, 'Seeded sale', 2, 11, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(24, 2, 'sale', -2.400, 795.700, 793.300, 'Seeded sale', 2, 11, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(25, 6, 'sale', -1.000, 1968.000, 1967.000, 'Seeded sale', 2, 11, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(26, 1, 'sale', -2.100, 496.800, 494.700, 'Seeded sale', 2, 12, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(27, 3, 'sale', -3.900, 187.600, 183.700, 'Seeded sale', 2, 12, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(28, 5, 'sale', -6.500, 2985.900, 2979.400, 'Seeded sale', 2, 12, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(29, 6, 'sale', -12.000, 1967.000, 1955.000, 'Seeded sale', 2, 12, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(30, 2, 'sale', -2.600, 793.300, 790.700, 'Seeded sale', 2, 13, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(31, 3, 'sale', -1.000, 183.700, 182.700, 'Seeded sale', 2, 13, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(32, 6, 'sale', -3.000, 1955.000, 1952.000, 'Seeded sale', 2, 13, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(33, 2, 'sale', -3.600, 790.700, 787.100, 'Seeded sale', 2, 14, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(34, 6, 'sale', -12.000, 1952.000, 1940.000, 'Seeded sale', 2, 14, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(35, 2, 'sale', -3.100, 787.100, 784.000, 'Seeded sale', 2, 15, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(36, 6, 'sale', -3.000, 1940.000, 1937.000, 'Seeded sale', 2, 15, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(37, 7, 'sale', -4.000, 144.000, 140.000, 'Seeded sale', 2, 15, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(38, 1, 'sale', -4.800, 494.700, 489.900, 'Seeded sale', 2, 16, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(39, 3, 'sale', -2.400, 182.700, 180.300, 'Seeded sale', 2, 16, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(40, 1, 'sale', -1.100, 489.900, 488.800, 'Seeded sale', 2, 17, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(41, 3, 'sale', -3.200, 180.300, 177.100, 'Seeded sale', 2, 17, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(42, 4, 'sale', -2.600, 4992.900, 4990.300, 'Seeded sale', 2, 17, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(43, 6, 'sale', -2.000, 1937.000, 1935.000, 'Seeded sale', 2, 18, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(44, 2, 'sale', -1.200, 784.000, 782.800, 'Seeded sale', 2, 19, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(45, 4, 'sale', -4.400, 4990.300, 4985.900, 'Seeded sale', 2, 19, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(46, 5, 'sale', -5.300, 2979.400, 2974.100, 'Seeded sale', 2, 19, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(47, 7, 'sale', -5.000, 140.000, 135.000, 'Seeded sale', 2, 19, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(48, 4, 'sale', -6.000, 4985.900, 4979.900, 'Seeded sale', 2, 20, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(49, 5, 'sale', -1.900, 2974.100, 2972.200, 'Seeded sale', 2, 20, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(50, 6, 'sale', -18.000, 1935.000, 1917.000, 'Seeded sale', 2, 20, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(51, 7, 'sale', -5.000, 135.000, 130.000, 'Seeded sale', 2, 20, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(52, 1, 'sale', -2.100, 488.800, 486.700, 'Seeded sale', 2, 21, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(53, 2, 'sale', -4.400, 782.800, 778.400, 'Seeded sale', 2, 21, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(54, 7, 'sale', -5.000, 130.000, 125.000, 'Seeded sale', 2, 21, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(55, 1, 'sale', -2.200, 486.700, 484.500, 'Seeded sale', 2, 22, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(56, 2, 'sale', -5.000, 778.400, 773.400, 'Seeded sale', 2, 22, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(57, 3, 'sale', -2.000, 177.100, 175.100, 'Seeded sale', 2, 22, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(58, 4, 'sale', -6.200, 4979.900, 4973.700, 'Seeded sale', 2, 22, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(59, 4, 'sale', -9.700, 4973.700, 4964.000, 'Seeded sale', 2, 23, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(60, 7, 'sale', -1.000, 125.000, 124.000, 'Seeded sale', 2, 23, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(61, 1, 'sale', -1.100, 484.500, 483.400, 'Seeded sale', 2, 24, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(62, 3, 'sale', -0.800, 175.100, 174.300, 'Seeded sale', 2, 24, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(63, 4, 'sale', -2.100, 4964.000, 4961.900, 'Seeded sale', 2, 24, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(64, 6, 'sale', -4.000, 1917.000, 1913.000, 'Seeded sale', 2, 24, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(65, 2, 'sale', -2.500, 773.400, 770.900, 'Seeded sale', 2, 25, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(66, 4, 'sale', -6.200, 4961.900, 4955.700, 'Seeded sale', 2, 25, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(67, 5, 'sale', -5.100, 2972.200, 2967.100, 'Seeded sale', 2, 25, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(68, 1, 'sale', -1.600, 483.400, 481.800, 'Seeded sale', 2, 26, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(69, 2, 'sale', -3.400, 770.900, 767.500, 'Seeded sale', 2, 26, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(70, 7, 'sale', -3.000, 124.000, 121.000, 'Seeded sale', 2, 26, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(71, 1, 'sale', -1.100, 481.800, 480.700, 'Seeded sale', 2, 27, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(72, 3, 'sale', -4.300, 174.300, 170.000, 'Seeded sale', 2, 27, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(73, 4, 'sale', -8.700, 4955.700, 4947.000, 'Seeded sale', 2, 27, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(74, 5, 'sale', -6.400, 2967.100, 2960.700, 'Seeded sale', 2, 27, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(75, 4, 'sale', -8.700, 4947.000, 4938.300, 'Seeded sale', 2, 28, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(76, 7, 'sale', -2.000, 121.000, 119.000, 'Seeded sale', 2, 28, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(77, 1, 'sale', -5.000, 480.700, 475.700, 'Seeded sale', 2, 29, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(78, 4, 'sale', -8.300, 4938.300, 4930.000, 'Seeded sale', 2, 29, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(79, 6, 'sale', -6.000, 1913.000, 1907.000, 'Seeded sale', 2, 29, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(80, 7, 'sale', -2.000, 119.000, 117.000, 'Seeded sale', 2, 29, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(81, 3, 'sale', -2.100, 170.000, 167.900, 'Seeded sale', 2, 30, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(82, 4, 'sale', -4.600, 4930.000, 4925.400, 'Seeded sale', 2, 30, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(83, 5, 'sale', -9.300, 2960.700, 2951.400, 'Seeded sale', 2, 30, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(84, 7, 'sale', -5.000, 117.000, 112.000, 'Seeded sale', 2, 30, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(85, 4, 'sale', -8.500, 4925.400, 4916.900, 'Seeded sale', 2, 31, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(86, 7, 'sale', -5.000, 112.000, 107.000, 'Seeded sale', 2, 31, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(87, 2, 'sale', -3.600, 767.500, 763.900, 'Seeded sale', 2, 32, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(88, 6, 'sale', -6.000, 1907.000, 1901.000, 'Seeded sale', 2, 32, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(89, 2, 'sale', -2.000, 763.900, 761.900, 'Seeded sale', 2, 33, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(90, 4, 'sale', -3.500, 4916.900, 4913.400, 'Seeded sale', 2, 33, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(91, 5, 'sale', -5.400, 2951.400, 2946.000, 'Seeded sale', 2, 33, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(92, 7, 'sale', -1.000, 107.000, 106.000, 'Seeded sale', 2, 33, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(93, 2, 'sale', -4.600, 761.900, 757.300, 'Seeded sale', 2, 34, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(94, 4, 'sale', -7.800, 4913.400, 4905.600, 'Seeded sale', 2, 34, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(95, 5, 'sale', -4.500, 2946.000, 2941.500, 'Seeded sale', 2, 34, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(96, 6, 'sale', -18.000, 1901.000, 1883.000, 'Seeded sale', 2, 34, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(97, 1, 'sale', -4.900, 475.700, 470.800, 'Seeded sale', 2, 35, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(98, 4, 'sale', -2.900, 4905.600, 4902.700, 'Seeded sale', 2, 35, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(99, 1, 'sale', -2.200, 470.800, 468.600, 'Seeded sale', 2, 36, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(100, 2, 'sale', -0.500, 757.300, 756.800, 'Seeded sale', 2, 36, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(101, 3, 'sale', -1.400, 167.900, 166.500, 'Seeded sale', 2, 36, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(102, 5, 'sale', -3.200, 2941.500, 2938.300, 'Seeded sale', 2, 36, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(103, 3, 'sale', -0.900, 166.500, 165.600, 'Seeded sale', 2, 37, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(104, 5, 'sale', -5.900, 2938.300, 2932.400, 'Seeded sale', 2, 37, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(105, 6, 'sale', -3.000, 1883.000, 1880.000, 'Seeded sale', 2, 37, '2026-03-26 02:02:26', '2026-03-26 02:02:26'),
(106, 1, 'sale', -2.800, 500.000, 497.200, 'Seeded sale', 2, 38, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(107, 2, 'sale', -1.800, 800.000, 798.200, 'Seeded sale', 2, 38, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(108, 3, 'sale', -1.700, 200.000, 198.300, 'Seeded sale', 2, 38, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(109, 5, 'sale', -6.400, 3000.000, 2993.600, 'Seeded sale', 2, 38, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(110, 1, 'sale', -1.000, 497.200, 496.200, 'Seeded sale', 2, 39, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(111, 3, 'sale', -4.300, 198.300, 194.000, 'Seeded sale', 2, 39, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(112, 6, 'sale', -18.000, 2000.000, 1982.000, 'Seeded sale', 2, 39, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(113, 1, 'sale', -1.500, 496.200, 494.700, 'Seeded sale', 2, 40, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(114, 5, 'sale', -4.200, 2993.600, 2989.400, 'Seeded sale', 2, 40, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(115, 3, 'sale', -4.400, 194.000, 189.600, 'Seeded sale', 2, 41, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(116, 7, 'sale', -2.000, 150.000, 148.000, 'Seeded sale', 2, 41, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(117, 1, 'sale', -4.800, 494.700, 489.900, 'Seeded sale', 2, 42, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(118, 3, 'sale', -1.700, 189.600, 187.900, 'Seeded sale', 2, 42, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(119, 4, 'sale', -9.600, 5000.000, 4990.400, 'Seeded sale', 2, 42, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(120, 6, 'sale', -13.000, 1982.000, 1969.000, 'Seeded sale', 2, 42, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(121, 1, 'sale', -2.500, 489.900, 487.400, 'Seeded sale', 2, 43, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(122, 3, 'sale', -2.500, 187.900, 185.400, 'Seeded sale', 2, 43, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(123, 4, 'sale', -2.300, 4990.400, 4988.100, 'Seeded sale', 2, 43, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(124, 2, 'sale', -5.000, 798.200, 793.200, 'Seeded sale', 2, 44, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(125, 7, 'sale', -3.000, 148.000, 145.000, 'Seeded sale', 2, 44, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(126, 2, 'sale', -2.900, 793.200, 790.300, 'Seeded sale', 2, 45, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(127, 5, 'sale', -3.600, 2989.400, 2985.800, 'Seeded sale', 2, 45, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(128, 6, 'sale', -11.000, 1969.000, 1958.000, 'Seeded sale', 2, 45, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(129, 7, 'sale', -4.000, 145.000, 141.000, 'Seeded sale', 2, 45, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(130, 7, 'sale', -4.000, 141.000, 137.000, 'Seeded sale', 2, 46, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(131, 2, 'sale', -4.500, 790.300, 785.800, 'Seeded sale', 2, 47, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(132, 7, 'sale', -3.000, 137.000, 134.000, 'Seeded sale', 2, 47, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(133, 1, 'sale', -4.400, 487.400, 483.000, 'Seeded sale', 2, 48, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(134, 2, 'sale', -1.100, 785.800, 784.700, 'Seeded sale', 2, 48, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(135, 6, 'sale', -5.000, 1958.000, 1953.000, 'Seeded sale', 2, 48, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(136, 7, 'sale', -3.000, 134.000, 131.000, 'Seeded sale', 2, 48, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(137, 2, 'sale', -1.600, 784.700, 783.100, 'Seeded sale', 2, 49, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(138, 5, 'sale', -3.500, 2985.800, 2982.300, 'Seeded sale', 2, 49, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(139, 6, 'sale', -10.000, 1953.000, 1943.000, 'Seeded sale', 2, 49, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(140, 2, 'sale', -3.000, 783.100, 780.100, 'Seeded sale', 2, 50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(141, 3, 'sale', -4.300, 185.400, 181.100, 'Seeded sale', 2, 50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(142, 6, 'sale', -4.000, 1943.000, 1939.000, 'Seeded sale', 2, 50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(143, 7, 'sale', -1.000, 131.000, 130.000, 'Seeded sale', 2, 50, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(144, 3, 'sale', -4.300, 181.100, 176.800, 'Seeded sale', 2, 51, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(145, 5, 'sale', -4.600, 2982.300, 2977.700, 'Seeded sale', 2, 51, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(146, 5, 'sale', -7.800, 2977.700, 2969.900, 'Seeded sale', 2, 52, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(147, 1, 'sale', -2.500, 483.000, 480.500, 'Seeded sale', 2, 53, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(148, 2, 'sale', -1.900, 780.100, 778.200, 'Seeded sale', 2, 53, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(149, 5, 'sale', -4.000, 2969.900, 2965.900, 'Seeded sale', 2, 53, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(150, 7, 'sale', -2.000, 130.000, 128.000, 'Seeded sale', 2, 53, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(151, 3, 'sale', -4.700, 176.800, 172.100, 'Seeded sale', 2, 54, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(152, 5, 'sale', -7.100, 2965.900, 2958.800, 'Seeded sale', 2, 54, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(153, 6, 'sale', -17.000, 1939.000, 1922.000, 'Seeded sale', 2, 54, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(154, 7, 'sale', -4.000, 128.000, 124.000, 'Seeded sale', 2, 54, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(155, 2, 'sale', -1.500, 778.200, 776.700, 'Seeded sale', 2, 55, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(156, 4, 'sale', -8.600, 4988.100, 4979.500, 'Seeded sale', 2, 55, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(157, 1, 'sale', -3.800, 480.500, 476.700, 'Seeded sale', 2, 56, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(158, 6, 'sale', -5.000, 1922.000, 1917.000, 'Seeded sale', 2, 56, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(159, 7, 'sale', -1.000, 124.000, 123.000, 'Seeded sale', 2, 56, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(160, 4, 'sale', -6.000, 4979.500, 4973.500, 'Seeded sale', 2, 57, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(161, 5, 'sale', -1.800, 2958.800, 2957.000, 'Seeded sale', 2, 57, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(162, 2, 'sale', -4.600, 776.700, 772.100, 'Seeded sale', 2, 58, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(163, 4, 'sale', -5.400, 4973.500, 4968.100, 'Seeded sale', 2, 58, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(164, 5, 'sale', -6.400, 2957.000, 2950.600, 'Seeded sale', 2, 58, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(165, 6, 'sale', -8.000, 1917.000, 1909.000, 'Seeded sale', 2, 58, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(166, 1, 'sale', -4.200, 476.700, 472.500, 'Seeded sale', 2, 59, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(167, 7, 'sale', -1.000, 123.000, 122.000, 'Seeded sale', 2, 59, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(168, 2, 'sale', -3.100, 772.100, 769.000, 'Seeded sale', 2, 60, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(169, 4, 'sale', -9.200, 4968.100, 4958.900, 'Seeded sale', 2, 60, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(170, 5, 'sale', -9.200, 2950.600, 2941.400, 'Seeded sale', 2, 60, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(171, 7, 'sale', -3.000, 122.000, 119.000, 'Seeded sale', 2, 60, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(172, 3, 'sale', -2.400, 172.100, 169.700, 'Seeded sale', 2, 61, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(173, 5, 'sale', -2.700, 2941.400, 2938.700, 'Seeded sale', 2, 61, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(174, 6, 'sale', -8.000, 1909.000, 1901.000, 'Seeded sale', 2, 61, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(175, 3, 'sale', -3.300, 169.700, 166.400, 'Seeded sale', 2, 62, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(176, 6, 'sale', -11.000, 1901.000, 1890.000, 'Seeded sale', 2, 62, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(177, 5, 'sale', -2.600, 2938.700, 2936.100, 'Seeded sale', 2, 63, '2026-03-26 02:25:57', '2026-03-26 02:25:57'),
(178, 6, 'sale', -16.000, 1890.000, 1874.000, 'Seeded sale', 2, 63, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(179, 1, 'sale', -0.900, 472.500, 471.600, 'Seeded sale', 2, 64, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(180, 2, 'sale', -4.400, 769.000, 764.600, 'Seeded sale', 2, 64, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(181, 5, 'sale', -8.700, 2936.100, 2927.400, 'Seeded sale', 2, 64, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(182, 6, 'sale', -19.000, 1874.000, 1855.000, 'Seeded sale', 2, 64, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(183, 2, 'sale', -1.600, 764.600, 763.000, 'Seeded sale', 2, 65, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(184, 4, 'sale', -6.400, 4958.900, 4952.500, 'Seeded sale', 2, 65, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(185, 6, 'sale', -16.000, 1855.000, 1839.000, 'Seeded sale', 2, 65, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(186, 7, 'sale', -3.000, 119.000, 116.000, 'Seeded sale', 2, 65, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(187, 2, 'sale', -4.100, 763.000, 758.900, 'Seeded sale', 2, 66, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(188, 1, 'sale', -1.500, 471.600, 470.100, 'Seeded sale', 2, 67, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(189, 4, 'sale', -1.600, 4952.500, 4950.900, 'Seeded sale', 2, 67, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(190, 5, 'sale', -1.800, 2927.400, 2925.600, 'Seeded sale', 2, 67, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(191, 6, 'sale', -10.000, 1839.000, 1829.000, 'Seeded sale', 2, 67, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(192, 3, 'sale', -3.200, 166.400, 163.200, 'Seeded sale', 2, 68, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(193, 6, 'sale', -17.000, 1829.000, 1812.000, 'Seeded sale', 2, 68, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(194, 4, 'sale', -8.400, 4950.900, 4942.500, 'Seeded sale', 2, 69, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(195, 6, 'sale', -18.000, 1812.000, 1794.000, 'Seeded sale', 2, 69, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(196, 1, 'sale', -1.900, 470.100, 468.200, 'Seeded sale', 2, 70, '2026-03-26 02:25:58', '2026-03-26 02:25:58'),
(197, 2, 'sale', -4.800, 758.900, 754.100, 'Seeded sale', 2, 70, '2026-03-26 02:25:58', '2026-03-26 02:25:58');

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
  `role` enum('super_admin','admin','cashier') NOT NULL DEFAULT 'cashier',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@motidukan.com', NULL, '$2y$12$t3OnA49.Pn/zzuMynQX0o.OV2EwJMRf5/Q.HIDqb0EcgWWanwQCzK', 'super_admin', 1, NULL, '2026-03-26 02:01:02', '2026-03-26 02:25:57'),
(2, 'Cashier Ali', 'cashier@motidukan.com', NULL, '$2y$12$907nawdEvCC0PrJrSl3VXuVIGbkEWhSm/TNBBAmUmOHVdpu7rwjXu', 'cashier', 1, NULL, '2026-03-26 02:01:02', '2026-03-26 02:25:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_invoice_number_unique` (`invoice_number`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_movements_product_id_foreign` (`product_id`),
  ADD KEY `stock_movements_user_id_foreign` (`user_id`),
  ADD KEY `stock_movements_sale_id_foreign` (`sale_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD CONSTRAINT `stock_movements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_movements_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_movements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
