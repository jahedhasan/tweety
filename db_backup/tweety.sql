-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2020 at 06:07 AM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweety`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint UNSIGNED NOT NULL,
  `following_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(2, 3, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tweet_id` bigint UNSIGNED NOT NULL,
  `liked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `liked`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 0, '2020-07-12 23:02:29', '2020-07-16 01:23:58'),
(6, 2, 206, 0, '2020-07-16 01:18:38', '2020-07-16 02:03:59'),
(7, 2, 157, 1, '2020-07-16 01:20:41', '2020-07-16 01:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_06_23_101721_create_tweets_table', 1),
(10, '2020_06_23_121535_create_follows_table', 1),
(11, '2020_07_12_084019_create_likes_table', 2);

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
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'first tweet', '2020-07-08 22:42:04', '2020-07-08 22:42:04'),
(2, 1, 'Accusamus odit sed hic qui.', '2020-07-09 07:49:08', '2020-07-09 07:49:08'),
(3, 1, 'Aspernatur et corrupti rerum eius dolores.', '2020-07-09 07:49:09', '2020-07-09 07:49:09'),
(4, 1, 'Inventore porro voluptatem recusandae.', '2020-07-09 07:49:09', '2020-07-09 07:49:09'),
(5, 1, 'Illo sed sapiente atque sit aut optio nobis quos.', '2020-07-09 07:49:09', '2020-07-09 07:49:09'),
(6, 1, 'Mollitia dignissimos necessitatibus at accusantium dolor.', '2020-07-09 07:49:09', '2020-07-09 07:49:09'),
(7, 1, 'Quaerat ut est nobis magnam possimus voluptatem quo quia.', '2020-07-09 07:49:10', '2020-07-09 07:49:10'),
(8, 1, 'Corporis accusantium quaerat et necessitatibus laboriosam quis aut.', '2020-07-09 07:49:10', '2020-07-09 07:49:10'),
(9, 1, 'Quo cupiditate voluptas quia animi tenetur.', '2020-07-09 07:49:10', '2020-07-09 07:49:10'),
(10, 1, 'Architecto enim sed voluptatem.', '2020-07-09 07:49:10', '2020-07-09 07:49:10'),
(11, 1, 'Perferendis aut autem ut.', '2020-07-09 07:49:11', '2020-07-09 07:49:11'),
(12, 1, 'Commodi sit necessitatibus corrupti eos consectetur deleniti.', '2020-07-09 07:49:11', '2020-07-09 07:49:11'),
(13, 1, 'Consectetur fuga voluptas earum aliquam dicta.', '2020-07-09 07:49:11', '2020-07-09 07:49:11'),
(14, 1, 'Mollitia veniam est cupiditate.', '2020-07-09 07:49:12', '2020-07-09 07:49:12'),
(15, 1, 'Accusamus in facere quae.', '2020-07-09 07:49:12', '2020-07-09 07:49:12'),
(16, 1, 'Qui temporibus eaque quis nisi similique reprehenderit.', '2020-07-09 07:49:12', '2020-07-09 07:49:12'),
(17, 1, 'Ut voluptates dolorum facere ut deleniti.', '2020-07-09 07:49:13', '2020-07-09 07:49:13'),
(18, 1, 'Dolorem dolorem eaque ullam ut.', '2020-07-09 07:49:13', '2020-07-09 07:49:13'),
(19, 1, 'Ut qui debitis nihil quod ipsum alias.', '2020-07-09 07:49:13', '2020-07-09 07:49:13'),
(20, 1, 'Sit nostrum autem numquam rerum ducimus.', '2020-07-09 07:49:13', '2020-07-09 07:49:13'),
(21, 1, 'Vel ut iure occaecati qui.', '2020-07-09 07:49:13', '2020-07-09 07:49:13'),
(22, 1, 'Saepe consequatur recusandae doloremque tenetur eius et reiciendis.', '2020-07-09 07:49:14', '2020-07-09 07:49:14'),
(23, 1, 'Assumenda laborum natus vel asperiores.', '2020-07-09 07:49:14', '2020-07-09 07:49:14'),
(24, 1, 'Ut ratione enim aperiam possimus voluptas vero rem.', '2020-07-09 07:49:14', '2020-07-09 07:49:14'),
(25, 1, 'Ipsum quam ullam quis voluptatem vitae.', '2020-07-09 07:49:15', '2020-07-09 07:49:15'),
(26, 1, 'Rerum perferendis ipsam dolor id.', '2020-07-09 07:49:15', '2020-07-09 07:49:15'),
(27, 1, 'Rerum et qui nam est iste et.', '2020-07-09 07:49:15', '2020-07-09 07:49:15'),
(28, 1, 'Inventore consequatur illo ipsam excepturi voluptate.', '2020-07-09 07:49:15', '2020-07-09 07:49:15'),
(29, 1, 'Et ratione perspiciatis nemo eum nemo ipsa.', '2020-07-09 07:49:16', '2020-07-09 07:49:16'),
(30, 1, 'Quas nostrum laborum qui et quia autem.', '2020-07-09 07:49:16', '2020-07-09 07:49:16'),
(31, 1, 'Distinctio reiciendis et iste voluptatem accusantium autem.', '2020-07-09 07:49:16', '2020-07-09 07:49:16'),
(32, 1, 'Suscipit recusandae et itaque enim.', '2020-07-09 07:49:17', '2020-07-09 07:49:17'),
(33, 1, 'Maiores et optio illo molestiae eius aut.', '2020-07-09 07:49:17', '2020-07-09 07:49:17'),
(34, 1, 'Qui non porro consequatur voluptas saepe delectus.', '2020-07-09 07:49:17', '2020-07-09 07:49:17'),
(35, 1, 'At et voluptatibus dicta velit et commodi ipsum.', '2020-07-09 07:49:18', '2020-07-09 07:49:18'),
(36, 1, 'Corrupti dolores aut recusandae.', '2020-07-09 07:49:18', '2020-07-09 07:49:18'),
(37, 1, 'Reprehenderit repudiandae eaque et.', '2020-07-09 07:49:18', '2020-07-09 07:49:18'),
(38, 1, 'Quo et inventore nostrum nobis esse ex voluptate non.', '2020-07-09 07:49:19', '2020-07-09 07:49:19'),
(39, 1, 'Ducimus at ea hic fugit hic fugit illo.', '2020-07-09 07:49:19', '2020-07-09 07:49:19'),
(40, 1, 'Deserunt sunt aut labore est.', '2020-07-09 07:49:19', '2020-07-09 07:49:19'),
(41, 1, 'Consequatur soluta recusandae eos veniam veritatis dolorum.', '2020-07-09 07:49:20', '2020-07-09 07:49:20'),
(42, 1, 'Tempora excepturi autem dolores ut totam vero praesentium assumenda.', '2020-07-09 07:49:20', '2020-07-09 07:49:20'),
(43, 1, 'Molestias occaecati eaque voluptate enim pariatur.', '2020-07-09 07:49:20', '2020-07-09 07:49:20'),
(44, 1, 'Perspiciatis ea architecto mollitia dolores.', '2020-07-09 07:49:20', '2020-07-09 07:49:20'),
(45, 1, 'Accusamus consequatur sed autem ut.', '2020-07-09 07:49:21', '2020-07-09 07:49:21'),
(46, 1, 'Numquam nam numquam dolores suscipit modi quis ut.', '2020-07-09 07:49:21', '2020-07-09 07:49:21'),
(47, 1, 'Ipsa soluta rem magnam error quis quia.', '2020-07-09 07:49:21', '2020-07-09 07:49:21'),
(48, 1, 'Rerum id est ut debitis consequatur.', '2020-07-09 07:49:22', '2020-07-09 07:49:22'),
(49, 1, 'Error veniam aut amet adipisci enim eum.', '2020-07-09 07:49:22', '2020-07-09 07:49:22'),
(50, 1, 'Consequatur et mollitia nostrum.', '2020-07-09 07:49:22', '2020-07-09 07:49:22'),
(51, 1, 'Et labore sed minus in perspiciatis possimus.', '2020-07-09 07:49:22', '2020-07-09 07:49:22'),
(52, 1, 'Accusantium velit qui voluptates deleniti deserunt unde.', '2020-07-09 07:49:23', '2020-07-09 07:49:23'),
(53, 1, 'Iste vel doloribus sint quam cum accusamus dignissimos aut.', '2020-07-09 07:49:23', '2020-07-09 07:49:23'),
(54, 1, 'Explicabo vitae temporibus accusantium.', '2020-07-09 07:49:23', '2020-07-09 07:49:23'),
(55, 1, 'Quaerat minus rerum vel quisquam magni corrupti.', '2020-07-09 07:49:24', '2020-07-09 07:49:24'),
(56, 1, 'Impedit mollitia et reprehenderit dolorem molestiae.', '2020-07-09 07:49:24', '2020-07-09 07:49:24'),
(57, 1, 'Qui quis dolore ratione saepe cumque.', '2020-07-09 07:49:24', '2020-07-09 07:49:24'),
(58, 1, 'Aut voluptatibus officiis omnis.', '2020-07-09 07:49:25', '2020-07-09 07:49:25'),
(59, 1, 'Ea ratione aliquid sit autem omnis repellat maiores.', '2020-07-09 07:49:25', '2020-07-09 07:49:25'),
(60, 1, 'Quasi reprehenderit et qui deserunt asperiores exercitationem corporis.', '2020-07-09 07:49:25', '2020-07-09 07:49:25'),
(61, 1, 'Eaque ea dignissimos sit rerum dolorem.', '2020-07-09 07:49:25', '2020-07-09 07:49:25'),
(62, 1, 'Eveniet molestiae deserunt corporis nemo doloremque illum recusandae.', '2020-07-09 07:49:26', '2020-07-09 07:49:26'),
(63, 1, 'Sed voluptatem repellendus dolorem commodi.', '2020-07-09 07:49:26', '2020-07-09 07:49:26'),
(64, 1, 'Et totam et voluptate et fugit qui.', '2020-07-09 07:49:26', '2020-07-09 07:49:26'),
(65, 1, 'Eos atque rem minima veniam repellat.', '2020-07-09 07:49:27', '2020-07-09 07:49:27'),
(66, 1, 'Repellat sunt nihil accusamus temporibus et qui.', '2020-07-09 07:49:27', '2020-07-09 07:49:27'),
(67, 1, 'Iste facilis et iure perspiciatis vitae aut animi praesentium.', '2020-07-09 07:49:27', '2020-07-09 07:49:27'),
(68, 1, 'Expedita adipisci soluta quam repudiandae.', '2020-07-09 07:49:28', '2020-07-09 07:49:28'),
(69, 1, 'Rerum cum eaque et non.', '2020-07-09 07:49:28', '2020-07-09 07:49:28'),
(70, 1, 'Impedit ratione consequatur quod maxime dolor unde pariatur.', '2020-07-09 07:49:28', '2020-07-09 07:49:28'),
(71, 1, 'Minus aliquam sunt dolores consequatur rem ut.', '2020-07-09 07:49:29', '2020-07-09 07:49:29'),
(72, 1, 'Illum officiis harum eos dolores iste odio et.', '2020-07-09 07:49:29', '2020-07-09 07:49:29'),
(73, 1, 'Enim explicabo sed rerum recusandae.', '2020-07-09 07:49:29', '2020-07-09 07:49:29'),
(74, 1, 'Labore porro sed fugit.', '2020-07-09 07:49:30', '2020-07-09 07:49:30'),
(75, 1, 'Ut et qui et.', '2020-07-09 07:49:30', '2020-07-09 07:49:30'),
(76, 1, 'Est non consequatur molestias architecto inventore facere ex debitis.', '2020-07-09 07:49:30', '2020-07-09 07:49:30'),
(77, 1, 'Atque aut voluptatem ab et dolorem nam possimus.', '2020-07-09 07:49:31', '2020-07-09 07:49:31'),
(78, 1, 'Rem id voluptatum et.', '2020-07-09 07:49:31', '2020-07-09 07:49:31'),
(79, 1, 'Quae perspiciatis atque et voluptas illum.', '2020-07-09 07:49:31', '2020-07-09 07:49:31'),
(80, 1, 'Est eum odio voluptates voluptatum praesentium esse.', '2020-07-09 07:49:32', '2020-07-09 07:49:32'),
(81, 1, 'Et sit odit accusantium quos nihil voluptatem.', '2020-07-09 07:49:32', '2020-07-09 07:49:32'),
(82, 1, 'Ad esse officiis dolores ullam dolorem vero.', '2020-07-09 07:49:32', '2020-07-09 07:49:32'),
(83, 1, 'Eligendi illum et accusantium.', '2020-07-09 07:49:33', '2020-07-09 07:49:33'),
(84, 1, 'Illo nemo eius fugiat cupiditate rem suscipit rerum.', '2020-07-09 07:49:33', '2020-07-09 07:49:33'),
(85, 1, 'Repudiandae ullam soluta totam voluptatem dolores molestias eveniet.', '2020-07-09 07:49:33', '2020-07-09 07:49:33'),
(86, 1, 'Nobis facilis animi unde explicabo itaque.', '2020-07-09 07:49:33', '2020-07-09 07:49:33'),
(87, 1, 'Qui distinctio velit aut qui tempora est repudiandae beatae.', '2020-07-09 07:49:34', '2020-07-09 07:49:34'),
(88, 1, 'Atque incidunt aperiam vel aut est nobis enim occaecati.', '2020-07-09 07:49:34', '2020-07-09 07:49:34'),
(89, 1, 'Voluptatem pariatur praesentium aut minus qui.', '2020-07-09 07:49:34', '2020-07-09 07:49:34'),
(90, 1, 'Non quo consequuntur delectus at.', '2020-07-09 07:49:35', '2020-07-09 07:49:35'),
(91, 1, 'Non fugiat quo voluptas aspernatur velit rerum ullam.', '2020-07-09 07:49:35', '2020-07-09 07:49:35'),
(92, 1, 'Aperiam ex doloremque eos dolor perferendis quis facere.', '2020-07-09 07:49:35', '2020-07-09 07:49:35'),
(93, 1, 'Eum ducimus laboriosam ut officiis illum.', '2020-07-09 07:49:36', '2020-07-09 07:49:36'),
(94, 1, 'Voluptas fuga dolor aut ipsam et numquam sed.', '2020-07-09 07:49:36', '2020-07-09 07:49:36'),
(95, 1, 'Voluptate sed corporis molestiae.', '2020-07-09 07:49:36', '2020-07-09 07:49:36'),
(96, 1, 'Velit accusantium amet ratione labore.', '2020-07-09 07:49:37', '2020-07-09 07:49:37'),
(97, 1, 'Eius dolor porro dicta nam impedit nobis.', '2020-07-09 07:49:37', '2020-07-09 07:49:37'),
(98, 1, 'Consequatur quo omnis ea quo delectus et.', '2020-07-09 07:49:37', '2020-07-09 07:49:37'),
(99, 1, 'Illo molestias labore qui asperiores.', '2020-07-09 07:49:38', '2020-07-09 07:49:38'),
(100, 1, 'Quasi eius qui deleniti et velit.', '2020-07-09 07:49:38', '2020-07-09 07:49:38'),
(101, 1, 'Quas eveniet voluptas cupiditate deleniti.', '2020-07-09 07:49:38', '2020-07-09 07:49:38'),
(102, 1, 'Tenetur tenetur adipisci eius dolor nulla odit.', '2020-07-09 07:49:39', '2020-07-09 07:49:39'),
(103, 1, 'Ut aut corrupti officiis neque perspiciatis.', '2020-07-09 07:49:39', '2020-07-09 07:49:39'),
(104, 1, 'Dignissimos dolorem quidem neque reiciendis ex dicta numquam consectetur.', '2020-07-09 07:49:39', '2020-07-09 07:49:39'),
(105, 1, 'Quaerat deleniti blanditiis earum corporis unde aut.', '2020-07-09 07:49:40', '2020-07-09 07:49:40'),
(106, 1, 'Quia est autem expedita laboriosam est.', '2020-07-09 07:49:40', '2020-07-09 07:49:40'),
(107, 1, 'Ipsa alias nam molestiae dicta atque ut.', '2020-07-09 07:49:40', '2020-07-09 07:49:40'),
(108, 1, 'Enim tenetur voluptatibus repellendus id sapiente numquam ullam.', '2020-07-09 07:49:41', '2020-07-09 07:49:41'),
(109, 1, 'Natus voluptates et voluptatem quos provident iure.', '2020-07-09 07:49:41', '2020-07-09 07:49:41'),
(110, 1, 'Autem perspiciatis fuga porro.', '2020-07-09 07:49:41', '2020-07-09 07:49:41'),
(111, 1, 'Quae omnis corporis consequuntur enim sit.', '2020-07-09 07:49:42', '2020-07-09 07:49:42'),
(112, 1, 'Perspiciatis non aut quod rerum.', '2020-07-09 07:49:42', '2020-07-09 07:49:42'),
(113, 1, 'Aut qui tenetur molestiae modi illum.', '2020-07-09 07:49:42', '2020-07-09 07:49:42'),
(114, 1, 'Dolorem corporis autem sapiente et ab omnis in.', '2020-07-09 07:49:42', '2020-07-09 07:49:42'),
(115, 1, 'Ut sequi qui expedita doloremque ratione impedit.', '2020-07-09 07:49:43', '2020-07-09 07:49:43'),
(116, 1, 'Quaerat sed nihil quam ad explicabo vero.', '2020-07-09 07:49:43', '2020-07-09 07:49:43'),
(117, 1, 'Sed adipisci quisquam inventore.', '2020-07-09 07:49:43', '2020-07-09 07:49:43'),
(118, 1, 'Voluptatem sapiente repudiandae in eveniet laboriosam et.', '2020-07-09 07:49:44', '2020-07-09 07:49:44'),
(119, 1, 'Ad consequatur officia quam consectetur natus odio nam.', '2020-07-09 07:49:44', '2020-07-09 07:49:44'),
(120, 1, 'Est quas maxime modi voluptatem magnam rerum molestiae.', '2020-07-09 07:49:44', '2020-07-09 07:49:44'),
(121, 1, 'Iure aut velit numquam laborum dolor.', '2020-07-09 07:49:45', '2020-07-09 07:49:45'),
(122, 1, 'Rem est ad odit aspernatur deserunt harum.', '2020-07-09 07:49:45', '2020-07-09 07:49:45'),
(123, 1, 'Excepturi nobis laboriosam iste et odio.', '2020-07-09 07:49:45', '2020-07-09 07:49:45'),
(124, 1, 'Deserunt nisi dignissimos rerum exercitationem nobis corporis veniam.', '2020-07-09 07:49:45', '2020-07-09 07:49:45'),
(125, 1, 'Fuga harum deserunt ut et.', '2020-07-09 07:49:46', '2020-07-09 07:49:46'),
(126, 1, 'Voluptatibus ipsum aliquid veniam mollitia.', '2020-07-09 07:49:46', '2020-07-09 07:49:46'),
(127, 1, 'Eum inventore nemo tempore.', '2020-07-09 07:49:46', '2020-07-09 07:49:46'),
(128, 1, 'Perferendis quia et et nobis provident provident nobis.', '2020-07-09 07:49:47', '2020-07-09 07:49:47'),
(129, 1, 'Vel ratione et sit sit laudantium et doloribus.', '2020-07-09 07:49:47', '2020-07-09 07:49:47'),
(130, 1, 'Quae vel explicabo voluptates aut.', '2020-07-09 07:49:47', '2020-07-09 07:49:47'),
(131, 1, 'Numquam dolores qui ut nostrum assumenda.', '2020-07-09 07:49:48', '2020-07-09 07:49:48'),
(132, 1, 'Harum provident voluptas blanditiis ut qui et tempora et.', '2020-07-09 07:49:48', '2020-07-09 07:49:48'),
(133, 1, 'Enim blanditiis non quia sint.', '2020-07-09 07:49:48', '2020-07-09 07:49:48'),
(134, 1, 'Rerum molestiae excepturi accusantium et ad non et.', '2020-07-09 07:49:48', '2020-07-09 07:49:48'),
(135, 1, 'Sit error quidem non aut rem assumenda sapiente.', '2020-07-09 07:49:49', '2020-07-09 07:49:49'),
(136, 1, 'Laboriosam sunt esse similique libero voluptates consequatur non.', '2020-07-09 07:49:49', '2020-07-09 07:49:49'),
(137, 1, 'Aliquam laborum et in excepturi at qui rerum.', '2020-07-09 07:49:49', '2020-07-09 07:49:49'),
(138, 1, 'Quia quasi enim voluptates sed.', '2020-07-09 07:49:50', '2020-07-09 07:49:50'),
(139, 1, 'Sed ad officiis aut neque.', '2020-07-09 07:49:50', '2020-07-09 07:49:50'),
(140, 1, 'Qui totam soluta omnis culpa.', '2020-07-09 07:49:50', '2020-07-09 07:49:50'),
(141, 1, 'Beatae sit non laborum aut distinctio.', '2020-07-09 07:49:51', '2020-07-09 07:49:51'),
(142, 1, 'Repellendus blanditiis rem quasi velit laboriosam.', '2020-07-09 07:49:51', '2020-07-09 07:49:51'),
(143, 1, 'Dolore eum blanditiis ut ipsam doloribus qui.', '2020-07-09 07:49:51', '2020-07-09 07:49:51'),
(144, 1, 'Molestiae voluptates esse hic asperiores dolor dolores.', '2020-07-09 07:49:52', '2020-07-09 07:49:52'),
(145, 1, 'Sit voluptatem adipisci aut.', '2020-07-09 07:49:52', '2020-07-09 07:49:52'),
(146, 1, 'Iure est quisquam libero.', '2020-07-09 07:49:52', '2020-07-09 07:49:52'),
(147, 1, 'Doloribus voluptatem officiis excepturi sit.', '2020-07-09 07:49:52', '2020-07-09 07:49:52'),
(148, 1, 'Rerum laudantium et qui.', '2020-07-09 07:49:53', '2020-07-09 07:49:53'),
(149, 1, 'Ullam voluptatem officiis provident aut dignissimos ipsam et.', '2020-07-09 07:49:53', '2020-07-09 07:49:53'),
(150, 1, 'Minima voluptas quis nostrum pariatur ut.', '2020-07-09 07:49:53', '2020-07-09 07:49:53'),
(151, 1, 'Est nulla sed iusto cum eum amet.', '2020-07-09 07:49:54', '2020-07-09 07:49:54'),
(152, 1, 'Voluptatibus qui dolore rem quisquam.', '2020-07-09 07:49:54', '2020-07-09 07:49:54'),
(153, 1, 'Perferendis aut non libero eos dolor mollitia.', '2020-07-09 07:49:54', '2020-07-09 07:49:54'),
(154, 1, 'Atque dolor natus eius quod voluptates.', '2020-07-09 07:49:55', '2020-07-09 07:49:55'),
(155, 1, 'Accusantium dolor aspernatur quam est quibusdam iste.', '2020-07-09 07:49:55', '2020-07-09 07:49:55'),
(156, 1, 'Consequatur ducimus nesciunt in et officia quod.', '2020-07-09 07:49:55', '2020-07-09 07:49:55'),
(157, 2, 'Non sint at facere quasi ut provident.', '2020-07-09 07:50:15', '2020-07-09 07:50:15'),
(158, 2, 'Ea eos nesciunt magni delectus fugiat minima animi.', '2020-07-09 07:50:16', '2020-07-09 07:50:16'),
(159, 2, 'Dolores tenetur et tenetur.', '2020-07-09 07:50:16', '2020-07-09 07:50:16'),
(160, 2, 'Quia voluptas pariatur iste sit doloribus.', '2020-07-09 07:50:16', '2020-07-09 07:50:16'),
(161, 2, 'Blanditiis ut mollitia nemo aperiam magni natus nostrum commodi.', '2020-07-09 07:50:17', '2020-07-09 07:50:17'),
(162, 2, 'Ipsa reiciendis sed earum sit.', '2020-07-09 07:50:17', '2020-07-09 07:50:17'),
(163, 2, 'Asperiores dicta nihil et voluptate doloribus aliquam.', '2020-07-09 07:50:18', '2020-07-09 07:50:18'),
(164, 2, 'Tenetur molestiae ad id et.', '2020-07-09 07:50:18', '2020-07-09 07:50:18'),
(165, 2, 'Mollitia voluptas velit quis alias.', '2020-07-09 07:50:18', '2020-07-09 07:50:18'),
(166, 2, 'Fugit voluptatem aspernatur et et.', '2020-07-09 07:50:19', '2020-07-09 07:50:19'),
(167, 3, 'Est voluptate qui saepe quia qui quidem sint.', '2020-07-09 07:50:19', '2020-07-09 07:50:19'),
(168, 3, 'Modi id quam cum est in repudiandae non.', '2020-07-09 07:50:19', '2020-07-09 07:50:19'),
(169, 3, 'Beatae dolores ipsum cum modi ex voluptatem.', '2020-07-09 07:50:20', '2020-07-09 07:50:20'),
(170, 3, 'Laudantium est velit animi eligendi dolore recusandae.', '2020-07-09 07:50:20', '2020-07-09 07:50:20'),
(171, 3, 'Est voluptate quaerat provident quo aut soluta qui.', '2020-07-09 07:50:21', '2020-07-09 07:50:21'),
(172, 3, 'Quia asperiores iusto saepe accusamus qui eveniet.', '2020-07-09 07:50:21', '2020-07-09 07:50:21'),
(173, 3, 'Fugit a a laborum eligendi.', '2020-07-09 07:50:22', '2020-07-09 07:50:22'),
(174, 3, 'Fugit in voluptates laboriosam omnis amet nisi doloribus.', '2020-07-09 07:50:22', '2020-07-09 07:50:22'),
(175, 3, 'Eos tempore et consectetur qui minima.', '2020-07-09 07:50:23', '2020-07-09 07:50:23'),
(176, 3, 'Cupiditate voluptate est sapiente tempore eos.', '2020-07-09 07:50:23', '2020-07-09 07:50:23'),
(177, 4, 'Distinctio dolores sunt ut sint nemo.', '2020-07-09 07:50:24', '2020-07-09 07:50:24'),
(178, 4, 'Distinctio quas ut facere explicabo.', '2020-07-09 07:50:24', '2020-07-09 07:50:24'),
(179, 4, 'Quia corrupti reprehenderit deleniti dolor.', '2020-07-09 07:50:25', '2020-07-09 07:50:25'),
(180, 4, 'Fugit tenetur ab tenetur nulla voluptatem.', '2020-07-09 07:50:25', '2020-07-09 07:50:25'),
(181, 4, 'Aut ipsam at molestias.', '2020-07-09 07:50:26', '2020-07-09 07:50:26'),
(182, 4, 'Eos autem deleniti aut a soluta non.', '2020-07-09 07:50:26', '2020-07-09 07:50:26'),
(183, 4, 'Et quasi sit in consequuntur.', '2020-07-09 07:50:27', '2020-07-09 07:50:27'),
(184, 4, 'Et doloribus quis ut aut praesentium.', '2020-07-09 07:50:27', '2020-07-09 07:50:27'),
(185, 4, 'Aliquid sit quaerat dignissimos.', '2020-07-09 07:50:27', '2020-07-09 07:50:27'),
(186, 4, 'Suscipit dolorum sint rerum sed a provident.', '2020-07-09 07:50:28', '2020-07-09 07:50:28'),
(187, 5, 'Porro iure amet quisquam fuga expedita sit.', '2020-07-09 07:50:28', '2020-07-09 07:50:28'),
(188, 5, 'Mollitia doloribus sed enim.', '2020-07-09 07:50:29', '2020-07-09 07:50:29'),
(189, 5, 'Eos esse impedit aut qui et fuga.', '2020-07-09 07:50:29', '2020-07-09 07:50:29'),
(190, 5, 'Ut porro soluta officiis aspernatur impedit unde.', '2020-07-09 07:50:29', '2020-07-09 07:50:29'),
(191, 5, 'Dolorum minima eum est pariatur fuga.', '2020-07-09 07:50:30', '2020-07-09 07:50:30'),
(192, 5, 'Exercitationem expedita quas ratione vero ullam nihil.', '2020-07-09 07:50:30', '2020-07-09 07:50:30'),
(193, 5, 'Qui accusamus dolore facilis sunt culpa quo non.', '2020-07-09 07:50:30', '2020-07-09 07:50:30'),
(194, 5, 'Itaque architecto ut non.', '2020-07-09 07:50:31', '2020-07-09 07:50:31'),
(195, 5, 'Ea qui occaecati mollitia rerum ratione.', '2020-07-09 07:50:31', '2020-07-09 07:50:31'),
(196, 5, 'Est maiores sint aut aut perferendis harum quia.', '2020-07-09 07:50:31', '2020-07-09 07:50:31'),
(197, 6, 'Nihil officia repudiandae esse quas quia quis eos nam.', '2020-07-09 07:50:32', '2020-07-09 07:50:32'),
(198, 6, 'Fuga provident incidunt amet voluptatum ad omnis.', '2020-07-09 07:50:32', '2020-07-09 07:50:32'),
(199, 6, 'Enim esse et et non.', '2020-07-09 07:50:32', '2020-07-09 07:50:32'),
(200, 6, 'Debitis labore esse voluptate atque asperiores.', '2020-07-09 07:50:33', '2020-07-09 07:50:33'),
(201, 6, 'Consequatur dolore rerum voluptas animi voluptas quas.', '2020-07-09 07:50:33', '2020-07-09 07:50:33'),
(202, 6, 'Voluptatem aut exercitationem est voluptatum rerum.', '2020-07-09 07:50:34', '2020-07-09 07:50:34'),
(203, 6, 'Placeat corporis aut totam sit.', '2020-07-09 07:50:34', '2020-07-09 07:50:34'),
(204, 6, 'Doloremque rerum nostrum provident ut molestiae facere.', '2020-07-09 07:50:34', '2020-07-09 07:50:34'),
(205, 6, 'Qui officiis nam expedita et neque ut.', '2020-07-09 07:50:35', '2020-07-09 07:50:35'),
(206, 6, 'Quaerat cupiditate vitae esse quis.', '2020-07-09 07:50:35', '2020-07-09 07:50:35'),
(207, 7, 'Quia delectus aut aut veniam ipsa.', '2020-07-09 07:50:36', '2020-07-09 07:50:36'),
(208, 7, 'Eum et recusandae et aliquid ea voluptas.', '2020-07-09 07:50:36', '2020-07-09 07:50:36'),
(209, 7, 'Quaerat illo nam iste dolor earum.', '2020-07-09 07:50:36', '2020-07-09 07:50:36'),
(210, 7, 'Illum adipisci tempore necessitatibus asperiores est eum.', '2020-07-09 07:50:37', '2020-07-09 07:50:37'),
(211, 7, 'Et commodi labore in eum.', '2020-07-09 07:50:37', '2020-07-09 07:50:37'),
(212, 7, 'Quia qui qui eos perferendis aliquid.', '2020-07-09 07:50:38', '2020-07-09 07:50:38'),
(213, 7, 'Recusandae necessitatibus architecto explicabo eos aut et aut praesentium.', '2020-07-09 07:50:38', '2020-07-09 07:50:38'),
(214, 7, 'Neque sit consequuntur eum consequatur.', '2020-07-09 07:50:39', '2020-07-09 07:50:39'),
(215, 7, 'Et id voluptas quam possimus quas.', '2020-07-09 07:50:39', '2020-07-09 07:50:39'),
(216, 7, 'Voluptatem tempore dolore qui quos nisi minima asperiores.', '2020-07-09 07:50:40', '2020-07-09 07:50:40'),
(217, 8, 'Sunt mollitia iusto excepturi vel voluptas numquam.', '2020-07-09 07:50:41', '2020-07-09 07:50:41'),
(218, 8, 'Consequuntur porro quasi sed vel doloremque modi.', '2020-07-09 07:50:41', '2020-07-09 07:50:41'),
(219, 8, 'In expedita sint error.', '2020-07-09 07:50:42', '2020-07-09 07:50:42'),
(220, 8, 'Dolor quo ab voluptatem quidem id nihil in.', '2020-07-09 07:50:42', '2020-07-09 07:50:42'),
(221, 8, 'Molestias laudantium officiis soluta sapiente et.', '2020-07-09 07:50:43', '2020-07-09 07:50:43'),
(222, 8, 'Unde neque ut id iste.', '2020-07-09 07:50:44', '2020-07-09 07:50:44'),
(223, 8, 'Sed magnam aliquid esse aut quis repudiandae.', '2020-07-09 07:50:45', '2020-07-09 07:50:45'),
(224, 8, 'Aut dolorem id quidem.', '2020-07-09 07:50:46', '2020-07-09 07:50:46'),
(225, 8, 'Est architecto assumenda non.', '2020-07-09 07:50:46', '2020-07-09 07:50:46'),
(226, 8, 'Consectetur eveniet harum velit officiis voluptas eum incidunt.', '2020-07-09 07:50:47', '2020-07-09 07:50:47'),
(227, 9, 'Iusto et quaerat id aut beatae reprehenderit voluptatum.', '2020-07-09 07:50:47', '2020-07-09 07:50:47'),
(228, 9, 'Voluptatibus quis sed nobis et animi et.', '2020-07-09 07:50:48', '2020-07-09 07:50:48'),
(229, 9, 'Excepturi repellat eos nihil doloribus sed explicabo ut.', '2020-07-09 07:50:48', '2020-07-09 07:50:48'),
(230, 9, 'Laborum aut modi dolor et rerum deleniti.', '2020-07-09 07:50:49', '2020-07-09 07:50:49'),
(231, 9, 'Iusto accusamus velit nulla tempora voluptatem aliquid sint.', '2020-07-09 07:50:49', '2020-07-09 07:50:49'),
(232, 9, 'Praesentium molestiae porro blanditiis debitis numquam corrupti asperiores.', '2020-07-09 07:50:50', '2020-07-09 07:50:50'),
(233, 9, 'Dolorem aperiam deleniti aut sed eveniet et.', '2020-07-09 07:50:50', '2020-07-09 07:50:50'),
(234, 9, 'Qui aliquid debitis itaque atque.', '2020-07-09 07:50:51', '2020-07-09 07:50:51'),
(235, 9, 'Illo quod quae eaque sed.', '2020-07-09 07:50:51', '2020-07-09 07:50:51'),
(236, 9, 'Adipisci ut reprehenderit tempore dolore beatae et quo.', '2020-07-09 07:50:52', '2020-07-09 07:50:52'),
(237, 10, 'Nobis officiis quo dolorem.', '2020-07-09 07:50:53', '2020-07-09 07:50:53'),
(238, 10, 'Corporis molestias vero hic sunt eveniet quibusdam esse.', '2020-07-09 07:50:54', '2020-07-09 07:50:54'),
(239, 10, 'Quibusdam est natus illum cupiditate adipisci earum non.', '2020-07-09 07:50:54', '2020-07-09 07:50:54'),
(240, 10, 'Tempore cupiditate nisi minus repudiandae qui.', '2020-07-09 07:50:55', '2020-07-09 07:50:55'),
(241, 10, 'Nostrum labore qui asperiores vel.', '2020-07-09 07:50:56', '2020-07-09 07:50:56'),
(242, 10, 'Quaerat ut tempore dolorem maiores ut.', '2020-07-09 07:50:57', '2020-07-09 07:50:57'),
(243, 10, 'Doloremque exercitationem quam quaerat accusantium.', '2020-07-09 07:50:57', '2020-07-09 07:50:57'),
(244, 10, 'Quia ducimus fugiat quisquam dicta dolor repudiandae.', '2020-07-09 07:50:57', '2020-07-09 07:50:57'),
(245, 10, 'Commodi saepe voluptatibus voluptatem ipsam.', '2020-07-09 07:50:58', '2020-07-09 07:50:58'),
(246, 10, 'Vero repudiandae voluptatibus facilis ab odio.', '2020-07-09 07:50:58', '2020-07-09 07:50:58'),
(247, 11, 'Sit itaque omnis sit eum rerum.', '2020-07-09 07:50:59', '2020-07-09 07:50:59'),
(248, 11, 'Voluptatem similique veritatis eum rem et cum quaerat.', '2020-07-09 07:50:59', '2020-07-09 07:50:59'),
(249, 11, 'Eos libero sit accusantium expedita ipsum veniam.', '2020-07-09 07:51:00', '2020-07-09 07:51:00'),
(250, 11, 'Aut sed culpa ullam corrupti.', '2020-07-09 07:51:00', '2020-07-09 07:51:00'),
(251, 11, 'Tempore corporis minus culpa.', '2020-07-09 07:51:01', '2020-07-09 07:51:01'),
(252, 11, 'Quod fugit aliquam adipisci ex.', '2020-07-09 07:51:01', '2020-07-09 07:51:01'),
(253, 11, 'Et atque sed dignissimos consequuntur architecto libero.', '2020-07-09 07:51:02', '2020-07-09 07:51:02'),
(254, 11, 'Qui aut et ducimus reiciendis.', '2020-07-09 07:51:02', '2020-07-09 07:51:02'),
(255, 11, 'Aliquam qui quos voluptate eius velit delectus nam consectetur.', '2020-07-09 07:51:03', '2020-07-09 07:51:03'),
(256, 11, 'Molestias corrupti itaque doloremque sint velit totam tempora.', '2020-07-09 07:51:03', '2020-07-09 07:51:03'),
(257, 12, 'Sed quis facere nisi qui.', '2020-07-09 07:51:04', '2020-07-09 07:51:04'),
(258, 12, 'Et ipsum earum consequatur occaecati ut illum rerum.', '2020-07-09 07:51:04', '2020-07-09 07:51:04'),
(259, 12, 'Non iure inventore commodi eos ea.', '2020-07-09 07:51:05', '2020-07-09 07:51:05'),
(260, 12, 'Iure doloremque iste voluptatem vel a.', '2020-07-09 07:51:05', '2020-07-09 07:51:05'),
(261, 12, 'Temporibus quae totam ipsa velit quaerat cum quaerat voluptatum.', '2020-07-09 07:51:06', '2020-07-09 07:51:06'),
(262, 12, 'Qui aut nihil quia quo repellat eum ut.', '2020-07-09 07:51:06', '2020-07-09 07:51:06'),
(263, 12, 'Repellendus non tempore quas suscipit autem et.', '2020-07-09 07:51:07', '2020-07-09 07:51:07'),
(264, 12, 'Quam omnis necessitatibus officiis est earum nulla corporis.', '2020-07-09 07:51:07', '2020-07-09 07:51:07'),
(265, 12, 'Aliquid aliquid molestiae eius numquam et consequatur et eum.', '2020-07-09 07:51:07', '2020-07-09 07:51:07'),
(266, 12, 'Dignissimos commodi sint quae qui distinctio.', '2020-07-09 07:51:08', '2020-07-09 07:51:08'),
(267, 13, 'Tempore sint ut natus est minus amet.', '2020-07-09 07:51:08', '2020-07-09 07:51:08'),
(268, 13, 'Voluptatibus sint sed temporibus asperiores.', '2020-07-09 07:51:09', '2020-07-09 07:51:09'),
(269, 13, 'Omnis occaecati itaque dolores vitae architecto animi.', '2020-07-09 07:51:09', '2020-07-09 07:51:09'),
(270, 13, 'Voluptates dicta sit unde sapiente et aliquid.', '2020-07-09 07:51:10', '2020-07-09 07:51:10'),
(271, 13, 'Rerum aspernatur nam qui.', '2020-07-09 07:51:10', '2020-07-09 07:51:10'),
(272, 13, 'Illum porro vitae suscipit eligendi voluptatibus et.', '2020-07-09 07:51:10', '2020-07-09 07:51:10'),
(273, 13, 'Tenetur nesciunt est rem molestiae laudantium.', '2020-07-09 07:51:11', '2020-07-09 07:51:11'),
(274, 13, 'Magnam adipisci temporibus sequi sed totam corrupti.', '2020-07-09 07:51:11', '2020-07-09 07:51:11'),
(275, 13, 'Officiis sunt molestiae veniam laudantium mollitia voluptatibus voluptate fugit.', '2020-07-09 07:51:12', '2020-07-09 07:51:12'),
(276, 13, 'Et ad vero blanditiis est quo est ut aut.', '2020-07-09 07:51:12', '2020-07-09 07:51:12'),
(277, 14, 'Voluptatem omnis accusantium ipsa exercitationem.', '2020-07-09 07:51:13', '2020-07-09 07:51:13'),
(278, 14, 'Fuga explicabo numquam voluptatem minus.', '2020-07-09 07:51:13', '2020-07-09 07:51:13'),
(279, 14, 'At molestias porro reprehenderit delectus omnis tempore.', '2020-07-09 07:51:13', '2020-07-09 07:51:13'),
(280, 14, 'Non nemo occaecati laudantium fuga.', '2020-07-09 07:51:14', '2020-07-09 07:51:14'),
(281, 14, 'Quidem quam minima aspernatur incidunt dolores.', '2020-07-09 07:51:14', '2020-07-09 07:51:14'),
(282, 14, 'Qui accusamus qui suscipit magnam dolorem ut sit.', '2020-07-09 07:51:15', '2020-07-09 07:51:15'),
(283, 14, 'Expedita enim accusantium exercitationem quis.', '2020-07-09 07:51:15', '2020-07-09 07:51:15'),
(284, 14, 'Facere quibusdam quia autem qui.', '2020-07-09 07:51:15', '2020-07-09 07:51:15'),
(285, 14, 'Sed architecto vitae rerum eos dolorum.', '2020-07-09 07:51:16', '2020-07-09 07:51:16'),
(286, 14, 'Provident quis esse animi aliquid.', '2020-07-09 07:51:16', '2020-07-09 07:51:16'),
(287, 15, 'Saepe necessitatibus quia expedita et atque recusandae.', '2020-07-09 07:51:17', '2020-07-09 07:51:17'),
(288, 15, 'Iure ratione numquam quia debitis velit incidunt et.', '2020-07-09 07:51:17', '2020-07-09 07:51:17'),
(289, 15, 'Quas qui voluptatum velit et magnam provident beatae.', '2020-07-09 07:51:18', '2020-07-09 07:51:18'),
(290, 15, 'Qui aut aut ea numquam minima.', '2020-07-09 07:51:18', '2020-07-09 07:51:18'),
(291, 15, 'Commodi quis explicabo et.', '2020-07-09 07:51:18', '2020-07-09 07:51:18'),
(292, 15, 'Blanditiis ad explicabo voluptas et voluptatem quasi.', '2020-07-09 07:51:19', '2020-07-09 07:51:19'),
(293, 15, 'Non iste velit vel non facilis quod.', '2020-07-09 07:51:19', '2020-07-09 07:51:19'),
(294, 15, 'Dolor fugit harum consectetur praesentium quas.', '2020-07-09 07:51:20', '2020-07-09 07:51:20'),
(295, 15, 'Accusamus consequatur laborum recusandae rerum nihil.', '2020-07-09 07:51:20', '2020-07-09 07:51:20'),
(296, 15, 'Explicabo ea repellendus sapiente ratione perspiciatis sunt.', '2020-07-09 07:51:20', '2020-07-09 07:51:20'),
(297, 16, 'Corporis sunt necessitatibus voluptatem ut saepe animi aut.', '2020-07-09 07:51:21', '2020-07-09 07:51:21'),
(298, 16, 'Adipisci voluptate aut ad vel quia odio facilis.', '2020-07-09 07:51:21', '2020-07-09 07:51:21'),
(299, 16, 'Sint consequuntur et molestias itaque et id unde.', '2020-07-09 07:51:21', '2020-07-09 07:51:21'),
(300, 16, 'Maxime ut est unde fuga.', '2020-07-09 07:51:22', '2020-07-09 07:51:22'),
(301, 16, 'Dicta nam quae doloribus harum inventore.', '2020-07-09 07:51:22', '2020-07-09 07:51:22'),
(302, 16, 'Nesciunt aperiam quasi ullam veniam.', '2020-07-09 07:51:23', '2020-07-09 07:51:23'),
(303, 16, 'Ratione consectetur et cupiditate et voluptatem reiciendis.', '2020-07-09 07:51:23', '2020-07-09 07:51:23'),
(304, 16, 'Doloremque est ut rerum qui a quaerat.', '2020-07-09 07:51:23', '2020-07-09 07:51:23'),
(305, 16, 'Culpa neque in sed ea ut et enim sunt.', '2020-07-09 07:51:24', '2020-07-09 07:51:24'),
(306, 16, 'Ipsa consequatur eos quia ut deserunt iure.', '2020-07-09 07:51:24', '2020-07-09 07:51:24'),
(307, 17, 'Occaecati amet rerum quo voluptatem est.', '2020-07-09 07:51:25', '2020-07-09 07:51:25'),
(308, 17, 'Nulla aliquam facilis placeat deleniti.', '2020-07-09 07:51:26', '2020-07-09 07:51:26'),
(309, 17, 'Officia quasi est quae excepturi consequatur eius animi.', '2020-07-09 07:51:26', '2020-07-09 07:51:26'),
(310, 17, 'Cupiditate et vitae quasi nesciunt incidunt ut recusandae.', '2020-07-09 07:51:27', '2020-07-09 07:51:27'),
(311, 17, 'Ut est tempora molestiae omnis.', '2020-07-09 07:51:27', '2020-07-09 07:51:27'),
(312, 17, 'Dignissimos ut ducimus nisi voluptate.', '2020-07-09 07:51:28', '2020-07-09 07:51:28'),
(313, 17, 'Autem culpa autem rerum ullam recusandae ipsum quibusdam.', '2020-07-09 07:51:28', '2020-07-09 07:51:28'),
(314, 17, 'Saepe quae voluptatem ea et sed.', '2020-07-09 07:51:29', '2020-07-09 07:51:29'),
(315, 17, 'Dolor eius consectetur vitae placeat consequatur veritatis.', '2020-07-09 07:51:29', '2020-07-09 07:51:29'),
(316, 17, 'Adipisci totam quam amet porro veniam.', '2020-07-09 07:51:29', '2020-07-09 07:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
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

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'jahedhasan', 'Jahed Hasan', 'avatars/70iXn6VTn4sMof8hVE9fTn3u0xp6EqcYVlPskrEI.jpeg', 'jahed.cse1@gmail.com', NULL, '$2y$10$PWM/eDnlFX.TuZM6ihFdpO5w6lHwqAyH8.e9E3j7mpshu5Usfujx2', NULL, '2020-07-08 22:41:41', '2020-07-09 05:08:34'),
(3, 'araceli.dickens', 'Santa Larson', NULL, 'brock.ullrich@example.org', '2020-07-09 05:42:18', '$2y$10$c13LVaSIsKl2rVziRkCTBemxTotS.TuQNi9SRg2DqJZM9Tdyf4PuK', 'R8L0bs7s0n', '2020-07-09 05:42:19', '2020-07-09 05:42:19'),
(4, 'schmidt.norval', 'Tre Stroman DVM', NULL, 'treutel.lucy@example.net', '2020-07-09 05:42:18', '$2y$10$ErntPub7Kf/7iGDEL94o9OmaRTwG8mhfgdDT37P20SonOPUiYf6NK', 'JNtXoLqDTG', '2020-07-09 05:42:20', '2020-07-09 05:42:20'),
(5, 'clara54', 'Jovani Douglas', NULL, 'grimes.shana@example.net', '2020-07-09 05:42:18', '$2y$10$iwbF5T7D.31lFBa.ltVez.z2jLGhB7FHn6cWNHzWNR7mlxNxeQDky', 'BIT83FakWA', '2020-07-09 05:42:20', '2020-07-09 05:42:20'),
(6, 'berge.stefanie', 'Keanu Emard', NULL, 'marcia.zemlak@example.org', '2020-07-09 05:42:18', '$2y$10$CGfIDFAHwWwVCkBJcbGNROzp/Fbh4ngymfOdmMWx7SUlOxBR/6kR.', 'EZ9qysOoKA', '2020-07-09 05:42:21', '2020-07-09 05:42:21'),
(7, 'tkuvalis', 'Lurline Witting Sr.', NULL, 'emard.angelo@example.org', '2020-07-09 05:42:18', '$2y$10$tM.pBEz/gkTHdhCfzlSYyOAdRBvgUQLYnzZ6jjlJUZAZnEensFRE.', 'HryyWU5Zff', '2020-07-09 05:42:21', '2020-07-09 05:42:21'),
(8, 'aurelio.waelchi', 'Elyssa Pacocha', NULL, 'fahey.mable@example.org', '2020-07-09 05:42:18', '$2y$10$MLgZ1fP5uWHTKX66HQx4ZexMLuhPBREj7/j89l2cnOzCBA2MnkEha', 'rBYmL51t87', '2020-07-09 05:42:21', '2020-07-09 05:42:21'),
(9, 'viola58', 'Lois Nikolaus', NULL, 'west.larue@example.net', '2020-07-09 05:42:19', '$2y$10$ANV0GEtb/4h5CIwURn6f3OPRcHIP4emW6Qq5Ajywj.00zd3lv5M0y', 'OPj0BjYhRN', '2020-07-09 05:42:22', '2020-07-09 05:42:22'),
(10, 'hosea60', 'Demario Schultz', NULL, 'kimberly.yost@example.com', '2020-07-09 05:42:19', '$2y$10$W.Lhe40DAPX8iYjchz1sEOEzzVf5UTU1kvv5t/BDvWO1GVBHtvF5m', 'qeIcCpANrg', '2020-07-09 05:42:22', '2020-07-09 05:42:22'),
(11, 'zackery92', 'Tony Haley', NULL, 'jamison24@example.net', '2020-07-09 05:42:19', '$2y$10$qEzcAyKavlWsPTRVwcr4Gu9MJSmEqlyUIwr6o7H0DMUvFWRQFiWjm', 'al90CAsYPJ', '2020-07-09 05:42:22', '2020-07-09 05:42:22'),
(12, 'goldner.myriam', 'Johnpaul Yundt', NULL, 'lura86@example.net', '2020-07-09 05:42:19', '$2y$10$kzNfs2.CeZHKnQUH9C8dXOGihPnoOADXZMlFE2Lqa9dVej7HDpyB6', 'VlKkWYMaJU', '2020-07-09 05:42:23', '2020-07-09 05:42:23'),
(13, 'krau', 'Mrs. Reanna Goodwin', NULL, 'evangeline92@example.com', '2020-07-09 05:42:19', '$2y$10$TsXsmb9R0yHCCjOUf8VdPu1oBXL6jBJ2fvNnRNdJ8KPeUdeZOUr/m', '1BbJY7sU7L', '2020-07-09 05:42:23', '2020-07-09 05:42:23'),
(14, 'akerluke', 'Prof. Herman Armstrong II', NULL, 'wryan@example.net', '2020-07-09 05:42:19', '$2y$10$cJYyPp/G87JSYLRaySFmhe8QoTWplRwSAK.h.KXOAUInXlkFRM2vG', 'Ws2Y91l1JJ', '2020-07-09 05:42:23', '2020-07-09 05:42:23'),
(15, 'grover37', 'Dr. Palma Volkman II', NULL, 'demario.cummerata@example.net', '2020-07-09 05:42:19', '$2y$10$zNE2s7SgtAXp3wyLEIq/TOd76wbiwQGu4.8OaZzLZ.h9pIXps87Y6', 'ZIOol71oo5', '2020-07-09 05:42:24', '2020-07-09 05:42:24'),
(16, 'vkub', 'Prof. Gust Cremin', NULL, 'wilfredo13@example.org', '2020-07-09 05:42:19', '$2y$10$FKVB7hkag9GV/9B7Zhk9gebKPirGZmKU9jY56Yl8FNu7O0owTFZ1O', 'k6wyEcUfZy', '2020-07-09 05:42:24', '2020-07-09 05:42:24'),
(17, 'kaci.kovacek', 'Esperanza Johnston', NULL, 'camilla.kuhic@example.org', '2020-07-09 05:42:19', '$2y$10$9Zgy2RwwT5T7s22BdPHD8OJfQ7KYNIeE72cASHS55UeE/elWVjrJy', '0N53CJK9zD', '2020-07-09 05:42:24', '2020-07-09 05:42:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_tweet_id_foreign` (`tweet_id`);

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
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
