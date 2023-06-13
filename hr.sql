-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2023 at 11:44 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `candidate_code`, `name`, `job_profile`, `email`, `mobile`, `experience`, `salary`, `location`, `notice_period`, `add_by`, `created_at`, `updated_at`) VALUES
(2, 'SSSC-100', 'Demetrius Rodgers', 'Est sit tenetur qua', 'pete@mailinator.com', '8595529873', 'Tempore reprehender', 'Aute amet dicta qui', 'Nesciunt atque qui', 'Laboriosam sit sed', '1', NULL, '2022-12-10 19:45:50');

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
(555, '2022_10_02_110811_add_receipt_session', 1),
(556, '2022_10_02_111946_add_receipt_session_date', 1),
(557, '2022_10_02_124209_add_check_and_received', 1),
(558, '2022_10_02_124808_add_check_and_received_date', 1),
(559, '2022_10_03_064357_create_product_boms_table', 1),
(571, '2022_10_08_092758_add_code', 2),
(572, '2014_10_12_100000_create_password_resets_table', 3),
(573, '2019_08_19_000000_create_failed_jobs_table', 3),
(574, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(575, '2022_09_03_182923_create_users_table', 3),
(576, '2022_10_08_062825_create_inspections_table', 3),
(577, '2022_10_10_075206_create_assign_dealers_table', 4),
(579, '2022_10_12_044108_create_brands_table', 5),
(580, '2022_10_12_054534_create_modals_table', 6),
(581, '2022_10_12_071143_create_cars_table', 7),
(582, '2022_10_12_113516_create_jobs_table', 7),
(583, '2022_10_29_074932_add_brand_image', 8),
(585, '2022_11_03_053956_create_teams_table', 9),
(586, '2022_11_03_132326_create_roles_table', 10),
(587, '2022_11_03_152400_add_emergencey_phone', 11),
(588, '2022_11_03_152853_add_joining_date', 12),
(589, '2022_11_03_173412_create_sources_table', 13),
(592, '2022_11_04_113421_add_team_id', 15),
(594, '2022_11_03_174446_create_statuses_table', 17),
(596, '2022_11_03_123052_create_leads_table', 18),
(599, '2022_11_05_125228_create_assign_leads_table', 19),
(600, '2022_11_08_161029_create_team_members_table', 20),
(601, '2022_11_08_162841_add_profile_image', 21),
(602, '2022_11_08_175206_create_further_assigneds_table', 22),
(603, '2022_11_10_110807_create_inspect_details_table', 23),
(604, '2022_11_11_134144_create_inspected_images_table', 24),
(605, '2022_11_13_140420_add_status', 25),
(606, '2022_11_14_172238_create_notifications_table', 26),
(607, '2022_11_15_131234_create_notifications_table', 27),
(608, '2022_11_16_113359_create_supervisions_table', 28),
(609, '2022_11_16_175753_create_lead_assign_to_qcs_table', 29),
(610, '2022_11_17_103659_add_assigned_by', 29),
(611, '2022_11_17_114939_create_assign_lead_to_c_j_s_table', 29),
(612, '2022_11_17_121755_add_status_feild', 29),
(613, '2022_11_17_160838_create_lead_statuses_table', 30),
(614, '2022_11_17_230242_add_assigndate', 30),
(615, '2022_11_18_110524_create_book_inspections_table', 30),
(616, '2022_11_18_131857_create_lead_next_calls_table', 30),
(617, '2022_11_19_113853_add_status_and_assigndate', 30),
(621, '2022_12_11_000642_create_candidates_table', 31);

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
('014d6c3a-02ff-4c19-bada-4682f0a3181b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":213,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:02:30', '2022-11-21 16:02:30'),
('01dc6345-9927-4d6a-973f-ee1ab438985f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":91,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:15:36', '2022-11-19 12:15:36'),
('02dda929-0a5a-413f-9935-c200d2457e8f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":141,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:30:43', '2022-11-21 13:30:43'),
('035d7c16-65a1-439b-a308-254f645bf8ab', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":308,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:23:04', '2022-11-22 11:23:04'),
('05015fa7-1040-4a72-a44f-d814d33c5297', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":140,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:30:19', '2022-11-21 13:30:19'),
('051009a4-b55d-4511-a6f7-7261f22af5d9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":187,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:46:30', '2022-11-21 15:46:30'),
('05a847ea-eefc-4afc-9882-25b8748c1e37', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":313,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:24:49', '2022-11-22 11:24:49'),
('0607bbd7-c1bc-48ba-9e03-fc6dc51b5dcc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":2,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:13:42', '2022-11-17 13:13:42'),
('068f22fa-4ff2-4648-9028-1c93cd06c35d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":326,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:39', '2022-11-22 11:28:39'),
('07411683-e603-49d1-903c-a6b04a3d9fb5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":225,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:09:17', '2022-11-21 16:09:17'),
('09059045-8f74-4dfd-b57f-bc8ad328653c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":289,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:47:07', '2022-11-22 10:47:07'),
('09220537-003e-49b0-aa35-a23dc8bcb5ab', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":161,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:38:19', '2022-11-21 15:38:19'),
('094b95a1-863a-4b84-bcee-78759b439266', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":349,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:34:59', '2022-11-23 10:34:59'),
('09b3451e-d659-415b-9207-bdd75a738027', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":209,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:59:19', '2022-11-21 15:59:19'),
('09b6649a-3ef2-4f0e-9f61-6118372eecaf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":22,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:45:48', '2022-11-18 14:45:48'),
('0a393507-a545-49b6-8072-74067d4bc5b7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":57,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:11:14', '2022-11-18 16:11:14'),
('0a9928e9-8c66-469d-ae25-a0e5887cd344', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":70,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:39:10', '2022-11-18 16:39:10'),
('0ab032a9-4e8c-4a23-b4d3-5e3acdc4b5d5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":271,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:01:57', '2022-11-21 18:01:57'),
('0af6b743-0bd4-4274-b9f4-aefefee34360', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":269,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:01:01', '2022-11-21 18:01:01'),
('0af8bbb4-bdb3-406b-9ac2-30027053dfaa', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":162,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:38:35', '2022-11-21 15:38:35'),
('0d73e83b-cd92-4824-bba0-c7d254cb5866', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":190,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:39', '2022-11-21 15:47:39'),
('0df498bc-8ad0-49b3-915f-23452584a47e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":194,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:51:02', '2022-11-21 15:51:02'),
('0e6be8be-85cc-4934-a40d-7cd671e6abe0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":186,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:46:13', '2022-11-21 15:46:13'),
('0e972185-bf80-42e1-a8a2-9ba3b01126da', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":19,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:41:50', '2022-11-18 14:41:50'),
('10b6f8c4-8686-4a63-9854-6d8e8948cf41', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":93,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:17:22', '2022-11-19 12:17:22'),
('10ba4cae-5407-497b-80ec-1a342a61d65b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"334\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:18', '2022-11-22 18:51:18'),
('112c67dd-7d04-4e59-99f5-6cceca24da3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":132,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:17:51', '2022-11-21 13:17:51'),
('118309fc-f5bc-4406-99c8-02a5a626d5e9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":72,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:42:02', '2022-11-18 16:42:02'),
('123e16b3-0668-497c-9fea-4643786744c7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":215,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:03:06', '2022-11-21 16:03:06'),
('14402d31-ee0e-48fe-a38e-a5276e9ea295', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":14,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:30:22', '2022-11-17 17:30:22'),
('1559ffd0-de76-495c-b72c-319e4b3fbf3b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":301,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:51:57', '2022-11-22 10:51:57'),
('155f4241-12c8-44c8-beff-4e4eb37b62ad', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":223,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:08:31', '2022-11-21 16:08:31'),
('164ccc59-92b8-4827-ae96-864a0b80768e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":169,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:40:33', '2022-11-21 15:40:33'),
('1705c2bc-ec6e-4a0e-b63a-54980b16a101', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":184,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:45:36', '2022-11-21 15:45:36'),
('171eed2b-4c23-4735-bd78-908b671aa5b7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":183,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:45:19', '2022-11-21 15:45:19'),
('178823d2-0b9b-4fa2-8978-e781b3122b06', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 3, '{\"lead_id\":\"333\",\"message\":\"Rajinder Singh you have assigned a new Lead\"}', NULL, '2022-11-22 18:52:34', '2022-11-22 18:52:34'),
('18173a50-75c0-466b-855f-798aa1166755', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":107,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:22:27', '2022-11-19 14:22:27'),
('19601142-6ec0-4de1-a749-4e26449e0e55', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":125,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:29:46', '2022-11-21 12:29:46'),
('1aa0252f-05a0-420b-b067-49f039c69839', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":347,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:34:06', '2022-11-23 10:34:06'),
('1c62a73c-4629-4345-8383-1aa1c887423b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":9,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 16:32:11', '2022-11-17 16:32:11'),
('1cfbcc3b-e840-4836-b785-9147000a36cd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":270,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:01:40', '2022-11-21 18:01:40'),
('1cffab48-c668-4bae-a8a4-37f70013001b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":319,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:45', '2022-11-22 11:26:45'),
('1d3432ef-75ad-46d4-90f1-34054714620d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":121,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 17:42:47', '2022-11-19 17:42:47'),
('1d5db19a-17fd-44e3-8483-92003da5dc84', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":83,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:09:32', '2022-11-19 11:09:32'),
('1dec6241-a34d-4358-baf9-bcf56b6bcfe3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":237,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:14:40', '2022-11-21 16:14:40'),
('1eaa594e-3da1-4210-a82c-cd8f84f8bf1e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":20,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:43:26', '2022-11-18 14:43:26'),
('1f670a02-5b87-4c66-ba29-d200afb6269c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":196,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:51:39', '2022-11-21 15:51:39'),
('214d26f6-8d1f-43ba-9f2a-c3422489b924', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":232,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:12:51', '2022-11-21 16:12:51'),
('22035804-643a-4ba1-881c-f8667466bce0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":293,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:48:42', '2022-11-22 10:48:42'),
('22b35f27-c5cd-4ea1-a0db-5b9d07f2add6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":36,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:39:36', '2022-11-18 15:39:36'),
('23bc27d0-2db9-4d79-b69f-47ef18238b13', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":358,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 11:32:26', '2022-11-23 11:32:26'),
('2434ae84-9106-45ed-962a-d767d5626a1a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":249,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:21:24', '2022-11-21 16:21:24'),
('256eeca2-71c9-46cd-9ee0-d09ee7dea090', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":210,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:59:33', '2022-11-21 15:59:33'),
('2599ccd6-efac-43b7-a59c-5391fb097b2e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":318,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:23', '2022-11-22 11:26:23'),
('25c861aa-04d5-41ed-b483-1f184893106f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":285,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:45:34', '2022-11-22 10:45:34'),
('26be7dde-d808-4178-9a1d-f1a389c5ee6c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":277,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:01', '2022-11-21 18:04:01'),
('272192e6-032c-4732-873d-b91f761d0e68', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":71,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:40:59', '2022-11-18 16:40:59'),
('287b2548-10b2-473f-ba21-34f29f9e65f2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 6, '{\"lead_id\":\"333\",\"message\":\"Mayank you have assigned a new Lead\"}', NULL, '2022-11-22 18:53:11', '2022-11-22 18:53:11'),
('290e022a-0761-4c85-9c5a-5d8fd2efa599', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":41,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:52:20', '2022-11-18 15:52:20'),
('297872af-091d-42d2-9468-fd4234662261', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":229,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:10:55', '2022-11-21 16:10:55'),
('29a78d58-6d09-4604-b69f-246568328d49', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":353,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:36:58', '2022-11-23 10:36:58'),
('2a5ad7b7-1c0f-4a00-b061-4a5fd35a1f8e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":44,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:54:51', '2022-11-18 15:54:51'),
('2aa02d12-92ac-4319-947a-35acfa5b9e3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":273,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:02:56', '2022-11-21 18:02:56'),
('2ac73c7f-b6c2-4301-aef0-ac1fba74977f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":99,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:28:49', '2022-11-19 12:28:49'),
('2c5d1922-f4e3-4083-9f86-dc5ae26ff043', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":78,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 10:56:20', '2022-11-19 10:56:20'),
('2cacc76a-c376-4d34-88a8-2b4f07a83bac', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":286,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:45:57', '2022-11-22 10:45:57'),
('2cd9afba-5426-4856-b880-86f1c14e71eb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":60,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:14:29', '2022-11-18 16:14:29'),
('2df87777-47ae-48e1-ac04-e557eb9cd681', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":85,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:23:11', '2022-11-19 11:23:11'),
('2ea95dba-6ed6-4d55-8250-fa662385ec51', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"372\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:05', '2022-11-25 05:48:05'),
('2f30cf0d-5ad7-4931-98a8-8de7098e033d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":52,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:05:19', '2022-11-18 16:05:19'),
('2fbf15ac-41f6-437c-99c4-f4690d388a03', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":143,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:31:33', '2022-11-21 13:31:33'),
('2fc20c33-31cb-4a7c-be3c-85539146853f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":207,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:58:44', '2022-11-21 15:58:44'),
('301090af-b9e9-4cc7-a4f3-960c82916fc9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":109,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:57:05', '2022-11-19 14:57:05'),
('30de2202-1ee1-4d50-96b4-df910129ca6f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":304,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:17:26', '2022-11-22 11:17:26'),
('30dedc6d-1ded-41a6-bd96-ba32b1750e86', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":113,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:12:06', '2022-11-19 15:12:06'),
('31fffbc0-5d6f-4e5c-82ed-6c9127bd9c3a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":62,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:19:54', '2022-11-18 16:19:54'),
('32867bab-78ae-45ac-b2f3-c0e7645f928f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":255,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:26:24', '2022-11-21 16:26:24'),
('3364f805-6421-4b43-8132-c0575f583be2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":106,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:20:10', '2022-11-19 14:20:10'),
('339ddf26-5e72-4d62-8f8e-3e23824112b6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":191,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:58', '2022-11-21 15:47:58'),
('350786a2-cb38-4f2c-be1b-e5271e063872', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":76,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:47:56', '2022-11-18 16:47:56'),
('356a11bb-c76e-4c0e-9edf-2b5777bf9ce7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":260,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:28:22', '2022-11-21 16:28:22'),
('363bcc12-e7e4-454b-a491-6c7bf1ee8695', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":228,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:10:31', '2022-11-21 16:10:31'),
('36fdbe1d-f82d-4969-885e-bdd49a2e72e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":352,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:36:28', '2022-11-23 10:36:28'),
('37c56ca3-1d35-4b13-abe1-5880144e669f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":312,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:24:32', '2022-11-22 11:24:32'),
('37e7a5f7-3e00-4c23-9286-bdf0a5ee5dca', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":345,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:33:04', '2022-11-23 10:33:04'),
('381e355b-d6e6-46a4-a873-d1874a90a486', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":226,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:09:44', '2022-11-21 16:09:44'),
('3828995f-a69d-4fc5-bd00-81c1d9bbfc60', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":279,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:30', '2022-11-21 18:04:30'),
('382ca03d-b18b-4349-af88-b180b2e584a6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":117,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 16:11:33', '2022-11-19 16:11:33'),
('386dc412-ebf9-4682-840c-2016cd9ad4d1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":197,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:52:04', '2022-11-21 15:52:04'),
('3922e74c-549b-4c46-a3bf-8ad8a4d0170f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":166,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:39', '2022-11-21 15:39:39'),
('3abd16c6-390b-4e19-a970-eadcfbaef9ba', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":90,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:14:07', '2022-11-19 12:14:07'),
('3ac3d78c-e7ab-4326-ab8f-32a57fcab77c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":29,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:27:42', '2022-11-18 15:27:42'),
('3be59d58-aaca-4ec9-a04a-61a29db47b69', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":265,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:57:40', '2022-11-21 17:57:40'),
('3c98e350-20a3-4863-a1db-0b063bf14af9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":188,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:01', '2022-11-21 15:47:01'),
('3ef60e08-7048-4071-b34b-deeacf660699', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":81,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:02:37', '2022-11-19 11:02:37'),
('3f462522-dce3-41d5-97ea-11060733e778', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":88,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:34:02', '2022-11-19 11:34:02'),
('3fb30d81-9a1c-4e3d-8f9e-4a8facaa0c55', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":142,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:31:05', '2022-11-21 13:31:05'),
('3fc83af8-3b4c-409e-a800-808e84794e91', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":234,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:13:32', '2022-11-21 16:13:32'),
('3fcbe69b-9092-46b9-933f-34890cfc5038', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":200,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:53:04', '2022-11-21 15:53:04'),
('3fe7f74a-1e95-49be-826d-dbce981a9e3c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":233,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:13:13', '2022-11-21 16:13:13'),
('41021ec9-7ce2-4e33-97e3-7e602bd5cd4c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":242,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:18:21', '2022-11-21 16:18:21'),
('41307c86-aa95-4ace-81f0-55c574e4a901', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"333\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:21', '2022-11-22 18:51:21'),
('416adb9e-0b55-433e-8716-cbd24e7fad43', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 3, '{\"lead_id\":\"372\",\"message\":\"Rajinder Singh you have assigned a new Lead\"}', NULL, '2022-11-24 05:07:58', '2022-11-24 05:07:58'),
('418cb0b2-bd73-47be-922e-23c7e62a3c81', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":324,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:05', '2022-11-22 11:28:05'),
('440fd871-33f7-484c-955f-41717f9d8dd0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":364,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:50:09', '2022-11-23 13:50:09'),
('4475bdfe-7149-4aa9-97e5-fdf72e409079', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":87,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:32:54', '2022-11-19 11:32:54'),
('4626098f-a88c-4f48-ad38-a423f7d67b6a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":221,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:07:23', '2022-11-21 16:07:23'),
('4628c1d9-3730-4e51-9e6f-9b750f648d45', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":177,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:43:20', '2022-11-21 15:43:20'),
('46297fce-3323-4dec-baa1-4e271446d131', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":354,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:37:25', '2022-11-23 10:37:25'),
('46535ad4-73ba-4dba-a533-4a8343dfdd71', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":39,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:49:13', '2022-11-18 15:49:13'),
('46fcef23-da8d-445d-a752-2c4c44c3940e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":262,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:29:03', '2022-11-21 16:29:03'),
('4857a067-a451-498e-8291-40b67ef056f0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":56,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:09:52', '2022-11-18 16:09:52'),
('48e9ca5e-057f-4064-83a5-a80805f45c82', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":256,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:26:43', '2022-11-21 16:26:43'),
('49ab5941-82ee-46c3-a1d5-ae09ad387679', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":189,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:19', '2022-11-21 15:47:19'),
('4b0b8541-aabf-4a0a-a915-3184310d59e1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":367,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:28:12', '2022-11-23 16:28:12'),
('4b340893-dc2b-4dbe-ad60-91e0f700f427', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":252,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:22:27', '2022-11-21 16:22:27'),
('4b40754b-593c-4ddf-b3bc-30b6ab672b22', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"372\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-24 05:06:46', '2022-11-24 05:06:46'),
('4c4f34a0-b806-485b-9b8b-6375b5795f21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 5, '{\"lead_id\":\"370\",\"message\":\"Naresh Kumar you have assigned a new Lead\"}', NULL, '2022-11-25 05:54:24', '2022-11-25 05:54:24'),
('4e1516e4-f4ea-44f2-bb7d-97d768a014af', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":239,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:17:21', '2022-11-21 16:17:21'),
('4e6694c4-0d88-4312-b42c-300984584763', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":28,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:26:12', '2022-11-18 15:26:12'),
('50b6db45-426b-4e19-aee2-ede8471377cc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":370,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 18:37:40', '2022-11-23 18:37:40'),
('50b9be86-5aa5-491e-944a-2b9e4485d112', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":146,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:36:48', '2022-11-21 13:36:48'),
('50f25300-b01a-414d-9471-b0b3d0dfbad3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":174,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:42:20', '2022-11-21 15:42:20'),
('511ab530-c221-4e21-91e8-076b8da601e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":100,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:30:34', '2022-11-19 12:30:34'),
('51eddf41-2d19-46ca-a465-b5e70571f027', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":35,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:38:00', '2022-11-18 15:38:00'),
('555ed979-ee67-4891-9fee-6f23c1477a78', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":201,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:53:26', '2022-11-21 15:53:26'),
('565a9989-7a6e-4d0d-9096-469523f6e7ea', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":278,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:14', '2022-11-21 18:04:14'),
('5755e005-0fd9-4b84-844c-c03b1dde9539', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":86,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:31:32', '2022-11-19 11:31:32'),
('586a5f36-55dd-446a-92c2-0c2fc6c6578e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":160,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:37:58', '2022-11-21 15:37:58'),
('589ec07d-6faf-44e5-82ff-749e56625ede', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":244,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:19:06', '2022-11-21 16:19:06'),
('5933d966-956d-4205-ad38-21cdde10f23d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":165,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:24', '2022-11-21 15:39:24'),
('5a0a408e-c27c-4056-9444-4ed4808692c6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":235,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:13:56', '2022-11-21 16:13:56'),
('5ca76508-84ee-4e6e-941d-99f8fb2a7ba5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":176,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:42:57', '2022-11-21 15:42:57'),
('5e23c3bc-771b-4e48-83e8-427c5e962ddf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":157,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:36:55', '2022-11-21 15:36:55'),
('5e91f3e9-204b-489f-a739-42c632dc12e1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":227,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:10:03', '2022-11-21 16:10:03'),
('5e9f5545-7789-420a-b4be-262db848b165', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":128,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:09:08', '2022-11-21 13:09:08'),
('5f01f0e6-9dcb-49eb-992f-b8d7ac42f1dd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":94,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:18:43', '2022-11-19 12:18:43'),
('5f652aaa-3447-44ba-b53d-b86fa3994280', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":148,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:52:32', '2022-11-21 13:52:32'),
('5f93ee56-3f15-4eaf-92f0-2b34122c5904', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":343,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:32:08', '2022-11-23 10:32:08'),
('603af0d5-24d0-407a-93b3-3d689a09f0e6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":59,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:13:47', '2022-11-18 16:13:47'),
('603cf73b-00ba-4b2c-8bc0-bf632fd53b25', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":208,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:59:02', '2022-11-21 15:59:02'),
('6053a301-d8fc-428d-8782-037fc9761bce', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":10,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 16:41:54', '2022-11-17 16:41:54'),
('60c2c05d-c483-4729-bc42-bfa72f4fafee', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":167,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:58', '2022-11-21 15:39:58'),
('611aa7d1-5293-4aba-8db1-de3d4edd38b2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":97,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:25:07', '2022-11-19 12:25:07'),
('61ee8dcc-89f5-4a07-9761-a6700166fdec', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":245,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:20:24', '2022-11-21 16:20:24'),
('623d465d-6cef-4423-8eaf-04c958f64b60', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":206,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:58:28', '2022-11-21 15:58:28'),
('62c266e3-f5ce-45b9-ae61-8db3884a8933', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":112,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:10:54', '2022-11-19 15:10:54'),
('63d998ab-0ae5-47c1-9767-f81dd7a5a809', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":96,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:21:50', '2022-11-19 12:21:50'),
('647d915e-3edc-494d-975a-03919f4597e0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":300,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:51:22', '2022-11-22 10:51:22'),
('64a3cea5-c7d5-483d-872a-f69c2e31df5e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":361,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:11:54', '2022-11-23 13:11:54'),
('655034e1-5c7c-44ce-ac18-4c9f08745c3a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":15,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:32:30', '2022-11-17 17:32:30'),
('6923120f-ae1c-4e4e-9685-1892bd76c89a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":135,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:26:56', '2022-11-21 13:26:56'),
('6975e354-5535-4454-a367-b1fb976a33e3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":261,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:28:42', '2022-11-21 16:28:42'),
('697a38d6-4b61-4d4e-b64d-0a846c2e1d43', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":231,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:12:21', '2022-11-21 16:12:21'),
('69916343-5f35-46db-90e9-c3cb8f344fea', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":346,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:33:34', '2022-11-23 10:33:34'),
('69d57e3c-bef8-4a86-9d38-1c12ffc0a622', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":339,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:30:20', '2022-11-23 10:30:20'),
('6aa282b5-5ae1-43bc-b8be-607d00a7cdf8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":136,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:27:26', '2022-11-21 13:27:26'),
('6d9ce8f0-2b1a-46e2-81dd-9c00fd2692fe', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":172,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:41:19', '2022-11-21 15:41:19'),
('6ddbd816-85fa-4ce2-8806-fa0af27853ca', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":77,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:51:00', '2022-11-18 16:51:00'),
('6fdf84e7-2338-4edf-9c71-eaf8ee6c61d8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":362,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:13:47', '2022-11-23 13:13:47'),
('7088900c-f3b1-4985-97b6-fc85b75015f7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":51,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:04:14', '2022-11-18 16:04:14'),
('70ddf17d-eb4d-416e-a608-4dedba75fd22', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":267,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:58:33', '2022-11-21 17:58:33'),
('70ffca62-4fa4-4d49-9ee4-8653bb654558', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":168,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:40:15', '2022-11-21 15:40:15'),
('71d99c2a-3481-4538-ba07-a701cd245d5a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":323,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:27:49', '2022-11-22 11:27:49'),
('71ecf39f-d07a-4b43-84df-275b062809d2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":314,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:25:07', '2022-11-22 11:25:07'),
('72f69cf6-c888-4a71-8593-7788845956ff', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 3, '{\"lead_id\":\"370\",\"message\":\"Rajinder Singh you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:55', '2022-11-25 05:48:55'),
('736085aa-e359-4b65-92b1-40fea5de30f1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":199,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:52:49', '2022-11-21 15:52:49'),
('7478a084-842b-4055-98a8-809720ef9efc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":95,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:20:36', '2022-11-19 12:20:36'),
('74edde07-f259-4ff3-9000-778da3c00017', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":336,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 16:14:30', '2022-11-22 16:14:30'),
('7524cfef-5979-4987-8119-0d47cfbef174', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":63,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:22:16', '2022-11-18 16:22:16'),
('76addc32-688f-483d-b96c-60332a35c9dd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":218,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:04:33', '2022-11-21 16:04:33'),
('78635b6a-ed56-4fb7-8954-5fbedfc40e78', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":185,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:45:54', '2022-11-21 15:45:54'),
('78c825f4-bdd3-447a-9faa-850696056fff', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":357,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 11:26:13', '2022-11-23 11:26:13'),
('7a5ce9f4-45f2-41dd-a7d6-36f8ffd439e5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":330,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 13:11:22', '2022-11-22 13:11:22'),
('7b5c28ca-7a5a-4593-8377-ba2ae6b4d7e3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":205,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:58:12', '2022-11-21 15:58:12'),
('7d3fd4a2-aec0-4e5b-b7cb-a71c8482630a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":351,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:35:55', '2022-11-23 10:35:55'),
('7d4dd7dd-8abf-4e71-817e-7b2dbb4e8d32', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":243,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:18:38', '2022-11-21 16:18:38'),
('7e552e85-9c74-4977-90da-67ddc01881ad', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":317,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:03', '2022-11-22 11:26:03'),
('7ea37ec5-fa76-4691-ace0-9c57f9e6a8b3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":111,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:09:58', '2022-11-19 15:09:58'),
('7f18c376-2c7b-4bbf-bfbc-d224ab522728', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":238,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:14:58', '2022-11-21 16:14:58'),
('7fab24ae-bdfc-416d-9570-45e8f7efaa1e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":92,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:16:11', '2022-11-19 12:16:11'),
('8091b128-e2dc-4739-99f5-368e3351682a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":27,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:24:41', '2022-11-18 15:24:41'),
('80923c7c-0670-4479-a847-990e3913ffcc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":170,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:40:45', '2022-11-21 15:40:45'),
('82477bc0-6b8f-4712-b22a-5e37fc62a7c6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":329,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 12:12:08', '2022-11-22 12:12:08'),
('82734e72-6712-41c6-b6c1-c4ff545187ef', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":253,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:23:03', '2022-11-21 16:23:03'),
('8294212a-61c5-42a8-a1fe-275dbe571986', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":46,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:58:25', '2022-11-18 15:58:25'),
('82e04526-75cd-431b-915c-b25ae03aebbc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":17,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:35:48', '2022-11-17 17:35:48'),
('82ee5eaf-7d9c-4cd9-af47-17c97d227a23', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":13,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:28:57', '2022-11-17 17:28:57'),
('82f17ccd-6318-49dd-9857-7183adad97c3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":74,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:45:17', '2022-11-18 16:45:17'),
('8433b483-3a1c-4fe5-869d-2a02c53c8287', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":53,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:06:51', '2022-11-18 16:06:51'),
('85345cce-0b73-4711-9f53-a660a4cafae2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":257,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:27:00', '2022-11-21 16:27:00'),
('8588f16b-e16c-489d-bc64-94dc41d8cbb9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":296,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:49:52', '2022-11-22 10:49:52'),
('867b5ac9-d8f8-4992-96cc-63926c174554', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":181,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:33', '2022-11-21 15:44:33'),
('875a2426-34f8-4d5e-a7d1-aa31cccfbff5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":198,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:52:20', '2022-11-21 15:52:20'),
('89c804be-8278-4d07-9a1a-14f939844eab', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":182,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:54', '2022-11-21 15:44:54'),
('8ae9e6c8-83dc-4182-8b0d-1023e34b6320', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":291,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:47:48', '2022-11-22 10:47:48'),
('8b31b9b7-ed89-4d14-8892-dc184b042db0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":64,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:22:58', '2022-11-18 16:22:58'),
('8c49577d-7da6-468a-b946-07f498139d70', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":127,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:35:47', '2022-11-21 12:35:47'),
('8dab7c44-a597-4f1b-a92c-fe3b7f65a2b9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":55,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:09:04', '2022-11-18 16:09:04'),
('8e228331-ab68-426a-9c82-cc0670398596', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":105,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 13:17:37', '2022-11-19 13:17:37'),
('8e8d3a8a-3ecd-47ab-a6b6-8ebfd6b50b46', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":159,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:37:42', '2022-11-21 15:37:42'),
('8eef5c19-82e1-45ce-99cd-6a29c7f15e21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":114,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:13:20', '2022-11-19 15:13:20'),
('8fa98107-9040-40d7-92c9-05038d0aeb7a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":54,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:08:09', '2022-11-18 16:08:09'),
('8fc709fb-face-491a-a2cb-65ed5dfbce72', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":50,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:03:21', '2022-11-18 16:03:21'),
('8ffca9c5-6d20-48b6-93e6-594eb949a8fb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":202,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:53:44', '2022-11-21 15:53:44'),
('901f9d4e-e1af-4c63-a31b-7d4f29b83f31', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":137,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:29:03', '2022-11-21 13:29:03'),
('90a8f497-01e8-4886-8930-d500c36cb5c7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":4,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:21:58', '2022-11-17 13:21:58'),
('939fe0d7-05e9-4833-881c-3a0f9c341aed', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":158,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:37:24', '2022-11-21 15:37:24'),
('93bfecaf-3944-445f-ac74-9e970fa5bb2c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":1,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:12:24', '2022-11-17 13:12:24'),
('93c8ce90-3e12-4068-a8e4-b6854b9fc624', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":156,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:35:27', '2022-11-21 15:35:27'),
('93fc5441-02bf-466e-af85-dcbb3152f055', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":145,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:32:17', '2022-11-21 13:32:17'),
('93ffa156-7d3f-46f2-9df6-783098143748', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":11,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:04:17', '2022-11-17 17:04:17'),
('940472f7-2e8f-438e-96aa-99a505bd9ec0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":368,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:33:04', '2022-11-23 16:33:04'),
('9535a66d-9e6d-4e06-a74c-2b17fcc9ac21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":66,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:24:34', '2022-11-18 16:24:34'),
('95be2d46-2126-42a7-9159-609e6ba386ec', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":164,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:09', '2022-11-21 15:39:09'),
('96bb88b9-4143-4610-9e29-69598f1bcec3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":321,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:27:15', '2022-11-22 11:27:15');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('96c342ae-09d4-444d-b938-1da620eba72f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":40,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:50:25', '2022-11-18 15:50:25'),
('96fdb97f-9122-4098-b837-2091d977042d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":214,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:02:49', '2022-11-21 16:02:49'),
('974c84ae-9acf-4f30-9916-7443e3daa953', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":153,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:21:59', '2022-11-21 15:21:59'),
('97a2aa0f-b85c-4f9e-9bb7-8d64683592f5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":369,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:36:03', '2022-11-23 16:36:03'),
('97cd01ae-d8e5-414f-8a39-fde3efd00a0d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":163,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:38:54', '2022-11-21 15:38:54'),
('99bfa682-d7c3-42b7-b185-87f00d473f1f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":147,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:43:33', '2022-11-21 13:43:33'),
('99e322cc-46cb-48ad-a63b-21fc73bb58c4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":276,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:03:44', '2022-11-21 18:03:44'),
('9b383c50-b02f-4474-9b87-ec18b5f6a9b5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":3,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:19:40', '2022-11-17 13:19:40'),
('9cbd2618-da4e-4944-a46e-81a6cae86cb3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":122,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 17:53:35', '2022-11-19 17:53:35'),
('9cfc44e1-1ad8-4c96-9a58-95d49cc4526c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":65,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:23:37', '2022-11-18 16:23:37'),
('9d3bdf54-be9c-47b7-9e65-264c773fada8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":337,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:25:40', '2022-11-23 10:25:40'),
('9dd3243b-af05-45d5-99d9-3e0533d6129a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":230,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:11:12', '2022-11-21 16:11:12'),
('9e83f67c-261f-42eb-b522-1a16c3f52c21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":331,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 13:59:38', '2022-11-22 13:59:38'),
('9f7fdfe0-a706-4b2a-ad5b-c91195a38808', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":251,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:22:05', '2022-11-21 16:22:05'),
('a0121497-dccf-46bd-b768-6c3eea788282', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":69,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:38:01', '2022-11-18 16:38:01'),
('a042a149-6b2b-4325-9ae1-c17d37e1f8fb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":152,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:20:18', '2022-11-21 15:20:18'),
('a1143ded-22e5-4655-b8fe-68741064a5b1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"336\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:13', '2022-11-22 18:51:13'),
('a1585437-463e-4a9e-8493-b745d1a8b51a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":151,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:05:46', '2022-11-21 15:05:46'),
('a1ee7be9-8a8f-4e69-9726-7aed8c1e31d1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":79,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 10:58:18', '2022-11-19 10:58:18'),
('a22ecb79-dfe4-4793-9294-8c7bcbfb1228', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":306,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:22:25', '2022-11-22 11:22:25'),
('a3f304c2-2ebb-4d14-a9d6-9fd64f93433b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":149,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:54:27', '2022-11-21 13:54:27'),
('a3f5d49e-4f1d-4ae3-ac1f-93affd2e6e77', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":120,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 17:38:00', '2022-11-19 17:38:00'),
('a498f680-a0c7-4471-96ec-8f192c1c70fb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":42,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:53:17', '2022-11-18 15:53:17'),
('a537dc23-e855-4627-b666-72309096caf1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":38,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:45:55', '2022-11-18 15:45:55'),
('a5662b98-155d-426d-b656-8efa56e4dd52', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":12,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:19:40', '2022-11-17 17:19:40'),
('a57c0789-8a4a-4f48-aaec-df8ee550b94c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":254,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:26:01', '2022-11-21 16:26:01'),
('a5c9b1fc-ebad-47dc-a957-b9bd0ceaac8f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":219,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:04:50', '2022-11-21 16:04:50'),
('a6243762-0a59-4983-bb6e-ad0736b58359', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":250,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:21:49', '2022-11-21 16:21:49'),
('a63e29c1-79ed-4c25-aac0-d1eac9236e49', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":355,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:38:18', '2022-11-23 10:38:18'),
('a6cde9b2-5028-4e3f-b0df-d6b7addef32e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":89,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:07:03', '2022-11-19 12:07:03'),
('a6e70975-c290-4207-92d5-adac1783d8e7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":220,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:05:11', '2022-11-21 16:05:11'),
('a70c1f10-9d48-40d0-a031-6a6fb7a97f3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":195,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:51:17', '2022-11-21 15:51:17'),
('a716fc85-2f2f-4c77-b64f-db21af355a6e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":224,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:08:57', '2022-11-21 16:08:57'),
('a71f998a-7632-46ae-9cc3-058df9f9dfe3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":282,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:05:21', '2022-11-21 18:05:21'),
('a72af504-7870-4fe1-9937-d46c82d326e1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":305,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:21:57', '2022-11-22 11:21:57'),
('a7880392-47d3-4aee-b7d6-597f58b7a11b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":25,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:20:01', '2022-11-18 15:20:01'),
('a9072a67-5fc2-4d9b-b290-07a561143ff5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":335,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 15:32:51', '2022-11-22 15:32:51'),
('ab8804bf-9d9c-4c38-bcbd-f7d20abf4540', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":21,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:44:38', '2022-11-18 14:44:38'),
('abc9d6b6-013a-4a59-8479-9c13f9467bff', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":138,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:29:29', '2022-11-21 13:29:29'),
('ad6c369c-8dcf-4e23-9437-18eb0ce0fcdb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":68,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:27:01', '2022-11-18 16:27:01'),
('aed5640a-9693-4acc-b0f3-3e354a934a26', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":268,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:58:55', '2022-11-21 17:58:55'),
('af9c1c91-514b-4b10-b687-e3fedd15c4f7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":101,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:32:10', '2022-11-19 12:32:10'),
('af9c9765-f7da-4201-9ab0-96a1de2b91c1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":133,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:23:34', '2022-11-21 13:23:34'),
('afd53823-edd0-4e9b-847d-06c154ef12ba', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":80,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 10:59:38', '2022-11-19 10:59:38'),
('b16496fe-c2ca-40a4-9e7a-5280d09ab3aa', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":33,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:35:06', '2022-11-18 15:35:06'),
('b1ce6bac-681c-4ae5-a781-7c94c3c290b1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":334,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 14:56:11', '2022-11-22 14:56:11'),
('b1d0c745-7a3b-4a1b-997f-8debb4ca34ad', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":134,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:25:34', '2022-11-21 13:25:34'),
('b1daca5a-2696-4672-9156-0571ca87cdf9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":298,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:50:42', '2022-11-22 10:50:42'),
('b25cce70-57ac-48b7-99b2-6e2a447b77f8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":363,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:48:12', '2022-11-23 13:48:12'),
('b294f6e8-0065-4fa7-806d-b057dd4268bd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":246,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:20:26', '2022-11-21 16:20:26'),
('b2aeadd8-ef69-4c8b-a595-ae56e9511916', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":131,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:15:38', '2022-11-21 13:15:38'),
('b2b56b3a-4331-4a05-97bf-3cf391879a83', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":299,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:51:02', '2022-11-22 10:51:02'),
('b6a49e38-213a-4fa6-a1ba-4578b4467788', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":280,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:49', '2022-11-21 18:04:49'),
('b6c8b7eb-20d7-4b38-83d0-aea6f6e07e52', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":348,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:34:32', '2022-11-23 10:34:32'),
('b7381865-baa1-40e0-beae-c389c95e72c7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":236,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:14:20', '2022-11-21 16:14:20'),
('b8ee4d06-5ed3-4929-8270-feb1cd9ea5bd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":67,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:25:05', '2022-11-18 16:25:05'),
('b98e65b3-e1a7-4523-a913-49342acdce32', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":193,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:48:33', '2022-11-21 15:48:33'),
('b9beaac9-1b6d-46f0-8e7d-3b091fc02520', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":310,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:23:46', '2022-11-22 11:23:46'),
('ba432a42-5e09-46bb-9bfa-9b00e06c4720', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":264,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:34:08', '2022-11-21 16:34:08'),
('bb527d80-5d92-4aa0-8e4f-2989b9ae9a56', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":8,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 16:28:32', '2022-11-17 16:28:32'),
('bb6d9686-2600-4977-bff4-d8167a7818e9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":365,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:54:09', '2022-11-23 13:54:09'),
('bbf909c8-e20e-49c2-a941-370da215833f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":338,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:29:45', '2022-11-23 10:29:45'),
('bccd094b-05a1-4d10-9ae0-68e1db1bc70c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":360,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:06:55', '2022-11-23 13:06:55'),
('be59eaa8-9a54-4efa-921b-344801737f45', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":222,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:07:43', '2022-11-21 16:07:43'),
('bef13452-9158-499a-b353-17040bf4b056', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":98,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:26:19', '2022-11-19 12:26:19'),
('bf9f85ed-07ff-4bf0-baf7-c868cf3d6b39', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":103,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:36:08', '2022-11-19 12:36:08'),
('c0447817-036a-4fa3-9183-a4f9664a2ebf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":47,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:59:34', '2022-11-18 15:59:34'),
('c073a85f-462a-4439-9722-e3f4932e9127', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":124,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:29:12', '2022-11-21 12:29:12'),
('c0ca11aa-d785-4e1e-a857-2fda1f898a84', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":34,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:36:40', '2022-11-18 15:36:40'),
('c0cd92ef-2e6b-4c1c-b4fe-f871389f3864', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":272,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:02:35', '2022-11-21 18:02:35'),
('c0f1d851-f1a5-49ec-b477-4b7c9f2ac14b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":192,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:48:14', '2022-11-21 15:48:14'),
('c126c67a-dcb5-4499-8db1-f924d387af30', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":284,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:45:04', '2022-11-22 10:45:04'),
('c304d32b-78da-4bca-8b50-675edf432954', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":281,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:05:05', '2022-11-21 18:05:05'),
('c3d9f116-dc28-4267-b0db-a1de6a3f7076', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":212,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:02:09', '2022-11-21 16:02:09'),
('c4ddfb22-636e-4c9e-8b73-ff8d8f4ca030', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":32,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:34:04', '2022-11-18 15:34:04'),
('c4e654f0-1bb0-43ef-b0f0-2b62c0a3865d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":341,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:31:16', '2022-11-23 10:31:16'),
('c521812f-797a-4fe4-820d-77524fbe416d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":328,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 12:11:35', '2022-11-22 12:11:35'),
('c5ca10d2-f583-4b4c-a973-5bdb1a1b94b8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":48,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:01:22', '2022-11-18 16:01:22'),
('c66ae681-db17-4ece-be94-ede4798d103c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 5, '{\"lead_id\":\"333\",\"message\":\"Naresh Kumar you have assigned a new Lead\"}', NULL, '2022-11-22 18:53:18', '2022-11-22 18:53:18'),
('c7c93eba-3bcb-4cce-af19-80139ee57017', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":344,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:32:38', '2022-11-23 10:32:38'),
('c868b938-0f26-4177-a91d-7a57db0defbe', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":315,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:25:25', '2022-11-22 11:25:25'),
('c9713e01-1c7e-426c-b7fc-a4e9293390b6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"370\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:10', '2022-11-25 05:48:10'),
('cca678d6-078d-4712-9b07-bff27312fd20', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":155,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:35:07', '2022-11-21 15:35:07'),
('ce4376b6-ffae-446f-b99e-2888c30afe3c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":342,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:31:43', '2022-11-23 10:31:43'),
('ced90511-9376-4fb4-9850-58a1a3bc5789', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":108,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:25:11', '2022-11-19 14:25:11'),
('cf2316f1-64ae-4f15-9f74-bdbf6f660724', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"371\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:07', '2022-11-25 05:48:07'),
('cf60ac54-b678-4165-9bc7-34837c12e6dd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":175,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:42:40', '2022-11-21 15:42:40'),
('cfd256d5-2ead-4b8a-81ae-e6d98611e34e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":294,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:49:03', '2022-11-22 10:49:03'),
('d0b5a441-ed90-464f-9ed0-8d32a855a1e8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":129,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:13:42', '2022-11-21 13:13:42'),
('d1163153-eecc-41d8-9730-df96347d4828', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":45,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:56:40', '2022-11-18 15:56:40'),
('d1376074-20d2-41cd-86d8-03d95b909ad7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 6, '{\"lead_id\":\"372\",\"message\":\"Mayank you have assigned a new Lead\"}', NULL, '2022-11-24 05:08:20', '2022-11-24 05:08:20'),
('d1bc3e27-90b5-478d-941d-fdc4b407ba62', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":58,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:12:22', '2022-11-18 16:12:22'),
('d25696bd-aa95-4d41-b4a3-320ab8604a18', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":130,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:15:06', '2022-11-21 13:15:06'),
('d2a736cd-ca19-438d-a598-e6f089030757', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":332,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 13:59:55', '2022-11-22 13:59:55'),
('d2d9bc95-e2a1-498d-8c14-def8cf5c2fec', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":350,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:35:27', '2022-11-23 10:35:27'),
('d3044c4c-4c45-4144-a1b8-7be165bbc234', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":372,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-24 10:16:18', '2022-11-24 10:16:18'),
('d310f0d4-9fe7-4527-acdf-907b6f6e6ace', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":102,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:33:33', '2022-11-19 12:33:33'),
('d36df434-584f-40c8-bee2-99b37eeac256', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":366,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:02:28', '2022-11-23 16:02:28'),
('d3a765eb-46d6-4b04-b5cb-f1df7facb40f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":266,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:58:09', '2022-11-21 17:58:09'),
('d3ddd1ac-5a46-4410-b7d7-96fd17889bdc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":104,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:38:05', '2022-11-19 12:38:05'),
('d41bc031-5698-4d8b-837f-b3283922ffdf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":309,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:23:24', '2022-11-22 11:23:24'),
('d4ad3a8a-937d-4773-9b28-98ece34e8c04', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":371,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-24 10:15:53', '2022-11-24 10:15:53'),
('d4dc3a19-d5da-421c-93d4-1c7d3492b086', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":241,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:17:56', '2022-11-21 16:17:56'),
('d5609958-29f3-4b8c-9eca-6db2628617aa', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":123,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:26:08', '2022-11-21 12:26:08'),
('d576e4f7-ef87-406c-9ed1-0b7a3b3f950b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":307,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:22:44', '2022-11-22 11:22:44'),
('d66dd611-e98b-48ba-8980-6a83a50d39e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":73,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:43:20', '2022-11-18 16:43:20'),
('d77ebd0a-bf40-4364-a19b-c8ca5a286a6b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":5,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:45:55', '2022-11-17 13:45:55'),
('d79b7d06-314c-441a-b595-d342c54b18f9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":356,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:46:55', '2022-11-23 10:46:55'),
('d831247f-28d5-4b4a-8018-861ded30969f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":150,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:58:49', '2022-11-21 13:58:49'),
('d88adb89-b0ba-4874-8087-2eebc726b6b2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":171,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:41:02', '2022-11-21 15:41:02'),
('d89703cc-0961-4b23-8f90-5511f7452cf0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"335\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:16', '2022-11-22 18:51:16'),
('d8d2b743-2112-4faf-9d73-f45c5a805640', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":288,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:46:46', '2022-11-22 10:46:46'),
('d91ecebd-b8c4-4d1c-b809-d978d727c74d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":37,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:44:55', '2022-11-18 15:44:55'),
('d95cdceb-d799-4c84-9a95-74a64f2964af', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":333,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 14:01:01', '2022-11-22 14:01:01'),
('da2f166a-3486-46d5-a797-76f031c77b0b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":116,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:20:34', '2022-11-19 15:20:34'),
('da3c3720-1c1e-4fe9-8a65-2af313a95fea', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":287,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:46:21', '2022-11-22 10:46:21'),
('db1a692f-a435-405d-8253-774dea31e094', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":24,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:18:21', '2022-11-18 15:18:21'),
('dbd8f74c-836a-4dfa-9660-972e87c17a91', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":126,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:35:09', '2022-11-21 12:35:09'),
('dc0e508e-9dd8-4496-8ee6-158f57118054', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":259,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:28:04', '2022-11-21 16:28:04'),
('dc25dfb1-7fa3-4343-80d5-ce412684fbaf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":23,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:49:21', '2022-11-18 14:49:21'),
('dc317c72-c205-4f98-b4b7-59b4b1fd6c7e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":18,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 18:11:34', '2022-11-17 18:11:34'),
('dd77143e-0a8c-41a4-bc1d-00face9bc8c9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":154,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:34:18', '2022-11-21 15:34:18'),
('ddc03a31-d3d5-46ca-9be3-5aea64ea35c9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":173,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:41:35', '2022-11-21 15:41:35'),
('de395507-8fe1-411d-9639-7ee8fca12420', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":303,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:17:04', '2022-11-22 11:17:04'),
('df720317-6a35-4eb4-9b95-2c7e21022721', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":115,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:14:41', '2022-11-19 15:14:41'),
('dfd2effe-2542-48a6-99f5-5616f7bd6340', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":26,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:21:32', '2022-11-18 15:21:32'),
('e0a03c63-d695-49d3-ae0f-fa873b429f2c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":325,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:23', '2022-11-22 11:28:23'),
('e0e2ff81-ec6f-44b2-b064-209dd61ce72c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":316,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:25:42', '2022-11-22 11:25:42'),
('e0fb7dc6-346d-4c57-b81b-170c5ac1e1f8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":118,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 16:13:53', '2022-11-19 16:13:53'),
('e433d21c-91b8-439b-964a-c37401a0684a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":216,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:03:26', '2022-11-21 16:03:26'),
('e4424ec5-249a-4ff9-ac59-ece4db54da7b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":274,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:03:11', '2022-11-21 18:03:11'),
('e4b5dc86-55a1-4cf9-ab37-8d5ebccbb984', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":203,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:54:04', '2022-11-21 15:54:04'),
('e580b7cf-7415-40e1-85cb-cffb675a0e59', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":217,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:03:45', '2022-11-21 16:03:45'),
('e6697bfd-916b-4ee8-9a01-90c118883872', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":320,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:59', '2022-11-22 11:26:59'),
('e71ae930-3ee2-4ca3-8189-40977c91a542', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":311,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:24:05', '2022-11-22 11:24:05'),
('e9159c98-8b1d-4987-8f85-bd52aaf6a643', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":292,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:48:14', '2022-11-22 10:48:14'),
('e9213acc-3f89-455c-a21d-f904d5c8015b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":7,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 14:17:26', '2022-11-17 14:17:26'),
('e9445be6-31a6-4783-ad22-5a49a3db77cf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":297,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:50:18', '2022-11-22 10:50:18'),
('e950595c-852b-4f83-b962-cf1ff63d031d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":61,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:19:07', '2022-11-18 16:19:07'),
('ea09759d-d477-4a3c-bd56-412e5f3dd5df', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":139,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:29:53', '2022-11-21 13:29:53'),
('ea1c9436-49f2-45b0-8bda-d7dc0561ef5e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":75,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:46:11', '2022-11-18 16:46:11'),
('ea5f3cc2-2740-45c2-9f73-642c8ac4e018', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":180,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:18', '2022-11-21 15:44:18'),
('eae21f90-f0bf-4d7b-8b4d-2507eb70a344', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":322,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:27:32', '2022-11-22 11:27:32'),
('ec5bfde7-f673-488f-a8eb-e8ab031adac8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":110,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:09:09', '2022-11-19 15:09:09'),
('ecd172a3-82b1-42bc-97cf-711343b0239f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":49,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:02:27', '2022-11-18 16:02:27'),
('ed1a6798-54b8-4c8f-90af-4fb4e2df86f3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":258,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:27:41', '2022-11-21 16:27:41'),
('ee0b4e03-482f-4dd7-a07d-d0f33a783cbd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":30,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:28:32', '2022-11-18 15:28:32'),
('eed9a7c2-eb61-4f59-a3e0-1d233d505442', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":179,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:00', '2022-11-21 15:44:00'),
('efbcc53d-7ab6-4368-b1b2-e72e0b9607af', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":302,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:52:13', '2022-11-22 10:52:13'),
('f00a959e-4644-411e-8493-5ad08575face', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":211,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:00:07', '2022-11-21 16:00:07'),
('f2ee5e1f-4e89-42fb-a1c6-1bd327b284de', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":263,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:29:46', '2022-11-21 16:29:46'),
('f3815f1a-dad7-499a-a5cf-2f97e9893a3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":240,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:17:38', '2022-11-21 16:17:38'),
('f4063b29-4e58-4712-885d-550e8de92833', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":84,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:14:14', '2022-11-19 11:14:14'),
('f46c9306-3a5d-450d-be9a-99bff64b92be', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":6,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 14:13:57', '2022-11-17 14:13:57'),
('f528a288-1fa6-4efe-bced-13cc237c4e9e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":43,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:54:07', '2022-11-18 15:54:07'),
('f53265dd-34b6-41e8-af1a-9224b1ab89c6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":16,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:34:33', '2022-11-17 17:34:33'),
('f549787f-7fc9-4935-a0c8-137c072b19b0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":275,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:03:27', '2022-11-21 18:03:27'),
('f59400cc-ee8d-4eb0-ae83-4711fda564fc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":82,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:07:31', '2022-11-19 11:07:31'),
('f5cc151c-0496-4e60-9445-06c51c84a86d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":295,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:49:26', '2022-11-22 10:49:26'),
('f7ee99e8-494d-4cdd-96d8-822bc3630e50', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":359,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 12:59:45', '2022-11-23 12:59:45'),
('f86766a4-1442-4543-bcb6-77515fd1ce72', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":119,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 16:14:49', '2022-11-19 16:14:49'),
('f8715a24-b2bb-439c-87c3-e3882cd8b319', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":327,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:57', '2022-11-22 11:28:57'),
('f87783ff-9910-4feb-aa03-953b3a7746b8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":290,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:47:28', '2022-11-22 10:47:28'),
('f89d6316-7836-4af6-90eb-a9c7cbad5f96', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":178,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:43:43', '2022-11-21 15:43:43'),
('f8cf4b7b-c1ab-4a56-b4c8-3c440413593a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":204,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:54:28', '2022-11-21 15:54:28'),
('f9315308-9402-46bb-ba9b-6b8265024d01', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":283,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:05:57', '2022-11-21 18:05:57'),
('f94c4fb1-a1be-4e2c-bec0-ad54316110f9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":248,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:21:08', '2022-11-21 16:21:08'),
('fbbb017d-26dd-4fd0-9f8f-e4d28b52ce1c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":340,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:30:46', '2022-11-23 10:30:46'),
('fc95b770-7126-47a9-99ac-529f973ca4e0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":247,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:20:52', '2022-11-21 16:20:52'),
('fd0b0aa2-7ebd-44b4-9d9e-4a6d93098ec9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":144,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:31:55', '2022-11-21 13:31:55'),
('fe691e1d-520f-40d0-9b5a-7093b47357e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":31,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:31:26', '2022-11-18 15:31:26');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Here 0 is active user and 1 is blocked user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emergency_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `address`, `id_proof`, `role`, `code`, `ce_code`, `flag`, `created_at`, `updated_at`, `emergency_phone`, `joining_date`, `team_id`, `image`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', '$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu', 'Moti Nagar', NULL, 'admin', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Bhavesh Kapoor', '8595529873', 'test@gmail.com', '$2y$10$RPbLloNdmHd5LC.jJg/0beCu3Kma5ZROJ294vCq49p79d1yDsob/a', 'test212', '', 'user', 'HR-100', NULL, '0', NULL, '2022-12-10 19:38:14', NULL, '2022-12-11', NULL, NULL),
(10, 'Vikrant', '8595529873', 'vikrant@gmail.com', '$2y$10$oxYc55jg3/0VFIKtyL8HwOf/mM82B/vrfa6bY69dqB3PAcNkIlU4O', 'testing', '', 'user', 'HR-101', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webdetails`
--

CREATE TABLE `webdetails` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_url` varchar(50) NOT NULL,
  `favicon` varchar(300) NOT NULL,
  `thumb_favicon` varchar(500) NOT NULL,
  `thumb_logo` varchar(500) NOT NULL,
  `logo` text NOT NULL,
  `title` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(55) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `return` text NOT NULL,
  `refund` text NOT NULL,
  `disclaimer` text NOT NULL,
  `wallet_policy` text NOT NULL,
  `faqs` text NOT NULL,
  `about` text NOT NULL,
  `fb_link` text NOT NULL,
  `twitter_link` text,
  `insta_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `minimum_amount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `gst_number` text NOT NULL,
  `city` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `twakto` varchar(1500) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webdetails`
--
ALTER TABLE `webdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `webdetails`
--
ALTER TABLE `webdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
