-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2024 at 12:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ovo_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@site.com', 'admin', NULL, '670ce58c687511728898444.png', '$2y$12$ecxM9ta/Mu9RTovy4/xAKebotQbkFcTwDEriRGnf3bwwJ2YBn//Ai', NULL, '2024-09-01 11:37:12', '2024-10-14 03:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `click_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `is_read`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'New member registered', 0, '/admin/users/detail/1', '2024-10-14 04:44:56', '2024-10-14 04:44:56'),
(2, 0, 'SMS Error: Bad Credentials', 0, '#', '2024-10-14 04:45:37', '2024-10-14 04:45:37'),
(3, 2, 'New member registered', 0, '/admin/users/detail/2', '2024-10-17 02:39:16', '2024-10-17 02:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`id`, `email`, `token`, `status`, `created_at`) VALUES
(1, 'admin@site.com', '373624', 0, '2023-04-19 21:02:14'),
(2, 'admin@site.com', '377774', 1, '2024-03-13 22:19:14'),
(3, 'admin@site.com', '170351', 0, '2024-03-13 22:19:29'),
(4, 'admin@site.com', '895253', 1, '2024-04-22 23:35:51'),
(5, 'admin@site.com', '494237', 1, '2024-04-22 23:37:26'),
(6, 'admin@site.com', '579153', 1, '2024-04-22 23:38:10'),
(7, 'admin@site.com', '371238', 1, '2024-04-22 23:40:17'),
(8, 'admin@site.com', '763061', 1, '2024-04-22 23:40:35'),
(9, 'admin@site.com', '898482', 1, '2024-05-08 03:16:11'),
(10, 'admin@site.com', '568332', 1, '2024-05-08 03:16:39'),
(11, 'admin@site.com', '565658', 1, '2024-09-02 03:36:02'),
(12, 'admin@site.com', '556832', 1, '2024-09-02 03:36:12'),
(13, 'admin@site.com', '256380', 1, '2024-09-11 08:09:37'),
(14, 'admin@site.com', '265441', 1, '2024-09-11 08:24:11'),
(15, 'admin@site.com', '881425', 1, '2024-09-11 08:25:23'),
(16, 'admin@site.com', '718656', 0, '2024-09-11 08:25:44'),
(17, 'admin@site.com', '536059', 1, '2024-09-11 08:27:40'),
(18, 'admin@site.com', '198860', 0, '2024-09-11 08:28:06'),
(19, 'admin@site.com', '675556', 1, '2024-09-11 08:29:06'),
(20, 'admin@site.com', '780389', 1, '2024-09-11 08:29:48'),
(21, 'admin@site.com', '660347', 1, '2024-09-16 08:01:01'),
(22, 'admin@site.com', '550753', 1, '2024-09-16 08:01:28'),
(23, 'admin@site.com', '385988', 1, '2024-09-16 08:03:01'),
(24, 'admin@site.com', '883892', 0, '2024-09-16 08:04:02'),
(25, 'admin@site.com', '515210', 1, '2024-09-16 08:04:48'),
(26, 'admin@site.com', '836296', 1, '2024-09-25 03:30:48'),
(27, 'admin@site.com', '343993', 1, '2024-09-25 05:26:10'),
(28, 'admin@site.com', '760152', 1, '2024-09-28 08:11:58'),
(29, 'admin@site.com', '748838', 1, '2024-09-29 00:21:42'),
(30, 'admin@site.com', '279470', 1, '2024-09-29 00:23:31'),
(31, 'admin@site.com', '510685', 1, '2024-09-29 03:34:43'),
(32, 'admin@site.com', '299137', 1, '2024-09-29 03:35:04'),
(33, 'admin@site.com', '697895', 1, '2024-09-30 03:36:13'),
(34, 'admin@site.com', '345553', 1, '2024-09-30 03:36:41'),
(35, 'admin@site.com', '711459', 1, '2024-10-01 01:31:26'),
(36, 'admin@site.com', '163902', 1, '2024-10-01 01:32:50'),
(37, 'admin@site.com', '544213', 0, '2024-10-02 04:15:58'),
(38, 'admin@site.com', '215363', 1, '2024-10-02 07:29:29'),
(39, 'admin@site.com', '469422', 1, '2024-10-02 07:29:45'),
(40, 'admin@site.com', '700298', 1, '2024-10-03 00:16:30'),
(41, 'admin@site.com', '933643', 1, '2024-10-05 05:19:51'),
(42, 'admin@site.com', '458439', 1, '2024-10-06 02:15:50'),
(43, 'admin@site.com', '446061', 1, '2024-10-06 02:18:15'),
(44, 'admin@site.com', '487963', 1, '2024-10-06 02:19:18'),
(45, 'admin@site.com', '296365', 1, '2024-10-06 02:19:40'),
(46, 'admin@site.com', '237954', 1, '2024-10-06 02:20:40'),
(47, 'admin@site.com', '722647', 0, '2024-10-06 02:21:08'),
(48, 'admin@site.com', '624353', 1, '2024-10-06 02:25:23'),
(49, 'admin@site.com', '979208', 1, '2024-10-10 08:26:18'),
(50, 'admin@site.com', '938985', 1, '2024-10-10 08:26:36'),
(51, 'admin@site.com', '474628', 0, '2024-10-14 01:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `cron_jobs`
--

CREATE TABLE `cron_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cron_schedule_id` int NOT NULL DEFAULT '0',
  `next_run` datetime DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `is_running` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_jobs`
--

INSERT INTO `cron_jobs` (`id`, `name`, `alias`, `action`, `url`, `cron_schedule_id`, `next_run`, `last_run`, `is_running`, `is_default`, `created_at`, `updated_at`) VALUES
(5, 'Kasimir Atkins', 'kasimir_atkins', NULL, 'https://www.tix.us', 4, '2024-10-06 12:00:54', '2024-10-06 11:27:34', 0, 0, '2024-09-09 03:36:44', '2024-10-07 00:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `cron_job_logs`
--

CREATE TABLE `cron_job_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `cron_job_id` int UNSIGNED NOT NULL DEFAULT '0',
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `duration` int UNSIGNED NOT NULL DEFAULT '0',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedules`
--

CREATE TABLE `cron_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_schedules`
--

INSERT INTO `cron_schedules` (`id`, `name`, `interval`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hourly2', 3600, 0, '2024-03-13 23:34:09', '2024-10-14 06:29:20'),
(3, 'Daily', 86400, 1, '2024-05-06 04:46:39', '2024-05-06 04:46:39'),
(4, 'yearly', 2000, 1, '2024-09-09 02:52:56', '2024-09-09 02:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `method_code` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `method_currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `final_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btc_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_try` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT '0',
  `admin_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_cron` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amount`, `detail`, `btc_amount`, `btc_wallet`, `trx`, `payment_try`, `status`, `from_api`, `admin_feedback`, `success_url`, `failed_url`, `last_cron`, `created_at`, `updated_at`) VALUES
(1, 1, 103, 100.00000000, 'USD', 2.00000000, 1.00000000, 102.00000000, NULL, '0', '', 'K8KB6D3Q6LKY', 0, 0, 0, NULL, '/user/deposit/history', '/user/deposit/history', 0, '2024-10-14 05:05:33', '2024-10-14 05:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `is_app` tinyint(1) NOT NULL DEFAULT '0',
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_tokens`
--

INSERT INTO `device_tokens` (`id`, `user_id`, `is_app`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'fNyQ9JG3nDM6RrjQ4FYjSu:APA91bFf5fr9oxo2qN-9OnBUc8yDS6By0ivqtfmakYaR1xlmhUkIrhMbFDGF2RnUBcCyU4gUhA63Iv-mfllC7s43dmdR-ML4jj_GkgDHu1e0pX0Ks94zZBXrCvCOrX83jI4i6XtqqN7X', '2024-05-29 00:53:48', '2024-05-29 00:53:48'),
(2, 1, 1, 'f1_WoSigwh-1FJLShntzz6:APA91bG0_XOB18VHiwZDGlBgJD7i3OhYVyImil4kil7_5kkMwDDwsgIkTmBIoMuvoPZwIZCDCBSL3PnuVhP7bQ25LpyYnJ7TCjLPGkfCvldyMYQaSeH1JYBNweIILz25TzsasjjJjaV_', '2024-09-12 07:55:29', '2024-09-12 07:55:29'),
(3, 1, 1, 'test', '2024-09-12 08:00:34', '2024-09-12 08:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `info`, `image`, `script`, `shortcode`, `support`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'Tawk.to offers live chat support, helping you communicate with visitors and boost customer satisfaction', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"121\"}}', 'twak.png', 1, '2019-10-18 11:16:05', '2024-10-14 06:08:00'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'Google reCAPTCHA v2 blocks bots, reducing spam and enhancing website security', 'recaptcha3.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LdPC88fAAAAADQlUf_DV6Hrvgm-pZuLJFSLDOWV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LdPC88fAAAAAG5SVaRYDnV2NpCrptLg2XLYKRKB\"}}', 'recaptcha.png', 0, '2019-10-18 11:16:05', '2024-10-10 08:26:07'),
(3, 'custom-captcha', 'Custom Captcha', 'Just put any random string', 'Custom Captcha checks users with simple challenges, stopping spam and keeping your site safe', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, '2019-10-18 11:16:05', '2024-10-06 03:47:03'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', '\nGoogle Analytics tracks website traffic and user behavior, helping you improve performance and understand your audience', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{measurement_id}}\"></script>\n                <script>\n                  window.dataLayer = window.dataLayer || [];\n                  function gtag(){dataLayer.push(arguments);}\n                  gtag(\"js\", new Date());\n                \n                  gtag(\"config\", \"{{measurement_id}}\");\n                </script>', '{\"measurement_id\":{\"title\":\"Measurement ID\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, '2021-05-03 22:19:12'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook Comment lets users share feedback on your site, increasing engagement and social interaction', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.png', 0, NULL, '2022-03-21 17:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `act`, `form_data`, `created_at`, `updated_at`) VALUES
(2, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"nid_number_22\":{\"name\":\"NID Number 22\",\"label\":\"nid_number_22\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"textarea\"},\"sadfg\":{\"name\":\"sadfg\",\"label\":\"sadfg\",\"is_required\":\"optional\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"asdf\":{\"name\":\"asdf\",\"label\":\"asdf\",\"is_required\":\"required\",\"extensions\":null,\"options\":[\"Test\",\"Test2\",\"Test3\"],\"type\":\"select\"},\"nid_number_226985\":{\"name\":\"NID Number 226985\",\"label\":\"nid_number_226985\",\"is_required\":\"required\",\"extensions\":null,\"options\":[\"Test\",\"Test 2\",\"Test 3\"],\"type\":\"checkbox\"},\"nid_number_3333\":{\"name\":\"NID Number 3333\",\"label\":\"nid_number_3333\",\"is_required\":\"required\",\"extensions\":null,\"options\":[\"Test\",\"asdf\"],\"type\":\"radio\"},\"nid_number_3333587\":{\"name\":\"NID Number 3333587\",\"label\":\"nid_number_3333587\",\"is_required\":\"optional\",\"extensions\":\"jpg,bmp,png,pdf\",\"options\":[],\"type\":\"file\"}}', '2022-03-16 01:09:49', '2022-03-17 00:02:54'),
(3, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"nid_number_226985\":{\"name\":\"NID Number 226985\",\"label\":\"nid_number_226985\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-16 04:32:29', '2022-03-16 04:35:32'),
(5, 'withdraw_method', '{\"nid_number_33\":{\"name\":\"NID Number 33\",\"label\":\"nid_number_33\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-17 00:45:35', '2022-03-17 00:53:17'),
(6, 'withdraw_method', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-17 00:47:04', '2022-03-17 00:47:04'),
(7, 'kyc', '{\"father\'s_name\":{\"name\":\"Father\'s Name\",\"label\":\"father\'s_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"mother\'s_name\":{\"name\":\"Mother\'s name\",\"label\":\"mother\'s_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"gender\":{\"name\":\"Gender\",\"label\":\"gender\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[\"Male\",\"Female\"],\"type\":\"radio\",\"width\":\"12\"},\"nationality\":{\"name\":\"Nationality\",\"label\":\"nationality\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"nid_photo_both_side\":{\"name\":\"NID Photo Both Side\",\"label\":\"nid_photo_both_side\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png\",\"options\":[],\"type\":\"file\",\"width\":\"12\"}}', '2022-03-17 02:56:14', '2024-10-14 01:23:38'),
(8, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2022-03-21 07:53:25', '2022-03-21 07:53:25'),
(9, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2022-03-21 07:54:15', '2022-03-21 07:54:15'),
(10, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-21 07:55:15', '2022-03-21 07:55:22'),
(11, 'withdraw_method', '{\"nid_number_2658\":{\"name\":\"NID Number 2658\",\"label\":\"nid_number_2658\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[\"asdf\"],\"type\":\"checkbox\"}}', '2022-03-22 00:14:09', '2022-03-22 00:14:18'),
(12, 'withdraw_method', '[]', '2022-03-30 09:03:12', '2022-03-30 09:03:12'),
(13, 'withdraw_method', '{\"bank_name\":{\"name\":\"Bank Name\",\"label\":\"bank_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"account_name\":{\"name\":\"Account Name\",\"label\":\"account_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"account_number\":{\"name\":\"Account Number\",\"label\":\"account_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"bank_swift_code\":{\"name\":\"Bank Swift Code\",\"label\":\"bank_swift_code\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"test\":{\"name\":\"test\",\"label\":\"test\",\"is_required\":\"required\",\"instruction\":\"test\",\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"}}', '2022-03-30 09:09:11', '2024-10-14 06:23:07'),
(14, 'withdraw_method', '{\"full_name\":{\"name\":\"Full Name\",\"label\":\"full_name\",\"is_required\":\"optional\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"mfs_name\":{\"name\":\"MFS Name\",\"label\":\"mfs_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"mobile_number\":{\"name\":\"Mobile Number\",\"label\":\"mobile_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"country\":{\"name\":\"Country\",\"label\":\"country\",\"is_required\":\"optional\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"comment\\/note\":{\"name\":\"Comment\\/Note\",\"label\":\"comment\\/note\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"}}', '2022-03-30 09:10:12', '2024-09-27 07:22:01'),
(15, 'manual_deposit', '{\"send_from_number\":{\"name\":\"Send From Number\",\"label\":\"send_from_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"transaction_number\":{\"name\":\"Transaction Number\",\"label\":\"transaction_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"screenshot\":{\"name\":\"Screenshot\",\"label\":\"screenshot\",\"is_required\":\"required\",\"extensions\":\"jpg,jpeg,png\",\"options\":[],\"type\":\"file\"}}', '2022-03-30 09:15:27', '2022-03-30 09:15:27'),
(16, 'manual_deposit', '{\"transaction_number\":{\"name\":\"Transaction Number\",\"label\":\"transaction_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"screenshot\":{\"name\":\"Screenshot\",\"label\":\"screenshot\",\"is_required\":\"required\",\"extensions\":\"jpg,pdf,docx\",\"options\":[],\"type\":\"file\"}}', '2022-03-30 09:16:43', '2022-04-11 03:19:54'),
(17, 'manual_deposit', '[]', '2022-03-30 09:21:19', '2022-03-30 09:21:19'),
(18, 'manual_deposit', '[]', '2022-07-26 05:53:36', '2022-07-26 05:53:36'),
(19, 'manual_deposit', '{\"bank_name\":{\"name\":\"Bank Name\",\"label\":\"bank_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"account_name\":{\"name\":\"Account Name\",\"label\":\"account_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"account_number\":{\"name\":\"Account Number\",\"label\":\"account_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"transaction_number\":{\"name\":\"Transaction Number\",\"label\":\"transaction_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"transaction_screenshot\":{\"name\":\"Transaction Screenshot\",\"label\":\"transaction_screenshot\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"}}', '2024-03-13 23:11:21', '2024-09-27 07:28:07'),
(20, 'manual_deposit', '[]', '2024-04-22 02:59:40', '2024-04-22 02:59:40'),
(21, 'withdraw_method', '[]', '2024-04-22 03:24:21', '2024-04-22 03:24:21'),
(22, 'manual_deposit', '{\"mobile_wallet_number\":{\"name\":\"Mobile_wallet Number\",\"label\":\"mobile_wallet_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"transaction_number\":{\"name\":\"Transaction Number\",\"label\":\"transaction_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"sending_amount\":{\"name\":\"Sending Amount\",\"label\":\"sending_amount\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"transaction_screenshot\":{\"name\":\"Transaction Screenshot\",\"label\":\"transaction_screenshot\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"mfs_operator_provider\":{\"name\":\"MFS Operator_Provider\",\"label\":\"mfs_operator_provider\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"}}', '2024-09-25 08:22:40', '2024-10-15 00:53:17'),
(23, 'withdraw_method', '{\"email\":{\"name\":\"email\",\"label\":\"email\",\"is_required\":\"required\",\"instruction\":\"dhfdghfh\",\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"}}', '2024-09-25 23:28:53', '2024-10-08 03:26:58'),
(24, 'withdraw_method', '{\"paypal_email\":{\"name\":\"Paypal Email\",\"label\":\"paypal_email\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"}}', '2024-10-08 03:31:58', '2024-10-15 00:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint UNSIGNED NOT NULL,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tempname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `seo_content`, `tempname`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"social_title\":\"OvoPanel - The Laravel starter pack for OvoSolution\",\"keywords\":[\"ovo panel\"],\"description\":\"Introducing OvoPanel, the ultimate Laravel Starter Pack! Packed with essential features like payment gateway integration, KYC verification, user management, deposits, and more, OvoPanel is built to accelerate your app development with ease. Perfect for developers and businesses looking for a secure and scalable solution\",\"social_description\":\"Introducing OvoPanel, the ultimate Laravel Starter Pack! Packed with essential features like payment gateway integration, KYC verification, user management, deposits, and more, OvoPanel is built to accelerate your app development with ease. Perfect for developers and businesses looking for a secure and scalable solution\",\"image\":\"670d1ee7356d81728913127.png\"}', NULL, NULL, '', '2020-07-04 17:42:52', '2024-10-14 07:42:49'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Latest News\",\"subheading\":\"11\",\"description\":\"fdg sdfgsdf g ggg\",\"about_icon\":\"<i class=\\\"las la-address-card\\\"><\\/i>\",\"background_image\":\"60951a84abd141620384388.png\",\"about_image\":\"5f9914e907ace1603867881.jpg\"}', NULL, 'basic', '', '2020-10-27 18:51:20', '2024-09-10 01:37:23'),
(25, 'blog.content', '{\"heading\":\"Latest News\",\"subheading\":\"------\"}', NULL, 'basic', '', '2020-10-27 18:51:34', '2024-04-30 19:36:53'),
(27, 'contact_us.content', '{\"title\":\"Auctor gravida vestibulu\",\"short_details\":\"55f55\",\"email_address\":\"5555f\",\"contact_details\":\"5555h\",\"contact_number\":\"5555a\",\"latitude\":\"5555h\",\"longitude\":\"5555s\",\"website_footer\":\"5555qqq\"}', NULL, 'basic', NULL, '2020-10-27 18:59:19', '2020-10-31 22:51:54'),
(28, 'counter.content', '{\"heading\":\"Latest News\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', NULL, 'basic', '', '2020-10-27 19:04:02', '2024-10-07 23:16:28'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"las la-expand\\\"><\\/i>\",\"url\":\"https:\\/\\/www.google.com\\/\"}', NULL, 'basic', NULL, '2020-11-11 22:07:30', '2021-05-11 23:56:59'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', NULL, 'basic', NULL, '2021-01-03 17:40:54', '2021-01-03 17:40:55'),
(34, 'feature.element', '{\"title\":\"asdf\",\"description\":\"asdf\",\"feature_icon\":\"asdf\"}', NULL, 'basic', NULL, '2021-01-03 17:41:02', '2021-01-03 17:41:02'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', NULL, 'basic', '', '2021-03-05 19:12:10', '2024-09-10 01:53:26'),
(36, 'service.content', '{\"trx_type\":\"deposit\",\"heading\":\"asdf fffff\",\"subheading\":\"555\"}', NULL, 'basic', '', '2021-03-05 19:27:34', '2024-09-10 01:39:12'),
(41, 'cookie.data', '{\"short_desc\":\"We may utilize cookies when you access our website, including any related media platforms or mobile applications. These technologies are employed to enhance site functionality and optimize your interactions with our services.\",\"description\":\"<div>\\r\\n    <h4>What Are Cookies?<\\/h4>\\r\\n    <p>Cookies are small data files that are placed on your computer or mobile device when you visit a website. These\\r\\n        files contain information that is transferred to your device\\u2019s hard drive. Cookies are widely used by website\\r\\n        owners for various purposes: they help websites function properly by enabling essential features such as page\\r\\n        navigation and access to secure areas; they improve efficiency by remembering your preferences and actions over\\r\\n        time, such as login details and language settings, so you don\\u2019t have to re-enter them each time you visit; they\\r\\n        provide reporting information that helps website owners understand how their site is being used, including data\\r\\n        on page visits, duration of visits, and any errors that occur, which is crucial for improving site performance\\r\\n        and user experience; they personalize your experience by remembering your preferences and tailoring content to\\r\\n        your interests, including showing relevant advertisements or recommendations based on your browsing history; and\\r\\n        they enhance security by detecting fraudulent activity and protecting your data from unauthorized access. By\\r\\n        using cookies, website owners can enhance the overall functionality and efficiency of their sites, providing a\\r\\n        better experience for their users.<\\/p>\\r\\n    <p><br><\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<div>\\r\\n    <h4>Why Do We Use Cookies?<\\/h4>\\r\\n    <p>We use cookies for several reasons. Some cookies are required for technical reasons for our website to operate,\\r\\n        and we refer to these as \\u201cessential\\u201d or \\u201cstrictly necessary\\u201d cookies. These essential cookies are crucial for\\r\\n        enabling basic functions like page navigation, secure access to certain areas, and ensuring the overall\\r\\n        functionality of the site. Without these cookies, the website cannot perform properly.<\\/p>\\r\\n    <p>Other cookies enable us to track and target the interests of our users to enhance the experience on our website.\\r\\n        These cookies help us understand your preferences and behaviors, allowing us to tailor content and features to\\r\\n        better suit your needs. For example, they can remember your login details, language preferences, and other\\r\\n        customizable settings, providing a more personalized and efficient browsing experience.<br><\\/p>\\r\\n    <p><br><\\/p>\\r\\n<\\/div>\\r\\n<div>\\r\\n    <h4>Types of Cookies We Use<\\/h4>\\r\\n    <p>\\r\\n    <\\/p>\\r\\n    <ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Essential Cookies<\\/strong>\\r\\n            <span>These cookies are necessary for the website to function and cannot be switched off in our systems.\\r\\n                They are usually only set in response to actions made by you which amount to a request for services,\\r\\n                such as setting your privacy preferences, logging in, or filling in forms.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Performance and Functionality Cookies<\\/strong>\\r\\n            <span>These cookies are used to enhance the performance and functionality of our website but are\\r\\n                non-essential to its use. However, without these cookies, certain functionality may become\\r\\n                unavailable.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Analytics and Customization Cookies <\\/strong>\\r\\n            <span>These cookies collect information that is used either in aggregate form to help us understand how our\\r\\n                website is being used or how effective our marketing campaigns are, or to help us customize our website\\r\\n                for you.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Advertising Cookies<\\/strong>\\r\\n            <span>These cookies are used to make advertising messages more relevant to you. They perform functions like\\r\\n                preventing the same ad from continuously reappearing, ensuring that ads are properly displayed for\\r\\n                advertisers, and in some cases selecting advertisements that are based on your interests.<\\/span>\\r\\n        <\\/li><\\/ul>\\r\\n    <p><\\/p>\\r\\n<\\/div>\\r\\n<br>\\r\\n\\r\\n<div>\\r\\n    <h4>Your Choices Regarding Cookies<\\/h4>\\r\\n    <p>You have the right to decide whether to accept or reject cookies. You can exercise your cookie preferences by\\r\\n        clicking on the appropriate opt-out links provided in the cookie banner. This banner typically appears when you\\r\\n        first visit our website and allows you to choose which types of cookies you are comfortable with. You can also\\r\\n        set or amend your web browser controls to accept or refuse cookies. Most web browsers provide settings that\\r\\n        allow you to manage or delete cookies, and you can usually find these settings in the \\u201coptions\\u201d or \\u201cpreferences\\u201d\\r\\n        menu of your browser.<\\/p>\\r\\n    <p><br><\\/p>\\r\\n    <p>If you choose to reject cookies, you may still use our website, though your access to some functionality and\\r\\n        areas of our website may be restricted. For example, certain features that rely on cookies to remember your\\r\\n        preferences or login details may not work properly. Additionally, rejecting cookies may impact the\\r\\n        personalization of your experience, as we use cookies to tailor content and advertisements to your interests.\\r\\n        Despite these limitations, we respect your right to control your cookie preferences and strive to provide a\\r\\n        functional and enjoyable browsing experience regardless of your choices.<\\/p>\\r\\n<\\/div>\\r\\n<br>\\r\\n\\r\\n<div>\\r\\n    <h4>Contact Us\\r\\n    <\\/h4>\\r\\n    <p>\\r\\n        If you have any questions about our use of cookies or other technologies, please contact <a href=\\\"contact\\\"><strong> with us<\\/strong><\\/a>. Our team is available to assist you with any inquiries or concerns you may have\\r\\n        regarding our cookie policy. We value your privacy and are committed to ensuring that your experience on our\\r\\n        website is transparent and satisfactory.\\r\\n    <\\/p>\\r\\n<\\/div>\\r\\n<br><br>\",\"status\":1}', NULL, NULL, NULL, '2020-07-04 17:42:52', '2024-09-18 22:51:09'),
(42, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<div>\\r\\n    <h4>Privacy Policy<\\/h4>\\r\\n    <p>This Privacy Policy outlines how we collect, use, disclose, and protect your personal information when you visit\\r\\n        our website. By accessing or using our website, you agree to the terms of this Privacy Policy\\r\\n        and consent to the collection and use of your information as described herein.\\r\\n        We are committed to ensuring that your privacy is protected. Should we ask you to provide certain information by\\r\\n        which you can be identified when using this website, you can be assured that it will only be used in accordance\\r\\n        with this Privacy Policy. We regularly review our compliance with this policy and ensure that all data handling\\r\\n        practices are transparent and secure.\\r\\n    <\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4> Information We Collect<\\/h4>\\r\\n    <p>We collect personal information such as names, email addresses, \\r\\nand browsing data to enhance user experience and provide personalized \\r\\nservices. This data helps us understand user preferences and improve our\\r\\n offerings. Your privacy is important to us, and we ensure that all \\r\\ninformation is handled with strict confidentiality.<\\/p>\\r\\n    <ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>Personal Information:<\\/span>\\r\\n            <span>Name, email address, phone number, and other contact details.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>Usage Data:<\\/span>\\r\\n            <span>Information about how you use our website, including your IP address, browser type, and pages\\r\\n                visited.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>Cookies and Tracking technology:<\\/span>\\r\\n            <span> We use cookies to enhance your experience on our website. You can manage your cookie preferences\\r\\n                through your browser settings.<\\/span>\\r\\n        <\\/li><\\/ul>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>How We Use Your Information<\\/h4>\\r\\n    <p>We use your information to provide and improve our services, \\r\\nensuring a personalized experience tailored to your needs. This includes\\r\\n processing transactions, communicating updates, and responding to \\r\\ninquiries. Additionally, we use your data for analytical purposes to \\r\\nenhance our offerings and for security measures to protect against \\r\\nfraud.<\\/p>\\r\\n    <ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>To provide and maintain our services.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>To improve and personalize your experience on our website.\\r\\n            <\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>To communicate with you, including sending updates and promotional materials.\\r\\n            <\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <span>\\r\\n                To analyze website usage and improve our services.\\r\\n            <\\/span>\\r\\n        <\\/li><\\/ul>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n\\r\\n<div>\\r\\n    <h4>Sharing Your Information<\\/h4>\\r\\n    <p>\\r\\n        We do not sell, trade, or otherwise transfer your personal information to outside parties except as described in\\r\\n        this Privacy Policy. We take reasonable steps to ensure that any third parties with whom we share your personal\\r\\n        information are bound by appropriate confidentiality and security obligations regarding your personal\\r\\n        information.\\r\\n\\r\\n        We understand the importance of maintaining the privacy and security of your personal information. Therefore, we\\r\\n        implement stringent measures to protect your data from unauthorized access, use, or disclosure. Our commitment\\r\\n        to safeguarding your privacy includes:\\r\\n\\r\\n    <\\/p><ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Data Encryption<\\/strong>\\r\\n            <span>We use advanced encryption technologies to protect your personal information during transmission and\\r\\n                storage. This ensures that your data is secure and inaccessible to unauthorized parties.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Access Controls<\\/strong>\\r\\n            <span>We restrict access to your personal information to only those employees, contractors, and agents who\\r\\n                need to know that information to process it on our behalf. These individuals are subject to strict\\r\\n                confidentiality obligations and may be disciplined or terminated if they fail to meet these\\r\\n                obligations.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Regular Audits<\\/strong>\\r\\n            <span>We conduct regular audits of our data handling practices and security measures to ensure compliance\\r\\n                with this Privacy Policy and applicable laws. This helps us identify and address any potential\\r\\n                vulnerabilities in our systems.<\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong>Incident Response<\\/strong>\\r\\n            <span>n the unlikely event of a data breach, we have established procedures to respond promptly and\\r\\n                effectively. We will notify you and any relevant authorities as required by law and take all necessary\\r\\n                steps to mitigate the impact of the breach.<\\/span>\\r\\n        <\\/li><\\/ul>\\r\\n\\r\\n<\\/div>\\r\\n\\r\\n<br \\/>\\r\\n\\r\\n<div>\\r\\n    <h4>Contact Us\\r\\n    <\\/h4>\\r\\n    <p>\\r\\n        If you have any questions about our privacy & policy, please contact\\u00a0<a href=\\\"\\/contact\\\"><strong>with us<\\/strong><\\/a>. Our team is available to assist you with any inquiries or\\r\\n        concerns you may have\\r\\n        regarding our privacy & policy. We value your privacy and are committed to ensuring that your experience on our\\r\\n        website is transparent and satisfactory.\\r\\n    <\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\"}', '{\"image\":null,\"description\":null,\"social_title\":null,\"social_description\":null,\"keywords\":null}', 'basic', 'privacy-policy', '2021-06-09 02:50:42', '2024-10-05 21:10:26'),
(43, 'policy_pages.element', '{\"title\":\"Terms of Service\",\"details\":\"<div>\\r\\n    <h4>Terms and Conditions<\\/h4>\\r\\n    <p>By accessing this website, you agree to be bound by these Terms and Conditions of Use, along with all applicable laws and regulations. You are responsible for compliance with any local laws that may apply. If you do not agree with any of these terms, you are prohibited from using or accessing this site.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Customer Support<\\/h4>\\r\\n    <p>After purchasing or downloading our product, you can reach out for support via email. We will make every effort to resolve your issue and may provide smaller fixes through email correspondence, followed by updates to the core package. Verified users can access content support through our ticketing system, as well as via email and live chat.<\\/p>\\r\\n    <p>If your request requires additional modifications to the system, you have two options:<\\/p>\\r\\n    <ul>\\r\\n        <li>Wait for the next update release.<\\/li>\\r\\n        <li>Hire an expert (customizations are available for an additional fee).<\\/li>\\r\\n    <\\/ul>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Intellectual Property Ownership<\\/h4>\\r\\n    <p>You cannot claim intellectual or exclusive ownership of any of our products, whether modified or unmodified. All products remain the property of our organization. Our products are provided \\\"as-is\\\" without any warranty, express or implied. Under no circumstances shall we be liable for any damages, including but not limited to direct, indirect, incidental, or consequential damages arising from the use or inability to use our products.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Product Warranty Disclaimer<\\/h4>\\r\\n    <p>We do not offer any warranty or guarantee for our services. Once our services have been modified, we cannot guarantee compatibility with third-party plugins, modules, or web browsers. Browser compatibility should be tested using the demo templates. Please ensure the browsers you use are compatible, as we cannot guarantee functionality across all browser combinations.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Prohibited and Illegal Use<\\/h4>\\r\\n    <p>You may not use our products for any illegal or unauthorized purposes, nor may you violate any laws in your jurisdiction (including but not limited to copyright laws), as well as the laws of your country and international laws. The use of our platform for pages that promote violence, terrorism, explicit adult content, racism, offensive material, or illegal software is strictly prohibited.<\\/p>\\r\\n    <p>It is prohibited to reproduce, duplicate, copy, sell, trade, or exploit any part of our products without our express written permission or the product owner\'s consent.<\\/p>\\r\\n    <p>Our members are responsible for all content posted on forums and demos, as well as any activities that occur under their account. We reserve the right to block your account immediately if we detect any prohibited behavior.<\\/p>\\r\\n    <p>If you create an account on our site, you are responsible for maintaining the security of your account and all activities that occur under it. You must notify us immediately of any unauthorized use or security breaches.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Payment and Refund Policy<\\/h4>\\r\\n    <p>Refunds or cashback will not be issued. Once a deposit is made, it is non-reversible. You must use your balance to purchase our services, such as hosting or SEO campaigns. By making a deposit, you agree not to file a dispute or chargeback against us.<\\/p>\\r\\n    <p>If a dispute or chargeback is filed after making a deposit, we reserve the right to terminate all future orders and ban you from our site. Fraudulent activities, such as using unauthorized or stolen credit cards, will result in account termination without exceptions.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Free Balance and Coupon Policy<\\/h4>\\r\\n    <p>We offer multiple ways to earn free balance, coupons, and deposit offers, but we reserve the right to review and deduct these balances if we believe there is any form of misuse. If we deduct your free balance and your account balance becomes negative, your account will be suspended. To reactivate a suspended account, you must make a custom payment to settle your balance.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div>\\r\\n    <h4>Contact Information<\\/h4>\\r\\n    <p>If you have any questions about our Terms of Service, please contact us through <a href=\\\"\\/contact\\\"><strong>this link<\\/strong><\\/a>. Our team is available to assist you with any inquiries or concerns regarding our Terms of Service. We are committed to ensuring that your experience on our platform is secure and satisfactory.<\\/p>\\r\\n<\\/div>\\r\\n<br \\/>\"}', '{\"image\":\"6635d5d9618e71714804185.png\",\"description\":null,\"social_title\":null,\"social_description\":null,\"keywords\":null}', 'basic', 'terms-of-service', '2021-06-09 02:51:18', '2024-10-05 21:09:40'),
(44, 'maintenance.data', '{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom: 3rem !important;\\\">\\r\\n    <h3 class=\\\"mb-3\\\" style=\\\"text-align: center;\\\">\\r\\n        <font color=\\\"#ff0000\\\" face=\\\"Exo, sans-serif\\\"><span style=\\\"font-size: 24px;\\\">SITE UNDER MAINTENANCE<\\/span><\\/font>\\r\\n    <\\/h3>\\r\\n    <div class=\\\"mb-3\\\">\\r\\n        <p>Our site is currently undergoing scheduled maintenance to enhance performance and ensure a smoother\\r\\n            experience for you. During this time, some features may be temporarily unavailable. We are committed to\\r\\n            completing this update as quickly as possible. Thank you for your patience and understanding as we work to\\r\\n            improve your experience. Please check back oon for further updates.<\\/p>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"image\":\"66e188642ac371726056548.png\"}', NULL, NULL, NULL, '2020-07-04 17:42:52', '2024-09-12 21:14:23'),
(52, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Exploring the Cryptocurrency Landscape: A Comprehensive Guide for Beginners.\",\"description\":\"Retirement planning is essential for ensuring financial security and peace of mind in your golden years. In this blog post, we discuss key retirement planning strategies, including setting retirement goals, estimating retirement expenses, maximizing retirement savings accounts, and creating a sustainable withdrawal plan. Whether you\'re decades away from retirement or nearing your retirement age, this guide will help you take proactive steps towards a financially secure future.<br \\/><br \\/>\\r\\n<h5>From setting clear retirement goals to estimating your future expenses and income needs<\\/h5>\\r\\n<div>we\'ll guide you through the process of creating a solid retirement plan tailored to your unique circumstances. Whether you\'re decades away from retirement or nearing your retirement age, this guide offers valuable insights to help you make informed decisions and take proactive steps towards achieving your retirement objectives.<br \\/><\\/div>\\r\\n<div><br \\/><\\/div>\\r\\n\\r\\n<blockquote style=\\\"font-style:italic;text-align:center;padding:20px;background:#d5d5d5;font-weight:500;font-size:18px;border-left:4px solid #687687;\\\">Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/blockquote>\\r\\n\\r\\n\\r\\n<h5>Planning for retirement doesn\'t end with accumulating savings<\\/h5>\\r\\n<div>It also involves developing a sustainable withdrawal strategy to ensure your funds last throughout your retirement years. We\'ll discuss key factors to consider when creating a withdrawal plan, such as your expected lifespan, inflation, and investment returns, to help you strike the right balance between enjoying your retirement lifestyle and preserving your financial security.<br \\/><\\/div>\\r\\n<div><br \\/><\\/div>\\r\\n<h5>Planning before starting<\\/h5>\\r\\n<div>Whether you\'re just starting your career, mid-career, or approaching retirement age, it\'s never too early or too late to begin planning for your future. Join us as we empower you with the knowledge and tools you need to take control of your retirement destiny and embark on the path towards a financially secure and fulfilling retirement.<br \\/><br \\/><h5>From setting clear retirement goals to estimating your future expenses and income needs<\\/h5><div>we\'ll guide you through the process of creating a solid retirement plan tailored to your unique circumstances. Whether you\'re decades away from retirement or nearing your retirement age, this guide offers valuable insights to help you make informed decisions and take proactive steps towards achieving your retirement objectives.<\\/div><\\/div>\",\"image\":\"662a19077e0ad1714034951.jpg\"}', '{\"image\":\"65ffcda2669481711263138.jpg\",\"description\":null,\"social_title\":\"test\",\"social_description\":null,\"keywords\":null}', 'basic', 'exploring-the-cryptocurrency-landscape-a-comprehensive-guide-for-beginners', '2024-03-24 00:52:04', '2024-04-30 21:55:15'),
(55, 'counter.content', '{\"heading\":\"Latest Newsss\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', NULL, 'basic', '', '2024-04-20 19:13:50', '2024-04-20 19:13:50'),
(56, 'counter.content', '{\"heading\":\"Latest News\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', NULL, 'basic', '', '2024-04-20 19:13:52', '2024-04-20 19:13:52'),
(60, 'kyc.content', '{\"required\":\"Complete KYC to unlock the full potential of our platform! KYC helps us verify your identity and keep things secure. It is quick and easy just follow the on-screen instructions. Get started with KYC verification now!\",\"pending\":\"Your KYC verification is being reviewed. We might need some additional information. You will get an email update soon. In the meantime, explore our platform with limited features.\"}', NULL, 'basic', '', '2024-04-25 00:35:35', '2024-04-25 00:35:35'),
(61, 'kyc.content', '{\"required\":\"Complete KYC to unlock the full potential of our platform! KYC helps us verify your identity and keep things secure. It is quick and easy just follow the on-screen instructions. Get started with KYC verification now!\",\"pending\":\"Your KYC verification is being reviewed. We might need some additional information. You will get an email update soon. In the meantime, explore our platform with limited features.\",\"reject\":\"We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards.\"}', NULL, 'basic', '', '2024-04-25 00:40:29', '2024-04-25 00:40:29'),
(62, 'blog.content', '{\"heading\":\"Latest News\",\"subheading\":\"------\"}', NULL, 'basic', '', '2024-04-30 01:31:30', '2024-04-30 01:31:30'),
(64, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"Latest News\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\",\"image\":\"6631dbf594eca1714543605.png\"}', NULL, 'basic', '', '2024-04-30 18:06:45', '2024-04-30 18:06:46'),
(66, 'register_disable.content', '{\"has_image\":\"1\",\"heading\":\"Registration Currently Disabled\",\"subheading\":\"Page you are looking for doesn\'t exit or an other error occurred or temporarily unavailable.\",\"button_name\":\"Go to Home\",\"button_url\":\"#\",\"image\":\"663a0f20ecd0b1715080992.png\"}', NULL, 'basic', '', '2024-05-06 23:23:12', '2024-05-06 23:28:09'),
(67, 'faq.element', '{\"question\":\"Voluptatem vitae et\",\"answer\":\"Perspiciatis itaque\",\"icon\":\"Deserunt ex mollitia\"}', NULL, 'basic', '', '2024-09-10 02:14:22', '2024-09-10 02:14:22'),
(68, 'faq.content', '{\"heading\":\"Ad qui consequatur i\",\"subheading\":\"Nulla sapiente ipsum\"}', NULL, 'basic', '', '2024-09-10 18:52:59', '2024-09-10 18:52:59'),
(69, 'counter.element', '{\"title\":\"Nesciunt excepteur\",\"counter_digit\":\"Excepturi atque solu\",\"sub_title\":\"Fugiat qui officia p\",\"counter_icon\":\"<i class=\\\"fab fa-accusoft\\\"><\\/i>\",\"counter_icon_2\":\"<i class=\\\"fab fa-accessible-icon\\\"><\\/i>\"}', NULL, 'basic', '', '2024-10-07 23:04:22', '2024-10-07 23:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` int UNSIGNED NOT NULL DEFAULT '0',
  `code` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `form_id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 101, 'Paypal - Basic', 'Paypal', '66f93024b850f1727606820.png', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-sie1e33346198@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-13 03:59:25'),
(2, 0, 102, 'PerfectMoney', 'PerfectMoney', '66f9305b163861727606875.png', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"h9Rz18d60KeErSFPUViTlTyUX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-13 05:05:22'),
(3, 0, 103, 'Stripe - Hosted', 'Stripe', '66f932d3898531727607507.png', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-05 00:27:02'),
(5, 0, 105, 'PayTM', 'Paytm', '66f9305278b331727606866.png', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-----------\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"-----------\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"-----------\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"-----------\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"-----------\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"-----------\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"-----------\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-14 00:19:59'),
(6, 0, 106, 'Payeer', 'Payeer', '66f93018e4b7c1727606808.png', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"P1124379867\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"768336\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, '2019-09-14 13:14:22', '2024-10-13 03:41:46'),
(7, 0, 107, 'PayStack', 'Paystack', '66f9303d3ca031727606845.png', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_7a71410e62ae07cad950d94e4a3827b974937450\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_e8cf00c8c7fc173b60f02199e2752e2f34e50494\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, '2019-09-14 13:14:22', '2024-10-13 04:19:28'),
(9, 0, 109, 'Flutterwave', 'Flutterwave', '66f92fb282a3a1727606706.png', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"FLWPUBK_TEST-0ee1835b2e1088d2a529356ec7dcdb30-X\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"FLWSECK_TEST-6c5417024ef775a0eabfb021d41369f8-X\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"FLWSECK_TEST78b28d6fdf42\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-13 01:33:13'),
(10, 0, 110, 'RazorPay', 'Razorpay', '66f93067ae7661727606887.png', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"-------------\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"------------\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-14 00:20:13'),
(12, 0, 112, 'Instamojo', 'Instamojo', '66f92fbe2ccbb1727606718.png', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"--------------\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"----------------\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"------------\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-14 00:19:23'),
(15, 0, 503, 'CoinPayments Crypto', 'Coinpayments', '66f92f90365d41727606672.png', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"222a8c8825477fbea80812a9d5d70057e4821e43198926daa075fdc08cc98cd6\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"6d049b6B91a5eBe2053bb21eAa0DCb60f33790ec96B2342192804b0e9dfFf741\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"47818ed2d6962bcab1eba829e38ad0c4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"USDT.BEP20\":\"Tether USD (BSC Chain)\",\"USDT.ERC20\":\"Tether USD (ERC20)\",\"USDT.TRC20\":\"Tether USD (Tron/TRC20)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2024-10-13 06:14:28'),
(16, 0, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '66f92fa7d56851727606695.png', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-09-29 04:44:55'),
(17, 0, 505, 'Coingate', 'Coingate', '66f92f1dafc6e1727606557.png', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-14 00:19:09'),
(18, 0, 506, 'CoinbaseCommerce', 'CoinbaseCommerce', '66f92e80485251727606400.png', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"------------------\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"-------------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, '2019-09-14 13:14:22', '2024-10-14 00:18:55'),
(24, 0, 113, 'Paypal - Express', 'PaypalSdk', '66f954f3b28261727616243.png', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"AYq9c_gjnfFiLpWdotm-5XTw-RwtWtBrxIEW7IJGcjmq6cLDcTOjSSVlIqnIq4dYWnxrOEeK7s0UuuCy\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"ECXn_0gIPEdgVDiPfh-zR3KFm5WfmZe5UvhDrKNNa59i5bTSZ3K4S9QFb9uJNZ-vjBGEwcdKD0SRQsP5\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-10-13 03:59:51'),
(25, 0, 114, 'Stripe - Checkout', 'StripeV3', '66f930941abc51727606932.png', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_VnTLcUcx5bMenhc6P0PZiTR0T6NGs5yF\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, '2019-09-14 13:14:22', '2024-10-05 00:25:34'),
(36, 0, 119, 'MercadoPago', 'MercadoPago', '66f92fcac0e111727606730.png', 1, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"--------------\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\",\"BRL\":\"BRL\"}', 0, NULL, NULL, NULL, '2024-10-14 00:19:38'),
(37, 0, 120, 'Authorize.net', 'Authorize', '66f92de1ce5151727606241.png', 1, '{\"login_id\":{\"title\":\"Login ID\",\"global\":true,\"value\":\"59e4P9DBcZv\"},\"transaction_key\":{\"title\":\"Transaction Key\",\"global\":true,\"value\":\"47x47TJyLw2E7DbR\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2024-10-03 03:12:33'),
(50, 0, 507, 'BTCPay', 'BTCPay', '66f92dab2d0c81727606187.png', 1, '{\"store_id\":{\"title\":\"Store Id\",\"global\":true,\"value\":\"GLeYKqo2vM1jW9e2aFpGsLqokwTbfpQ3yZFQBRy2um58\"},\"api_key\":{\"title\":\"Api Key\",\"global\":true,\"value\":\"a60a2d61645cddd1f552212ca0f802121e47d08c\"},\"server_name\":{\"title\":\"Server Name\",\"global\":true,\"value\":\"https:\\/\\/testnet.demo.btcpayserver.org\"},\"secret_code\":{\"title\":\"Secret Code\",\"global\":true,\"value\":\"SUCdqPn9CDkY7RmJHfpQVHP2Lf2\"}}', '{\"BTC\":\"Bitcoin\",\"LTC\":\"Litecoin\"}', 1, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.BTCPay\"}}', NULL, NULL, '2024-10-14 03:40:52'),
(51, 0, 508, 'NowPayments - Hosted', 'NowPaymentsHosted', '66f92ffed509e1727606782.png', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}}', '{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}', 1, '', NULL, NULL, '2024-10-13 02:56:13'),
(52, 0, 509, 'NowPayments - Checkout', 'NowPaymentsCheckout', '66f92ff5897b41727606773.png', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 1, '', NULL, NULL, '2024-10-13 02:47:13'),
(53, 0, 122, '2Checkout', 'TwoCheckout', '66f93484853cf1727607940.png', 1, '{\"merchant_code\":{\"title\":\"Merchant Code\",\"global\":true,\"value\":\"255237318607\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"tNbET^O0mlJ4QHdAf6W#\"}}', '{\"AFN\": \"AFN\",\"ALL\": \"ALL\",\"DZD\": \"DZD\",\"ARS\": \"ARS\",\"AUD\": \"AUD\",\"AZN\": \"AZN\",\"BSD\": \"BSD\",\"BDT\": \"BDT\",\"BBD\": \"BBD\",\"BZD\": \"BZD\",\"BMD\": \"BMD\",\"BOB\": \"BOB\",\"BWP\": \"BWP\",\"BRL\": \"BRL\",\"GBP\": \"GBP\",\"BND\": \"BND\",\"BGN\": \"BGN\",\"CAD\": \"CAD\",\"CLP\": \"CLP\",\"CNY\": \"CNY\",\"COP\": \"COP\",\"CRC\": \"CRC\",\"HRK\": \"HRK\",\"CZK\": \"CZK\",\"DKK\": \"DKK\",\"DOP\": \"DOP\",\"XCD\": \"XCD\",\"EGP\": \"EGP\",\"EUR\": \"EUR\",\"FJD\": \"FJD\",\"GTQ\": \"GTQ\",\"HKD\": \"HKD\",\"HNL\": \"HNL\",\"HUF\": \"HUF\",\"INR\": \"INR\",\"IDR\": \"IDR\",\"ILS\": \"ILS\",\"JMD\": \"JMD\",\"JPY\": \"JPY\",\"KZT\": \"KZT\",\"KES\": \"KES\",\"LAK\": \"LAK\",\"MMK\": \"MMK\",\"LBP\": \"LBP\",\"LRD\": \"LRD\",\"MOP\": \"MOP\",\"MYR\": \"MYR\",\"MVR\": \"MVR\",\"MRO\": \"MRO\",\"MUR\": \"MUR\",\"MXN\": \"MXN\",\"MAD\": \"MAD\",\"NPR\": \"NPR\",\"TWD\": \"TWD\",\"NZD\": \"NZD\",\"NIO\": \"NIO\",\"NOK\": \"NOK\",\"PKR\": \"PKR\",\"PGK\": \"PGK\",\"PEN\": \"PEN\",\"PHP\": \"PHP\",\"PLN\": \"PLN\",\"QAR\": \"QAR\",\"RON\": \"RON\",\"RUB\": \"RUB\",\"WST\": \"WST\",\"SAR\": \"SAR\",\"SCR\": \"SCR\",\"SGD\": \"SGD\",\"SBD\": \"SBD\",\"ZAR\": \"ZAR\",\"KRW\": \"KRW\",\"LKR\": \"LKR\",\"SEK\": \"SEK\",\"CHF\": \"CHF\",\"SYP\": \"SYP\",\"THB\": \"THB\",\"TOP\": \"TOP\",\"TTD\": \"TTD\",\"TRY\": \"TRY\",\"UAH\": \"UAH\",\"AED\": \"AED\",\"USD\": \"USD\",\"VUV\": \"VUV\",\"VND\": \"VND\",\"XOF\": \"XOF\",\"YER\": \"YER\"}', 0, '{\"approved_url\":{\"title\": \"Approved URL\",\"value\":\"ipn.TwoCheckout\"}}', NULL, NULL, '2024-10-13 05:40:07'),
(54, 0, 123, 'Checkout', 'Checkout', '66f92e6bd08e01727606379.png', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"------\"},\"public_key\":{\"title\":\"PUBLIC KEY\",\"global\":true,\"value\":\"------\"},\"processing_channel_id\":{\"title\":\"PROCESSING CHANNEL\",\"global\":true,\"value\":\"------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"AUD\":\"AUD\",\"CAN\":\"CAN\",\"CHF\":\"CHF\",\"SGD\":\"SGD\",\"JPY\":\"JPY\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2024-09-30 01:55:03'),
(55, 19, 1000, 'Bank Transfer', 'bank_transfer', '66f95525bfa571727616293.png', 1, '[]', '[]', 0, NULL, '<div style=\"border-left: 3px solid #b5b0b0;\r\n    padding: 12px;\r\n    font-style: italic;\r\n    margin: 30px 0px;\r\n    background: #f9f9f9;\r\n    border-radius: 3px;\"><p style=\"\r\n    margin-bottom: 10px;\r\n    font-weight: bold;\r\n    font-size: 17px;\r\n\">Please send the funds to the information provided below. We cannot be held responsible for any errors if the amount is sent to incorrect details. Kindly complete the form after transferring the funds<br><br>Bank information</p><p style=\"\r\n    margin-bottom: 0;\r\n\">\r\n</p><p style=\"\r\nmargin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Bank Name:</span>&nbsp;Demo Bank</p>\r\n<p style=\"\r\nmargin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Branch:</span>&nbsp;Demo Branch</p>\r\n<p style=\"\r\nmargin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Routing:</span> 1234</p>\r\n<p style=\"\r\n    margin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Account Number:</span> xxx-xxx-<span style=\"color: rgb(67, 64, 79); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">xxx-xxx-xxx</span></p></div>', '2024-03-13 23:11:21', '2024-10-05 03:08:54'),
(56, 0, 510, 'Binance', 'Binance', '66f92d4ae66161727606090.png', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"--------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-------------\"}}', '{\"BTC\":\"Bitcoin\",\"USD\":\"USD\",\"BNB\":\"BNB\"}', 1, '{\"cron\":{\"title\": \"Cron Job URL\",\"value\":\"ipn.Binance\"}}', NULL, NULL, '2024-10-14 00:18:37'),
(57, 0, 124, 'SslCommerz', 'SslCommerz', '66f93471b7b9b1727607921.png', 1, '{\"store_id\":{\"title\":\"Store ID\",\"global\":true,\"value\":\"---------\"},\"store_password\":{\"title\":\"Store Password\",\"global\":true,\"value\":\"----------\"}}', '{\"BDT\":\"BDT\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"SGD\":\"SGD\",\"INR\":\"INR\",\"MYR\":\"MYR\"}', 0, NULL, NULL, NULL, '2024-09-29 05:05:21'),
(58, 0, 125, 'Aamarpay', 'Aamarpay', '66f933390c5201727607609.png', 0, '{\"store_id\":{\"title\":\"Store ID\",\"global\":true,\"value\":\"---------\"},\"signature_key\":{\"title\":\"Signature Key\",\"global\":true,\"value\":\"----------\"}}', '{\"BDT\":\"BDT\"}', 0, NULL, NULL, NULL, '2024-10-14 06:00:24'),
(60, 22, 1001, 'Mobile Money Transfer', 'mobile_money_transfer', '670e115c4d5251728975196.png', 1, '[]', '[]', 0, NULL, '<p style=\"margin-bottom: 10px; font-size: 17px; font-weight: bold; font-style: italic;\">Please send the funds to the information provided below. We cannot be held responsible for any errors if the amount is sent to incorrect details. Kindly complete the form after transferring the funds<br><br>Bank information</p><p style=\"font-style: italic;\"></p><p style=\"font-style: italic;\"><span style=\"color: hsl(var(--body-color)); font-size: 0.875rem; background-color: hsl(var(--white)); text-align: var(--bs-body-text-align); display: inline !important;\">Mobile Number:&nbsp;xxx-xxx-</span><span style=\"font-size: 0.875rem; font-weight: var(--bs-body-font-weight); background-color: hsl(var(--white)); text-align: var(--bs-body-text-align); color: rgb(67, 64, 79); display: inline !important;\">xxx-xxx-xxx</span><br></p>', '2024-09-25 08:22:40', '2024-10-15 00:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int DEFAULT NULL,
  `gateway_alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `max_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `gateway_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(147, 'Bank Wire', 'USD', '', 1001, 'bank_wire', 10.00000000, 100000.00000000, 1.00, 5.00000000, 1.00000000, NULL, '2022-03-30 09:16:43', '2022-07-26 05:57:22'),
(202, 'Bank Transfer', 'USD', '', 1000, 'bank_transfer', 100.00000000, 1000.00000000, 1.00, 1.00000000, 1.00000000, NULL, '2024-03-13 23:11:21', '2024-10-15 00:49:18'),
(269, 'BTCPay - BTC', 'BTC', '₿', 507, 'BTCPay', 1.00000000, 100.00000000, 1.00, 1.00000000, 1.00000000, '{\"store_id\":\"GLeYKqo2vM1jW9e2aFpGsLqokwTbfpQ3yZFQBRy2um58\",\"api_key\":\"a60a2d61645cddd1f552212ca0f802121e47d08c\",\"server_name\":\"https:\\/\\/testnet.demo.btcpayserver.org\",\"secret_code\":\"SUCdqPn9CDkY7RmJHfpQVHP2Lf2\"}', '2024-05-07 08:08:13', '2024-10-12 02:37:53'),
(273, 'Checkout - USD', 'USD', '$', 123, 'Checkout', 1.00000000, 100.00000000, 1.00, 1.00000000, 1.00000000, '{\"secret_key\":\"------\",\"public_key\":\"------\",\"processing_channel_id\":\"------\"}', '2024-05-07 08:09:44', '2024-09-29 04:39:39'),
(276, 'Coingate - USD', 'USD', '$', 505, 'Coingate', 1.00000000, 100.00000000, 1.00, 1.00000000, 1.00000000, '{\"api_key\":\"------------------\"}', '2024-05-07 08:11:37', '2024-10-14 00:19:09'),
(280, 'CoinPayments Fiat - USD', 'USD', '$', 504, 'CoinpaymentsFiat', 1.00000000, 10000.00000000, 10.00, 1.00000000, 10.00000000, '{\"merchant_id\":\"6515561\"}', '2024-05-07 08:12:07', '2024-09-29 04:44:55'),
(281, 'CoinPayments Fiat - AUD', 'AUD', '$', 504, 'CoinpaymentsFiat', 1.00000000, 10000.00000000, 0.00, 1.00000000, 1.00000000, '{\"merchant_id\":\"6515561\"}', '2024-05-07 08:12:07', '2024-09-29 04:44:55'),
(282, 'Flutterwave - USD', 'USD', 'USD', 109, 'Flutterwave', 1.00000000, 2000.00000000, 0.00, 1.00000000, 1.00000000, '{\"public_key\":\"FLWPUBK_TEST-0ee1835b2e1088d2a529356ec7dcdb30-X\",\"secret_key\":\"FLWSECK_TEST-6c5417024ef775a0eabfb021d41369f8-X\",\"encryption_key\":\"FLWSECK_TEST78b28d6fdf42\"}', '2024-05-07 08:12:18', '2024-10-13 01:33:13'),
(284, 'Mercado Pago - USD', 'USD', '$', 119, 'MercadoPago', 1.00000000, 10.00000000, 1.00, 1.00000000, 1.00000000, '{\"access_token\":\"--------------\"}', '2024-05-07 08:19:24', '2024-10-14 00:19:38'),
(287, 'Now payments checkout - USD', 'USD', '$', 509, 'NowPaymentsCheckout', 1.00000000, 100.00000000, 1.00, 1.00000000, 1.00000000, '{\"api_key\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\",\"secret_key\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}', '2024-05-07 08:20:21', '2024-10-13 02:47:13'),
(288, 'Payeer - USD', 'USD', '$', 106, 'Payeer', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"merchant_id\":\"P1124379867\",\"secret_key\":\"768336\"}', '2024-05-07 08:20:58', '2024-10-13 03:41:46'),
(289, 'Paypal - USD', 'USD', '$', 101, 'Paypal', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"paypal_email\":\"sb-sie1e33346198@business.example.com\"}', '2024-05-07 08:21:11', '2024-10-13 03:59:25'),
(290, 'Paypal Express - USD', 'USD', '$', 113, 'PaypalSdk', 1.00000000, 1000000.00000000, 1.00, 1.00000000, 1.00000000, '{\"clientId\":\"AYq9c_gjnfFiLpWdotm-5XTw-RwtWtBrxIEW7IJGcjmq6cLDcTOjSSVlIqnIq4dYWnxrOEeK7s0UuuCy\",\"clientSecret\":\"ECXn_0gIPEdgVDiPfh-zR3KFm5WfmZe5UvhDrKNNa59i5bTSZ3K4S9QFb9uJNZ-vjBGEwcdKD0SRQsP5\"}', '2024-05-07 08:21:33', '2024-10-13 03:59:51'),
(292, 'PayTM - AUD', 'AUD', '$', 105, 'Paytm', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"MID\":\"-----------\",\"merchant_key\":\"-----------\",\"WEBSITE\":\"-----------\",\"INDUSTRY_TYPE_ID\":\"-----------\",\"CHANNEL_ID\":\"-----------\",\"transaction_url\":\"-----------\",\"transaction_status_url\":\"-----------\"}', '2024-05-07 08:22:07', '2024-10-14 00:19:59'),
(293, 'PayTM - USD', 'USD', '$', 105, 'Paytm', 1.00000000, 10000.00000000, 1.00, 1.00000000, 2.00000000, '{\"MID\":\"-----------\",\"merchant_key\":\"-----------\",\"WEBSITE\":\"-----------\",\"INDUSTRY_TYPE_ID\":\"-----------\",\"CHANNEL_ID\":\"-----------\",\"transaction_url\":\"-----------\",\"transaction_status_url\":\"-----------\"}', '2024-05-07 08:22:07', '2024-10-14 00:19:59'),
(294, 'Perfect Money - USD', 'USD', 'usd', 102, 'PerfectMoney', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"passphrase\":\"h9Rz18d60KeErSFPUViTlTyUX\",\"wallet_id\":\"100\"}', '2024-05-07 08:22:25', '2024-10-13 05:05:23'),
(295, 'RazorPay - INR', 'INR', '$', 110, 'Razorpay', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"key_id\":\"-------------\",\"key_secret\":\"------------\"}', '2024-05-07 08:22:50', '2024-10-14 00:21:41'),
(299, 'Stripe Hosted - USD', 'USD', '$', 103, 'Stripe', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"secret_key\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\",\"publishable_key\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"}', '2024-05-07 08:24:06', '2024-10-09 06:06:36'),
(301, 'Stripe Checkout - USD', 'USD', 'USD', 114, 'StripeV3', 10.00000000, 1000.00000000, 0.00, 1.00000000, 1.00000000, '{\"secret_key\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\",\"publishable_key\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\",\"end_point\":\"whsec_VnTLcUcx5bMenhc6P0PZiTR0T6NGs5yF\"}', '2024-05-07 08:24:47', '2024-10-05 00:25:34'),
(302, '2Checkout - USD', 'USD', '$', 122, 'TwoCheckout', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1.00000000, '{\"merchant_code\":\"255237318607\",\"secret_key\":\"tNbET^O0mlJ4QHdAf6W#\"}', '2024-05-07 08:24:57', '2024-10-13 05:40:07'),
(304, 'SslCommerz - BDT', 'BDT', '৳', 124, 'SslCommerz', 1.00000000, 100.00000000, 1.00, 1.00000000, 115.00000000, '{\"store_id\":\"---------\",\"store_password\":\"----------\"}', '2024-05-08 07:34:12', '2024-09-29 05:05:21'),
(309, 'CoinPayments - BTC', 'BTC', '₿', 503, 'Coinpayments', 1.00000000, 10000.00000000, 10.00, 1.00000000, 1.00000000, '{\"public_key\":\"222a8c8825477fbea80812a9d5d70057e4821e43198926daa075fdc08cc98cd6\",\"private_key\":\"6d049b6B91a5eBe2053bb21eAa0DCb60f33790ec96B2342192804b0e9dfFf741\",\"merchant_id\":\"47818ed2d6962bcab1eba829e38ad0c4\"}', '2024-05-08 07:35:24', '2024-10-13 06:14:28'),
(312, 'Binance - BTC', 'BTC', '₿', 510, 'Binance', 1.00000000, 100.00000000, 1.00, 1.00000000, 1.00000000, '{\"api_key\":\"--------------------\",\"secret_key\":\"--------------------\",\"merchant_id\":\"-------------\"}', '2024-05-08 07:36:01', '2024-10-14 00:18:37'),
(314, 'Coinbase Commerce - USD', 'USD', '$', 506, 'CoinbaseCommerce', 1.00000000, 10000.00000000, 10.00, 1.00000000, 1.00000000, '{\"api_key\":\"------------------\",\"secret\":\"-------------\"}', '2024-05-08 07:41:51', '2024-10-14 00:18:55'),
(315, 'Instamojo - INR', 'INR', '₹', 112, 'Instamojo', 1.00000000, 10000.00000000, 1.00, 1.00000000, 85.00000000, '{\"api_key\":\"--------------\",\"auth_token\":\"----------------\",\"salt\":\"------------\"}', '2024-05-08 07:42:57', '2024-10-14 00:19:23'),
(316, 'Now payments hosted - BTC', 'BTC', '₿', 508, 'NowPaymentsHosted', 1.00000000, 1000.00000000, 1.00, 1.00000000, 1.00000000, '{\"api_key\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\",\"secret_key\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}', '2024-05-08 07:43:55', '2024-10-13 02:56:13'),
(318, 'PayStack - NGN', 'NGN', '₦', 107, 'Paystack', 1.00000000, 10000.00000000, 1.00, 1.00000000, 1420.00000000, '{\"public_key\":\"pk_test_7a71410e62ae07cad950d94e4a3827b974937450\",\"secret_key\":\"sk_test_e8cf00c8c7fc173b60f02199e2752e2f34e50494\"}', '2024-05-08 07:44:50', '2024-10-13 04:19:28'),
(327, 'Authorize.net - USD', 'USD', '$', 120, 'Authorize', 1.00000000, 10.00000000, 1.00, 1.00000000, 1.00000000, '{\"login_id\":\"59e4P9DBcZv\",\"transaction_key\":\"47x47TJyLw2E7DbR\"}', '2024-09-25 04:57:07', '2024-09-29 04:37:21'),
(330, 'Perfect Money - EUR', 'EUR', '$', 102, 'PerfectMoney', 1.00000000, 100.00000000, 1.00, 1.00000000, 1.00000000, '{\"passphrase\":\"h9Rz18d60KeErSFPUViTlTyUX\",\"wallet_id\":\"200\"}', '2024-09-25 07:23:23', '2024-10-13 05:05:23'),
(331, 'Mobile Money Transfer', 'USD', '', 1001, 'mobile_money_transfer', 10.00000000, 10000.00000000, 2.00, 2.00000000, 1.00000000, NULL, '2024-09-25 08:22:40', '2024-10-15 00:53:17'),
(333, 'Binance - BNB', 'BNB', 'BNB', 510, 'Binance', 1.00000000, 100.00000000, 1.00, 1.00000000, 0.00170000, '{\"api_key\":\"--------------------\",\"secret_key\":\"--------------------\",\"merchant_id\":\"-------------\"}', '2024-10-09 06:01:52', '2024-10-14 00:18:37'),
(334, 'Stripe Hosted - JPY', 'JPY', 'JPY', 103, 'Stripe', 1.00000000, 1000000.00000000, 1.00, 1.00000000, 148.71000000, '{\"secret_key\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\",\"publishable_key\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"}', '2024-10-09 06:06:36', '2024-10-09 06:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sms_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firebase_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `global_shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kv` tinyint(1) NOT NULL DEFAULT '0',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `pn` tinyint(1) NOT NULL DEFAULT '1',
  `force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `in_app_payment` tinyint(1) NOT NULL DEFAULT '1',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0',
  `secure_password` tinyint(1) NOT NULL DEFAULT '0',
  `agree` tinyint(1) NOT NULL DEFAULT '0',
  `multi_language` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialite_credentials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_cron` datetime DEFAULT NULL,
  `available_version` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_customized` tinyint(1) NOT NULL DEFAULT '0',
  `paginate_number` int NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>Both\r\n2=>Text Only\r\n3=>Symbol Only',
  `time_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `allow_precision` int NOT NULL DEFAULT '2',
  `thousand_separator` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `email_from`, `email_from_name`, `email_template`, `sms_template`, `sms_from`, `push_title`, `push_template`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `firebase_config`, `global_shortcodes`, `kv`, `ev`, `en`, `sv`, `sn`, `pn`, `force_ssl`, `in_app_payment`, `maintenance_mode`, `secure_password`, `agree`, `multi_language`, `registration`, `active_template`, `socialite_credentials`, `last_cron`, `available_version`, `system_customized`, `paginate_number`, `currency_format`, `time_format`, `date_format`, `allow_precision`, `thousand_separator`, `created_at`, `updated_at`) VALUES
(1, 'OvoPanel', 'USD', '$', 'info@ovosolution.com', '{{site_name}}', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"https://i.ibb.co.com/dLYyDXX/OVO-logo-for-Light-BG.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello {{username}}</h1>\r\n                            <p>{{message}}</p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">{{site_name}}</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>', 'hi {{fullname}} ({{username}}), {{message}}', '{{site_name}}', '{{site_name}}', 'hi {{fullname}} ({{username}}), {{message}}', '202123', '2d9bf7', '{\"name\":\"php\"}', '{\"name\":\"nexmo\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"------------8888888\",\"password\":\"-----------------\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname.com\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\"apiKey\":\"AIzaSyCb6zm7_8kdStXjZMgLZpwjGDuTUg0e_qM\",\"authDomain\":\"flutter-prime-df1c5.firebaseapp.com\",\"projectId\":\"flutter-prime-df1c5\",\"storageBucket\":\"flutter-prime-df1c5.appspot.com\",\"messagingSenderId\":\"274514992002\",\"appId\":\"1:274514992002:web:4d77660766f4797500cd9b\",\"measurementId\":\"G-KFPM07RXRC\"}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 'basic', '{\"google\":{\"client_id\":\"------------\",\"client_secret\":\"-------------\",\"status\":0,\"info\":\"Quickly set up Google Login for easy and secure access to your website for all users\"},\"facebook\":{\"client_id\":\"------\",\"client_secret\":\"sdfsdf\",\"status\":0,\"info\":\"Set up Facebook Login for fast, secure user access and seamless integration with your website.\"},\"linkedin\":{\"client_id\":\"-----\",\"client_secret\":\"http:\\/\\/localhost\\/flutter\\/admin_panel\\/user\\/social-login\\/callback\\/linkedin\",\"status\":1,\"info\":\"Set up LinkedIn Login for professional, secure access and easy user authentication on your website.\"}}', '2024-10-07 11:16:38', '1.0', 0, 20, 2, 'h:i A', 'Y-m-d', 2, ',', NULL, '2024-10-15 03:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `image` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `image`, `info`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '66dd7636311b31725789750.png', 'English is a global language with rich vocabulary, bridging international communication and culture.', '2020-07-06 03:47:55', '2024-10-03 04:11:19'),
(12, 'bangla', 'bn', 0, '66dd762f478701725789743.png', 'Bangla is a rich, expressive language spoken by millions, known for its cultural depth and literary heritage.', '2024-09-08 01:34:54', '2024-10-02 08:10:11'),
(13, 'Turkish', 'tr', 0, '66dd763ce41bd1725789756.png', 'Turkish is a vibrant language with deep historical roots, known for its unique structure and cultural significance.', '2024-09-08 01:35:12', '2024-09-10 05:19:32'),
(14, 'Spanish', 'es', 0, '66dd764462e2f1725789764.png', 'Spanish is a widely spoken language, celebrated for its melodic flow and rich cultural heritage.', '2024-09-08 01:35:22', '2024-10-03 04:11:19'),
(15, 'French', 'fr', 0, '66dd7652c06061725789778.png', 'French is a romantic language, renowned for its elegance, rich literature, and global influence.', '2024-09-08 01:35:28', '2024-10-02 08:10:07'),
(17, 'Russian', 'ru', 0, '66dd7a31f25a01725790769.png', 'Russian is a powerful language, known for its complex grammar and rich literary tradition.', '2024-09-08 04:19:30', '2024-09-10 05:20:29'),
(19, 'Portuguese', 'pt', 0, '66e6c31120d4c1726399249.png', 'Portuguese is a dynamic language with a rich cultural history, known for its expressiveness and global influence.', '2024-09-15 05:20:49', '2024-09-15 05:25:42'),
(23, 'Italy', 'it', 0, '670781623fe0d1728545122.png', 'Italian is a romantic and melodic language, celebrated for its rich history, artistic influence, and cultural significance in music.', '2024-10-10 01:25:22', '2024-10-10 01:27:28'),
(24, 'Japanese', 'jr', 0, '670cd7835eb281728894851.png', 'Japanese is a unique and nuanced language, known for its complex writing and deep cultural significance.', '2024-10-14 02:34:12', '2024-10-14 02:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_14_061757_create_support_tickets_table', 3),
(5, '2020_06_14_061837_create_support_messages_table', 3),
(6, '2020_06_14_061904_create_support_attachments_table', 3),
(7, '2020_06_14_062359_create_admins_table', 3),
(8, '2020_06_14_064604_create_transactions_table', 4),
(9, '2020_06_14_065247_create_general_settings_table', 5),
(12, '2014_10_12_100000_create_password_resets_table', 6),
(13, '2020_06_14_060541_create_user_logins_table', 6),
(14, '2020_06_14_071708_create_admin_password_resets_table', 7),
(15, '2020_09_14_053026_create_countries_table', 8),
(16, '2021_03_15_084721_create_admin_notifications_table', 9),
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(20, '2016_06_01_000004_create_oauth_clients_table', 10),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(22, '2021_05_08_103925_create_sms_gateways_table', 11),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 12),
(24, '2021_05_23_111859_create_email_logs_table', 13),
(25, '2022_02_26_061836_create_forms_table', 14),
(26, '2023_06_15_144908_create_update_logs_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notification_logs`
--

CREATE TABLE `notification_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_to` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notification_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_read` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_logs`
--

INSERT INTO `notification_logs` (`id`, `user_id`, `sender`, `sent_from`, `sent_to`, `subject`, `message`, `notification_type`, `image`, `user_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 'info@ovosolution.com', 'ovosolution@gmail.com', 'Email Verification Code', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"https://i.ibb.co.com/dLYyDXX/OVO-logo-for-Light-BG.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello ovosolution</h1>\r\n                            <p><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">297199</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">OvoPanel</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>', 'email', NULL, 0, '2024-10-14 04:45:24', '2024-10-14 04:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `push_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_status` tinyint(1) NOT NULL DEFAULT '1',
  `email_sent_from_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent_from_address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_status` tinyint(1) NOT NULL DEFAULT '1',
  `sms_sent_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `act`, `name`, `subject`, `push_title`, `email_body`, `sms_body`, `push_body`, `shortcodes`, `email_status`, `email_sent_from_name`, `email_sent_from_address`, `sms_status`, `sms_sent_from`, `push_status`, `created_at`, `updated_at`) VALUES
(1, 'BAL_ADD', 'Balance - Added', 'Your Account has been Credited', '{{site_name}} - Balance Added', '<div>We\'re writing to inform you that an amount of {{amount}} {{site_currency}} has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>{{trx}}</div><div><b>Current Balance:</b> {{post_balance}} {{site_currency}}</div><div><b>Admin Note:</b> {{remark}}</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div>', 'We\'re writing to inform you that an amount of {{amount}} {{site_currency}} has been successfully added to your account.', '{{amount}} {{site_currency}} has been successfully added to your account.', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 0, '{{site_name}} Finance', NULL, 1, NULL, 1, '2021-11-03 12:00:00', '2024-10-03 04:16:09'),
(2, 'BAL_SUB', 'Balance - Subtracted', 'Your Account has been Debited', '{{site_name}} - Balance Subtracted', '<div>We wish to inform you that an amount of {{amount}} {{site_currency}} has been successfully deducted from your account.</div><div><br></div><div>Below are the details of the transaction:</div><div><br></div><div><b>Transaction Number:</b> {{trx}}</div><div><b>Current Balance: </b>{{post_balance}} {{site_currency}}</div><div><b>Admin Note:</b> {{remark}}</div><div><br></div><div>Should you require any further clarification or assistance, please do not hesitate to reach out to us. We are here to assist you in any way we can.</div><div><br></div><div>Thank you for your continued trust in {{site_name}}.</div>', 'We wish to inform you that an amount of {{amount}} {{site_currency}} has been successfully deducted from your account.', '{{amount}} {{site_currency}} debited from your account.', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 1, '2021-11-03 12:00:00', '2024-10-03 04:15:37'),
(3, 'DEPOSIT_COMPLETE', 'Deposit - Automated - Successful', 'Deposit Completed Successfully', '{{site_name}} - Deposit successful', '<div>We\'re delighted to inform you that your deposit of {{amount}} {{site_currency}} via {{method_name}} has been completed.</div><div><br></div><div>Below, you\'ll find the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge: </b>{{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received:</b> {{method_amount}} {{method_currency}}</div><div><b>Paid via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Your current balance stands at {{post_balance}} {{site_currency}}.</div><div><br></div><div>If you have any questions or need further assistance, feel free to reach out to our support team. We\'re here to assist you in any way we can.</div>', 'We\'re delighted to inform you that your deposit of {{amount}} {{site_currency}} via {{method_name}} has been completed.', 'Deposit Completed Successfully', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 1, '2021-11-03 12:00:00', '2024-05-08 07:20:34'),
(4, 'DEPOSIT_APPROVE', 'Deposit - Manual - Approved', 'Deposit Request Approved', '{{site_name}} - Deposit Request Approved', '<div>We are pleased to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been approved.</div><div><br></div><div>Here are the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge: </b>{{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received: </b>{{method_amount}} {{method_currency}}</div><div><b>Paid via: </b>{{method_name}}</div><div><b>Transaction Number: </b>{{trx}}</div><div><br></div><div>Your current balance now stands at {{post_balance}} {{site_currency}}.</div><div><br></div><div>Should you have any questions or require further assistance, please feel free to contact our support team. We\'re here to help.</div>', 'We are pleased to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been approved.', 'Deposit of {{amount}} {{site_currency}} via {{method_name}} has been approved.', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:19:49'),
(5, 'DEPOSIT_REJECT', 'Deposit - Manual - Rejected', 'Deposit Request Rejected', '{{site_name}} - Deposit Request Rejected', '<div>We regret to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.</div><div><br></div><div>Here are the details of the rejected deposit:</div><div><br></div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received:</b> {{method_amount}} {{method_currency}}</div><div><b>Paid via:</b> {{method_name}}</div><div><b>Charge:</b> {{charge}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>If you have any questions or need further clarification, please don\'t hesitate to contact us. We\'re here to assist you.</div><div><br></div><div>Rejection Reason:</div><div>{{rejection_message}}</div><div><br></div><div>Thank you for your understanding.</div>', 'We regret to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.', 'Your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:20:13'),
(6, 'DEPOSIT_REQUEST', 'Deposit - Manual - Requested', 'Deposit Request Submitted Successfully', NULL, '<div>We are pleased to confirm that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.</div><div><br></div><div>Below are the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Payable:</b> {{method_amount}} {{method_currency}}</div><div><b>Pay via: </b>{{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Should you have any questions or require further assistance, please feel free to reach out to our support team. We\'re here to assist you.</div>', 'We are pleased to confirm that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.', 'Your deposit request of {{amount}} {{site_currency}} via {{method_name}} submitted successfully.', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:42'),
(7, 'PASS_RESET_CODE', 'Password - Reset - Code', 'Password Reset', '{{site_name}} Password Reset Code', '<div>We\'ve received a request to reset the password for your account on <b>{{time}}</b>. The request originated from\r\n            the following IP address: <b>{{ip}}</b>, using <b>{{browser}}</b> on <b>{{operating_system}}</b>.\r\n    </div><br>\r\n    <div><span>To proceed with the password reset, please use the following account recovery code</span>: <span><b><font size=\"6\">{{code}}</font></b></span></div><br>\r\n    <div><span>If you did not initiate this password reset request, please disregard this message. Your account security\r\n            remains our top priority, and we advise you to take appropriate action if you suspect any unauthorized\r\n            access to your account.</span></div>', 'To proceed with the password reset, please use the following account recovery code: {{code}}', 'To proceed with the password reset, please use the following account recovery code: {{code}}', '{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, '{{site_name}} Authentication Center', NULL, 0, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:24:57'),
(8, 'PASS_RESET_DONE', 'Password - Reset - Confirmation', 'Password Reset Successful', NULL, '<div><div><span>We are writing to inform you that the password reset for your account was successful. This action was completed at {{time}} from the following browser</span>: <span>{{browser}}</span><span>on {{operating_system}}, with the IP address</span>: <span>{{ip}}</span>.</div><br><div><span>Your account security is our utmost priority, and we are committed to ensuring the safety of your information. If you did not initiate this password reset or notice any suspicious activity on your account, please contact our support team immediately for further assistance.</span></div></div>', 'We are writing to inform you that the password reset for your account was successful.', 'We are writing to inform you that the password reset for your account was successful.', '{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, '{{site_name}} Authentication Center', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:24'),
(9, 'ADMIN_SUPPORT_REPLY', 'Support - Reply', 'Re: {{ticket_subject}} - Ticket #{{ticket_id}}', '{{site_name}} - Support Ticket Replied', '<div>\r\n    <div><span>Thank you for reaching out to us regarding your support ticket with the subject</span>:\r\n        <span>\"{{ticket_subject}}\"&nbsp;</span><span>and ticket ID</span>: {{ticket_id}}.</div><br>\r\n    <div><span>We have carefully reviewed your inquiry, and we are pleased to provide you with the following\r\n            response</span><span>:</span></div><br>\r\n    <div>{{reply}}</div><br>\r\n    <div><span>If you have any further questions or need additional assistance, please feel free to reply by clicking on\r\n            the following link</span>: <a href=\"{{link}}\" title=\"\" target=\"_blank\">{{link}}</a><span>. This link will take you to\r\n            the ticket thread where you can provide further information or ask for clarification.</span></div><br>\r\n    <div><span>Thank you for your patience and cooperation as we worked to address your concerns.</span></div>\r\n</div>', 'Thank you for reaching out to us regarding your support ticket with the subject: \"{{ticket_subject}}\" and ticket ID: {{ticket_id}}. We have carefully reviewed your inquiry. To check the response, please go to the following link: {{link}}', 'Re: {{ticket_subject}} - Ticket #{{ticket_id}}', '{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}', 1, '{{site_name}} Support Team', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:26:06'),
(10, 'EVER_CODE', 'Verification - Email', 'Email Verification Code', NULL, '<div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">{{code}}</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div>', '---', '---', '{\"code\":\"Email verification code\"}', 1, '{{site_name}} Verification Center', NULL, 0, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:12'),
(11, 'SVER_CODE', 'Verification - SMS', 'Verify Your Mobile Number', NULL, '---', 'Your mobile verification code is {{code}}. Please enter this code in the appropriate field to verify your mobile number. If you did not request this code, please ignore this message.', '---', '{\"code\":\"SMS Verification Code\"}', 0, '{{site_name}} Verification Center', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:03'),
(12, 'WITHDRAW_APPROVE', 'Withdraw - Approved', 'Withdrawal Confirmation: Your Request Processed Successfully', '{{site_name}} - Withdrawal Request Approved', '<div>We are writing to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been processed successfully.</div><div><br></div><div>Below are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>You will receive:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><hr><div><br></div><div><b>Details of Processed Payment:</b></div><div>{{admin_details}}</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div>', 'We are writing to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been processed successfully.', 'Withdrawal Confirmation: Your Request Processed Successfully', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"admin_details\":\"Details provided by the admin\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:26:37'),
(13, 'WITHDRAW_REJECT', 'Withdraw - Rejected', 'Withdrawal Request Rejected', '{{site_name}} - Withdrawal Request Rejected', '<div>We regret to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Expected Amount:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><hr><div><br></div><div><b>Refund Details:</b></div><div>{{amount}} {{site_currency}} has been refunded to your account, and your current balance is {{post_balance}} {{site_currency}}.</div><div><br></div><hr><div><br></div><div><b>Reason for Rejection:</b></div><div>{{admin_details}}</div><div><br></div><div>If you have any questions or concerns regarding this rejection or need further assistance, please do not hesitate to contact our support team. We apologize for any inconvenience this may have caused.</div>', 'We regret to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.', 'Withdrawal Request Rejected', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this action\",\"admin_details\":\"Rejection message by the admin\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:26:55'),
(14, 'WITHDRAW_REQUEST', 'Withdraw - Requested', 'Withdrawal Request Confirmation', '{{site_name}} - Requested for withdrawal', '<div>We are pleased to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Expected Amount:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Your current balance is {{post_balance}} {{site_currency}}.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div>', 'We are pleased to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.', 'Withdrawal request submitted successfully', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this transaction\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:27:20'),
(15, 'DEFAULT', 'Default Template', '{{subject}}', '{{subject}}', '{{message}}', '{{message}}', '{{message}}', '{\"subject\":\"Subject\",\"message\":\"Message\"}', 1, NULL, NULL, 1, NULL, 1, '2019-09-14 13:14:22', '2024-05-16 01:32:53'),
(16, 'KYC_APPROVE', 'KYC Approved', 'KYC Details has been approved', '{{site_name}} - KYC Approved', '<div><div><span>We are pleased to inform you that your Know Your Customer (KYC) information has been successfully reviewed and approved. This means that you are now eligible to conduct any payout operations within our system.</span></div><br><div><span>Your commitment to completing the KYC process promptly is greatly appreciated, as it helps us ensure the security and integrity of our platform for all users.</span></div><br><div><span>With your KYC verification now complete, you can proceed with confidence to carry out any payout transactions you require. Should you encounter any issues or have any questions along the way, please don\'t hesitate to reach out to our support team. We\'re here to assist you every step of the way.</span></div><br><div><span>Thank you once again for choosing {{site_name}} and for your cooperation in this matter.</span></div></div>', 'We are pleased to inform you that your Know Your Customer (KYC) information has been successfully reviewed and approved. This means that you are now eligible to conduct any payout operations within our system.', 'Your  Know Your Customer (KYC) information has been approved successfully', '[]', 1, '{{site_name}} Verification Center', NULL, 1, NULL, 0, NULL, '2024-05-08 07:23:57'),
(17, 'KYC_REJECT', 'KYC Rejected', 'KYC has been rejected', '{{site_name}} - KYC Rejected', '<div><div><span>We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards. As a result, we are unable to approve your KYC submission at this time.</span></div><br><div><span>We understand that this news may be disappointing, and we want to assure you that we take these matters seriously to maintain the security and integrity of our platform.</span></div><br><div><span>Reasons for rejection may include discrepancies or incomplete information in the documentation provided. If you believe there has been a misunderstanding or if you would like further clarification on why your KYC was rejected, please don\'t hesitate to contact our support team.</span></div><br><div><span>We encourage you to review your submitted information and ensure that all details are accurate and up-to-date. Once any necessary adjustments have been made, you are welcome to resubmit your KYC information for review.</span></div><br><div><span>We apologize for any inconvenience this may cause and appreciate your understanding and cooperation in this matter.</span></div><br><div>Rejection Reason:</div><div>{{reason}}</div><div><br></div><div><span>Thank you for your continued support and patience.</span></div></div>', 'We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards. As a result, we are unable to approve your KYC submission at this time. We encourage you to review your submitted information and ensure that all details are accurate and up-to-date. Once any necessary adjustments have been made, you are welcome to resubmit your KYC information for review.', 'Your  Know Your Customer (KYC) information has been rejected', '{\"reason\":\"Rejection Reason\"}', 1, '{{site_name}} Verification Center', NULL, 1, NULL, 0, NULL, '2024-05-08 07:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `seo_content`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', '/', 'templates.basic.', '[\"about\",\"blog\",\"counter\",\"faq\",\"feature\",\"subscribe\",\"subscribe\"]', '{\"image\":\"670d1fed046621728913389.png\",\"description\":\"Et recusandae Minus\",\"social_title\":\"test\",\"social_description\":\"Odit magna eos cons\",\"keywords\":null}', 1, '2020-07-11 06:23:58', '2024-10-14 07:43:09'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, NULL, 1, '2020-10-22 01:14:43', '2024-09-11 01:15:02'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@site.com', '165086', '2024-09-15 04:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '53ed217f997c78844331512b6d609df2ff6eba9e771ec52c0ff425d7115f4ac6', '[\"user\"]', NULL, NULL, '2024-05-13 03:36:32', '2024-05-13 03:36:32'),
(2, 'App\\Models\\User', 1, 'auth_token', '65c03f251864b3754764fbba3651e7eaf433c4e1ec48e2d7c84c0a6a04eddcd7', '[\"user\"]', NULL, NULL, '2024-09-12 01:29:39', '2024-09-12 01:29:39'),
(3, 'App\\Models\\User', 1, 'auth_token', 'b96c5596d48f00f7b6420b31bbd2b6194773ef9b15377c507b7e92639181945a', '[\"user\"]', NULL, NULL, '2024-09-12 02:46:00', '2024-09-12 02:46:00'),
(4, 'App\\Models\\User', 1, 'auth_token', '0961fb6544b88b8392cc6cfea559b245df13e9365b4424d9207d8a32fd75fe61', '[\"user\"]', NULL, NULL, '2024-09-12 02:46:37', '2024-09-12 02:46:37'),
(5, 'App\\Models\\User', 1, 'auth_token', '2d81eb67b12e749a9da2159cae02916a3c37610b425ddd677876935bc3c8944d', '[\"user\"]', NULL, NULL, '2024-09-12 02:48:15', '2024-09-12 02:48:15'),
(6, 'App\\Models\\User', 1, 'auth_token', 'a22047706db914064e36d059b1c3cfb13d603bb1a081a96e6378b60a06c26774', '[\"user\"]', NULL, NULL, '2024-09-12 02:50:51', '2024-09-12 02:50:51'),
(7, 'App\\Models\\User', 1, 'auth_token', 'e8462210313f35c5b318eb830e30e9197e8a0746b6dface6f35a84d75bbfdb77', '[\"user\"]', NULL, NULL, '2024-09-12 02:58:12', '2024-09-12 02:58:12'),
(8, 'App\\Models\\User', 1, 'auth_token', 'cc63943e0722f81b5b1030daf2a8ebd39ec89c004cf60948eed8b3c0aa94771a', '[\"user\"]', NULL, NULL, '2024-09-12 03:06:53', '2024-09-12 03:06:53'),
(9, 'App\\Models\\User', 14, 'auth_token', 'e7e666a38e091b652434b0f84d6458356bd9adf89a4975a22fae3bd34b552995', '[\"*\"]', NULL, NULL, '2024-09-12 03:17:29', '2024-09-12 03:17:29'),
(10, 'App\\Models\\User', 15, 'auth_token', 'ea2cb97b756ed34822e4c4644582fac17f224e24859cfd44dbed670f40b7ce1c', '[\"*\"]', NULL, NULL, '2024-09-12 03:21:04', '2024-09-12 03:21:04'),
(11, 'App\\Models\\User', 16, 'auth_token', 'bb3fef19f878a296648578892203c82b00d1072d1d4abe1ff280f6ac64752620', '[\"*\"]', NULL, NULL, '2024-09-12 03:23:27', '2024-09-12 03:23:27'),
(12, 'App\\Models\\User', 17, 'auth_token', '59d3452d6d07779d18546ac63dcb51c9894be568a03c20c8889d3a0b5f5b44d5', '[\"*\"]', NULL, NULL, '2024-09-12 03:25:39', '2024-09-12 03:25:39'),
(13, 'App\\Models\\User', 18, 'auth_token', '5744fa3ac3fb09d99b208889f63b7f73ad32372bc770bad648f3a858e2e78ef4', '[\"*\"]', NULL, NULL, '2024-09-12 03:27:14', '2024-09-12 03:27:14'),
(14, 'App\\Models\\User', 1, 'auth_token', '3b47e1c824f68a56d3400ee443b746ab589263708bb41e8e3da0c8025cab4547', '[\"user\"]', NULL, NULL, '2024-09-12 03:30:51', '2024-09-12 03:30:51'),
(15, 'App\\Models\\User', 1, 'auth_token', '2a59f335786d85e5f0eae558adeb1f523bcd0ee3bdd492e7c2366597885a2a63', '[\"user\"]', NULL, NULL, '2024-09-12 03:31:34', '2024-09-12 03:31:34'),
(16, 'App\\Models\\User', 1, 'auth_token', '7141c36d93454a2742628dab333ef5bb0636a834f2aac9f489712a61e4e04a81', '[\"user\"]', '2024-09-12 08:00:26', NULL, '2024-09-12 05:38:27', '2024-09-12 08:00:26'),
(17, 'App\\Models\\User', 1, 'auth_token', '17a3a5c65aa8ec39bef5aa7e753f02077fffa94b30f896ca996fcab7a1237007', '[\"user\"]', '2024-10-12 08:38:56', NULL, '2024-09-12 05:55:02', '2024-10-12 08:38:56'),
(18, 'App\\Models\\User', 1, 'auth_token', '1abc5c3441afc4d71344c33583c5cd71952d04217b2219b715b52fb9796ba60c', '[\"user\"]', '2024-09-12 06:02:57', NULL, '2024-09-12 06:02:21', '2024-09-12 06:02:57'),
(19, 'App\\Models\\User', 1, 'auth_token', '883ac5cde7a164f3305cd92bf9c9b02b684f08522b34ef9277567a1239139db0', '[\"user\"]', NULL, NULL, '2024-09-12 08:00:23', '2024-09-12 08:00:23'),
(20, 'App\\Models\\User', 19, 'auth_token', '3a6ecc80e574dcecefd5f1c56cff64a029615360aaf3ce18d7b1c56c4f316655', '[\"*\"]', NULL, NULL, '2024-09-12 08:04:39', '2024-09-12 08:04:39'),
(21, 'App\\Models\\User', 1, 'auth_token', '2a5ecece56e5b4fb051691c1f7fda4f1e325239af134d1c29a1859f07c87cb28', '[\"user\"]', NULL, NULL, '2024-09-15 04:27:18', '2024-09-15 04:27:18'),
(22, 'App\\Models\\User', 1, 'auth_token', '4f6fd0946786aec77b6e61f064404567ca784d8ad98038874605cc6c5387d957', '[\"user\"]', NULL, NULL, '2024-09-15 04:29:28', '2024-09-15 04:29:28'),
(23, 'App\\Models\\User', 1, 'auth_token', 'cfd6c55836ef08fa50b2642972dc88ed2deec6148f39c109e3173b2d613af8a0', '[\"user\"]', NULL, NULL, '2024-10-03 04:22:29', '2024-10-03 04:22:29'),
(24, 'App\\Models\\User', 1, 'auth_token', 'f921cfa09fe0c718809e5e762599b21969338ff07d6cfdb8b8e2b46f56ac482b', '[\"user\"]', NULL, NULL, '2024-10-05 00:10:47', '2024-10-05 00:10:47'),
(25, 'App\\Models\\User', 1, 'auth_token', 'aca0986e97558beb89c75101e4f5954ac8c59e0b81c33595af46fd780a3b6dd8', '[\"user\"]', '2024-10-05 04:42:32', NULL, '2024-10-05 00:15:59', '2024-10-05 04:42:32'),
(26, 'App\\Models\\User', 1, 'auth_token', '5b60a083e45ed7829800bccd5898368efbad0c53d38dfaf65c04400810226d73', '[\"user\"]', NULL, NULL, '2024-10-05 00:34:20', '2024-10-05 00:34:20'),
(27, 'App\\Models\\User', 1, 'auth_token', 'e10c56e825abba37a6e6d31d585e847529857b0781308ff6b9c3bb8f6c8b8c03', '[\"user\"]', '2024-10-07 00:47:36', NULL, '2024-10-05 04:51:23', '2024-10-07 00:47:36'),
(28, 'App\\Models\\User', 2, 'auth_token', 'fdfd4c4acd0054d010f5ab7d68754fd65adca479898e741c379e9c46358af506', '[\"*\"]', '2024-10-17 03:52:03', NULL, '2024-10-17 02:39:17', '2024-10-17 03:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'user@site.com', '2024-09-27 11:21:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `support_message_id` int UNSIGNED NOT NULL DEFAULT '0',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_id` int UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int UNSIGNED NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int UNSIGNED NOT NULL DEFAULT '0',
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `kyc_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kyc_rejection_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `dial_code`, `mobile`, `ref_by`, `balance`, `password`, `country_name`, `country_code`, `city`, `state`, `zip`, `address`, `status`, `kyc_data`, `kyc_rejection_reason`, `kv`, `ev`, `sv`, `profile_complete`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `ban_reason`, `remember_token`, `provider`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, 'Ovo', 'Solution', 'ovosolution', 'ovosolution@gmail.com', '880', '112121', 0, 0.00000000, '$2y$12$NTLFo3W.xQBHK5itBBA3Ve0qU.VutpDxLHAVgikP/2O.vEPnFebW2', 'Bangladesh', 'BD', '2', 'Dhaka', '120', 'Dhaka', 1, NULL, NULL, 1, 1, 1, 1, '754178', '2024-10-14 10:45:36', 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-10-14 04:44:56', '2024-10-14 06:09:31'),
(2, 'thyf', 'jhfdfg', NULL, 'fdxdjkdfjk@aa.com', NULL, NULL, 0, 0.00000000, '$2y$12$WVl5V5qJn6iLZ0poSHzXNeqbsoGkG.83X9edIJDBSKO0ZhiWthbHW', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-10-17 02:39:16', '2024-10-17 02:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2024-10-14 04:44:57', '2024-10-14 04:44:57'),
(2, 2, '103.54.148.91', 'Dhaka', 'Bangladesh', 'BD', '90.3526', '23.815', 'Unknown Browser', 'Unknown OS Platform', '2024-10-17 02:39:17', '2024-10-17 02:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `method_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `after_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `withdraw_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT '0.00000000',
  `max_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `rate` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `form_id`, `name`, `image`, `min_limit`, `max_limit`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 'Bank Transfer', '66f9554872b921727616328.png', 122.00000000, 1000.00000000, 1.00000000, 1.00000000, 2.00, 'USD', '<div style=\"border-left: 3px solid #b5b0b0;\r\n    padding: 12px;\r\n    font-style: italic;\r\n    margin: 30px 0px;\r\n    background: #f9f9f9;\r\n    border-radius: 3px;\"><p style=\"text-align: center; margin-bottom: 10px; font-size: 17px;\"><span style=\"color: rgb(67, 64, 79); display: inline !important;\">Please complete the form below with accurate information. We will process the fund transfer as soon as possible in accordance with our withdrawal policy. Please note that we cannot assume responsibility for any discrepancies in the information provided</span><br></p></div>', 1, '2022-03-30 09:09:11', '2024-10-14 06:23:07'),
(2, 14, 'Mobile Money Transfer', '66f9553d779411727616317.png', 1.00000000, 1000.00000000, 0.00000000, 1.00000000, 0.01, 'USD', '<div style=\"border-left: 3px solid #b5b0b0;\r\n    padding: 12px;\r\n    font-style: italic;\r\n    margin: 30px 0px;\r\n    background: #f9f9f9;\r\n    border-radius: 3px;\"><p style=\"text-align: center; margin-bottom: 10px; font-size: 17px;\">Please complete the form below with accurate information. We will process the fund transfer as soon as possible in accordance with our withdrawal policy. Please note that we cannot assume responsibility for any discrepancies in the information provided</p></div>', 1, '2022-03-30 09:10:12', '2024-10-03 04:06:13'),
(5, 24, 'Paypal Manual', '670e1211351851728975377.png', 100.00000000, 500000000.00000000, 1.00000000, 1.00000000, 1.00, 'USD', '<p style=\"margin-bottom: 10px; font-size: 17px; font-weight: bold; font-style: italic;\"><span style=\"color: rgb(67, 64, 79); font-weight: 400; text-align: center; background-color: rgb(249, 249, 249); display: inline !important;\">Please complete the form below with accurate information. We will process the fund transfer as soon as possible in accordance with our withdrawal policy. Please note that we cannot assume responsibility for any discrepancies in the information provided</span><br></p>', 1, '2024-10-08 03:32:00', '2024-10-15 00:56:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_job_logs`
--
ALTER TABLE `cron_job_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_schedules`
--
ALTER TABLE `cron_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_logs`
--
ALTER TABLE `notification_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cron_job_logs`
--
ALTER TABLE `cron_job_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron_schedules`
--
ALTER TABLE `cron_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notification_logs`
--
ALTER TABLE `notification_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
