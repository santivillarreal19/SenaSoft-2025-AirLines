-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-10-2025 a las 21:36:21
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiquetes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

DROP TABLE IF EXISTS `asientos`;
CREATE TABLE IF NOT EXISTS `asientos` (
  `id_asiento` bigint NOT NULL AUTO_INCREMENT,
  `id_avion` bigint NOT NULL,
  `num_asiento` varchar(10) NOT NULL,
  PRIMARY KEY (`id_asiento`),
  KEY `id_avion` (`id_avion`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asientos`
--

INSERT INTO `asientos` (`id_asiento`, `id_avion`, `num_asiento`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 1, '4'),
(5, 1, '5'),
(6, 1, '6'),
(7, 1, '7'),
(8, 1, '8'),
(9, 1, '9'),
(10, 1, '10'),
(11, 1, '11'),
(12, 1, '12'),
(13, 1, '13'),
(14, 1, '14'),
(15, 1, '15'),
(16, 1, '16'),
(17, 1, '17'),
(18, 1, '18'),
(19, 1, '19'),
(20, 1, '20'),
(21, 1, '21'),
(22, 1, '22'),
(23, 1, '23'),
(24, 1, '24'),
(25, 1, '25'),
(26, 1, '26'),
(27, 1, '27'),
(28, 1, '28'),
(29, 1, '29'),
(30, 1, '30'),
(31, 1, '31'),
(32, 1, '32'),
(33, 1, '33'),
(34, 1, '34'),
(35, 1, '35'),
(36, 1, '36'),
(37, 1, '37'),
(38, 1, '38'),
(39, 1, '39'),
(40, 1, '40'),
(41, 1, '41'),
(42, 1, '42'),
(43, 1, '43'),
(44, 1, '44'),
(45, 1, '45'),
(46, 1, '46'),
(47, 1, '47'),
(48, 1, '48'),
(49, 1, '49'),
(50, 1, '50'),
(51, 2, '1'),
(52, 2, '2'),
(53, 2, '3'),
(54, 2, '4'),
(55, 2, '5'),
(56, 2, '6'),
(57, 2, '7'),
(58, 2, '8'),
(59, 2, '9'),
(60, 2, '10'),
(61, 2, '11'),
(62, 2, '12'),
(63, 2, '13'),
(64, 2, '14'),
(65, 2, '15'),
(66, 2, '16'),
(67, 2, '17'),
(68, 2, '18'),
(69, 2, '19'),
(70, 2, '20'),
(71, 2, '21'),
(72, 2, '22'),
(73, 2, '23'),
(74, 2, '24'),
(75, 2, '25'),
(76, 2, '26'),
(77, 2, '27'),
(78, 2, '28'),
(79, 2, '29'),
(80, 2, '30'),
(81, 2, '31'),
(82, 2, '32'),
(83, 2, '33'),
(84, 2, '34'),
(85, 2, '35'),
(86, 2, '36'),
(87, 2, '37'),
(88, 2, '38'),
(89, 2, '39'),
(90, 2, '40'),
(91, 2, '41'),
(92, 2, '42'),
(93, 2, '43'),
(94, 2, '44'),
(95, 2, '45'),
(96, 2, '46'),
(97, 2, '47'),
(98, 2, '48'),
(99, 2, '49'),
(100, 2, '50'),
(101, 3, '1'),
(102, 3, '2'),
(103, 3, '3'),
(104, 3, '4'),
(105, 3, '5'),
(106, 3, '6'),
(107, 3, '7'),
(108, 3, '8'),
(109, 3, '9'),
(110, 3, '10'),
(111, 3, '11'),
(112, 3, '12'),
(113, 3, '13'),
(114, 3, '14'),
(115, 3, '15'),
(116, 3, '16'),
(117, 3, '17'),
(118, 3, '18'),
(119, 3, '19'),
(120, 3, '20'),
(121, 3, '21'),
(122, 3, '22'),
(123, 3, '23'),
(124, 3, '24'),
(125, 3, '25'),
(126, 3, '26'),
(127, 3, '27'),
(128, 3, '28'),
(129, 3, '29'),
(130, 3, '30'),
(131, 3, '31'),
(132, 3, '32'),
(133, 3, '33'),
(134, 3, '34'),
(135, 3, '35'),
(136, 3, '36'),
(137, 3, '37'),
(138, 3, '38'),
(139, 3, '39'),
(140, 3, '40'),
(141, 3, '41'),
(142, 3, '42'),
(143, 3, '43'),
(144, 3, '44'),
(145, 3, '45'),
(146, 3, '46'),
(147, 3, '47'),
(148, 3, '48'),
(149, 3, '49'),
(150, 3, '50'),
(151, 4, '1'),
(152, 4, '2'),
(153, 4, '3'),
(154, 4, '4'),
(155, 4, '5'),
(156, 4, '6'),
(157, 4, '7'),
(158, 4, '8'),
(159, 4, '9'),
(160, 4, '10'),
(161, 4, '11'),
(162, 4, '12'),
(163, 4, '13'),
(164, 4, '14'),
(165, 4, '15'),
(166, 4, '16'),
(167, 4, '17'),
(168, 4, '18'),
(169, 4, '19'),
(170, 4, '20'),
(171, 4, '21'),
(172, 4, '22'),
(173, 4, '23'),
(174, 4, '24'),
(175, 4, '25'),
(176, 4, '26'),
(177, 4, '27'),
(178, 4, '28'),
(179, 4, '29'),
(180, 4, '30'),
(181, 4, '31'),
(182, 4, '32'),
(183, 4, '33'),
(184, 4, '34'),
(185, 4, '35'),
(186, 4, '36'),
(187, 4, '37'),
(188, 4, '38'),
(189, 4, '39'),
(190, 4, '40'),
(191, 4, '41'),
(192, 4, '42'),
(193, 4, '43'),
(194, 4, '44'),
(195, 4, '45'),
(196, 4, '46'),
(197, 4, '47'),
(198, 4, '48'),
(199, 4, '49'),
(200, 4, '50'),
(201, 5, '1'),
(202, 5, '2'),
(203, 5, '3'),
(204, 5, '4'),
(205, 5, '5'),
(206, 5, '6'),
(207, 5, '7'),
(208, 5, '8'),
(209, 5, '9'),
(210, 5, '10'),
(211, 5, '11'),
(212, 5, '12'),
(213, 5, '13'),
(214, 5, '14'),
(215, 5, '15'),
(216, 5, '16'),
(217, 5, '17'),
(218, 5, '18'),
(219, 5, '19'),
(220, 5, '20'),
(221, 5, '21'),
(222, 5, '22'),
(223, 5, '23'),
(224, 5, '24'),
(225, 5, '25'),
(226, 5, '26'),
(227, 5, '27'),
(228, 5, '28'),
(229, 5, '29'),
(230, 5, '30'),
(231, 5, '31'),
(232, 5, '32'),
(233, 5, '33'),
(234, 5, '34'),
(235, 5, '35'),
(236, 5, '36'),
(237, 5, '37'),
(238, 5, '38'),
(239, 5, '39'),
(240, 5, '40'),
(241, 5, '41'),
(242, 5, '42'),
(243, 5, '43'),
(244, 5, '44'),
(245, 5, '45'),
(246, 5, '46'),
(247, 5, '47'),
(248, 5, '48'),
(249, 5, '49'),
(250, 5, '50'),
(251, 6, '1'),
(252, 6, '2'),
(253, 6, '3'),
(254, 6, '4'),
(255, 6, '5'),
(256, 6, '6'),
(257, 6, '7'),
(258, 6, '8'),
(259, 6, '9'),
(260, 6, '10'),
(261, 6, '11'),
(262, 6, '12'),
(263, 6, '13'),
(264, 6, '14'),
(265, 6, '15'),
(266, 6, '16'),
(267, 6, '17'),
(268, 6, '18'),
(269, 6, '19'),
(270, 6, '20'),
(271, 6, '21'),
(272, 6, '22'),
(273, 6, '23'),
(274, 6, '24'),
(275, 6, '25'),
(276, 6, '26'),
(277, 6, '27'),
(278, 6, '28'),
(279, 6, '29'),
(280, 6, '30'),
(281, 6, '31'),
(282, 6, '32'),
(283, 6, '33'),
(284, 6, '34'),
(285, 6, '35'),
(286, 6, '36'),
(287, 6, '37'),
(288, 6, '38'),
(289, 6, '39'),
(290, 6, '40'),
(291, 6, '41'),
(292, 6, '42'),
(293, 6, '43'),
(294, 6, '44'),
(295, 6, '45'),
(296, 6, '46'),
(297, 6, '47'),
(298, 6, '48'),
(299, 6, '49'),
(300, 6, '50'),
(301, 7, '1'),
(302, 7, '2'),
(303, 7, '3'),
(304, 7, '4'),
(305, 7, '5'),
(306, 7, '6'),
(307, 7, '7'),
(308, 7, '8'),
(309, 7, '9'),
(310, 7, '10'),
(311, 7, '11'),
(312, 7, '12'),
(313, 7, '13'),
(314, 7, '14'),
(315, 7, '15'),
(316, 7, '16'),
(317, 7, '17'),
(318, 7, '18'),
(319, 7, '19'),
(320, 7, '20'),
(321, 7, '21'),
(322, 7, '22'),
(323, 7, '23'),
(324, 7, '24'),
(325, 7, '25'),
(326, 7, '26'),
(327, 7, '27'),
(328, 7, '28'),
(329, 7, '29'),
(330, 7, '30'),
(331, 7, '31'),
(332, 7, '32'),
(333, 7, '33'),
(334, 7, '34'),
(335, 7, '35'),
(336, 7, '36'),
(337, 7, '37'),
(338, 7, '38'),
(339, 7, '39'),
(340, 7, '40'),
(341, 7, '41'),
(342, 7, '42'),
(343, 7, '43'),
(344, 7, '44'),
(345, 7, '45'),
(346, 7, '46'),
(347, 7, '47'),
(348, 7, '48'),
(349, 7, '49'),
(350, 7, '50'),
(351, 8, '1'),
(352, 8, '2'),
(353, 8, '3'),
(354, 8, '4'),
(355, 8, '5'),
(356, 8, '6'),
(357, 8, '7'),
(358, 8, '8'),
(359, 8, '9'),
(360, 8, '10'),
(361, 8, '11'),
(362, 8, '12'),
(363, 8, '13'),
(364, 8, '14'),
(365, 8, '15'),
(366, 8, '16'),
(367, 8, '17'),
(368, 8, '18'),
(369, 8, '19'),
(370, 8, '20'),
(371, 8, '21'),
(372, 8, '22'),
(373, 8, '23'),
(374, 8, '24'),
(375, 8, '25'),
(376, 8, '26'),
(377, 8, '27'),
(378, 8, '28'),
(379, 8, '29'),
(380, 8, '30'),
(381, 8, '31'),
(382, 8, '32'),
(383, 8, '33'),
(384, 8, '34'),
(385, 8, '35'),
(386, 8, '36'),
(387, 8, '37'),
(388, 8, '38'),
(389, 8, '39'),
(390, 8, '40'),
(391, 8, '41'),
(392, 8, '42'),
(393, 8, '43'),
(394, 8, '44'),
(395, 8, '45'),
(396, 8, '46'),
(397, 8, '47'),
(398, 8, '48'),
(399, 8, '49'),
(400, 8, '50'),
(401, 9, '1'),
(402, 9, '2'),
(403, 9, '3'),
(404, 9, '4'),
(405, 9, '5'),
(406, 9, '6'),
(407, 9, '7'),
(408, 9, '8'),
(409, 9, '9'),
(410, 9, '10'),
(411, 9, '11'),
(412, 9, '12'),
(413, 9, '13'),
(414, 9, '14'),
(415, 9, '15'),
(416, 9, '16'),
(417, 9, '17'),
(418, 9, '18'),
(419, 9, '19'),
(420, 9, '20'),
(421, 9, '21'),
(422, 9, '22'),
(423, 9, '23'),
(424, 9, '24'),
(425, 9, '25'),
(426, 9, '26'),
(427, 9, '27'),
(428, 9, '28'),
(429, 9, '29'),
(430, 9, '30'),
(431, 9, '31'),
(432, 9, '32'),
(433, 9, '33'),
(434, 9, '34'),
(435, 9, '35'),
(436, 9, '36'),
(437, 9, '37'),
(438, 9, '38'),
(439, 9, '39'),
(440, 9, '40'),
(441, 9, '41'),
(442, 9, '42'),
(443, 9, '43'),
(444, 9, '44'),
(445, 9, '45'),
(446, 9, '46'),
(447, 9, '47'),
(448, 9, '48'),
(449, 9, '49'),
(450, 9, '50'),
(451, 10, '1'),
(452, 10, '2'),
(453, 10, '3'),
(454, 10, '4'),
(455, 10, '5'),
(456, 10, '6'),
(457, 10, '7'),
(458, 10, '8'),
(459, 10, '9'),
(460, 10, '10'),
(461, 10, '11'),
(462, 10, '12'),
(463, 10, '13'),
(464, 10, '14'),
(465, 10, '15'),
(466, 10, '16'),
(467, 10, '17'),
(468, 10, '18'),
(469, 10, '19'),
(470, 10, '20'),
(471, 10, '21'),
(472, 10, '22'),
(473, 10, '23'),
(474, 10, '24'),
(475, 10, '25'),
(476, 10, '26'),
(477, 10, '27'),
(478, 10, '28'),
(479, 10, '29'),
(480, 10, '30'),
(481, 10, '31'),
(482, 10, '32'),
(483, 10, '33'),
(484, 10, '34'),
(485, 10, '35'),
(486, 10, '36'),
(487, 10, '37'),
(488, 10, '38'),
(489, 10, '39'),
(490, 10, '40'),
(491, 10, '41'),
(492, 10, '42'),
(493, 10, '43'),
(494, 10, '44'),
(495, 10, '45'),
(496, 10, '46'),
(497, 10, '47'),
(498, 10, '48'),
(499, 10, '49'),
(500, 10, '50'),
(501, 8, '51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos_pasajero`
--

DROP TABLE IF EXISTS `asientos_pasajero`;
CREATE TABLE IF NOT EXISTS `asientos_pasajero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_pasajero` bigint NOT NULL,
  `id_reserva` bigint DEFAULT NULL,
  `id_asiento` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pasajero` (`id_pasajero`),
  KEY `id_asiento` (`id_asiento`),
  KEY `id_reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asientos_pasajero`
--

INSERT INTO `asientos_pasajero` (`id`, `id_pasajero`, `id_reserva`, `id_asiento`) VALUES
(36, 42, 29, 351),
(37, 43, 29, 352),
(38, 44, 29, 353),
(39, 45, 29, 374),
(40, 46, 29, 391);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

DROP TABLE IF EXISTS `aviones`;
CREATE TABLE IF NOT EXISTS `aviones` (
  `id_avion` bigint NOT NULL AUTO_INCREMENT,
  `capacidad` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  PRIMARY KEY (`id_avion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`id_avion`, `capacidad`, `modelo`) VALUES
(1, '50', 'Airbus A320'),
(2, '50', 'Boeing 737-800'),
(3, '50', 'Embraer E190'),
(4, '50', 'ATR 72-600'),
(5, '50', 'Airbus A319'),
(6, '50', 'Boeing 737 MAX 9'),
(7, '50', 'Bombardier CRJ900'),
(8, '50', 'Airbus A321neo'),
(9, '50', 'Boeing 787-8 Dreamli'),
(10, '50', 'Embraer E175');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradores`
--

DROP TABLE IF EXISTS `compradores`;
CREATE TABLE IF NOT EXISTS `compradores` (
  `id_comprador` bigint NOT NULL AUTO_INCREMENT,
  `nacimiento` date NOT NULL,
  `tipo_doc` bigint NOT NULL,
  `num_doc` varchar(30) NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_comprador`),
  KEY `tipo_doc` (`tipo_doc`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `compradores`
--

INSERT INTO `compradores` (`id_comprador`, `nacimiento`, `tipo_doc`, `num_doc`, `email`, `nombre`, `telefono`) VALUES
(31, '2025-10-16', 1, '1096803789', 'yeinerparrarincon12345789@gmail.com', 'Santiago Villarreal Maya', '3147688358');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE IF NOT EXISTS `estados` (
  `id_estado` bigint NOT NULL AUTO_INCREMENT,
  `estados` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estados`) VALUES
(1, 'En Espera'),
(2, 'Confirmada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

DROP TABLE IF EXISTS `generos`;
CREATE TABLE IF NOT EXISTS `generos` (
  `id_genero` bigint NOT NULL AUTO_INCREMENT,
  `generos` varchar(20) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `generos`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

DROP TABLE IF EXISTS `pasajeros`;
CREATE TABLE IF NOT EXISTS `pasajeros` (
  `id_pasajero` bigint NOT NULL AUTO_INCREMENT,
  `nacimiento` date NOT NULL,
  `email` varchar(80) NOT NULL,
  `genero` bigint NOT NULL,
  `infant` int NOT NULL,
  `telefono` varchar(14) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `num_doc` varchar(15) NOT NULL,
  `tipo_doc` bigint NOT NULL,
  PRIMARY KEY (`id_pasajero`),
  KEY `tipo_doc` (`tipo_doc`),
  KEY `genero` (`genero`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`id_pasajero`, `nacimiento`, `email`, `genero`, `infant`, `telefono`, `nombre`, `num_doc`, `tipo_doc`) VALUES
(42, '2025-10-16', 'yeinerparrarincon12345789@gmail.com', 1, 2, '3147688358', 'Santiago Villarreal Maya', '1096803789', 1),
(43, '2025-10-16', 'yeinerparrarincon12345789@gmail.com', 1, 2, '3147688358', 'Santiago Villarreal Maya', '1096803789', 1),
(44, '2025-10-16', 'yeinerparrarincon12345789@gmail.com', 1, 2, '3147688358', 'Santiago Villarreal Maya', '1096803789', 1),
(45, '2025-10-16', 'yeinerparrarincon12345789@gmail.com', 1, 2, '3147688358', 'Santiago Villarreal Maya', '1096803789', 1),
(46, '2025-10-16', 'yeinerparrarincon12345789@gmail.com', 1, 2, '3147688358', 'Santiago Villarreal Maya', '1096803789', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id_reserva` bigint NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` bigint NOT NULL,
  `id_vuelo` bigint NOT NULL,
  `id_comprador` bigint NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `id_reserva` (`id_reserva`,`id_vuelo`),
  KEY `id_vuelo` (`id_vuelo`),
  KEY `id_comprador` (`id_comprador`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `fecha`, `estado`, `id_vuelo`, `id_comprador`) VALUES
(29, '2025-10-26 15:40:29', 1, 8, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_documentos`
--

DROP TABLE IF EXISTS `tipos_documentos`;
CREATE TABLE IF NOT EXISTS `tipos_documentos` (
  `id_documento` bigint NOT NULL AUTO_INCREMENT,
  `documentos` varchar(20) NOT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipos_documentos`
--

INSERT INTO `tipos_documentos` (`id_documento`, `documentos`) VALUES
(1, 'Cedula de Ciudadanía'),
(2, 'Tarjeta de Identidad'),
(3, 'Pasaporte'),
(4, 'Registro Civil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiquete`
--

DROP TABLE IF EXISTS `tiquete`;
CREATE TABLE IF NOT EXISTS `tiquete` (
  `id_tiquete` bigint NOT NULL AUTO_INCREMENT,
  `id_reserva` bigint NOT NULL,
  `id_pasajero` bigint NOT NULL,
  PRIMARY KEY (`id_tiquete`),
  KEY `id_reserva` (`id_reserva`),
  KEY `id_pasajero` (`id_pasajero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
CREATE TABLE IF NOT EXISTS `vuelos` (
  `id_vuelo` bigint NOT NULL AUTO_INCREMENT,
  `fecha_vuelo` date NOT NULL,
  `destino` varchar(40) NOT NULL,
  `origen` varchar(40) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_avion` bigint NOT NULL,
  PRIMARY KEY (`id_vuelo`),
  KEY `id_avion` (`id_avion`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id_vuelo`, `fecha_vuelo`, `destino`, `origen`, `precio`, `tipo`, `id_avion`) VALUES
(1, '2025-11-05', 'Bogotá', 'Medellín', 250000, '0', 1),
(2, '2025-11-06', 'Cali', 'Bogotá', 320000, '1', 2),
(3, '2025-11-07', 'Cartagena', 'Barranquilla', 280000, '0', 3),
(4, '2025-11-08', 'Medellín', 'Pereira', 260000, '1', 4),
(5, '2025-11-09', 'Santa Marta', 'Cali', 340000, '0', 5),
(6, '2025-11-10', 'Bucaramanga', 'Bogotá', 210000, '1', 6),
(7, '2025-11-11', 'Manizales', 'Medellín', 190000, '0', 7),
(8, '2025-11-12', 'Cúcuta', 'Cartagena', 330000, '1', 8),
(9, '2025-11-13', 'Pasto', 'Bogotá', 270000, '0', 9),
(10, '2025-11-14', 'Neiva', 'Cali', 310000, '1', 10),
(11, '2025-11-15', 'Montería', 'Medellín', 230000, '0', 1),
(12, '2025-11-16', 'Villavicencio', 'Bogotá', 180000, '1', 2),
(13, '2025-11-17', 'Leticia', 'Bogotá', 780000, '0', 3),
(14, '2025-11-18', 'Riohacha', 'Barranquilla', 250000, '1', 4),
(15, '2025-11-19', 'Sincelejo', 'Cali', 270000, '0', 5),
(16, '2025-11-20', 'Armenia', 'Medellín', 220000, '1', 6),
(17, '2025-11-21', 'Tunja', 'Bogotá', 160000, '0', 7),
(18, '2025-11-22', 'Ipiales', 'Pasto', 210000, '1', 8),
(19, '2025-11-23', 'Yopal', 'Bogotá', 240000, '0', 9),
(20, '2025-11-24', 'Popayán', 'Cali', 200000, '1', 10),
(21, '2025-11-25', 'Bogotá', 'Santa Marta', 350000, '0', 1),
(22, '2025-11-26', 'Medellín', 'Cúcuta', 290000, '1', 2),
(23, '2025-11-27', 'Cartagena', 'Bogotá', 370000, '0', 3),
(24, '2025-11-28', 'Cali', 'Barranquilla', 300000, '1', 4),
(25, '2025-11-29', 'Santa Marta', 'Medellín', 260000, '0', 5),
(26, '2025-11-30', 'Bogotá', 'Pereira', 280000, '1', 6),
(27, '2025-12-01', 'Bucaramanga', 'Cali', 310000, '0', 7),
(28, '2025-12-02', 'Villavicencio', 'Bogotá', 230000, '1', 8),
(29, '2025-12-03', 'Neiva', 'Medellín', 220000, '0', 9),
(30, '2025-12-04', 'Popayán', 'Bogotá', 250000, '1', 10),
(31, '2025-12-05', 'Cartagena', 'Santa Marta', 190000, '0', 1),
(32, '2025-12-06', 'Cali', 'Medellín', 270000, '1', 2),
(33, '2025-12-07', 'Bogotá', 'Cúcuta', 330000, '0', 3),
(34, '2025-12-08', 'Pasto', 'Cali', 310000, '1', 4),
(35, '2025-12-09', 'Montería', 'Bogotá', 280000, '0', 5),
(36, '2025-12-10', 'Riohacha', 'Medellín', 350000, '1', 6),
(37, '2025-12-11', 'Tunja', 'Bogotá', 160000, '0', 7),
(38, '2025-12-12', 'Armenia', 'Cali', 210000, '1', 8),
(39, '2025-12-13', 'Manizales', 'Bogotá', 190000, '0', 9),
(40, '2025-12-14', 'Bucaramanga', 'Cartagena', 250000, '1', 10),
(41, '2025-12-15', 'Santa Marta', 'Bogotá', 340000, '0', 1),
(42, '2025-12-16', 'Cali', 'Pasto', 300000, '1', 2),
(43, '2025-12-17', 'Bogotá', 'Barranquilla', 360000, '0', 3),
(44, '2025-12-18', 'Medellín', 'Santa Marta', 320000, '1', 4),
(45, '2025-12-19', 'Cartagena', 'Cali', 280000, '0', 5),
(46, '2025-12-20', 'Bogotá', 'Montería', 300000, '1', 6),
(47, '2025-12-21', 'Villavicencio', 'Medellín', 220000, '0', 7),
(48, '2025-12-22', 'Neiva', 'Bogotá', 240000, '1', 8),
(49, '2025-12-23', 'Pasto', 'Cali', 250000, '0', 9),
(50, '2025-12-24', 'Riohacha', 'Bogotá', 270000, '1', 10),
(51, '2025-11-05', 'Bogotá', 'Medellín', 500000, '1', 1),
(52, '2025-11-06', 'Cali', 'Bogotá', 320000, '0', 2),
(53, '2025-11-07', 'Cartagena', 'Barranquilla', 560000, '1', 3),
(54, '2025-11-08', 'Medellín', 'Pereira', 260000, '0', 4),
(55, '2025-11-09', 'Santa Marta', 'Cali', 680000, '1', 5),
(56, '2025-11-10', 'Bucaramanga', 'Bogotá', 210000, '0', 6),
(57, '2025-11-11', 'Manizales', 'Medellín', 380000, '1', 7),
(58, '2025-11-12', 'Cúcuta', 'Cartagena', 330000, '0', 8),
(59, '2025-11-13', 'Pasto', 'Bogotá', 540000, '1', 9),
(60, '2025-11-14', 'Neiva', 'Cali', 310000, '0', 10),
(61, '2025-11-15', 'Montería', 'Medellín', 460000, '1', 1),
(62, '2025-11-16', 'Villavicencio', 'Bogotá', 180000, '0', 2),
(63, '2025-11-17', 'Leticia', 'Bogotá', 1560000, '1', 3),
(64, '2025-11-18', 'Riohacha', 'Barranquilla', 250000, '0', 4),
(65, '2025-11-19', 'Sincelejo', 'Cali', 540000, '1', 5),
(66, '2025-11-20', 'Armenia', 'Medellín', 220000, '0', 6),
(67, '2025-11-21', 'Tunja', 'Bogotá', 320000, '1', 7),
(68, '2025-11-22', 'Ipiales', 'Pasto', 210000, '0', 8),
(69, '2025-11-23', 'Yopal', 'Bogotá', 480000, '1', 9),
(70, '2025-11-24', 'Popayán', 'Cali', 200000, '0', 10),
(71, '2025-11-25', 'Bogotá', 'Santa Marta', 700000, '1', 1),
(72, '2025-11-26', 'Medellín', 'Cúcuta', 290000, '0', 2),
(73, '2025-11-27', 'Cartagena', 'Bogotá', 740000, '1', 3),
(74, '2025-11-28', 'Cali', 'Barranquilla', 300000, '0', 4),
(75, '2025-11-29', 'Santa Marta', 'Medellín', 520000, '1', 5),
(76, '2025-11-30', 'Bogotá', 'Pereira', 280000, '0', 6),
(77, '2025-12-01', 'Bucaramanga', 'Cali', 620000, '1', 7),
(78, '2025-12-02', 'Villavicencio', 'Bogotá', 230000, '0', 8),
(79, '2025-12-03', 'Neiva', 'Medellín', 440000, '1', 9),
(80, '2025-12-04', 'Popayán', 'Bogotá', 250000, '0', 10);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD CONSTRAINT `asientos_ibfk_1` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id_avion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asientos_pasajero`
--
ALTER TABLE `asientos_pasajero`
  ADD CONSTRAINT `asientos_pasajero_ibfk_2` FOREIGN KEY (`id_pasajero`) REFERENCES `pasajeros` (`id_pasajero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asientos_pasajero_ibfk_3` FOREIGN KEY (`id_asiento`) REFERENCES `asientos` (`id_asiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asientos_pasajero_ibfk_4` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compradores`
--
ALTER TABLE `compradores`
  ADD CONSTRAINT `compradores_ibfk_1` FOREIGN KEY (`tipo_doc`) REFERENCES `tipos_documentos` (`id_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD CONSTRAINT `pasajeros_ibfk_1` FOREIGN KEY (`tipo_doc`) REFERENCES `tipos_documentos` (`id_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasajeros_ibfk_2` FOREIGN KEY (`genero`) REFERENCES `generos` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id_vuelo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_comprador`) REFERENCES `compradores` (`id_comprador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD CONSTRAINT `tiquete_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tiquete_ibfk_2` FOREIGN KEY (`id_pasajero`) REFERENCES `pasajeros` (`id_pasajero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id_avion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
