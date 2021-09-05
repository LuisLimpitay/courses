-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2021 a las 10:34:13
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `courses_platzi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kamron', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(2, 'Keyon', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(3, 'Claude', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(4, 'Narciso', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(5, 'Ola', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(6, 'Kasandra', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(7, 'Diego', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(8, 'Lexie', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(9, 'Delmer', '2021-09-05 05:43:18', '2021-09-05 05:43:18'),
(10, 'Lura', '2021-09-05 05:43:19', '2021-09-05 05:43:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `name`, `slug`, `image`, `description`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ciara', 'ciara', 'https://via.placeholder.com/1280x720.png/0077aa?text=et', 'Accusantium id repudiandae aperiam aperiam earum eligendi porro. Culpa et esse incidunt voluptatem voluptas pariatur. Modi ea magni dolor veniam. Dolor ipsa vero quisquam. Et accusantium earum et repudiandae. Qui perspiciatis inventore maxime. Aut consequuntur ratione distinctio eveniet. Esse qui tempore ut praesentium id nesciunt deserunt fuga.', 5, 7, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(2, 'Arlie', 'arlie', 'https://via.placeholder.com/1280x720.png/0055bb?text=officiis', 'Quas rem ratione quis et dolore. Voluptas aperiam debitis sit modi sit. Et ipsum excepturi qui corporis ipsum. Qui odio nulla itaque est nulla iusto. Consectetur quod neque ratione. Ad nihil in nobis. Magnam sed ex adipisci nesciunt ea et hic. Rerum vitae sed adipisci ea omnis beatae.', 6, 2, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(3, 'Sammy', 'sammy', 'https://via.placeholder.com/1280x720.png/00bbee?text=eos', 'Et quod dolorum rem accusantium et facere. Enim molestias est est qui non accusamus aliquid necessitatibus. Rem dolor vel saepe. Quia impedit voluptas consequatur quae. Nihil neque omnis eligendi fugiat. Dolorum delectus ad voluptatibus molestias dolorum dicta. Ut beatae qui aut. Deserunt ut voluptatem adipisci ea. Dolores dolores quis quis quo. Voluptatibus voluptatibus saepe quis odio fugit.', 6, 10, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(4, 'Maxine', 'maxine', 'https://via.placeholder.com/1280x720.png/008855?text=sed', 'Aperiam voluptatibus ipsa dolorem consectetur pariatur autem ut suscipit. Ut eos fugit saepe. Cumque molestiae fuga cum et vitae assumenda et vitae. Totam quidem id distinctio aut sapiente repudiandae officia. Corporis tempore fugit velit enim harum nisi ea. Qui nemo rerum laboriosam exercitationem molestiae ut. Aperiam alias itaque totam omnis et non.', 6, 3, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(5, 'Terence', 'terence', 'https://via.placeholder.com/1280x720.png/00ccbb?text=quibusdam', 'Consequatur vitae quisquam quaerat. Aut minus quia ut corrupti atque provident. Voluptatem unde et mollitia aliquid at et saepe. Modi consectetur sint saepe ex eum animi. Fuga nostrum consectetur cumque. Facilis aperiam iure dolorem voluptatibus. Delectus ullam maxime provident numquam aut occaecati. Earum delectus et ea maiores at voluptas occaecati quaerat.', 1, 9, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(6, 'Natasha', 'natasha', 'https://via.placeholder.com/1280x720.png/00aaaa?text=quis', 'Est qui dolor aperiam quas est. Harum repellat velit labore dignissimos. Placeat nihil culpa nam dolorem id. Ab nihil deleniti omnis. Nihil facilis nihil delectus. Explicabo molestias assumenda voluptas quos. Illo ab ea sit est. Qui id qui qui molestiae vitae. Repudiandae vel autem nostrum.', 5, 1, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(7, 'Audreanne', 'audreanne', 'https://via.placeholder.com/1280x720.png/00aacc?text=consequatur', 'Natus nostrum temporibus voluptas nulla saepe reiciendis ipsum. Eos voluptates nobis dolor et est ut voluptatem. Voluptas excepturi debitis sint beatae. Qui consequatur debitis eos optio expedita reiciendis. Ut sit repellendus quaerat molestias est aut. Reprehenderit rerum ut et ratione quis. Temporibus ex soluta id eligendi illum et et.', 6, 2, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(8, 'Johnnie', 'johnnie', 'https://via.placeholder.com/1280x720.png/00ccaa?text=et', 'Vel qui amet et ipsum. Et mollitia necessitatibus eos dolore. Voluptas facere est aut reiciendis sit. Voluptatibus rerum officiis quisquam accusantium eos quas voluptatem. Qui eos molestiae perferendis sint sequi voluptate. Est fugit exercitationem odit sed repellendus quia voluptatem. Doloribus vel consequatur occaecati.', 3, 4, '2021-09-05 05:43:19', '2021-09-05 05:43:19'),
(9, 'Wallace', 'wallace', 'https://via.placeholder.com/1280x720.png/002200?text=accusantium', 'Blanditiis dolorem blanditiis ea quod. Repellat aut nulla ut harum voluptas rerum. Consectetur et dolore minus illum vel quam est. Laboriosam impedit qui ea incidunt numquam quo et. Minima itaque deleniti eveniet facilis corporis dolore. Recusandae dolores fugit earum corporis. Et illo vel aut. Sit qui voluptatibus fugiat.', 1, 1, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(10, 'Anderson', 'anderson', 'https://via.placeholder.com/1280x720.png/00bbff?text=dolorum', 'Et nisi quam autem ut. Laudantium voluptas et blanditiis pariatur voluptatem ex. Et eveniet quasi dignissimos odit incidunt. Aut aspernatur praesentium tenetur maxime fuga omnis doloribus. Saepe ipsum dolore alias at neque quidem et. Consequatur beatae quia aut nihil. Quaerat quo et eos facilis natus molestiae esse. Non laboriosam rem error id qui voluptatum. Asperiores qui perspiciatis ea est.', 2, 7, '2021-09-05 05:43:20', '2021-09-05 05:43:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_09_02_151834_create_sessions_table', 1),
(7, '2021_09_02_152821_create_categories_table', 1),
(8, '2021_09_02_152822_create_courses_table', 1),
(9, '2021_09_02_153546_create_posts_table', 1),
(10, '2021_09_05_035931_add_perfil_column_to_users_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `name`, `free`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Officia earum autem non quae aliquid harum voluptatum dolorem.', 1, 10, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(2, 'Et incidunt reiciendis dolor ut enim praesentium quibusdam.', 0, 3, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(3, 'Unde non doloribus hic blanditiis dolores.', 0, 9, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(4, 'Eum omnis nihil quod possimus qui necessitatibus.', 0, 4, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(5, 'Quisquam vel repudiandae ducimus sit velit quam quae.', 0, 5, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(6, 'Voluptas distinctio voluptas cupiditate asperiores incidunt sint ex.', 0, 6, '2021-09-05 05:43:20', '2021-09-05 05:43:20'),
(7, 'Cupiditate quis excepturi cum est.', 0, 6, '2021-09-05 05:43:21', '2021-09-05 05:43:21'),
(8, 'Iure magnam eius culpa nihil.', 1, 7, '2021-09-05 05:43:21', '2021-09-05 05:43:21'),
(9, 'Nostrum ea ut repudiandae est voluptatem sit.', 0, 7, '2021-09-05 05:43:21', '2021-09-05 05:43:21'),
(10, 'Facilis minus sed eius.', 1, 4, '2021-09-05 05:43:21', '2021-09-05 05:43:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('i7RNTLvCSnjxDDvj0AlTIkIVjTWFqKFofuAAM2sd', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRHZ6M2V3MzJRZGprc0dkWTJhcTdYRGZ5cG9KcENCZk9BeExTcXFVQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c3VhcmlvcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ0RFZVVFBSdzh0L1N2ZE41c0lWcXl1MGpOMXNyUEQwZ3dsTmxEZVdwdHJpVlR3akg1UE1PeSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNERWVVRQUnc4dC9TdmRONXNJVnF5dTBqTjFzclBEMGd3bE5sRGVXcHRyaVZUd2pINVBNT3kiO30=', 1630826414),
('ohTHfj2egv0btfP0hvPmSc1jB5w1TV14SKvhKp5j', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSWxwRGd0ZlNpVk04QzhhREl4M3VNQktmY3VGSGp6YUloSERvWWRraSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c3VhcmlvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ0RFZVVFBSdzh0L1N2ZE41c0lWcXl1MGpOMXNyUEQwZ3dsTmxEZVdwdHJpVlR3akg1UE1PeSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNERWVVRQUnc4dC9TdmRONXNJVnF5dTBqTjFzclBEMGd3bE5sRGVXcHRyaVZUd2pINVBNT3kiO30=', 1630829479);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'estudiante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `perfil`) VALUES
(1, 'Luis Limpitay', 'admin@gmail.com', NULL, '$2y$10$8Tv1nijsm/eQSQOCscX15uXtwrXuGmMXHONYeLYefRd.3Ltkn14SW', NULL, NULL, NULL, NULL, NULL, '2021-09-05 05:43:17', '2021-09-05 05:43:17', 'administrador'),
(2, 'Dr. General Kling', 'murray.brant@example.org', '2021-09-05 05:43:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'wX9WktUxKU', NULL, NULL, '2021-09-05 05:43:17', '2021-09-05 11:04:14', 'estudiante'),
(3, 'Jesse Williamson DVM', 'vivienne39@example.com', '2021-09-05 05:43:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LyZ3UayDgg', NULL, NULL, '2021-09-05 05:43:17', '2021-09-05 05:43:17', 'estudiante'),
(4, 'Marge Bahringer', 'don97@example.net', '2021-09-05 05:43:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zWokeXUHi9', NULL, NULL, '2021-09-05 05:43:17', '2021-09-05 05:43:17', 'estudiante'),
(5, 'Jamel King', 'kaylie.hansen@example.com', '2021-09-05 05:43:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'okXwMJiW3k', NULL, NULL, '2021-09-05 05:43:17', '2021-09-05 11:09:46', 'tutor'),
(6, 'Javon Kovancek', 'jordi39@example.com', '2021-09-05 05:43:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TXSyGpanJO', NULL, NULL, '2021-09-05 05:43:17', '2021-09-05 10:45:09', 'estudiante'),
(7, 'Cristian', 'bqfidel16@gmail.com', NULL, '$2y$10$4DVUTPRw8t/SvdN5sIVqyu0jN1srPD0gwlNlDeWptriVTwjH5PMOy', NULL, NULL, NULL, NULL, NULL, '2021-09-05 06:37:54', '2021-09-05 06:37:54', 'administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_foreign` (`user_id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
