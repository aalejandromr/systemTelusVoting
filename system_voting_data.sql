-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-02-2017 a las 04:58:04
-- Versión del servidor: 5.7.17
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `online_voting_site`
--

--
-- Volcado de datos para la tabla `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '3pOJ0A5jF9pIQVwx1QTyoI0BJ0tAKJZe', 1, '2017-02-26 00:37:08', '2017-02-26 00:37:08', '2017-02-26 00:37:08'),
(2, 3, 'sXl6C1aCMVrcyXA1BCrtcDGPa244pJrE', 1, '2017-02-26 00:38:18', '2017-02-26 00:38:18', '2017-02-26 00:38:18'),
(3, 4, 'uq8kWdzW8WljuxROAUNDuwoS8Q0sNKBG', 1, '2017-02-26 00:39:49', '2017-02-26 00:39:49', '2017-02-26 00:39:49'),
(4, 5, 'aaZUevWyseSivMg74oXhIUp61KCmYyFU', 1, '2017-02-26 02:21:12', '2017-02-26 02:21:12', '2017-02-26 02:21:12'),
(5, 6, 'iA7x0VILHHa0BOljBmpoHxdQ0pkKvpWt', 1, '2017-02-26 22:53:00', '2017-02-26 22:53:00', '2017-02-26 22:53:00'),
(6, 7, '5lChSbZhZpu2YAB0c1DUQmXrJ5ASyNF9', 1, '2017-02-26 22:57:10', '2017-02-26 22:57:10', '2017-02-26 22:57:10'),
(7, 8, '5t8aCS0RrncrBGNWwrDKXevJ579bTTns', 1, '2017-02-26 22:59:43', '2017-02-26 22:59:43', '2017-02-26 22:59:43'),
(8, 9, 'm8Q84VYJC6DvBkGBwbGmeYxL0EqJUTtH', 1, '2017-02-26 23:01:43', '2017-02-26 23:01:43', '2017-02-26 23:01:43'),
(9, 10, 'yuNf1sEnNiMmUa1qbu25umKxOrokMgca', 1, '2017-02-27 01:23:45', '2017-02-27 01:23:45', '2017-02-27 01:23:45'),
(10, 11, 'kvdmfnAXB8GF2WlAACjjEc8EwZG9cBQL', 1, '2017-02-27 01:24:27', '2017-02-27 01:24:27', '2017-02-27 01:24:27');

--
-- Volcado de datos para la tabla `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `created_at`, `updated_at`, `committe_id`) VALUES
(1, 'Eduardo', NULL, NULL, 3),
(2, 'Diego', NULL, NULL, 4),
(3, 'Alejandro', NULL, NULL, 5),
(4, 'Regino', NULL, NULL, 6),
(5, 'Alejandro 2', NULL, NULL, 3),
(6, 'Katherine', NULL, NULL, 7),
(7, 'Ernesto', NULL, NULL, 8),
(8, 'Fabiola', NULL, NULL, 9),
(9, 'Cristina', NULL, NULL, 10),
(10, 'Vladimir', NULL, NULL, 11),
(11, 'Gabriela', '2017-02-26 06:00:00', NULL, 7),
(12, 'Kenia', NULL, NULL, 8),
(13, 'Rosa', NULL, NULL, 9),
(14, 'Liliana', NULL, NULL, 10),
(15, 'Kely', NULL, NULL, 4),
(16, 'Melannie', NULL, NULL, 5);

--
-- Volcado de datos para la tabla `committes`
--

