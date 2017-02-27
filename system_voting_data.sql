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

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'El Salvador'),
(2, 'Guatemala');



INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`, `country_id`, `documment_id`) VALUES
(5, 'aalejandro.mreyes@icloud.com', '$2y$10$UDDLELIs72J0Bfj/1YIJLe7uF3kjUWRL9hwdZwrVG85NCjnJuBs96', NULL, '2017-02-27 09:37:48', 'Alejandro', NULL, '2017-02-26 02:21:12', '2017-02-27 09:37:48', 1, 1720),
(6, 'a@example.com', '$2y$10$R2wCtJ1qTFd2ORyhKxLjaOlClaD5EX6o3Ve/Tj8MFDYiNQ1qBERsG', NULL, '2017-02-26 22:53:08', 'Edu', NULL, '2017-02-26 22:53:00', '2017-02-26 22:53:08', 2, 977987689),
(7, '2@e.com', '$2y$10$u2COihv7dmyi9qim6X8dZeHuNv42fSec5IsWAwdaOClhL3NjLtnXi', NULL, '2017-02-26 22:57:29', '324234234@#$@#@#', NULL, '2017-02-26 22:57:10', '2017-02-26 22:57:29', 1, 8779872),
(8, 'e@o.com', '$2y$10$1LUfp2uWh1g7dMfN6iGPcuYxtRy/KjiZD67qTYRzDKa2zCvbrhglu', NULL, '2017-02-26 23:03:11', '\';SELECT * FROM users where 1;', NULL, '2017-02-26 22:59:43', '2017-02-26 23:03:11', 1, 8),
(9, 'raquel.puch@gmail.com', '4b43b0aee35624cd95b910189b3dc231', NULL, NULL, '\';INSERT INTO users VALUES(\'e@insert.com\',\'j98u98uaw98fua9w8eufa9w8efaw\',\'Eduardo\',\'Insert\',null,null,1);', NULL, '2017-02-26 23:01:43', '2017-02-26 23:01:43', 1, 234),
(10, 'diego@prueba.com', '$2y$10$Dn/cT9hmtY47O8Kk.UQI5OB3Bw0whbs.N061/edyxKSohBqt4ePu2', NULL, '2017-02-27 09:38:40', 'Diego', NULL, '2017-02-27 01:23:45', '2017-02-27 09:38:40', 2, 12332),
(11, 'guest@guest.com', '$2y$10$RaSNyoAfDQl2adnDxutzy..4ebe1DUre/goaXOMXOPbqiPANtW4De', NULL, '2017-02-27 01:24:43', 'Guest', NULL, '2017-02-27 01:24:27', '2017-02-27 01:24:43', 1, 123456);


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
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Cabañas', 1, NULL, NULL),
(2, 'San Salvador', 1, NULL, NULL),
(3, 'Peten', 2, NULL, NULL),
(4, 'Totonatican', 2, NULL, NULL);


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


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
