-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realtimeapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'exercitationem', 'exercitationem', '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(2, 'tenetur', 'tenetur', '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(3, 'fugiat', 'fugiat', '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(4, 'velit', 'velit', '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(21, 'Laravel Tuitorial', 'laravel-tuitorial', '2021-08-31 09:12:49', '2021-10-10 06:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `reply_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(2, 2, 4, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(3, 3, 9, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(4, 4, 3, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(5, 5, 1, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(6, 6, 9, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(7, 7, 9, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(8, 8, 6, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(9, 9, 4, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(10, 10, 2, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(11, 11, 2, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(12, 12, 1, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(13, 13, 4, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(14, 14, 3, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(15, 15, 3, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(16, 16, 10, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(17, 17, 2, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(18, 18, 1, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(19, 19, 6, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(20, 20, 1, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(21, 21, 8, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(22, 22, 4, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(23, 23, 3, '2021-06-22 07:06:29', '2021-06-22 07:06:29'),
(24, 24, 7, '2021-06-22 07:06:29', '2021-06-22 07:06:29'),
(25, 25, 8, '2021-06-22 07:06:29', '2021-06-22 07:06:29'),
(26, 26, 6, '2021-06-22 07:06:29', '2021-06-22 07:06:29'),
(27, 27, 6, '2021-06-22 07:06:29', '2021-06-22 07:06:29'),
(28, 28, 7, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(29, 29, 8, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(30, 30, 1, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(31, 31, 7, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(32, 32, 3, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(33, 33, 10, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(34, 34, 3, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(35, 35, 2, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(36, 36, 3, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(37, 37, 1, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(38, 38, 8, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(39, 39, 1, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(40, 40, 2, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(41, 41, 4, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(42, 42, 6, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(43, 43, 7, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(44, 44, 6, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(45, 45, 6, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(46, 46, 2, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(47, 47, 6, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(48, 48, 10, '2021-06-22 07:06:30', '2021-06-22 07:06:30'),
(49, 49, 3, '2021-06-22 07:06:31', '2021-06-22 07:06:31'),
(67, 18, 20, '2021-09-01 10:52:41', '2021-09-01 10:52:41'),
(75, 61, 24, '2021-09-02 08:59:14', '2021-09-02 08:59:14'),
(76, 59, 24, '2021-09-02 08:59:19', '2021-09-02 08:59:19'),
(77, 37, 24, '2021-09-02 08:59:22', '2021-09-02 08:59:22'),
(92, 69, 25, '2021-10-10 09:03:07', '2021-10-10 09:03:07'),
(93, 69, 20, '2021-10-10 09:03:11', '2021-10-10 09:03:11'),
(94, 65, 20, '2021-10-10 09:39:53', '2021-10-10 09:39:53'),
(95, 65, 25, '2021-10-10 09:40:02', '2021-10-10 09:40:02'),
(96, 83, 20, '2021-10-11 06:56:12', '2021-10-11 06:56:12'),
(97, 83, 23, '2021-10-11 06:56:21', '2021-10-11 06:56:21');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_06_21_070717_create_questions_table', 1),
(4, '2021_06_21_070751_create_replies_table', 1),
(5, '2021_06_21_070812_create_categories_table', 1),
(6, '2021_06_21_070827_create_likes_table', 1),
(7, '2021_09_01_173741_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00696cf4-8ac3-4492-b70f-2d5800ff7def', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"Bangla\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', NULL, '2021-10-14 07:39:25', '2021-10-14 07:39:25'),
('0ea14316-0246-4ce9-bf76-c62aa2292281', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"Bangla\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', NULL, '2021-10-14 07:36:55', '2021-10-14 07:36:55'),
('13900efa-b7f3-4706-91e7-6309abab6942', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"Bangla\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-12 12:13:56', '2021-10-12 12:13:48', '2021-10-12 12:13:56'),
('4b33ecfc-e5be-454a-80a0-14be0b240cca', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"THis is new title\",\"path\":\"\\/question\\/sdafhsdlfhlsdfalfld\"}', '2021-10-11 09:57:31', '2021-10-11 09:54:25', '2021-10-11 09:57:31'),
('53bef689-0f08-4019-8b67-f4566641e1d3', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-14 07:35:27', '2021-10-14 07:35:11', '2021-10-14 07:35:27'),
('60d92b2a-29f1-4874-8834-c21a9adda166', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"Bangla\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-13 20:25:37', '2021-10-12 12:28:08', '2021-10-13 20:25:37'),
('68228195-bec1-49d4-b566-a2b2aa5e924a', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"Bangla\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-13 20:25:29', '2021-10-12 12:30:35', '2021-10-13 20:25:29'),
('6c11ab70-c777-4e7f-be1f-e9007000d757', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"THis is new title\",\"path\":\"\\/question\\/sdafhsdlfhlsdfalfld\"}', '2021-10-14 07:34:41', '2021-10-14 07:30:50', '2021-10-14 07:34:41'),
('82db25b2-6c1e-432e-a23d-ae56fb2d24c0', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-12 12:24:51', '2021-10-12 12:24:31', '2021-10-12 12:24:51'),
('87cdcb43-6f89-437d-8a57-a8b4d86ea9a0', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"This is check notification sound\",\"path\":\"\\/question\\/this-is-check-notification-sound\"}', '2021-10-14 07:25:43', '2021-10-14 07:19:29', '2021-10-14 07:25:43'),
('8ac51083-f3e9-4164-a598-464a3be7fe08', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"THis is new title\",\"path\":\"\\/question\\/sdafhsdlfhlsdfalfld\"}', '2021-10-14 07:27:20', '2021-10-14 07:27:08', '2021-10-14 07:27:20'),
('90f97fc8-882e-4249-9086-55848e65fdc1', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"This is check notification sound\",\"path\":\"\\/question\\/this-is-check-notification-sound\"}', '2021-10-14 07:25:41', '2021-10-14 07:21:54', '2021-10-14 07:25:41'),
('9ab84561-6acc-476b-8aca-fdf9346a289d', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"THis is new title\",\"path\":\"\\/question\\/sdafhsdlfhlsdfalfld\"}', '2021-10-12 11:47:25', '2021-10-11 09:57:49', '2021-10-12 11:47:25'),
('a4e8ec93-752c-43f2-9ae1-1bd89fa1c9d8', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"THis is new title\",\"path\":\"\\/question\\/sdafhsdlfhlsdfalfld\"}', '2021-10-14 07:30:02', '2021-10-14 07:29:57', '2021-10-14 07:30:02'),
('c72ec36b-13a8-4c53-8d00-5c8abbb0b76d', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', NULL, '2021-10-14 07:42:08', '2021-10-14 07:42:08'),
('c8eec483-3ca2-4e09-960a-b6c40a914d7d', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"THis is new title\",\"path\":\"\\/question\\/sdafhsdlfhlsdfalfld\"}', '2021-10-14 06:58:48', '2021-10-14 01:06:26', '2021-10-14 06:58:48'),
('e2467863-3cdf-4ae9-85b4-f1bb0cb4ed8c', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"Bangla\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-13 20:25:35', '2021-10-12 12:29:06', '2021-10-13 20:25:35'),
('e82d0282-76c7-40d9-9aaf-43ae5d731f46', 'App\\Notifications\\NewReplyNotification', 'App\\User', 20, '{\"replyBy\":\"adminbaba\",\"question\":\"This is super course I am\",\"path\":\"\\/question\\/this-is-super-course-i-am-very-happy\"}', '2021-10-12 12:22:57', '2021-10-12 12:22:47', '2021-10-12 12:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `slug`, `body`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Optio amet aut tenetur accusamus eos pariatur.', 'optio-amet-aut-tenetur-accusamus-eos-pariatur', 'Nostrum minus enim occaecati voluptates voluptatem. Et consequatur dolore omnis ipsa nam quibusdam. Voluptas vel in consectetur est explicabo labore praesentium.', 3, 3, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(2, 'Corrupti ducimus ut recusandae.', 'corrupti-ducimus-ut-recusandae', 'Quisquam ut voluptatem eos earum. Et quo rerum qui iusto accusamus aut eos officiis. Sequi voluptas architecto esse.', 4, 5, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(3, 'Consectetur animi laboriosam cupiditate dolor voluptatem.', 'consectetur-animi-laboriosam-cupiditate-dolor-voluptatem', 'Necessitatibus sunt id quisquam voluptatibus quam rem. Velit nihil laborum vero sit. Qui itaque facilis corrupti repellat ullam totam omnis.', 4, 6, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(4, 'Aliquid veritatis perferendis quod reiciendis est.', 'aliquid-veritatis-perferendis-quod-reiciendis-est', 'Quod eos voluptatum est eum velit doloribus. Et molestiae eum sit provident et cum. Animi pariatur velit ea eaque repellendus.', 5, 1, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(5, 'Quis id minima occaecati natus officiis.', 'quis-id-minima-occaecati-natus-officiis', 'Rerum consequatur velit velit vero nihil nihil ut laboriosam. Magni sint voluptates voluptates voluptatem. Nihil vero quia occaecati accusantium est praesentium. Quis aliquam est est quasi.', 4, 1, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(6, 'Corrupti voluptates quis debitis amet.', 'corrupti-voluptates-quis-debitis-amet', 'Officia reiciendis a nobis molestias. Neque eos molestiae minus voluptas voluptate et. Fugit optio rerum perspiciatis ut nesciunt.', 5, 4, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(7, 'Qui et et aut deleniti nesciunt autem cupiditate.', 'qui-et-et-aut-deleniti-nesciunt-autem-cupiditate', 'Omnis animi perspiciatis qui repudiandae. Asperiores nihil et earum laudantium.', 1, 9, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(8, 'Minus id sunt rerum fuga aut itaque delectus.', 'minus-id-sunt-rerum-fuga-aut-itaque-delectus', 'Dolores rerum dolorem quaerat omnis omnis et beatae. Accusamus modi nihil quisquam odit dolor. Et odio deserunt numquam perspiciatis perferendis.', 5, 8, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(9, 'Consequatur voluptas qui quibusdam totam rerum.', 'consequatur-voluptas-qui-quibusdam-totam-rerum', 'Aliquid eligendi nihil quo dolor iste quia. Officiis dignissimos nulla optio ut ut est alias. Non autem temporibus exercitationem et. Et ipsum modi doloribus id est facilis.', 5, 5, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(11, 'this is new title', 'this-is-new-title', 'loren ipsum dolor', 3, 2, '2021-06-22 09:57:44', '2021-06-24 00:09:14'),
(12, 'this is title', 'this-is-title', 'loren ipsum dolor', 2, 3, '2021-06-23 23:34:24', '2021-06-23 23:34:24'),
(16, 'This is another new title', 'this-is-another-new-title', '**Hello world**', 8, 20, '2021-08-30 12:50:09', '2021-08-31 01:24:42'),
(17, 'This is super course I am', 'this-is-super-course-i-am-very-happy', 'Hello World', 2, 20, '2021-08-31 01:25:48', '2021-09-02 03:44:15'),
(18, 'Bangladesh', 'bangladesh', '**Hello bangladesh**', 2, 20, '2021-08-31 07:18:37', '2021-08-31 07:18:37'),
(19, 'THis is new title', 'sdafhsdlfhlsdfalfld', 'hello question', 1, 20, '2021-09-02 09:12:33', '2021-10-10 06:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `body`, `question_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Aut voluptatibus ea dicta et praesentium. In illo sed voluptatem maxime et. Aut iste accusantium voluptatem officia. Minima possimus eligendi est nam magnam.', 8, 10, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(2, 'Voluptas explicabo nemo similique nisi. Et totam ea et ut illo voluptatem enim. Inventore et repudiandae et quibusdam.', 3, 5, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(4, 'Harum pariatur quaerat et aut illum aut consequatur. Voluptatem tenetur atque enim et sint rem. Sunt eum quo itaque sapiente numquam. Sapiente voluptas saepe et omnis totam quis qui.', 2, 3, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(5, 'Praesentium est nesciunt nihil aut esse porro dignissimos. Eligendi adipisci culpa facere aut. Ullam repudiandae facere repudiandae. Tenetur ad libero consequatur repellat similique ipsam.', 7, 4, '2021-06-22 07:06:25', '2021-06-22 07:06:25'),
(6, 'Quae ut non est assumenda illum vitae. Doloribus voluptate ab quia excepturi. Dolor maxime dolorum totam perspiciatis debitis quod natus.', 7, 8, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(7, 'Reiciendis maxime voluptatum autem cupiditate officiis quos nostrum. Itaque dolor eaque consequatur aut cum harum. Autem et eos saepe nobis.', 3, 2, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(9, 'Ut id maxime pariatur voluptas molestias mollitia accusamus. Cumque et non velit molestiae. Dolorum nobis aut commodi. Quis et praesentium magnam.', 6, 5, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(10, 'Praesentium recusandae est id assumenda. Placeat praesentium quibusdam nostrum hic. Atque maxime in cum dolores asperiores. Et ipsum molestiae optio vel.', 9, 10, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(11, 'Quos culpa et pariatur laborum aut nobis odit distinctio. Assumenda expedita voluptatibus qui non. Eaque ea quis et dolorum earum porro.', 4, 8, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(12, 'Doloribus eligendi cumque sapiente rerum. Dolorum vel aut beatae quaerat. Quia voluptatem saepe qui dolorem omnis aut. Id quo saepe debitis esse a.', 1, 5, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(13, 'Voluptas laboriosam perspiciatis tenetur porro non. Expedita repellat eum quo. Assumenda esse ut deleniti consequatur.', 1, 5, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(15, 'Adipisci fuga dolor minus quia. Numquam deserunt et voluptatem ut repellendus totam. Nobis quas ipsum vero numquam aut molestiae. Rerum quos dicta alias.', 1, 1, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(16, 'ABCD update', 5, 6, '2021-06-22 07:06:26', '2021-08-08 06:45:54'),
(17, 'Quibusdam quod ea et et quod nihil fugiat voluptatem. Ut qui nulla quo modi sequi ex delectus. Asperiores cum temporibus consequatur suscipit praesentium est.', 2, 2, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(18, 'Quaerat itaque porro molestiae amet qui quasi. Adipisci sed minima voluptatem consequuntur quidem. Qui neque non consequatur et sunt ut. Autem alias expedita ipsum eum hic omnis.', 1, 1, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(19, 'Quos asperiores ut id repudiandae distinctio ut possimus. Voluptatum et iste deleniti numquam est dolores. Sit voluptas tempora neque quia.', 2, 9, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(20, 'Et voluptas exercitationem assumenda quis et et. Ut adipisci in iste cumque ad unde placeat vel. Est debitis repellat id expedita et beatae soluta.', 4, 8, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(21, 'Eius quo reiciendis saepe. Vel voluptas aliquam nam ut asperiores quos. Non dolor mollitia sit sit. Alias commodi earum doloribus ut harum provident quia.', 5, 2, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(22, 'Voluptas et quidem ut aut ad maxime. Ullam rem porro rerum qui. Earum expedita pariatur rerum facilis quod ut eos. Quod fuga dolores praesentium. Et quo fugiat dolorem non aliquid occaecati.', 4, 5, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(23, 'Ut quis quam id maxime alias cumque sint hic. Dolorum qui perspiciatis tempore ad eaque. Ducimus sed provident magni.', 8, 10, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(24, 'Qui est nobis sed assumenda ut. Necessitatibus voluptatum doloremque est qui. Cupiditate rem consequuntur sunt reprehenderit et consequuntur et.', 6, 4, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(25, 'Ut dolores a voluptatibus rem. Voluptate omnis eum et reiciendis. Animi excepturi accusantium deleniti sit qui. Quo consectetur non possimus.', 9, 9, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(26, 'Voluptates dignissimos autem qui qui numquam. Corporis unde blanditiis natus ipsa hic in. Minus aperiam rerum eum eum.', 1, 5, '2021-06-22 07:06:26', '2021-06-22 07:06:26'),
(27, 'Ut iusto qui sit. Reprehenderit id laborum amet ut. Nemo sed error maiores ipsam doloribus. Perferendis quam quam vel maiores qui harum. Ea quas accusamus beatae pariatur.', 5, 2, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(28, 'Voluptatem et eos in eos necessitatibus. Nihil est reiciendis magni consequatur inventore accusantium veniam. Eum quis nam velit nulla. Optio vero exercitationem veritatis mollitia mollitia atque.', 7, 4, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(29, 'Quia hic voluptatem odit enim. At exercitationem mollitia quisquam laborum. Veritatis velit harum doloribus dicta.', 3, 3, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(30, 'Vel vel ipsa molestiae temporibus numquam iure quisquam. Sed amet veritatis sed aperiam qui accusantium necessitatibus. Velit qui voluptatibus voluptas et accusamus laboriosam laboriosam.', 9, 2, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(31, 'Architecto natus sint beatae et. Amet aut reprehenderit exercitationem voluptas.', 4, 8, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(32, 'Aperiam dolor veniam aut sint at vel ad. Mollitia unde eius repellat vel error quia incidunt. Repellat occaecati eligendi minus id ut. Culpa sit rerum commodi quia.', 2, 6, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(33, 'Ut optio et voluptatem eius. Distinctio natus dolorum facilis. Minima vero eius ab quisquam quia omnis ab quos.', 8, 3, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(34, 'Qui repellendus in et atque quod et quasi. Quod et quaerat asperiores nihil. Est voluptatibus vitae tenetur fuga harum molestiae consequatur.', 7, 1, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(35, 'Ex atque at est dolor. Reprehenderit beatae voluptatem vel molestiae ipsam labore. Sed perspiciatis inventore inventore. Qui labore id cum. Autem aspernatur et repudiandae totam dolores eligendi.', 7, 5, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(36, 'Nesciunt commodi velit iste rem et maiores dolor. Dolor possimus quam laudantium molestiae a necessitatibus nemo. Numquam possimus ut ullam. Dolorem voluptas eius voluptatem ipsum blanditiis dolores.', 3, 1, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(37, 'Autem aliquam quidem ipsum. Qui modi voluptatibus ab debitis. Eligendi tempore aliquid eligendi. Eos iste et ipsum et eos.', 1, 3, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(38, 'Consequatur aut sit et totam molestias culpa. Et autem in eos odio libero facere. Similique id in omnis quia. Dolorem quo facere molestias molestiae.', 3, 7, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(39, 'Deserunt ad minus optio at amet quasi. Quisquam perspiciatis quidem vel et. Officia consequuntur consequuntur error magni sit. Maiores repellat impedit nesciunt atque facilis.', 3, 10, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(40, 'Ut laborum minima vel libero. Quo dolores eos et officiis. Aspernatur occaecati quod neque sunt dolorem cumque doloribus. Libero minus dicta veritatis iure repudiandae dolor vero.', 6, 6, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(41, 'Nostrum harum pariatur rerum commodi. Similique voluptas illum qui delectus molestiae doloribus. Nisi corrupti iusto architecto vel.', 6, 1, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(42, 'Veritatis assumenda pariatur quo quia. Quo magnam praesentium provident praesentium rerum. Sed molestias quos minima totam a earum.', 9, 10, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(43, 'Veritatis qui voluptatibus sed ut. Aut omnis sit inventore nulla temporibus architecto voluptas vitae. Est sequi corporis ducimus. Quos eaque exercitationem rem eum odio praesentium sint.', 2, 4, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(44, 'Minus nemo consequuntur quia minus tempora. Deleniti in animi et nobis ut et. Sunt non aliquid sit sapiente cum.', 8, 1, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(45, 'Ut ut nemo quis voluptatem. Quod et autem ipsum sit neque rerum dolorem. Impedit quo sed quisquam sit asperiores perspiciatis assumenda. Quibusdam enim incidunt eos deleniti.', 9, 2, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(46, 'Error eius asperiores quia blanditiis ratione illum. Non maxime similique iusto quis libero. Nostrum error quia ab autem harum veritatis ad. Cupiditate mollitia quas quam consequuntur neque dicta.', 4, 5, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(47, 'Deleniti reprehenderit numquam aut sed nisi numquam. Omnis delectus illum autem. Ea in in qui nisi aut quia. Corrupti facere odio tempora et velit qui quis cupiditate.', 3, 8, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(48, 'Blanditiis rerum neque ipsam consequatur. Eius ut sint provident velit voluptatem est vitae iste. Doloribus odio inventore illum excepturi sequi. Itaque et vero sunt dolor libero sit.', 3, 9, '2021-06-22 07:06:27', '2021-06-22 07:06:27'),
(50, 'Laudantium sequi in est voluptates. Vitae autem cumque sed et. Nihil praesentium dignissimos optio nostrum nihil quasi porro. Aut aut cupiditate sit alias est eveniet debitis.', 2, 10, '2021-06-22 07:06:28', '2021-06-22 07:06:28'),
(59, '# This is reply', 1, 20, '2021-09-01 03:43:36', '2021-09-01 10:47:26'),
(61, 'This is reply notification', 1, 20, '2021-09-01 11:50:38', '2021-09-01 11:50:38'),
(67, 'hello comments', 1, 24, '2021-09-02 09:00:18', '2021-09-02 09:00:39'),
(113, 'hiiiiisfaff', 19, 20, '2021-10-14 00:32:12', '2021-10-14 00:32:12'),
(115, 'New reply here', 19, 23, '2021-10-14 01:06:25', '2021-10-14 01:06:25'),
(121, 'not play sound', 19, 20, '2021-10-14 07:27:35', '2021-10-14 07:27:35'),
(125, 'sound', 17, 20, '2021-10-14 07:35:35', '2021-10-14 07:35:35'),
(127, 'abar check kori', 17, 25, '2021-10-14 07:39:24', '2021-10-14 07:39:24'),
(128, 'sound', 17, 23, '2021-10-14 07:42:08', '2021-10-14 07:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alf Goldner III', 'chelsea33@example.net', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UuXeOPDs2w', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(2, 'Prof. Liza Gutkowski DDS', 'pansy.stokes@example.org', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GQC5js6j0c', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(3, 'Libbie Dickens IV', 'borer.zion@example.com', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '48iXREO6Da', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(4, 'Jolie Romaguera', 'herta.klocko@example.org', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iLdxwi7txA', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(5, 'Tressie Feil', 'harvey.leif@example.net', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kVBQ2eRGiY', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(6, 'Mathew Cremin', 'evans44@example.com', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6W9cDQXWl9', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(7, 'Dr. Bertrand Mertz DDS', 'andre.spencer@example.net', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wgzYWO4WHU', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(8, 'Cecilia Wunsch III', 'jankunding@example.org', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't5Rw9RidVC', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(9, 'Rollin Erdman', 'erdman.marlin@example.net', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2BQhUAG58l', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(10, 'Walker Schowalter', 'lauretta.beer@example.org', '2021-06-22 07:06:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oDiai5wlSu', '2021-06-22 07:06:24', '2021-06-22 07:06:24'),
(20, 'Maung Matubbar', 'maung@gmail.com', NULL, '$2y$10$WwxAxqrkcdV2Di7aqA73Y.WiJBFECpmZPpGyAPxALOAhWuyQT.twO', NULL, '2021-08-17 00:59:08', '2021-08-17 00:59:08'),
(21, 'Bangladesh', 'bangladesh@gmail.com', NULL, '$2y$10$uWiI1nm209FGO2Ls6TMLgeL/OPKrPNpDK4a58zA7y8wEoIMZ1EfzK', NULL, '2021-08-17 08:06:29', '2021-08-17 08:06:29'),
(22, 'Admin', 'admin@gmail.com', NULL, '$2y$10$jTU7I4mT6.uXWCZPE.s0y.CBOKfYTWhcBzjzhfLxUxh7Ap2SCuszC', NULL, '2021-08-30 11:35:57', '2021-08-30 11:35:57'),
(23, 'adminbaba', 'adminbaba@gmail.com', NULL, '$2y$10$HCIQcp01r7ClqOWGEdp0z.YClLKwZzuwLcP7zG90kZFlw4PyhrVgq', NULL, '2021-08-30 12:40:20', '2021-08-30 12:40:20'),
(24, 'Jonaed', 'jonaed@gmail.com', NULL, '$2y$10$2uNGc9zLuui0YFU6U0hq/.QnsnPSX7GevPfkCH4vk4ysCl2Iiwsk6', NULL, '2021-09-02 08:58:11', '2021-09-02 08:58:11'),
(25, 'Bangla', 'bangla@gmail.com', NULL, '$2y$10$fi0iyS3N2qdmpQg/CntYD.VMoMyDPJSPtwX.DyafQq3td.a.JCLV6', NULL, '2021-10-10 07:05:16', '2021-10-10 07:05:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_question_id_foreign` (`question_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