INSERT INTO `committes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'ARENA', NULL, NULL),
(4, 'FMLN', NULL, NULL),
(5, 'PDC', NULL, NULL),
(6, 'PCN', NULL, NULL),
(7, 'ARENA (Guatemala)', NULL, NULL),
(8, 'FMLN (Guatemala)', NULL, NULL),
(9, 'PDC (Guatemala)', NULL, NULL),
(10, 'PCN (Guatemala)', NULL, NULL),
(11, 'PESCADITO', NULL, NULL);

--
-- Volcado de datos para la tabla `committe_departments`
--

INSERT INTO `committe_departments` (`id`, `committe_id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 4, 1, NULL, NULL),
(3, 5, 1, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 7, 3, NULL, NULL),
(7, 7, 4, NULL, NULL),
(8, 8, 3, NULL, NULL),
(9, 8, 4, NULL, NULL),
(10, 9, 3, NULL, NULL),
(11, 10, 3, NULL, NULL);

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'El Salvador'),
(2, 'Guatemala');

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Cabañas', 1, NULL, NULL),
(2, 'San Salvador', 1, NULL, NULL),
(3, 'Peten', 2, NULL, NULL),
(4, 'Totonatican', 2, NULL, NULL);

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2017_02_25_180040_country_table', 2),
(3, '2017_02_25_180332_create_country_table', 3),
(4, '2017_02_25_180446_add_country_to_users', 4),
(5, '2017_02_25_200755_add_documment_id_to_users', 5),
(6, '2017_02_25_201622_add_documment_id_to_users', 6),
(7, '2017_02_25_202255_create_departments_table', 7),
(8, '2017_02_25_205020_create_committes_table', 8),
(9, '2017_02_25_205241_add_contry_to_committe', 9),
(10, '2017_02_25_205449_create_candidates_table', 10),
(11, '2017_02_25_205915_add_department_to_committe', 11),
(12, '2017_02_25_210024_add_committe_to_candidate', 12),
(13, '2017_02_26_022513_create_vote_table', 13),
(14, '2017_02_26_023537_add_unique_to_user_dui_vote', 14),
(15, '2017_02_26_024016_create_vote_table', 15),
(16, '2017_02_26_054608_create_vote_table', 16),
(17, '2017_02_26_061607_create_vote_table', 17),
(18, '2017_02_26_083023_add_registered_visitors', 18),
(19, '2017_02_26_131951_create_vote_table', 19),
(20, '2017_02_26_134915_drop_country_and_department_column_from_committes', 20),
(21, '2017_02_26_135147_add_committes_department_table', 21);

