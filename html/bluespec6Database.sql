-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 05:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluespec6`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `markRead` tinyint(4) DEFAULT 0,
  `optin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`, `markRead`, `optin`) VALUES
(1, 'Mark Falconer', 'falconermark92@gmail.com', 'this is a test 24421', 'This is test text 24421', '2021-04-26 19:16:38', '2021-04-26 19:16:38', 1, 0),
(2, 'Mark Falconer', 'falconermark92@gmail', 'this is a test16421', 'test test test', '2021-04-26 19:49:07', '2021-04-26 19:49:07', 1, 0),
(3, 'Ivan Sedgewick', 'is@mail.com', 'test 7521', 'This is test text', '2021-05-07 09:18:19', '2021-05-07 09:18:19', NULL, 0),
(21, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'Another another another test', NULL, NULL, NULL, 0),
(22, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'Another another another test', NULL, NULL, 1, 0),
(23, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'Another another another test', NULL, NULL, NULL, 0),
(24, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'bhkgkg', NULL, NULL, NULL, 0),
(25, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'vggkkgkgh', NULL, NULL, NULL, 0),
(26, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'cjgjgcmch', NULL, NULL, NULL, 0),
(27, 'Mark Falconer', 'falconermark92@gmail.com', 'test php build 10521', 'jhvaiugefwhvjb', NULL, NULL, NULL, 0),
(28, 'Stephen Murray', 'steve@mail.com', 'this is a new test message ', 'This is my latest test message to test if this message is at the top!', NULL, NULL, NULL, 0),
(29, 'Zena Stephens', 'pemyguziwi@mailinator.com', 'Eagan Monroe', 'Repellendus Cillum ', NULL, NULL, NULL, 0),
(30, 'Mark Falconer', 'falconermark92@gmail.com', 'test 12521', 'this is a test to see if the SQL works', NULL, NULL, 1, 0),
(31, 'Mark Falconer', 'falconermark92@gmail.com', 'this is a test16421', 'test\r\n', NULL, NULL, 1, 0),
(32, 'Amir Dickerson', 'tuviher@mailinator.com', 'Skyler Mcclain', 'Sunt eaque veniam ', NULL, NULL, 0, 0),
(33, 'Hilel Valentine', 'gekys@mailinator.com', 'Zia Barrett', 'Dicta magni ex paria', NULL, NULL, 0, 0),
(34, 'Nina Burch', 'cymonutohe@mailinator.com', 'David Wade', 'Eiusmod architecto d', NULL, NULL, 1, 0),
(35, 'Ira Kim', 'tamugur@mailinator.com', 'Winter Mullins', 'Sit non iusto at vel', NULL, NULL, 1, 0),
(36, 'Winter Beach', 'bumo@mailinator.com', 'Melissa Glass', 'Eos esse qui nulla ', NULL, NULL, 1, 0),
(37, 'Deacon Durham', 'taxojexa@mailinator.com', 'Ulysses Dillard', 'Vel quo eveniet lab', NULL, NULL, 1, 0),
(38, 'Dillon Garcia', 'zepak@mailinator.com', 'Castor Shelton', 'Voluptatum dignissim', NULL, NULL, 1, 0),
(39, 'Wade Dyer', 'hukoverupu@mailinator.com', 'Madison Acevedo', 'Dolores dicta ut con', NULL, NULL, 1, 0),
(40, 'Medge Mays', 'xamoburog@mailinator.com', 'Morgan Oconnor', 'Rerum quam facilis d', NULL, NULL, 1, 0),
(41, 'Craig Goff', 'wohekox@mailinator.com', 'Barry Walls', 'Dignissimos sed rem ', NULL, NULL, 1, 0),
(42, 'Jelani Herrera', 'hitetexy@mailinator.com', 'Non minus cillum ali', 'Enim ullamco omnis a', NULL, NULL, 1, 0),
(43, 'Wang Deleon', 'sudypuxi@mailinator.com', 'Sit officia ex est ', 'Illum pariatur Qui', NULL, NULL, 0, 0),
(44, 'Wang Deleon', 'sudypuxi@mailinator.com', 'Sit officia ex est ', 'Illum pariatur Qui', NULL, NULL, 0, 0),
(45, 'Kamal Perry', 'vosejux@mailinator.com', 'Et facere voluptatem', 'Elit incidunt ut s', NULL, NULL, 0, 0),
(46, 'Bert Mercer', 'goqobo@mailinator.com', 'Quo asperiores volup', 'Beatae blanditiis vo', NULL, NULL, 0, 0),
(47, 'Shannon Huffman', 'bygez@mailinator.com', 'Doloribus ipsa quia', 'Quas quia in cillum ', NULL, NULL, 0, 0),
(48, 'Michelle Blackwell', 'gojopyr@mailinator.com', 'Anim laboriosam quo', 'Ut rerum voluptates ', NULL, NULL, 0, 0),
(49, 'Gail Mayer', 'hivur@mailinator.com', 'Soluta consectetur ', 'Nisi qui elit sapie', NULL, NULL, 0, 0),
(50, 'Mark Falconer', 'falconermark92@gmail.com', 'Testing optin', 'Testing optin radio', NULL, NULL, 0, 1),
(51, 'Elton Albert', 'mixowujuwi@mailinator.com', 'Incididunt asperiore', 'Et amet et doloremq', NULL, NULL, 0, 1),
(52, 'Lara Cunningham', 'bumavupos@mailinator.com', 'Quasi molestiae non ', 'Est nostrum qui bea', NULL, NULL, 0, 1),
(53, 'Knox Burns', 'gagup@mailinator.com', 'Dolorem sunt amet e', 'Et doloremque volupt', NULL, NULL, 0, 1),
(54, 'Todd Hampton', 'zama@mailinator.com', 'Repudiandae accusamu', 'In inventore quos un', NULL, NULL, 0, 1),
(55, 'Brett Yates', 'pajuk@mailinator.com', 'Qui voluptatem tempo', 'Quia non minus sit s', NULL, NULL, 1, 0),
(56, 'Curran Watts', 'zupam@mailinator.com', 'Id commodi rerum ali', 'Qui dolorum in reici', NULL, NULL, 0, 0);

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
-- Table structure for table `invoiceuploads`
--

CREATE TABLE `invoiceuploads` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `invoiceNumber` int(11) NOT NULL,
  `invoiceRef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoiceuploads`
--

INSERT INTO `invoiceuploads` (`id`, `user_id`, `date`, `invoiceNumber`, `invoiceRef`) VALUES
(29, 3, '2021-05-14', 123, '2120868148609e3d81f3fb0'),
(30, 15, '2021-05-14', 123, '1512486790609e41b20e964'),
(31, 30, '2021-05-14', 11, '1892101313609e4481101bd'),
(32, 3, '2021-05-14', 12, '800474460609e44917fa44'),
(33, 20, '2021-05-14', 12, '1648250345609e44b7d5b74'),
(34, 30, '2021-05-14', 14, '814372125609e44c837a3a'),
(35, 30, '2021-05-14', 15, '1769713569609e44e2de6d3'),
(36, 31, '2021-05-14', 22, '109796995609e454467832'),
(37, 31, '2021-05-14', 23, '1641314352609e4571c747a'),
(38, 31, '2021-05-14', 24, '740845426609e4586720b6'),
(39, 30, '2021-05-14', 26, '2059923806609e4595de8e4'),
(40, 30, '2021-05-14', 25, '880177653609e45b4dd9df'),
(41, 31, '2021-05-14', 26, '2058031996609e45cd1309e'),
(42, 31, '2021-05-14', 27, '15458899609e45deed6e0'),
(43, 3, '2021-05-14', 28, '1787348030609e45f5a63f0'),
(44, 3, '2021-05-14', 29, '617868812609e460849df4'),
(45, 3, '2021-05-14', 29, '978938017609e465ead7f0'),
(46, 32, '2021-05-14', 28, '1593255080609e68b692a82'),
(47, 31, '2021-05-14', 35, '1296099406609ea2935d42d'),
(48, 31, '2021-05-15', 55, '443572224609fe77be0e4d'),
(49, 31, '2021-05-25', 78, '134417761860ad3023b6cd4'),
(50, 31, '2021-05-25', 78, '134452201060ad302f0dc89'),
(51, 31, '2021-05-25', 78, '207731158360ad30ab4b7df');

-- --------------------------------------------------------

--
-- Table structure for table `mediauploads`
--

CREATE TABLE `mediauploads` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `mediaTitle` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `mediaRef` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(6, '2021_04_26_165521_create_sessions_table', 1),
(7, '2021_04_26_194945_create_contacts_table', 2),
(8, '2021_04_28_103458_create_permission_tables', 3),
(9, '2021_04_28_153959_create_videos_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('87KxgADY9ESl7xaOphc7IVwdBgPSPnP2Fp71ntuP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.19043', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEd1cnNRMzZmUW55ekduMUVqSVI0bXVkd0hDYzVHSE5qRElTWDlHViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnRob21lcGFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1620400236),
('h0oxfKk3JLDBzpUO8KlGRbz5W6OchknNSj0t7cIJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 Edg/90.0.818.51', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQnpuNjBtcUpxTGxoVUxVcnVpQWFzRk5JZDVrRHRiNGNzOUd2WE5HeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnRsb2dvQW5pbWF0aW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO319', 1620337387),
('j5poFf6a2ieaVFAWxscnHuGCtoBwdyOYmaU9wqqy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 Edg/90.0.818.51', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZENMbkEyVEpza0lDMldRVGNocVRUTDZFWGNONWs2NjRLUVhYS285eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1620384078),
('ncTmUWhUQTopNep4uyscmPzws5OofPKSsTeDR6ci', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUJNUHQ1WUJNU05oQmxOazgyY2JZakQ0ZjlYOUU1OGluOXZpT1BJaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1620664381),
('Sy0KDOI7gpCYxTTs3anDPKZFbaCrsIjBOEIoPdrW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.19043', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGpoR0lxanhWNmwxSlZBdHFzUjNJT0g5M2ZlbHVQVGVzWkU1MGVVMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1620338965),
('xRbVclfhWjkqqb9wDVe6pa1FSYwYTXBNSiMfkcUn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.19043', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzk0dEZnZTk5SlVBclVQbXg0VFhyMFdWQ0I1ZVlqYXRRTmxIZ1RrWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1620388993),
('y4IF2zauLy9v8uViah2i9vm0KLh3zXQ8LtRRJUqv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2RoTFN1UFhIc05seU0zYmhvZUVVM0VZYkM1MzN1dVVwOXhmUUt6aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1620675974);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `user_type`) VALUES
(3, 'Mark Falconer', 'falconermark92@gmail.co.uk', NULL, '$2y$10$3Adg0mPLUmRJKcHKyJDyYu4.m5DrJFEZlSNB9UO0gef5wEY1Zux1e', NULL, NULL, NULL, NULL, NULL, '2021-04-26 20:08:56', '2021-04-26 20:08:56', 'admin'),
(15, 'Mark Falconer', '568240@grimsby.ac.uk', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(20, 'MF', 'mf@mail.co.uk', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin'),
(30, 'Stephen Murray', 'steve@mail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(31, 'Margaret Rouse', 'mr@mial.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(32, 'Jack Ransen', 'jr@mail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(33, 'Mark Falconer', 'falconermark92@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin'),
(34, 'Mark Falconer', 'falconermark92@mail.co.uk', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoiceuploads`
--
ALTER TABLE `invoiceuploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mediauploads`
--
ALTER TABLE `mediauploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoiceuploads`
--
ALTER TABLE `invoiceuploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `mediauploads`
--
ALTER TABLE `mediauploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoiceuploads`
--
ALTER TABLE `invoiceuploads`
  ADD CONSTRAINT `invoiceuploads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `mediauploads`
--
ALTER TABLE `mediauploads`
  ADD CONSTRAINT `mediauploads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
