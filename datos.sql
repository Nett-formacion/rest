-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 28-01-2024 a las 19:22:40
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
                               `id` bigint UNSIGNED NOT NULL,
                               `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
                               `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
                               `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                               `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                               `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
                              `id` int UNSIGNED NOT NULL,
                              `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
                                                          (1, '2014_10_12_000000_create_users_table', 1),
                                                          (2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
                                                          (3, '2019_08_19_000000_create_failed_jobs_table', 1),
                                                          (4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
                                                          (5, '2024_01_27_070950_create_projects_table', 1),
                                                          (6, '2024_01_27_080949_create_teachers_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
                                         `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
                                          `id` bigint UNSIGNED NOT NULL,
                                          `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                          `tokenable_id` bigint UNSIGNED NOT NULL,
                                          `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                          `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
                                          `abilities` text COLLATE utf8mb4_unicode_ci,
                                          `last_used_at` timestamp NULL DEFAULT NULL,
                                          `expires_at` timestamp NULL DEFAULT NULL,
                                          `created_at` timestamp NULL DEFAULT NULL,
                                          `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
                            `id` bigint UNSIGNED NOT NULL,
                            `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `horas` int NOT NULL,
                            `user_id` bigint UNSIGNED NOT NULL,
                            `teacher_id` bigint UNSIGNED NOT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `titulo`, `web`, `horas`, `user_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
                                                                                                                 (1, 'Plataforma de Análisis SEO', 'http://www.collins.com/veniam-delectus-ex-impedit-est.html', 212, 1, 6, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (2, 'Plataforma de Inteligencia de Negocios', 'http://www.keeling.com/placeat-dolor-aut-exercitationem-et.html', 113, 1, 3, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (3, 'Aplicación de Planificación Financiera', 'http://www.daniel.com/ea-hic-quis-consectetur-rerum-harum', 160, 1, 6, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (4, 'Sistema de Reservas Online', 'http://eichmann.biz/voluptatum-velit-occaecati-rerum-quo-iure', 234, 2, 10, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (5, 'Portal de Comercio Social', 'http://www.waelchi.com/labore-tenetur-nesciunt-reprehenderit.html', 169, 3, 6, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (6, 'Portal de Trabajo Freelance', 'https://block.com/et-doloribus-nobis-laborum-beatae-enim-non.html', 194, 4, 3, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (7, 'Plataforma de Gestión de Recursos Humanos', 'https://prohaska.com/veritatis-velit-blanditiis-laborum-est.html', 208, 5, 7, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (8, 'Plataforma de Streaming de Video', 'http://www.heaney.com/nobis-nisi-ut-et-libero-dolore', 142, 5, 9, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (9, 'Herramienta de Gestión de Inventarios', 'http://kertzmann.com/omnis-et-omnis-qui-animi-et-aliquid.html', 226, 6, 4, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (10, 'Sistema de Votación Electrónica', 'http://www.bergnaum.org/tempora-ullam-qui-quibusdam-impedit-quaerat-eaque-nobis-necessitatibus.html', 128, 7, 2, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (11, 'Diseño Web Responsivo', 'http://www.christiansen.com/voluptatem-quidem-non-autem-sapiente-tenetur', 104, 8, 3, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (12, 'Plataforma E-commerce', 'http://www.hettinger.com/', 229, 8, 4, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (13, 'Servicio de Análisis de Datos en la Nube', 'http://www.kerluke.com/sit-qui-voluptatem-facilis-et-rem-omnis', 157, 9, 5, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (14, 'Herramienta de Seguimiento de Errores', 'http://okuneva.biz/et-laboriosam-est-nihil-quo-consequuntur-suscipit', 249, 9, 8, '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                 (15, 'Aplicación de Encuestas en Línea', 'http://www.schowalter.com/omnis-amet-voluptate-dolores-expedita', 132, 10, 4, '2024-01-28 19:22:22', '2024-01-28 19:22:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
                            `id` bigint UNSIGNED NOT NULL,
                            `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `nombre`, `email`, `created_at`, `updated_at`) VALUES
                                                                                 (1, 'Sr. Rayan Almaráz', 'alexia.granado@example.com', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (2, 'Sergio Agosto', 'esalinas@example.net', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (3, 'Isabel Alaniz', 'brivero@example.org', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (4, 'Sr. Aleix Soto Segundo', 'mateo93@example.org', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (5, 'Rubén Uribe', 'rocio00@example.org', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (6, 'Erik Alfonso', 'ainara.delgado@example.org', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (7, 'D. Juan José Córdova Segundo', 'nerea13@example.org', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (8, 'Sr. Adrián Ureña', 'lucero.yolanda@example.org', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (9, 'Paula Tejada', 'leo84@example.net', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                 (10, 'Ing. Carla Guevara Tercero', 'escamilla.jaime@example.com', '2024-01-28 19:22:22', '2024-01-28 19:22:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
                         `id` bigint UNSIGNED NOT NULL,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
                                                                                                                               (1, 'Ing. Raquel Galindo', 'ian.valencia@example.net', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', '559JoxVsHV', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (2, 'Aitor Caballero', 'qpuig@example.org', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', '6RV4BpiZKB', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (3, 'Lic. Rodrigo Ruelas', 'carbajal.mariacarmen@example.com', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', '1oQKe6lpgx', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (4, 'María Carmen Ruelas', 'deleon.alex@example.net', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', '3Cs3uZXWdz', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (5, 'Ing. Gabriel Caraballo Hijo', 'martin11@example.net', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', 'ikSIAZmSEs', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (6, 'Francisco Javier Tapia', 'nicolas10@example.com', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', 'PY82oohGge', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (7, 'D. Santiago Quesada Tercero', 'cabrera.santiago@example.net', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', 'PfS2pd4CN4', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (8, 'Jan Zamudio Tercero', 'mmaldonado@example.net', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', 'ZRAJWzYeaz', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (9, 'Celia Orozco', 'jcollazo@example.net', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', 'cHh7adxwpn', '2024-01-28 19:22:22', '2024-01-28 19:22:22'),
                                                                                                                               (10, 'Gonzalo Trujillo', 'ncortes@example.org', '2024-01-28 19:22:22', '$2y$12$mFRbHu4DdAZrOFtSvhVRze90xzi0/y9co4BX2BWRIsAEH.Rscu2iC', '3g246liuqJ', '2024-01-28 19:22:22', '2024-01-28 19:22:22');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
    ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
    ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_teacher_id_foreign` (`teacher_id`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
    ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
    MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
    MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
    ADD CONSTRAINT `projects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