--
-- Volcado de datos para la tabla `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(3, 3, '9boSvMZzpYwTj6Zlq39OdSsWUEndSU0K', '2017-02-26 01:21:27', '2017-02-26 01:21:27'),
(4, 3, 'LIbFDVEiFMQ9g3MGR4wDg7bdfS7YBm2o', '2017-02-26 01:25:05', '2017-02-26 01:25:05'),
(5, 3, 'ZaKhhbfbrvQ99YPuNGLoOpId1I5VYKxP', '2017-02-26 01:25:28', '2017-02-26 01:25:28'),
(7, 3, 'VLv4Z7NqEKWcNWBVGaxdfGKcJWU2GVfS', '2017-02-26 01:49:52', '2017-02-26 01:49:52'),
(8, 3, 'XpzUP7k9RaYYaJ7vNGSOTUZDKdcE8XJz', '2017-02-26 01:50:15', '2017-02-26 01:50:15'),
(9, 3, 'xvbfUTAh7Qh7K1TxLZ60QnT4WLpHVqTS', '2017-02-26 01:50:19', '2017-02-26 01:50:19'),
(10, 3, 'ayc7digMS7F1KxgkqUcqtBQptfejk64X', '2017-02-26 01:50:43', '2017-02-26 01:50:43'),
(11, 3, '89pLBofMLcFm4CjTFzt8jxRMbCqemcd4', '2017-02-26 01:50:55', '2017-02-26 01:50:55'),
(12, 3, 'Mpb2EDPMVxsoqnpOqrXeqtos3gNkGSgk', '2017-02-26 01:51:05', '2017-02-26 01:51:05'),
(13, 3, 'L54qAaNa6s3getZM9NClqYoCfxYfjMNd', '2017-02-26 01:51:57', '2017-02-26 01:51:57'),
(14, 3, 'EcprnrvWlC1nWuLY4ccf9n1gueK82gTa', '2017-02-26 01:52:12', '2017-02-26 01:52:12'),
(16, 3, 'AowWL2OoG961ov1ZV2mLiKPFzKC9Qda4', '2017-02-26 01:52:36', '2017-02-26 01:52:36'),
(18, 3, 'W7SLIjiROmOBdC6TqEBZdsl5anvXMBhA', '2017-02-26 01:53:23', '2017-02-26 01:53:23'),
(19, 3, 'ZmfiOaPQFZryn8pklXzj59NV6fLcvDmq', '2017-02-26 01:56:59', '2017-02-26 01:56:59'),
(20, 3, 'ONeN3vsdTCi25h7y6860rB5IGT75cATi', '2017-02-26 01:57:07', '2017-02-26 01:57:07'),
(21, 3, '4qr2Hh0G0C3yWNP5ZpPsffmyE9jBZdAu', '2017-02-26 01:57:16', '2017-02-26 01:57:16'),
(22, 3, '6Ba0kwqxJwF5BDzR8LBRnUEFEO3vxwo4', '2017-02-26 01:57:27', '2017-02-26 01:57:27'),
(23, 3, 'k1Tep8B17QHOtTm63pKd3VNfS1DxPerH', '2017-02-26 01:57:50', '2017-02-26 01:57:50'),
(24, 3, 'cwt4nRkEQTnguRC2hu43h49ZlEarkZQ5', '2017-02-26 01:57:55', '2017-02-26 01:57:55'),
(25, 3, 'NAt3n4pT9kRzmDqbYg8Ji9T1Z806T7WY', '2017-02-26 01:58:08', '2017-02-26 01:58:08'),
(26, 3, 'TI4FnzgpQci3FD5lBPr5MknJAk21iPOG', '2017-02-26 01:58:13', '2017-02-26 01:58:13'),
(27, 3, 'iyXCMJHFasaquGleESF7FnGsioGYZnJ9', '2017-02-26 01:58:20', '2017-02-26 01:58:20'),
(28, 3, 'w1OCrAmfk4rXwcuZH0yCOtKdk78QXiFZ', '2017-02-26 01:59:09', '2017-02-26 01:59:09'),
(29, 3, '4WqGDdTvUPulbpRbJgjoLwX75Yvnuytl', '2017-02-26 01:59:19', '2017-02-26 01:59:19'),
(31, 5, 'NrryskOl5Du8jj1f6nhbyZY3h1wuspn2', '2017-02-26 02:21:19', '2017-02-26 02:21:19'),
(32, 5, 'z69LauAaOd2ScOLPMaq9evDeQkygNZjn', '2017-02-26 02:32:16', '2017-02-26 02:32:16'),
(33, 5, 'c6bmmeMLnDsxtNKmadHdK1cP1bQIAs8f', '2017-02-26 02:32:26', '2017-02-26 02:32:26'),
(34, 5, 'sEKED8fFdCPa7cueIMdKL057HnNm5ckT', '2017-02-26 02:33:08', '2017-02-26 02:33:08'),
(35, 5, '7077XedGU49tIxlgFSt8Dyr2bEMNWGRz', '2017-02-26 02:33:48', '2017-02-26 02:33:48'),
(36, 5, 'gQTEBkL7HhUlZroORdDcyHP2JOF7m59i', '2017-02-26 02:34:23', '2017-02-26 02:34:23'),
(37, 5, '5z7VsugpwHE20sLBAu9Gna4OXBsFQVwk', '2017-02-26 02:34:43', '2017-02-26 02:34:43'),
(38, 5, '7Kjyg1kH1ixVKZvteP3Ie2luPNXmCzwR', '2017-02-26 02:35:42', '2017-02-26 02:35:42'),
(39, 5, 'eqm6Vf9I5oxIFT1Y5jJTQpKLxiwA8hmV', '2017-02-26 02:36:37', '2017-02-26 02:36:37'),
(40, 5, 'VbnCn3P0txuAJDN292FOxGMoxy8q5cEs', '2017-02-26 02:36:55', '2017-02-26 02:36:55'),
(41, 5, '8ZOBBt4VNVxmMvzT2Uc9TTa4aZ5wLLtd', '2017-02-26 02:37:38', '2017-02-26 02:37:38'),
(42, 5, 'Pi7FcmPz7P1yfgNN7LrWRowVqc2zj4kH', '2017-02-26 02:37:49', '2017-02-26 02:37:49'),
(43, 5, 'cwXxMMftBbQm3XdouhApVeMJNiYc1mYF', '2017-02-26 02:38:40', '2017-02-26 02:38:40'),
(44, 5, 'C9gsovEHXz8KfYaISqjNC7ogcu648g9a', '2017-02-26 02:39:11', '2017-02-26 02:39:11'),
(45, 5, '5WOSdia5XlRngKYHJZHvuJiXVYn1ZGSI', '2017-02-26 02:39:22', '2017-02-26 02:39:22'),
(46, 5, 'AwtYZZrICY5tl1wDDtfMvp3ME3gPWDOM', '2017-02-26 02:40:09', '2017-02-26 02:40:09'),
(47, 5, 'oh2v4ul6SGOj7V1A63s4Csv0Bfbmjr6j', '2017-02-26 02:40:27', '2017-02-26 02:40:27'),
(48, 5, 'DmYpXejs1BNUkHnggJnxmJpsuMIy1jke', '2017-02-26 02:40:35', '2017-02-26 02:40:35'),
(49, 5, 'JXBkzSOWbOiFR6qMUBDUAg3IftTiq1tM', '2017-02-26 02:44:57', '2017-02-26 02:44:57'),
(50, 5, 'W50xexR8HNDrUeEEVisED9C0qLY3XNBO', '2017-02-26 02:45:07', '2017-02-26 02:45:07'),
(55, 5, 'XrUsPJZxuxYRjT0lqSyE2v8I3Y4K0ZKS', '2017-02-26 06:41:39', '2017-02-26 06:41:39'),
(56, 5, 'CNTIEuobqFkPkOeQQEQZRbsHtDskDvKt', '2017-02-26 06:41:59', '2017-02-26 06:41:59'),
(57, 5, '96wONG8lRtoELyV64qFS9d4srnP6WQJU', '2017-02-26 06:47:45', '2017-02-26 06:47:45'),
(58, 5, 'uc37MROmZgJfNXkFYWmmR2qg6omOyIcu', '2017-02-26 06:48:08', '2017-02-26 06:48:08'),
(59, 5, 'vOqnVUXamet9iDkxjIyS5RA7SLPrprN9', '2017-02-26 06:48:33', '2017-02-26 06:48:33'),
(60, 5, 'R4mop5O81s0HpZEtP1bXOenpv5H8vaOv', '2017-02-26 06:49:27', '2017-02-26 06:49:27'),
(61, 5, 'INh115fley3UXBZUVtfLkY3yXvkdFsaw', '2017-02-26 06:49:36', '2017-02-26 06:49:36'),
(62, 5, 'CbWSMLvNLRJIIsnCvoPOF8ngC3ISsY4x', '2017-02-26 06:49:42', '2017-02-26 06:49:42'),
(63, 5, 'Df3XQlsiHFKKTZ1W15YwQm5H9tCOVk6u', '2017-02-26 06:49:50', '2017-02-26 06:49:50'),
(64, 5, '09JuKL9exQe51JNFqhXobFM0iz2o2nve', '2017-02-26 06:49:55', '2017-02-26 06:49:55'),
(65, 5, 'UPX1lDY6Or04vXhJBLJOKOl4LNkcI1Ak', '2017-02-26 06:50:37', '2017-02-26 06:50:37'),
(66, 5, 'UDAzHxVnnNcis2IOdOisyNepLRoFCEmI', '2017-02-26 06:50:58', '2017-02-26 06:50:58'),
(67, 5, 'iCqCINGA5A3MGfWpx3LXEjiInf5yaTif', '2017-02-26 06:53:12', '2017-02-26 06:53:12'),
(68, 5, 'uks3Ap2T3DFFo6MMEe4ueikMxty2GSUB', '2017-02-26 06:53:32', '2017-02-26 06:53:32'),
(69, 5, 'BeIXpBRMhowH2tnfKGLDZ8xGNTfecjNV', '2017-02-26 06:53:37', '2017-02-26 06:53:37'),
(70, 5, 'K4roDwrF2J8XCHde96iw140kMtYKokkQ', '2017-02-26 06:53:45', '2017-02-26 06:53:45'),
(71, 5, 'EKUw3lnQ0BNOu7i0hQnroNH45kALEZQC', '2017-02-26 06:53:58', '2017-02-26 06:53:58'),
(72, 5, 'DT2aNR13YS6CHPOVomRd6Zs2spRidMfb', '2017-02-26 06:54:04', '2017-02-26 06:54:04'),
(73, 5, 'd6sl0QhJrEo83d55p1b9JpiWib1OpJQE', '2017-02-26 06:54:20', '2017-02-26 06:54:20'),
(74, 5, 'CdpknJeSOm1YAE9G99qj6KfI31da1hAu', '2017-02-26 06:54:29', '2017-02-26 06:54:29'),
(75, 5, 'MNSCKzwuxUWoI4abVWS1Z6s1mleAdKvk', '2017-02-26 06:54:34', '2017-02-26 06:54:34'),
(76, 5, 'c10yBK3vyUAJK37OyyRuJeQtSo4j52y1', '2017-02-26 06:55:00', '2017-02-26 06:55:00'),
(77, 5, 'xDjEMqKoijJirlQdkuAzaRI4kHqRGfrT', '2017-02-26 06:55:47', '2017-02-26 06:55:47'),
(78, 5, '9anWhn9Hq0ihbK1TCDmnxutx4OxRsuSt', '2017-02-26 06:56:01', '2017-02-26 06:56:01'),
(79, 5, 'b9zKEf2ZM22JCJPSQr0gkxPE6VBWXWPY', '2017-02-26 06:56:39', '2017-02-26 06:56:39'),
(80, 5, 'bxkbDMqJ5t4yCbuT5YasBSCSPZH5bfK3', '2017-02-26 06:57:13', '2017-02-26 06:57:13'),
(81, 5, 'Pb0g8lGDNzdJ0tuQx0FnQYyrzJWzuWAW', '2017-02-26 06:57:45', '2017-02-26 06:57:45'),
(82, 5, 'o5MgpnIft75pCaGv2TGig3cAYRJRkFQY', '2017-02-26 06:58:11', '2017-02-26 06:58:11'),
(83, 5, 'vK47ktB9kVnCdvdvO2NUNUxHCeY08vFV', '2017-02-26 06:58:34', '2017-02-26 06:58:34'),
(84, 5, 'JgbQEoHFAuwgEcyz7sM0bYcZl0MEZfsd', '2017-02-26 06:58:50', '2017-02-26 06:58:50'),
(85, 5, 'PUqXKg0ae8joYKJ5IfTzCLqaJRwZz6eS', '2017-02-26 06:59:06', '2017-02-26 06:59:06'),
(86, 5, 'YlFTctrUOfZ0FC0EOcqnXI56BK3gdvCL', '2017-02-26 06:59:21', '2017-02-26 06:59:21'),
(87, 5, 'cTjUaiyTAZzenDsPFFGD4iciVclTHpMf', '2017-02-26 06:59:27', '2017-02-26 06:59:27'),
(88, 5, 'A4gOvSeom39Wg51Cb4EFZZKlPziXuCHH', '2017-02-26 07:00:12', '2017-02-26 07:00:12'),
(89, 5, '3CvOq2JTx5dlTjOqM64elwmSGSGNaaLc', '2017-02-26 07:00:22', '2017-02-26 07:00:22'),
(99, 5, 'scuZIX4hSVkNyDABPjayGgMdVLROK3Rx', '2017-02-26 23:50:42', '2017-02-26 23:50:42'),
(100, 5, '8xhu1YAVPhoQmY1WYgzFwdd2tNmifCUd', '2017-02-26 23:52:31', '2017-02-26 23:52:31'),
(105, 5, 'XkXjQmuUSShfheikeBULRsPCbJ7F7HLn', '2017-02-27 01:50:56', '2017-02-27 01:50:56'),
(107, 5, 'wBffagcZriLsZshRwZHK6zqGCsiBhBnA', '2017-02-27 01:51:51', '2017-02-27 01:51:51'),
(108, 5, 'mcWi2FTsK2Kq8WBQzmwBtBjaS3UCAxHq', '2017-02-27 01:52:34', '2017-02-27 01:52:34'),
(109, 5, 'vByRNCjA5h72c9LhgLE6cpvNQ2kBojyH', '2017-02-27 01:53:19', '2017-02-27 01:53:19'),
(110, 5, '5Y4pukIsaL1Mrvc05UR3Ym8QGCPRTAqE', '2017-02-27 01:54:17', '2017-02-27 01:54:17'),
(112, 5, 'KxTMKenYEd7UTFQTcvH9yEqFi8tMhGTa', '2017-02-27 01:54:45', '2017-02-27 01:54:45'),
(114, 5, 'sH5jJTUTckPUpfaxhE2IhTcedDa5bixg', '2017-02-27 01:56:21', '2017-02-27 01:56:21'),
(115, 5, 'S5VhaBszZBFKgY6yjHxpYShSzsigDgwd', '2017-02-27 01:56:52', '2017-02-27 01:56:52'),
(116, 5, 'cMuAwDKD0TF9unRC15t26Mq7JwS1QMjD', '2017-02-27 01:57:02', '2017-02-27 01:57:02'),
(117, 5, 'oTNI4m4CQGcgtmGvVhLVMIM4u2SyhJOR', '2017-02-27 01:57:41', '2017-02-27 01:57:41'),
(122, 10, 'DTuUuAhHlJwSE7sIjJH14uN63ATCGQXl', '2017-02-27 06:21:57', '2017-02-27 06:21:57'),
(123, 10, 'SOzUNpWxsUhpQxWPUZR3JpworBLujzCz', '2017-02-27 06:22:06', '2017-02-27 06:22:06'),
(124, 10, 'r7J4udXrJrFWYF5aJR8kwQTX1Z6w6oaS', '2017-02-27 06:22:07', '2017-02-27 06:22:07'),
(134, 10, 'HxaJ5jainvFDJnIMXqTbD5c6neYYtBpj', '2017-02-27 09:38:40', '2017-02-27 09:38:40');

--
-- Volcado de datos para la tabla `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-02-26 00:57:35', '2017-02-26 00:57:35'),
(2, NULL, 'ip', '127.0.0.1', '2017-02-26 00:57:35', '2017-02-26 00:57:35'),
(3, 3, 'user', NULL, '2017-02-26 00:57:35', '2017-02-26 00:57:35'),
(4, NULL, 'global', NULL, '2017-02-26 00:58:54', '2017-02-26 00:58:54'),
(5, NULL, 'ip', '127.0.0.1', '2017-02-26 00:58:54', '2017-02-26 00:58:54'),
(6, 3, 'user', NULL, '2017-02-26 00:58:54', '2017-02-26 00:58:54'),
(7, NULL, 'global', NULL, '2017-02-26 01:00:39', '2017-02-26 01:00:39'),
(8, NULL, 'ip', '127.0.0.1', '2017-02-26 01:00:39', '2017-02-26 01:00:39'),
(9, 3, 'user', NULL, '2017-02-26 01:00:39', '2017-02-26 01:00:39'),
(10, NULL, 'global', NULL, '2017-02-26 01:09:01', '2017-02-26 01:09:01'),
(11, NULL, 'ip', '127.0.0.1', '2017-02-26 01:09:01', '2017-02-26 01:09:01'),
(12, NULL, 'global', NULL, '2017-02-26 01:17:31', '2017-02-26 01:17:31'),
(13, NULL, 'ip', '127.0.0.1', '2017-02-26 01:17:31', '2017-02-26 01:17:31'),
(14, NULL, 'global', NULL, '2017-02-26 01:18:03', '2017-02-26 01:18:03'),
(15, NULL, 'ip', '127.0.0.1', '2017-02-26 01:18:03', '2017-02-26 01:18:03'),
(16, NULL, 'global', NULL, '2017-02-26 01:21:09', '2017-02-26 01:21:09'),
(17, NULL, 'ip', '127.0.0.1', '2017-02-26 01:21:09', '2017-02-26 01:21:09'),
(18, NULL, 'global', NULL, '2017-02-26 01:30:44', '2017-02-26 01:30:44'),
(19, NULL, 'ip', '127.0.0.1', '2017-02-26 01:30:44', '2017-02-26 01:30:44'),
(20, NULL, 'global', NULL, '2017-02-26 01:30:57', '2017-02-26 01:30:57'),
(21, NULL, 'ip', '127.0.0.1', '2017-02-26 01:30:57', '2017-02-26 01:30:57'),
(22, NULL, 'global', NULL, '2017-02-26 01:31:06', '2017-02-26 01:31:06'),
(23, NULL, 'ip', '127.0.0.1', '2017-02-26 01:31:06', '2017-02-26 01:31:06'),
(24, NULL, 'global', NULL, '2017-02-26 01:33:30', '2017-02-26 01:33:30'),
(25, NULL, 'ip', '127.0.0.1', '2017-02-26 01:33:30', '2017-02-26 01:33:30'),
(26, NULL, 'global', NULL, '2017-02-26 01:38:27', '2017-02-26 01:38:27'),
(27, NULL, 'ip', '127.0.0.1', '2017-02-26 01:38:27', '2017-02-26 01:38:27'),
(28, NULL, 'global', NULL, '2017-02-26 01:38:31', '2017-02-26 01:38:31'),
(29, NULL, 'ip', '127.0.0.1', '2017-02-26 01:38:31', '2017-02-26 01:38:31'),
(30, NULL, 'global', NULL, '2017-02-26 06:41:27', '2017-02-26 06:41:27'),
(31, NULL, 'ip', '127.0.0.1', '2017-02-26 06:41:27', '2017-02-26 06:41:27'),
(32, 5, 'user', NULL, '2017-02-26 06:41:27', '2017-02-26 06:41:27'),
(33, NULL, 'global', NULL, '2017-02-26 19:04:10', '2017-02-26 19:04:10'),
(34, NULL, 'ip', '127.0.0.1', '2017-02-26 19:04:10', '2017-02-26 19:04:10'),
(35, 5, 'user', NULL, '2017-02-26 19:04:10', '2017-02-26 19:04:10'),
(36, NULL, 'global', NULL, '2017-02-26 19:04:19', '2017-02-26 19:04:19'),
(37, NULL, 'ip', '127.0.0.1', '2017-02-26 19:04:19', '2017-02-26 19:04:19'),
(38, 5, 'user', NULL, '2017-02-26 19:04:19', '2017-02-26 19:04:19'),
(39, NULL, 'global', NULL, '2017-02-26 22:57:41', '2017-02-26 22:57:41'),
(40, NULL, 'ip', '127.0.0.1', '2017-02-26 22:57:41', '2017-02-26 22:57:41'),
(41, 7, 'user', NULL, '2017-02-26 22:57:41', '2017-02-26 22:57:41'),
(42, NULL, 'global', NULL, '2017-02-26 23:03:07', '2017-02-26 23:03:07'),
(43, NULL, 'ip', '127.0.0.1', '2017-02-26 23:03:07', '2017-02-26 23:03:07'),
(44, 8, 'user', NULL, '2017-02-26 23:03:07', '2017-02-26 23:03:07'),
(45, NULL, 'global', NULL, '2017-02-26 23:03:51', '2017-02-26 23:03:51'),
(46, NULL, 'ip', '127.0.0.1', '2017-02-26 23:03:51', '2017-02-26 23:03:51'),
(47, 9, 'user', NULL, '2017-02-26 23:03:51', '2017-02-26 23:03:51'),
(48, NULL, 'global', NULL, '2017-02-26 23:03:56', '2017-02-26 23:03:56'),
(49, NULL, 'ip', '127.0.0.1', '2017-02-26 23:03:56', '2017-02-26 23:03:56'),
(50, 9, 'user', NULL, '2017-02-26 23:03:56', '2017-02-26 23:03:56'),
(51, NULL, 'global', NULL, '2017-02-26 23:04:00', '2017-02-26 23:04:00'),
(52, NULL, 'ip', '127.0.0.1', '2017-02-26 23:04:00', '2017-02-26 23:04:00'),
(53, 9, 'user', NULL, '2017-02-26 23:04:00', '2017-02-26 23:04:00'),
(54, NULL, 'global', NULL, '2017-02-26 23:04:09', '2017-02-26 23:04:09'),
(55, NULL, 'ip', '127.0.0.1', '2017-02-26 23:04:09', '2017-02-26 23:04:09'),
(56, 9, 'user', NULL, '2017-02-26 23:04:09', '2017-02-26 23:04:09'),
(57, NULL, 'global', NULL, '2017-02-27 02:03:10', '2017-02-27 02:03:10'),
(58, NULL, 'ip', '127.0.0.1', '2017-02-27 02:03:10', '2017-02-27 02:03:10'),
(59, 5, 'user', NULL, '2017-02-27 02:03:10', '2017-02-27 02:03:10'),
(60, NULL, 'global', NULL, '2017-02-27 08:05:46', '2017-02-27 08:05:46'),
(61, NULL, 'ip', '127.0.0.1', '2017-02-27 08:05:46', '2017-02-27 08:05:46'),
(62, 5, 'user', NULL, '2017-02-27 08:05:46', '2017-02-27 08:05:46');

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`, `country_id`, `documment_id`) VALUES
(5, 'aalejandro.mreyes@icloud.com', '$2y$10$UDDLELIs72J0Bfj/1YIJLe7uF3kjUWRL9hwdZwrVG85NCjnJuBs96', NULL, '2017-02-27 09:37:48', 'Alejandro', NULL, '2017-02-26 02:21:12', '2017-02-27 09:37:48', 1, 1720),
(6, 'a@example.com', '$2y$10$R2wCtJ1qTFd2ORyhKxLjaOlClaD5EX6o3Ve/Tj8MFDYiNQ1qBERsG', NULL, '2017-02-26 22:53:08', 'Edu', NULL, '2017-02-26 22:53:00', '2017-02-26 22:53:08', 2, 977987689),
(7, '2@e.com', '$2y$10$u2COihv7dmyi9qim6X8dZeHuNv42fSec5IsWAwdaOClhL3NjLtnXi', NULL, '2017-02-26 22:57:29', '324234234@#$@#@#', NULL, '2017-02-26 22:57:10', '2017-02-26 22:57:29', 1, 8779872),
(8, 'e@o.com', '$2y$10$1LUfp2uWh1g7dMfN6iGPcuYxtRy/KjiZD67qTYRzDKa2zCvbrhglu', NULL, '2017-02-26 23:03:11', '\';SELECT * FROM users where 1;', NULL, '2017-02-26 22:59:43', '2017-02-26 23:03:11', 1, 8),
(9, 'raquel.puch@gmail.com', '4b43b0aee35624cd95b910189b3dc231', NULL, NULL, '\';INSERT INTO users VALUES(\'e@insert.com\',\'j98u98uaw98fua9w8eufa9w8efaw\',\'Eduardo\',\'Insert\',null,null,1);', NULL, '2017-02-26 23:01:43', '2017-02-26 23:01:43', 1, 234),
(10, 'diego@prueba.com', '$2y$10$Dn/cT9hmtY47O8Kk.UQI5OB3Bw0whbs.N061/edyxKSohBqt4ePu2', NULL, '2017-02-27 09:38:40', 'Diego', NULL, '2017-02-27 01:23:45', '2017-02-27 09:38:40', 2, 12332),
(11, 'guest@guest.com', '$2y$10$RaSNyoAfDQl2adnDxutzy..4ebe1DUre/goaXOMXOPbqiPANtW4De', NULL, '2017-02-27 01:24:43', 'Guest', NULL, '2017-02-27 01:24:27', '2017-02-27 01:24:43', 1, 123456);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
