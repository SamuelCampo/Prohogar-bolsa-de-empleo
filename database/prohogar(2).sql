-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-04-2019 a las 12:30:21
-- Versión del servidor: 5.7.25-0ubuntu0.18.04.2
-- Versión de PHP: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prohogar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aptitudes`
--



INSERT INTO `ciudad` (`id`, `pais_id`, `nombre`) VALUES
(1, 1, 'Quito'),
(2, 1, 'Guayaquil'),
(3, 1, 'Cuenca'),
(4, 1, 'Manta'),
(5, NULL, 'Ambato'),
(6, NULL, 'Ibarra'),
(7, NULL, 'Riobamba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `

`
--

CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `sexo_id` int(11) DEFAULT NULL,
  `signo_zodiaco_id` int(11) DEFAULT NULL,
  `estado_civil_id` int(11) DEFAULT NULL,
  `horario_trabajo_id` int(11) DEFAULT NULL,
  `vivienda_id` int(11) DEFAULT NULL,
  `raza_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `tipo_sangre_id` int(11) DEFAULT NULL,
  `estudios_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `tipo_trabajo_id` int(11) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL,
  `sector_vivienda_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biografia` longtext COLLATE utf8_unicode_ci,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicio` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carnet` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificado` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `cedula` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hijos` int(11) DEFAULT NULL,
  `madre_soltera` tinyint(1) DEFAULT NULL,
  `ligadura` tinyint(1) DEFAULT NULL,
  `horas_libres` tinyint(1) DEFAULT NULL,
  `discapacidad` tinyint(1) DEFAULT NULL,
  `conducir` tinyint(1) DEFAULT NULL,
  `capacitacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aspiracion_salarial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatura` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peso` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_discapacidad` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `porcentaje_discapacidad` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_cocina` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_limpieza` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_plancha` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licencia_id` int(11) DEFAULT NULL,
  `tiene_hijos` tinyint(1) DEFAULT NULL,
  `detalle_Hijos` longtext COLLATE utf8_unicode_ci,
  `licenciasimagenes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cedulasimagenes ` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otra_enfermedad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otrocelular` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiempoarriendo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `fecha_suscripcion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curriculum`
--



--
-- Estructura de tabla para la tabla `curriculum_aptitudes`
--

CREATE TABLE `curriculum_aptitudes` (
  `curriculum_id` int(11) NOT NULL,
  `aptitudes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum_enfermedades`
--

CREATE TABLE `curriculum_enfermedades` (
  `curriculum_id` int(11) NOT NULL,
  `enfermedades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curriculum_enfermedades`
--

INSERT INTO `curriculum_enfermedades` (`curriculum_id`, `enfermedades_id`) VALUES
(43, 8),
(48, 8),
(88, 8),
(172, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum_idiomas`
--

CREATE TABLE `curriculum_idiomas` (
  `curriculum_id` int(11) NOT NULL,
  `idiomas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curriculum_idiomas`
--

INSERT INTO `curriculum_idiomas` (`curriculum_id`, `idiomas_id`) VALUES
(8, 1),
(8, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(33, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 1),
(41, 3),
(42, 3),
(43, 1),
(43, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 1),
(54, 3),
(55, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(74, 3),
(75, 3),
(77, 3),
(78, 3),
(79, 3),
(81, 3),
(82, 3),
(83, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(96, 3),
(97, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(105, 3),
(106, 1),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(118, 3),
(119, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(149, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(168, 3),
(169, 1),
(172, 3),
(173, 3),
(174, 3),
(175, 3),
(176, 3),
(177, 3),
(178, 3),
(180, 1),
(180, 3),
(181, 3),
(182, 1),
(183, 3),
(184, 3),
(185, 3),
(186, 3),
(187, 1),
(189, 3),
(190, 3),
(191, 3),
(193, 3),
(194, 2),
(194, 3),
(195, 1),
(195, 3),
(196, 3),
(198, 3),
(201, 1),
(201, 3),
(202, 3),
(203, 3),
(204, 3),
(205, 3),
(206, 3),
(207, 3),
(208, 3),
(209, 3),
(210, 3),
(211, 3),
(212, 3),
(213, 3),
(214, 3),
(215, 3),
(216, 3),
(217, 3),
(218, 3),
(219, 3),
(220, 3),
(221, 2),
(221, 3),
(223, 3),
(224, 3),
(225, 3),
(226, 3),
(227, 3),
(228, 3),
(229, 3),
(230, 3),
(231, 3),
(232, 3),
(233, 3),
(234, 3),
(235, 3),
(236, 3),
(237, 3),
(238, 3),
(239, 1),
(239, 2),
(239, 3),
(240, 3),
(241, 3),
(242, 3),
(243, 1),
(243, 3),
(244, 3),
(245, 3),
(246, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum_intereses`
--

CREATE TABLE `curriculum_intereses` (
  `curriculum_id` int(11) NOT NULL,
  `intereses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curriculum_intereses`
--

INSERT INTO `curriculum_intereses` (`curriculum_id`, `intereses_id`) VALUES
(8, 4),
(12, 3),
(12, 4),
(12, 5),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 2),
(14, 5),
(15, 3),
(15, 4),
(15, 5),
(16, 3),
(16, 4),
(16, 5),
(17, 5),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(19, 3),
(19, 5),
(20, 2),
(21, 3),
(22, 3),
(22, 4),
(22, 5),
(23, 3),
(23, 5),
(25, 3),
(25, 4),
(25, 5),
(26, 5),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 3),
(28, 5),
(29, 3),
(29, 4),
(29, 5),
(31, 2),
(31, 5),
(32, 3),
(32, 4),
(32, 5),
(33, 3),
(33, 5),
(35, 4),
(35, 5),
(36, 5),
(36, 6),
(37, 5),
(38, 3),
(38, 4),
(38, 5),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(41, 2),
(41, 4),
(41, 6),
(42, 6),
(43, 4),
(43, 5),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(47, 2),
(47, 5),
(47, 6),
(48, 3),
(49, 5),
(50, 3),
(50, 4),
(50, 5),
(51, 4),
(51, 5),
(52, 3),
(52, 5),
(53, 5),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(55, 2),
(55, 3),
(55, 4),
(55, 5),
(55, 6),
(57, 3),
(57, 4),
(57, 5),
(58, 2),
(58, 3),
(58, 4),
(58, 5),
(59, 2),
(59, 5),
(59, 6),
(60, 2),
(60, 3),
(60, 4),
(60, 5),
(60, 6),
(61, 3),
(62, 2),
(62, 3),
(62, 4),
(62, 5),
(62, 6),
(63, 5),
(64, 3),
(64, 4),
(64, 5),
(65, 3),
(65, 4),
(65, 5),
(66, 5),
(67, 3),
(67, 4),
(67, 5),
(68, 5),
(69, 3),
(69, 4),
(69, 5),
(70, 3),
(70, 5),
(71, 5),
(72, 5),
(74, 5),
(75, 3),
(75, 5),
(77, 5),
(78, 5),
(79, 5),
(80, 3),
(80, 4),
(80, 5),
(81, 5),
(82, 2),
(82, 3),
(82, 5),
(83, 3),
(83, 5),
(84, 5),
(85, 3),
(85, 4),
(85, 5),
(86, 3),
(87, 4),
(87, 5),
(88, 3),
(88, 5),
(89, 4),
(90, 3),
(90, 4),
(90, 5),
(91, 5),
(92, 5),
(93, 2),
(93, 3),
(93, 4),
(93, 5),
(93, 6),
(94, 3),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 3),
(96, 4),
(96, 5),
(97, 3),
(97, 4),
(97, 5),
(99, 3),
(99, 4),
(99, 5),
(100, 3),
(100, 4),
(100, 5),
(101, 2),
(101, 5),
(102, 3),
(103, 5),
(105, 3),
(106, 2),
(106, 3),
(106, 4),
(106, 5),
(107, 3),
(107, 4),
(107, 5),
(108, 5),
(109, 3),
(109, 5),
(110, 4),
(110, 5),
(111, 3),
(111, 5),
(112, 2),
(112, 3),
(112, 4),
(112, 5),
(113, 5),
(115, 5),
(116, 2),
(116, 3),
(116, 4),
(116, 5),
(118, 3),
(118, 4),
(118, 5),
(119, 3),
(119, 4),
(119, 5),
(121, 4),
(121, 5),
(121, 6),
(123, 3),
(123, 5),
(124, 2),
(124, 3),
(124, 5),
(125, 5),
(127, 3),
(127, 5),
(127, 6),
(128, 2),
(128, 3),
(128, 4),
(128, 5),
(129, 3),
(129, 5),
(130, 3),
(131, 2),
(131, 3),
(131, 4),
(131, 5),
(132, 3),
(132, 4),
(133, 2),
(133, 3),
(134, 2),
(134, 3),
(134, 4),
(134, 5),
(135, 3),
(136, 3),
(136, 4),
(136, 5),
(136, 6),
(137, 3),
(137, 4),
(137, 5),
(138, 3),
(138, 4),
(138, 5),
(139, 3),
(139, 5),
(140, 3),
(140, 4),
(140, 5),
(141, 3),
(141, 4),
(141, 5),
(142, 3),
(142, 4),
(142, 5),
(143, 3),
(144, 3),
(144, 4),
(144, 5),
(145, 3),
(145, 4),
(145, 5),
(146, 3),
(146, 4),
(146, 5),
(147, 3),
(147, 5),
(148, 3),
(148, 4),
(149, 3),
(149, 4),
(149, 5),
(149, 6),
(150, 2),
(150, 3),
(150, 5),
(151, 5),
(151, 6),
(152, 3),
(152, 5),
(153, 2),
(153, 3),
(153, 4),
(153, 5),
(154, 5),
(155, 3),
(155, 4),
(155, 5),
(155, 6),
(156, 5),
(157, 2),
(157, 3),
(157, 4),
(157, 5),
(158, 3),
(158, 4),
(158, 5),
(159, 5),
(160, 5),
(161, 5),
(162, 5),
(163, 3),
(163, 4),
(163, 5),
(164, 5),
(165, 2),
(165, 3),
(165, 4),
(165, 5),
(166, 5),
(167, 4),
(167, 5),
(168, 4),
(168, 5),
(169, 4),
(172, 2),
(172, 3),
(172, 4),
(172, 5),
(172, 6),
(173, 5),
(173, 6),
(174, 3),
(174, 4),
(174, 5),
(174, 6),
(176, 2),
(176, 3),
(176, 4),
(176, 5),
(177, 4),
(178, 3),
(178, 4),
(178, 5),
(179, 3),
(180, 4),
(180, 5),
(181, 4),
(182, 4),
(183, 3),
(183, 4),
(184, 3),
(185, 3),
(185, 4),
(185, 5),
(185, 6),
(186, 4),
(186, 5),
(186, 6),
(187, 4),
(187, 5),
(187, 6),
(190, 3),
(190, 4),
(190, 5),
(190, 6),
(191, 4),
(192, 5),
(193, 6),
(194, 3),
(194, 4),
(194, 5),
(195, 4),
(196, 4),
(196, 5),
(198, 3),
(198, 4),
(198, 5),
(198, 6),
(199, 2),
(199, 3),
(199, 4),
(199, 5),
(201, 3),
(201, 4),
(201, 5),
(202, 2),
(202, 3),
(202, 4),
(203, 3),
(203, 5),
(204, 5),
(205, 3),
(205, 4),
(205, 5),
(206, 3),
(206, 5),
(207, 5),
(207, 6),
(208, 4),
(209, 5),
(210, 3),
(210, 4),
(211, 5),
(212, 3),
(212, 4),
(212, 5),
(213, 3),
(213, 4),
(213, 5),
(214, 5),
(215, 3),
(215, 4),
(215, 5),
(216, 3),
(216, 4),
(216, 5),
(217, 2),
(217, 3),
(217, 5),
(218, 3),
(218, 4),
(218, 5),
(219, 2),
(219, 3),
(219, 4),
(219, 5),
(220, 3),
(220, 5),
(221, 2),
(221, 3),
(221, 5),
(222, 3),
(223, 2),
(223, 3),
(223, 4),
(223, 5),
(223, 6),
(224, 4),
(224, 5),
(225, 5),
(226, 2),
(226, 3),
(226, 4),
(226, 5),
(227, 3),
(227, 4),
(227, 5),
(228, 5),
(229, 5),
(230, 4),
(230, 5),
(230, 6),
(231, 2),
(231, 3),
(231, 4),
(231, 5),
(232, 2),
(232, 3),
(232, 4),
(232, 5),
(233, 2),
(233, 3),
(233, 4),
(233, 5),
(234, 4),
(234, 5),
(235, 3),
(235, 4),
(235, 5),
(236, 3),
(236, 4),
(236, 5),
(237, 2),
(237, 3),
(237, 5),
(238, 3),
(239, 5),
(240, 2),
(240, 3),
(240, 5),
(241, 3),
(241, 5),
(242, 5),
(243, 5),
(243, 6),
(244, 4),
(244, 5),
(244, 6),
(245, 3),
(245, 5),
(246, 2),
(246, 3),
(246, 4),
(246, 5),
(247, 3),
(247, 4),
(247, 5),
(248, 3),
(248, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum_responsabilidades`
--

CREATE TABLE `curriculum_responsabilidades` (
  `curriculum_id` int(11) NOT NULL,
  `responsabilidades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curriculum_responsabilidades`
--

INSERT INTO `curriculum_responsabilidades` (`curriculum_id`, `responsabilidades_id`) VALUES
(8, 2),
(8, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(15, 4),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(18, 2),
(18, 3),
(19, 3),
(20, 1),
(20, 2),
(20, 3),
(21, 2),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(24, 2),
(24, 3),
(24, 4),
(25, 2),
(25, 3),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(28, 2),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 3),
(32, 4),
(33, 1),
(33, 3),
(33, 4),
(35, 3),
(36, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(38, 4),
(39, 2),
(39, 3),
(39, 4),
(40, 1),
(40, 2),
(41, 1),
(43, 3),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(48, 3),
(50, 2),
(50, 3),
(52, 3),
(54, 1),
(54, 2),
(54, 3),
(54, 4),
(55, 2),
(55, 3),
(55, 4),
(57, 2),
(58, 4),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(61, 4),
(62, 2),
(62, 3),
(63, 3),
(63, 4),
(64, 1),
(64, 2),
(64, 3),
(65, 1),
(65, 2),
(65, 3),
(66, 3),
(67, 1),
(67, 2),
(67, 3),
(69, 1),
(69, 2),
(69, 3),
(69, 4),
(70, 1),
(71, 3),
(75, 1),
(75, 2),
(76, 1),
(77, 1),
(77, 2),
(77, 4),
(80, 1),
(80, 3),
(80, 4),
(81, 1),
(81, 2),
(81, 3),
(81, 4),
(82, 1),
(82, 2),
(82, 3),
(83, 4),
(84, 1),
(84, 3),
(84, 4),
(85, 1),
(85, 2),
(85, 3),
(85, 4),
(86, 3),
(87, 2),
(87, 3),
(87, 4),
(88, 3),
(88, 4),
(89, 2),
(90, 2),
(90, 3),
(90, 4),
(91, 1),
(91, 2),
(91, 3),
(93, 1),
(93, 3),
(93, 4),
(96, 1),
(96, 2),
(96, 3),
(96, 4),
(99, 1),
(100, 1),
(100, 2),
(100, 3),
(100, 4),
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(103, 1),
(103, 2),
(103, 3),
(103, 4),
(106, 1),
(106, 3),
(106, 4),
(107, 1),
(107, 2),
(107, 3),
(108, 3),
(109, 1),
(109, 2),
(109, 3),
(109, 4),
(110, 1),
(110, 2),
(110, 3),
(110, 4),
(111, 1),
(111, 2),
(111, 3),
(111, 4),
(112, 1),
(112, 2),
(112, 3),
(112, 4),
(113, 4),
(114, 1),
(114, 2),
(114, 3),
(116, 2),
(116, 3),
(118, 1),
(118, 2),
(118, 3),
(119, 1),
(119, 3),
(121, 2),
(121, 3),
(122, 3),
(123, 3),
(124, 1),
(124, 2),
(124, 3),
(127, 1),
(127, 3),
(128, 2),
(128, 3),
(129, 1),
(129, 3),
(129, 4),
(130, 4),
(131, 2),
(131, 3),
(131, 4),
(132, 1),
(132, 2),
(132, 3),
(132, 4),
(133, 3),
(134, 1),
(134, 2),
(134, 3),
(135, 4),
(136, 1),
(136, 2),
(136, 3),
(137, 1),
(137, 2),
(137, 3),
(137, 4),
(138, 1),
(138, 2),
(138, 3),
(139, 1),
(140, 1),
(140, 2),
(140, 3),
(140, 4),
(141, 2),
(141, 3),
(142, 2),
(142, 3),
(143, 3),
(144, 2),
(144, 3),
(144, 4),
(145, 2),
(145, 3),
(146, 1),
(146, 2),
(146, 3),
(147, 3),
(148, 1),
(148, 2),
(148, 3),
(149, 2),
(149, 3),
(150, 1),
(150, 2),
(150, 3),
(153, 1),
(153, 2),
(153, 3),
(153, 4),
(154, 1),
(154, 2),
(154, 3),
(154, 4),
(155, 2),
(155, 3),
(155, 4),
(156, 1),
(156, 2),
(156, 3),
(157, 1),
(157, 2),
(157, 3),
(158, 1),
(158, 2),
(158, 3),
(159, 1),
(160, 1),
(162, 1),
(162, 4),
(164, 4),
(165, 2),
(165, 3),
(165, 4),
(166, 1),
(168, 1),
(168, 2),
(168, 3),
(169, 1),
(169, 2),
(169, 3),
(169, 4),
(172, 4),
(173, 1),
(174, 1),
(174, 2),
(174, 3),
(175, 1),
(175, 3),
(176, 1),
(176, 3),
(177, 3),
(178, 1),
(178, 2),
(178, 3),
(178, 4),
(179, 4),
(180, 1),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(184, 4),
(186, 1),
(186, 2),
(186, 3),
(186, 4),
(189, 1),
(189, 2),
(189, 3),
(190, 1),
(190, 3),
(190, 4),
(191, 1),
(191, 2),
(191, 3),
(191, 4),
(192, 2),
(193, 4),
(194, 2),
(194, 3),
(195, 2),
(196, 1),
(196, 2),
(196, 3),
(198, 1),
(198, 2),
(198, 3),
(198, 4),
(199, 2),
(199, 3),
(199, 4),
(201, 3),
(202, 1),
(202, 2),
(202, 3),
(203, 1),
(203, 3),
(205, 1),
(205, 2),
(205, 3),
(206, 1),
(206, 2),
(206, 3),
(206, 4),
(207, 1),
(208, 2),
(210, 1),
(210, 2),
(210, 3),
(210, 4),
(211, 4),
(212, 3),
(213, 2),
(213, 3),
(214, 1),
(214, 2),
(214, 3),
(215, 1),
(215, 2),
(215, 3),
(215, 4),
(217, 1),
(218, 1),
(218, 3),
(218, 4),
(219, 1),
(219, 2),
(219, 3),
(219, 4),
(220, 2),
(220, 3),
(221, 2),
(221, 3),
(221, 4),
(222, 4),
(223, 1),
(223, 2),
(223, 3),
(223, 4),
(224, 2),
(224, 4),
(226, 1),
(226, 2),
(226, 3),
(226, 4),
(227, 3),
(227, 4),
(228, 1),
(228, 2),
(228, 3),
(228, 4),
(229, 3),
(230, 1),
(230, 2),
(230, 3),
(230, 4),
(231, 2),
(231, 3),
(233, 1),
(233, 2),
(233, 3),
(233, 4),
(234, 1),
(234, 2),
(234, 3),
(236, 1),
(236, 2),
(236, 3),
(236, 4),
(238, 2),
(241, 1),
(241, 2),
(241, 3),
(241, 4),
(242, 3),
(242, 4),
(243, 3),
(244, 1),
(244, 2),
(244, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`id`, `nombre`) VALUES
(3, 'Epilepsia'),
(4, 'Diabetes'),
(5, 'Cáncer'),
(6, 'Asma'),
(7, 'Enfermedades contagiosas'),
(8, 'Alérgic@ a algo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`id`, `nombre`) VALUES
(1, 'Soltero/a'),
(2, 'Casado/a'),
(3, 'Unión libre'),
(4, 'Divorciado/a'),
(5, 'Viudo/a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id`, `nombre`) VALUES
(1, 'Primaria terminada'),
(2, 'Bachiller'),
(3, 'Secundaría incompleta'),
(4, 'Primaria incompleta'),
(5, 'Secundaría en curso'),
(6, 'Superior'),
(7, 'Superior en curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `motivo_salida` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `user_id`, `cargo`, `empresa`, `fechaInicio`, `fechaFin`, `motivo_salida`, `imagen`, `telefono`) VALUES
(1, 17, 'Jefe de Marketing', 'Universidad Israel', '2011-04-01', '2017-01-01', 'Renuncia Voluntaria', NULL, NULL),
(2, 17, 'Niñera', NULL, '2018-01-01', '2018-01-01', NULL, NULL, NULL),
(3, 27, 'Empleada domestica', 'Prohogar', '2016-09-01', '2018-09-01', 'Renuncia', NULL, NULL),
(4, 30, 'Auxiliar de servicios generales', 'Prohogar', '2016-03-01', '2018-01-01', NULL, NULL, NULL),
(5, 31, 'profesor', 'cec', '2011-01-01', '2011-04-01', 'otro trabajo', NULL, NULL),
(6, 31, 'nuevo cargo', 'otro', '2012-05-01', '2014-07-01', NULL, NULL, NULL),
(7, 33, 'LIMPIEZA', 'PROHOGAR', '2016-03-01', '2018-01-01', 'ACTUALIDAD', NULL, NULL),
(8, 33, 'COSTURERA', 'FAMILIA TOAPANTA', '2016-01-01', '2016-01-01', 'ME HIZO ENOJAR LA JEFA', NULL, NULL),
(9, 36, 'niñera', 'casa', '2017-10-01', '2018-05-01', 'la señora dejo de trabajar para quedarse cn el hijito', NULL, NULL),
(10, 48, 'Auxiliar de limpieza', 'Bio limpiezq', '2016-10-01', '2018-02-01', NULL, NULL, NULL),
(12, 50, 'LIDER DE EQUIPO DE LIMPIEZA', 'SOCIEDAD BIBLICA INTERNACIONAL', '2009-05-01', '2015-08-01', 'RECORTE DE PERSONAL', NULL, NULL),
(13, 50, 'MANEJO DE ALIMENTOS', 'UNIDAD EDUCATIVA PARTICULAR MI PEQUEÑO JESUS', '2015-09-01', '2017-07-01', 'MOTIVOS DE SALUD ( DECAÍDA)', NULL, NULL),
(14, 53, 'polifuncional', 'coral hipermarket', '2017-10-01', '2018-05-01', 'recorte de personal', NULL, NULL),
(15, 58, 'IMPULSADORA', 'PROMOGAZA', '2016-02-01', '2017-01-01', 'Operación y recuperación de mi hija', NULL, NULL),
(16, 58, 'IMPULSADORA', 'PROMOGAZA', '2016-02-01', '2017-01-01', 'Operación y recuperación de mi hija', NULL, NULL),
(17, 59, 'empleada domestica', 'busco trabajo tiempo completo al norte de quito', '2018-01-01', '2018-01-01', 'tengo todos los documentos en reagla 0989134774', NULL, NULL),
(18, 66, 'Auxiliar de ventas y mantenimiento; Limpieza del Local; Ayudante y ubicación de productos', 'Agropecuaria   Andrade', '2017-05-01', '2017-12-01', 'Cambio de Domicilio', NULL, NULL),
(19, 66, 'Auxiliar de Geriatría; Limpieza de sus habitaciones; Atención a la tercera edad.', 'Residencia de la tercera edad', '2014-01-01', '2016-12-01', 'Cambio de Domicilio', NULL, NULL),
(20, 66, 'Camarera; Manipulación y Elaboración de Alimentos; Limpieza del Local.', 'Bar Escolar', '2017-01-01', '2017-05-01', 'Cambio de administración', NULL, NULL),
(21, 70, 'Limpieza y recepción Edificio', 'Arq. Marcelo Salazar', '2005-11-01', '2012-10-01', 'Motivos personales', NULL, NULL),
(22, 72, 'LAVAR PLANCHAR LA ROPA COCINAR Y LIMPIEZA', 'PAULINA  SANCHEZ', '2016-08-01', '2018-02-01', 'SE ACABO EL TRABAJO', NULL, NULL),
(26, 72, 'DEPENDIENTE DE FARMACIA', 'DIFARE SA', '2012-04-01', '2015-05-01', 'POR ENFERMEDAD DE MI ABUELIA', NULL, NULL),
(27, 72, 'VENDEDORA DE ZAPATOS', 'CREACIONES MARCELO', '2004-01-01', '2007-01-01', 'EMBARAZO', NULL, NULL),
(28, 75, 'Empaque', 'H&H \"Bodega del TIA\"', '2017-12-01', '2018-01-01', 'Termino de Produccion', NULL, NULL),
(29, 78, 'Ejecutiva de Ventas .', 'Renacer Farma', '2017-08-01', '2017-10-01', NULL, NULL, NULL),
(30, 80, 'Auxiliar de limpieza y mantenimiento', 'Auxilemp (Banco general rumilahui)', '2007-03-01', '2010-09-01', 'Se dio de baja la empresa por que  era tercerizadora', NULL, NULL),
(31, 80, 'Auxiliar de emfermeria', 'Privada a domicilio', '2012-04-01', '2014-07-01', 'Cambio de domicilio', NULL, NULL),
(32, 80, 'Auxiliar de emfermeria', 'Privada a domicilio (cuidado al adulto mayor)', '2014-03-01', '2016-05-01', 'Renuncie  por motivos de salud (cirugia)', NULL, NULL),
(33, 89, 'empleada domestica', 'Leonor jimenez', '2003-02-01', '2013-12-01', 'cambio de casa', NULL, NULL),
(34, 89, 'empleada domestica', 'Cristina Romo', '2016-03-01', '2015-08-01', 'calamidad domestica', NULL, NULL),
(35, 89, 'empleada domestica', 'Sandra  Estrella', '2016-11-01', '2018-05-01', 'no tenian suficiente recursos', NULL, NULL),
(36, 91, 'ATENCION AL CLIENTE VENTAS', 'DISTRIBUIDORA M&Y', '2012-04-01', '2016-03-01', 'CIERRE DE EMPRESA', NULL, NULL),
(37, 95, 'Operario de maquinaria', 'Bratwurst Embutidos Alemanes', '2014-05-01', '2017-05-01', 'Sobre cargo de trabajo y exeso de personal', NULL, NULL),
(38, 75, 'Polifuncional', 'H&H \"Bodega del Tia\"', '2017-12-01', '2018-01-01', 'Finalizacion de Produccion', NULL, NULL),
(39, 100, 'auxiliar de limpieza', 'workforce', '2016-02-01', '2015-08-01', 'termino de contrato', NULL, NULL),
(40, 101, 'Contadora- Pagadora', 'Cuerpo de Ingenieros del Ejercito', '1991-09-01', '2018-01-01', 'Embarazo', NULL, NULL),
(41, 101, 'Agente de Ventas', 'Multigraficas Morales', '2015-07-01', '2018-06-01', 'Remuneración', NULL, NULL),
(42, 103, 'Chofer por contrato', 'CNT', '2015-03-01', '2015-07-01', 'Termino de Contrato', NULL, NULL),
(43, 103, 'Chofer (Taxis)', 'Varias Companias de Taxi', '2015-08-01', '2018-06-01', 'Remuneración', NULL, NULL),
(44, 106, 'Asistente de Centro Infantil', 'Consultorio psicologico Infantil', '2017-04-01', '2018-03-01', 'Finalizo Temporada Vacacional', NULL, NULL),
(45, 25, 'nuevo', 'nuevo', '2016-01-01', '2018-01-01', 'otro trabajo', NULL, NULL),
(46, 126, 'Auxiliar de servicios generales', 'IO', '2015-01-01', '2018-01-01', 'Despido', '5b3d18c1ec2d6.docx', NULL),
(47, 127, 'LIMPIEZA', 'EN DEPARTAMENTOS', '2008-11-01', '2018-03-01', 'POR FALTA DE RECURSOS ECONOMICPS', NULL, NULL),
(48, 129, 'Empleada domeatica', 'Casa', '2015-05-01', '2018-07-01', 'Inconformidad  con el sueldo', NULL, NULL),
(49, 135, 'Auxiliar de Limpiez', 'Asowash', '2017-05-01', '2017-10-01', 'Fin de contrato', NULL, NULL),
(50, 135, 'Empleada Domestica', 'Reinatex', '2017-11-01', '2018-07-01', 'Fin de contrato', NULL, NULL),
(51, 137, 'polifuncional, limpieza auxiliar de cocina', 'Huaxia Real', '2018-01-01', '2018-01-01', 'termino de trabajo oriente', NULL, NULL),
(52, 137, 'perchero, ayudante de bodea, servicio al cliente, perchero', 'DILIPA', '2018-01-01', '2018-01-01', 'termino de contrato', NULL, NULL),
(53, 137, 'auxiliar de cocina, limpieza, camarero', 'Mishan Services', '2018-01-01', '2018-01-01', 'termina de contrato petrolera', NULL, NULL),
(54, 137, 'preparador de jarabe montarcarguista, limpieza', 'Fruit', '2018-01-01', '2018-01-01', 'cierre de fabrica', NULL, NULL),
(55, 144, 'Actividades Domésticas y Limpieza', 'Lcda. María Feliza González.', '2007-02-01', '2018-07-01', 'Se continua trabajando fines de semana.', NULL, NULL),
(56, 144, 'Cuidado de adultos mayores', 'Sra. Magdalena Solórzano', '2018-04-01', '2010-01-01', 'Muerte de adultos mayores', NULL, NULL),
(57, 144, 'Auxiliar de enfermería', 'Hospital Geriátrico Plenitud', '2016-03-01', '2016-05-01', 'Por pasantias', NULL, NULL),
(58, 145, 'Auxiliar de odontología', 'Clinica dental de la doctora Gabriela Santos', '1999-02-01', '2001-03-01', 'por estudio', NULL, NULL),
(59, 149, 'Polifuncional', 'Mr.Joy', '2015-12-01', '2016-09-01', 'Temporal', NULL, NULL),
(60, 150, 'Ayudante de cocina y polifuncional', 'MARILOLYS KATERING SERVICE', '2008-01-01', '2017-01-01', 'Cuidado de mi hija menor', NULL, NULL),
(61, 153, 'LIMPIEZA , AMA DE CASA , NIÑERA', 'CASA INDEPENDIENTE', '2014-02-01', '2018-01-01', 'CAMBIO DE DOMICILIO', NULL, NULL),
(62, 154, 'AUXILIAR DE LIMPIEZA', 'DIMASEO', '2016-08-01', '2016-12-01', NULL, NULL, NULL),
(63, 155, 'auxiliar de limpieza', 'limpieza 360', '2016-07-01', '2018-01-01', 'terminacion del contrato', '5b49220bac573.docx', NULL),
(65, 158, 'auxiliar de limpieza', 'SUNSHINEAT', '2016-01-01', '2018-01-01', 'Mejorar empleo', '5b4cbd474c049.jpg', NULL),
(66, 158, 'auxiliar de limpieza', 'MAYFRABELES', '2011-08-01', '2017-06-01', 'Recorte de personal', '5b4cc68c2396d.pdf', NULL),
(67, 159, 'Empleada Doméstica', 'Casa de la Sra. Jacqueline Almeida', '2016-06-01', '2018-06-01', 'Renuncia Voluntaria por salud', NULL, NULL),
(68, 159, 'Recepcionista', 'Fundación Guayasamin', '1995-10-01', '1998-03-01', 'Renuncia Voluntaria por temas personales', NULL, NULL),
(69, 161, 'Limpieza domicilio', 'Casa privada', '2013-07-01', '2018-01-01', 'Autualme', NULL, NULL),
(70, 164, 'Administradora', 'dannysnet', '2013-01-01', '2018-06-01', 'venta del negocio', NULL, NULL),
(71, 25, 'nuevo cargo', 'unilimpio', '2018-01-01', '2009-01-01', 'otro trabajo', NULL, NULL),
(72, 167, 'AUXILIAR DE LIMPIEZA', 'COLDECON', '2010-08-01', '2011-08-01', 'TERMINO DE CONTRATO', NULL, NULL),
(73, 167, 'Empleada Doméstica', 'JAIME ENRIQUEZ', '2007-06-01', '2009-06-01', 'Cuidado de mi hija menor', NULL, NULL),
(75, 173, 'POLIFUNCIONAL', 'PANADERIA MULTIPAN', '2017-01-01', '2017-04-01', 'FINALIZACION DEL CONTRATO', NULL, NULL),
(76, 173, 'LIMPIEZA', 'DIFERENTES CASAS', '2015-04-01', '2018-01-01', NULL, NULL, NULL),
(77, 130, 'Empleada Doméstica', 'Crnl. Lucio Gutierrez', '2015-01-01', '2018-01-01', 'ACTUALIDAD', NULL, NULL),
(78, 130, 'Empleada Doméstica', 'Sra. Rosa Yanez', '2003-01-01', '2010-01-01', 'Por jubilación de empleadores ya no me podían pagar, pero les ayudo de vez en cuando', NULL, NULL),
(79, 183, 'Empleada Doméstica', 'FAMILIA SIMON (ESPAÑOLES)', '2006-01-01', '2017-01-01', 'LOS SEÑORES SE REGRESARON A ESPAÑA :(', NULL, '0034605394831'),
(80, 187, 'Empleada y Niñera', NULL, '2015-02-01', '2018-06-01', 'Por bajos de recursos económicos', NULL, '3382126'),
(81, 189, 'conserje del limpieza', 'colegio de abogados', '2002-01-01', '2006-07-01', 'cambio de directiva', '5b59fe37d3ec9.jpg', '2903408 \\ 25667617'),
(82, 189, 'limpieza del hogar', 'sra Maria Belen Jervis', '2013-02-01', '2015-03-01', 'dejaron el país', '5b5a1754679ee.jpg', '2249251- 0982703929'),
(83, 189, 'conserje del limpieza', 'Metro cafe', '2009-06-01', '2012-08-01', 'por embarazo riesgosa', '5b5a17f14b647.jpg', '2552570 - 3318052'),
(84, 189, 'limpieza del hogar', 'sr Juan Mario Alvarracin', '2016-01-01', '2017-01-01', 'solo era medio tiempo y yo quiero tiempo completo', '5b5a1916bd942.jpg', '0984680956'),
(85, 192, 'Cuidado adulto mayor', 'Casa', '2017-10-01', '2018-06-01', 'Por que contrto a una anterior empleada', NULL, '(O2) 334 09663'),
(86, 192, 'Cuidado adulto mayor', 'Casa', '2017-11-01', '2018-06-01', 'Por que contrto a una anterior empleada', NULL, '(O2) 334 09663'),
(87, 200, 'Servicios varios', 'Cooperativa de Transporte Interprovincial de Pasajeros en Buses ALOAG', '2016-01-01', '2017-01-01', 'Problemas familiares', '5b6372dd38d0f.jpg', '2389652'),
(88, 201, 'limpieza', 'Oficinas', '2017-02-01', '2018-02-01', 'trabajo ocasional dos días a la semana oficina Jurìdicsa', NULL, '2560388'),
(89, 209, 'operaria', 'learsi s.a', '1999-04-01', '2003-06-01', 'cierre de planta', NULL, NULL),
(131, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(138, 209, 'ama de llaves', 'familia Maldonado Tobar', '2009-05-01', '2014-11-01', 'Viaje patronos', NULL, '14045878853'),
(139, 209, 'ama de llaves', 'Familia Santos Maldonado', '2014-11-01', '2018-08-01', 'en curso', NULL, '0994272802'),
(148, 209, 'polifuncional', 'lavanderia ROSSE', '2014-12-01', '2018-08-01', 'en curso', NULL, '0987879943'),
(173, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(176, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(177, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(182, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(186, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(191, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(193, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(197, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(199, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(200, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(201, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(202, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(203, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(204, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(205, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(207, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(208, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(209, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(210, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(211, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(212, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(213, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(214, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(215, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(216, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(217, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(218, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(219, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(220, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(221, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(222, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(223, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(224, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(225, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(226, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(227, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(228, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(229, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(230, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(231, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(232, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(233, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(234, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(235, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(236, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(237, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(238, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(239, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(240, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(241, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(242, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(243, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(244, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(245, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(246, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(247, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(248, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(249, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(250, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(251, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(252, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(253, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(254, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(255, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(256, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(257, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(258, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(259, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(260, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(261, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(262, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(263, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(264, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(265, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(266, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(267, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(268, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(269, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(270, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(271, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(272, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(273, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(274, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(275, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(276, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(277, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(278, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(279, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(280, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(281, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(282, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(283, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(284, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(285, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(286, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(287, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(288, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(289, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(290, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(291, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(292, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(293, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(294, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(295, 209, 'bodeguera', 'consorcio gratol s.a', '2004-09-01', '2008-12-01', 'cierre de planta', NULL, NULL),
(302, 213, 'AUXILIAR DE LIMPIEZA', 'DIMASEO - HOSPITAL DEL IESS', '2017-01-01', '2018-01-01', 'Hasta ahora no me pagan el sueldo', NULL, '2529908'),
(303, 217, 'Auxiliar de Limpieza', 'IMPORFERRI S.A.', '2016-04-01', '2017-06-01', 'Quiebra de la Empresa', '5b68c595ad647.pdf', '022030036 ext.105'),
(304, 217, 'Auxiliar de Limpieza', 'IMPORFERRI S.A.', '2016-04-01', '2017-06-01', 'Quiebra de la Empresa', '5b68c5b54c551.pdf', '022030036 ext.105'),
(305, 217, 'Auxiliar de Limpieza', 'IMPORFERRI S.A.', '2016-04-01', '2017-06-01', 'Quiebre de la Empresa', '5b68c91260743.pdf', '022030036 ext.105'),
(306, 218, 'Linpiesa de departamentos', 'Directo', '2017-01-01', '2018-02-01', NULL, '5b68ef6e3a1c3.jpg', NULL),
(307, 218, 'Linpiesa de departamentos', 'Directo', '2017-01-01', '2018-02-01', NULL, '5b68ef9a11c00.jpg', NULL),
(308, 227, 'ENCARGADA DE LOCAL', 'CIBER CAFE', '2015-04-01', '2017-04-01', 'ESTUDIANTIL', '5b69d4886dddd.docx', '0962825506'),
(309, 227, 'ENCARGADA DE LOCAL', 'CIBER CAFE', '2015-04-01', '2017-04-01', 'ESTUDIANTIL', '5b69d48cb0945.docx', '0962825506'),
(310, 155, NULL, NULL, '2018-01-01', '2018-01-01', NULL, '5b6a13688d6c4.docx', NULL),
(311, 229, 'Ayudante de cocina', 'Pollo loco', '2014-01-01', '2018-03-01', 'Entregaron el local', '5b6b62c7bffb6.jpg', '0983107638'),
(312, 229, 'Ayudante de cocina', 'Pollo loco', '2014-01-01', '2018-03-01', 'Entregaron el local', '5b6b643e65c95.jpg', '0983107638'),
(313, 205, 'EMPLEADA DOMESTICA', 'EMBAJADOR MANUEL JIJON CAMAÑO', '1977-01-01', '1980-12-01', 'SE FUE A OTRO PAIS EL JEFE', NULL, NULL),
(314, 205, 'EMPLEADA DOMESTICA', 'SRA GLORIA DE PALACIOS', '1981-01-01', '2000-01-01', 'CAMBIO DE RESIDENCIA JEFA', NULL, '0999237252'),
(315, 205, 'AUXILIAR DE LIMPIEZA', 'FRANCER', '2012-08-01', '2012-12-01', 'TERMINACION CONTRATO', NULL, NULL),
(316, 213, NULL, NULL, '2017-12-01', '2018-05-01', 'No m pagaban mi salario', NULL, NULL),
(317, 249, 'Empleada Doméstica', 'Familia De la Cruz', '2017-01-01', '2018-01-01', 'ACTUALIDAD', NULL, '0988143716'),
(318, 249, 'Limpieza', 'ATU', '2018-01-01', '2018-01-01', 'TÉRMINO DE CONTRATO', NULL, NULL),
(319, 256, 'Empleada Doméstica', 'Familia Rodas  Espinel - Sra Fanny', '2017-01-01', '2018-01-01', 'El Sr. Fallecio', NULL, '099739199-2227357'),
(320, 256, 'Empleada Doméstica', 'Dr. Carlos de Otero', '2015-01-01', '2016-01-01', 'Cambio de domicilio fuera de la Ciudad', NULL, '3818377/099234681'),
(321, 256, 'Cocinera', 'Francisco Sanabria - Embajada de España', '2010-01-01', '2011-01-01', 'TERMINO DE CONTRATO', NULL, '2564377-2564390'),
(322, 256, 'Empleada Doméstica', 'Familia Rodas  Espinel - Sra Fanny', '2017-01-01', '2018-01-01', 'FALLECIO EL SR', NULL, '099739199-2227357'),
(324, 261, 'Analista Servicio Post Venta', 'Diario El Universal C.A.', '1996-03-01', '2018-04-01', 'Renuncia', NULL, '0212 5052235'),
(325, 259, 'Limpieza', 'Seguros Banvalor', '2001-06-01', '2010-03-01', 'Expropiacion de Empresa', NULL, NULL),
(326, 282, 'Empleada domestica puertas adentro', 'Casa', '2016-04-01', '2018-04-01', 'Cambio de país', NULL, '0993885513'),
(327, 286, 'Dependiente y venta de Miscelaneas.', 'Industria y Servicios Minas de Matahambre', '2018-01-01', '2018-01-01', 'Superación', NULL, NULL),
(328, 286, 'Recepción y ventas.', 'Panadería y Pastelería de Pons.', '2018-01-01', '2018-01-01', 'Superación', NULL, NULL),
(329, 286, 'Recepción y ventas.', 'Plaza de Comercio Pons.', '2018-01-01', '2018-01-01', 'viaje', NULL, NULL),
(330, 283, 'empleada domestica', NULL, '2003-09-01', '2002-02-01', 'ya no requerían mis servicios', NULL, NULL),
(331, 283, 'empleada domestica', NULL, '2012-07-01', '2014-01-01', 'ya no requerían mis servicios', NULL, NULL),
(332, 283, 'empleada domestica', NULL, '2014-02-01', '2018-07-01', 'ya no requerían mis servicios', NULL, NULL),
(333, 288, 'AYUDANTE DE COCINA', 'RESTAURANT EL GOURMET CHINO', '2006-05-01', '2008-05-01', 'Cierre de local', NULL, NULL),
(334, 288, 'AYUDANTE DE COCINA', 'RESTAURANT EL DRAGÓN CHINO', '2011-04-01', '2012-04-01', 'SE FUERON DE VIAJE', NULL, NULL),
(335, 288, 'AYUDANTE DE COCINA', 'CLUB TENNIS CLUB', '2012-08-01', '2017-08-01', 'RECORTE DE PERSONAL', NULL, NULL),
(337, 288, 'DOMESTICA', 'SEÑORA LIBERTAD LEON.', '2000-06-01', '2005-06-01', 'CAMBIO DE RESIDENCIA', NULL, NULL),
(339, 300, 'Mantenimiento de Aseo y Oficinas', 'Iglesia  Evangélica de Iñaquito  (IEVI)', '2013-05-01', '2018-02-01', 'Reducción de personal.', NULL, '227-2080    2272698'),
(340, 303, 'Empleada Doméstica', 'FAMILIA CURICAMA', '2016-01-01', '2018-01-01', 'ME VINE A VIVIR A QUITO', NULL, '0987993853'),
(341, 306, 'Empleada Domestica', 'Sra. María Montserrat Albán Ricaute', '2018-09-01', '2018-08-01', 'Trabajo estable', '5b8f407f36a99.jpg', '0992521875'),
(342, 306, 'Empleada Domestica', 'María Montserrat Albán Ricaurte', '2016-09-01', '2018-08-01', 'Trabajo estable', '5b8f426c80390.jpg', '0992521875'),
(343, 313, 'empleada domestica', 'familia barrientos', '2015-10-01', '2018-02-01', 'situación económica', NULL, '098 251 4057'),
(344, 316, 'operario de aseo', 'Diamante/cali-colombia', '2018-01-01', '2018-04-01', 'renuncia voluntaria por viaje al Ecuador', '5b9c10dc2b450.jpg', '5147777'),
(345, 321, 'AMA DE CASA Y NIÑERA', 'AMELIA VELA', '2015-09-01', '2018-09-01', 'VIAJO A COLOMBIA A SU TIERRA PORQUE SE SEPARO CON SU ESPOSO.', NULL, '0997757803'),
(348, 323, 'Maestra Parvularia y asistente de dirección', 'Centro de Desarrollo Acuarela', '2010-11-01', '2016-09-01', 'Cierre de la Institución', NULL, '0997619839'),
(349, 323, 'Polifuncional y Niñera', 'Cuidado infantil diurno', '2016-10-01', '2018-09-01', 'Crecio el Niño', NULL, '0998306083'),
(350, 328, 'AUXILIAR DE LIMPIEZA Y COCINA', 'CENTRO REGIONAL SALESIANO EL GIRON', '2016-03-01', '2018-05-01', 'BUSQUEDA DE MEJORES OPORTUNIDADES', NULL, '022521315'),
(352, 163, 'Auxiliar de limpieza Hospitalaria', 'Hospital Basico de Ambato', '2016-01-01', '2016-12-01', 'contrato', '5ba0476d7793a.pdf', '0960897600'),
(353, 163, NULL, NULL, '2018-01-01', '2018-01-01', NULL, '5ba047c71c50a.pdf', NULL),
(354, 336, 'Limpieza de oficinas', 'GENELECTRIC  CIA. LTDA.', '2013-04-01', '2015-01-01', 'Termino de contrato', '5ba18799acd7b.docx', '6002801 / 0997202352'),
(355, 331, 'Cuidado de adulto mayor', 'Familia Silvana Estrada', '2015-10-01', '2016-10-01', 'Fallecimiento del adulto mayor', '5ba8e8b6abbad.jpg', '0998402165'),
(356, 331, 'Limpieza', 'Familia Elena Tumipamba', '2013-11-01', '2017-11-01', 'Por motivo de factor tiempo.', '5ba8e98a2a068.jpg', '3211325'),
(357, 339, 'Mesera Polifuncional', 'El Esmeraldeño', '2017-10-01', '2018-03-01', 'Despido Intempestivo', NULL, '0969686485'),
(358, 331, 'limpieza', 'Familia Nelson Andrade', '2009-10-01', '2018-01-01', 'Trabajo en el que aun laboro por medio tiempo.', '5ba8ea17a0cf7.jpg', '0999923603'),
(359, 339, 'Educadora', 'Jardin de Infantes Luis Felipe Borja', '2016-09-01', '2017-02-01', 'Cambio de Lugar del Centro Infantil', NULL, NULL),
(360, 343, 'Eventos', 'Katherine', '2017-06-01', '2018-05-01', 'Cambio de residencia', NULL, '0987289336'),
(361, 343, 'Eventos', 'Katherine', '2017-06-01', '2018-05-01', 'Cambio de residencia', NULL, '0987289336'),
(362, 345, 'LIMPIEZA', 'IMASEN DEL ECUADOR', '2017-01-01', '2018-06-01', 'Empresa dejo la ciudad se fue para Guayaquil', NULL, '2885448/0998877001'),
(363, 358, 'auxiliar de limpieza', 'ALLICLEAN', '2010-10-01', '2015-08-01', 'termino del contrato', NULL, NULL),
(364, 358, 'auxiliar de limpieza', 'ALLICLEAN', '2010-10-01', '2015-08-01', 'termino del contrato', NULL, NULL),
(365, 358, 'auxiliar de limpieza', 'ALLICLEAN', '2010-10-01', '2015-08-01', 'termino del contrato', NULL, NULL),
(366, 368, 'Ayudante de limpieza', 'Apartamentos la almendra', '2016-07-01', '2017-09-01', 'Nuevo empleo', NULL, '-'),
(368, 368, 'Vendedor de articulos para impresoras', 'Refiltoner S.A', '2016-07-01', '2017-09-01', 'Renuncia', NULL, '-'),
(369, 374, 'Dama de compañía', 'Dr. Marcelo Barona', '2016-12-01', '2018-09-01', 'Despido intempestivo', NULL, '0998599249'),
(370, 375, 'Empleada Domestica', 'Ing. Francisco Utretas Cano', '1995-06-01', '2003-06-01', 'Cambio de residencia', '5bb16f2a959eb.jpg', '022920283'),
(371, 375, 'Obrera de Plantación', 'Empresa Flores María Internacional', '2005-09-01', '2012-02-01', 'Cambio de Trabajo', '5bb1701996ba3.jpg', '022350700'),
(372, 375, 'Responsable de Cocina', 'Fundación Sembrar Esperanza', '2005-09-01', '2012-02-01', 'Cambio de Trabajo', '5bb1712b4f5de.jpg', '23540004'),
(373, 387, 'guardia de seguridad', 'fractacel', '2012-07-01', '2012-10-01', 'cambio de trabajo', NULL, NULL),
(374, 387, 'cortador - maquilador - bodeguero', 'A2promo', '2013-08-01', '2018-08-01', 'cierre de fabrica', NULL, '5006583'),
(375, 395, 'cocinera', 'restaurante', '2018-05-01', '2018-09-01', 'calamidad domestica', NULL, '0984998555'),
(376, 409, 'Secretaria', 'ENDE CIA. LTDA.', '2014-08-01', '2018-11-01', 'POCO TRABAJO EN LA EMPRESA', NULL, '2529713'),
(377, 409, 'SECRETARIA', 'ENDE CIA. LTDA.', '2014-08-01', '2018-11-01', 'POCO TRABAJO', NULL, '2529713'),
(378, 430, 'Asistente Comercial', 'Print Easy', '2015-10-01', '2018-07-01', 'Renuncie porque pense que un nuevo trabajo me iba mejor', '5bb26d364af2a.pdf', NULL),
(379, 431, 'impulsadora', 'mamut', '2012-08-01', '2012-09-01', 'trabajo por temporada escolar', NULL, NULL),
(380, 431, 'polifuncional', 'hotel ejido real', '2014-12-01', '2014-04-01', 'estudios', NULL, NULL),
(381, 431, 'impulsadora', 'tony', '2014-09-01', '2014-11-01', 'trabajo por temporada', NULL, NULL),
(382, 431, 'polifubcional', 'restaurante', '2015-01-01', '2018-02-01', 'transporte', NULL, '0984111352'),
(383, 440, 'EMPLEADA DOMESTICA', 'SRA DENNIS ARROYO', '2000-05-01', '2002-01-01', 'SE FUERON A VIVIR LEJOS', NULL, '099606060'),
(384, 441, 'Vendedora y Atención a Cliente', 'Restaurant de Catering Amarilo Ragazzi, SA.', '2017-12-01', '2018-07-01', 'VENTAS BAJAS', NULL, '0996516442'),
(385, 441, 'PROMOTORA', 'Nestle, S.A.', '2015-10-01', '2016-08-01', 'ESTUDIOS', NULL, '+522392483802'),
(386, 447, 'Vendedora de servicios.', 'NUCOPSA', '2006-04-01', '2006-12-01', 'CUIDAR A MIS NIÑAS', NULL, NULL),
(387, 448, 'polifuncional', 'asoserlimshi shika panka', '2017-03-01', '2017-11-01', 'propia  voluntad. X problema de salud. de mi hijo', NULL, '0998166013'),
(388, 448, 'polifuncional', 'asoserlimshi shika panka', '2017-03-01', '2017-11-01', 'propia  voluntad. X problema de salud. de mi hijo', NULL, '0998166013'),
(389, 449, NULL, NULL, '2018-01-01', '2018-01-01', NULL, NULL, NULL),
(390, 453, 'Atencion al publico', 'Las Especies de Miguel', '2017-02-01', '2018-08-01', 'Viaje a Ecuador', NULL, '+582835113373'),
(391, 454, 'Asistente Administrativo', 'Hotel Eurobuilding Express Maiquetía Venezuela', '2017-06-01', '2017-08-01', 'Fin de Pasantias', NULL, NULL),
(392, 455, 'Secretaria-Vendedora', 'MACE', '2014-09-01', '2016-09-01', 'reestructuracion de la empresa', NULL, '022693767'),
(393, 456, 'Servicio al cliente', 'Herbalife', '2013-09-01', '2015-11-01', 'Cuidar a mi hijo.', NULL, NULL),
(394, 427, 'Servicio al cliente', NULL, '2005-01-01', '2008-08-01', 'Cambio de domicilio', NULL, '0979296444'),
(395, 427, 'Niñera', 'Familia Yaguachi', '2015-09-01', '2018-06-01', 'Pérdida de trabajo.', NULL, '0983378458'),
(396, 427, 'Servicio al cliente', 'Micromercado \"Angel\"', '2001-11-01', '2003-10-01', 'Cambio de dueño.', NULL, '3060129'),
(397, 426, 'Polifuncional', 'Confecciones Gualas', '2015-01-01', '2016-11-01', 'Estudios', NULL, '0967579835'),
(398, 469, 'Limpieza', 'Corte nacional de justicia', '2016-02-01', '2018-02-01', 'Término el contrato', '5bb76bc984fb1.jpg', '2839243'),
(399, 471, 'Asistente Contable/ Recepcionista', 'Accounting consulting', '2014-09-01', '2016-05-01', 'Principios paralisis facial.', NULL, '2550615'),
(400, 474, 'mensajeria que haceres domesticos linpeza', 'Esmil------ DR Gonzalo Matovelle Mediavilla', '2015-02-01', '2017-12-01', 'asuntos personales', '5bba8f0bab0d7.jpg', '2526203-2565045 -099'),
(401, 482, 'Rematadora', 'Fabrica ropa de bebe', '2018-01-01', '2018-08-01', 'EMPRESA CERRO FUNCIONES', NULL, NULL),
(402, 482, 'Empleada Domestica', 'Paulina Zurita', '2015-01-01', '2016-01-01', 'SRA SOLO ME PODIA PAGAR MEDIO TIEMPO', NULL, NULL),
(403, 482, 'VENDEDORA', 'GLORIA AGUILAR - TIENDA', '2013-01-01', '2014-01-01', 'ME REGRESE A MI TIERRA GUARANDA', NULL, '6011926-0984926630'),
(404, 485, 'Mantemiento', 'Aeropuerto madrid', '2009-02-01', '2014-04-01', 'Cambio de domicilio', NULL, '0034672924008'),
(405, 485, 'Pintura', 'Marco. Buitrago', '2004-05-01', '2009-09-01', 'Cambio de empresa', NULL, '636550449'),
(406, 485, 'Pintura', 'Marco. Buitrago', '2004-05-01', '2009-09-01', 'Cambio de empresa', NULL, '636550449'),
(407, 490, 'Limpiesa', NULL, '2018-01-01', '2018-01-01', '487', '5bc680b441de9.jpg', '0998494500'),
(408, 490, NULL, NULL, '2018-01-01', '2018-01-01', NULL, NULL, NULL),
(409, 497, 'limpieza', 'aplika', '2003-05-01', '2004-03-01', 'cuidado de mi hijo', NULL, '2277370'),
(410, 502, 'Auxiliar de limpieza', 'Workforce', '2008-08-01', '2011-12-01', 'Finalización de contrato', NULL, '0982453722'),
(411, 502, 'Auxiliar de limpieza', 'Súper clean service', '2011-01-01', '2015-03-01', 'Finalización de contrato', NULL, '022244556'),
(412, 502, 'Servicios Generales', 'Grupasa', '2015-07-01', '2018-06-01', 'Finalización de contrato', NULL, '022040709'),
(413, 502, 'Servicios Generales', 'Grupasa', '2015-07-01', '2018-06-01', 'Finalización de contrato', NULL, '022040709'),
(414, 520, 'Empleada Doméstica', 'Privada', '2012-07-01', '2018-07-01', 'Sin afiliación', '5bd0c25d80b83.pdf', '0996441843'),
(415, 525, NULL, NULL, '2018-01-01', '2018-01-01', NULL, '5bd72f810f28c.docx', NULL),
(416, 527, 'COORDINADOR DE OPERACIONES', 'ALL CLEAN', '2011-10-01', '2018-03-01', 'RENUNCIA POR MOTIVOS PERSONALES', NULL, '2900098'),
(417, 531, 'FACTURADORA', 'MEGAMAXX', '2017-02-01', '2018-10-01', 'FIN DE CONTRATO', NULL, '0985364221'),
(418, 543, 'Supervisor de limpieza', 'Luviher s. A', '2011-02-01', '2018-03-01', 'Renuncia voluntaria', NULL, '2521173'),
(420, 543, 'Supervisor de limpieza', 'Luviher s. A', '2011-03-01', '2018-03-01', 'Renuncia voluntaria', '5be9d7964f5ec.JPG', '2521173'),
(421, 544, 'Limpieza', 'Sindes', '2017-07-01', '2018-07-01', 'Por salud', '5be9ea9e7412e.jpg', '0991356617'),
(423, 541, 'SERVICIO AL CLIENTE-SECRETARIA, OPERADOR DE SISTEMA Y REDES', 'SERVITEC', '2014-04-01', '2016-10-01', 'MOTIVOS PERSONALES', '5beaca30421a2.pdf', '0987211632'),
(424, 541, 'ASESORA COMERCIAL', 'GO FOR CUSTOMER', '2018-10-01', '2018-11-01', 'ESTUDIOS', NULL, '0988056770'),
(425, 557, 'AYUDANTE DE COCINA Y LIMPIEZA', 'CATERING', '2016-09-01', '2018-09-01', 'RENUNCIA', NULL, '0999781379'),
(426, 562, 'ASISTENTE DE LIMPIEZA', 'CASA DE FAMILIA', '2017-07-01', '2018-10-01', 'PERSONAL', NULL, '0959948273'),
(429, 580, 'Servicios generales', 'Colegio Fenández Madrid', '2016-01-01', '2018-01-01', 'No se renovo el contrato', NULL, '0998732468'),
(430, 582, 'AYUDANTE DE CONSTRUCCION Y LIMPIEZA', 'SR FRANCISCO ACONDA', '2018-01-01', '2018-07-01', 'Renuncia Voluntaria', NULL, '099553438'),
(431, 586, 'limpieza de cas y cuidados a una persona de la tercera edad', 'lLAURA XIMENA BUENAÑO PERES', '2016-12-01', '2018-08-01', 'FALLECIMIEMT0 DE LA SEÑORA Q CUIDABA', NULL, '0980212311');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `forma_pago` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaccion` longtext COLLATE utf8_unicode_ci,
  `fecha_transaccion` date DEFAULT NULL,
  `mensaje` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` (`id`, `user_id`, `forma_pago`, `entidad`, `transaccion`, `fecha_transaccion`, `mensaje`) VALUES
(1, 25, 'Deposito/Transacción', 'Pichincha', '4566656464646', '2019-02-25', 'nuevo mensaje'),
(2, 25, 'Deposito/Transacción', 'Pichincha', '12345678', '2019-02-25', 'bajar la guardia'),
(3, 25, 'Deposito/Transacción', 'Pichincha', '123456789', '2019-02-25', 'decreto segundo'),
(4, 25, 'Credito', 'PayPhone', '{\"transactionId\":517155}', '2019-02-25', 'Pago con tarjeta de credito'),
(5, 25, 'Credito', 'PayPhone', '517172', '2019-02-25', 'Pago con tarjeta de credito'),
(6, 25, 'Credito', 'PayPhone', '517176', '2019-02-25', 'Pago con tarjeta de credito'),
(7, 25, 'Credito', 'PayPhone', '517180', '2019-02-25', 'Pago con tarjeta de credito'),
(8, 25, 'Credito', 'PayPhone', '517197', '2019-02-25', 'Pago con tarjeta de credito'),
(9, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-02-25', 'Pago con tarjeta de credito'),
(10, 25, 'Credito', 'PayPhone', '519012', '2019-02-27', 'Pago con tarjeta de credito'),
(11, 25, 'Credito', 'PayPhone', '519083', '2019-02-27', 'Pago con tarjeta de credito'),
(12, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-02-27', 'Pago con tarjeta de credito'),
(13, 25, 'Credito', 'PayPhone', '519167', '2019-02-27', 'Pago con tarjeta de credito'),
(14, 25, 'Credito', 'PayPhone', '519173', '2019-02-27', 'Pago con tarjeta de credito'),
(15, 25, 'Credito', 'PayPhone', '519182', '2019-02-27', 'Pago con tarjeta de credito'),
(16, 25, 'Credito', 'PayPhone', '519186', '2019-02-27', 'Pago con tarjeta de credito'),
(17, 25, 'Credito', 'PayPhone', '519188', '2019-02-27', 'Pago con tarjeta de credito'),
(18, 25, 'Credito', 'PayPhone', '533228', '2019-03-12', 'Pago con tarjeta de credito'),
(19, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-03-12', 'Pago con tarjeta de credito'),
(20, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-03-12', 'Pago con tarjeta de credito'),
(21, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-03-13', 'Pago con tarjeta de credito'),
(22, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-03-13', 'Pago con tarjeta de credito'),
(23, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-03-13', 'Pago con tarjeta de credito'),
(24, 25, 'Credito', 'Paypal', 'Definido por Paypal', '2019-03-13', 'Pago con tarjeta de credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_trabajo`
--

CREATE TABLE `horario_trabajo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horario_trabajo`
--

INSERT INTO `horario_trabajo` (`id`, `nombre`) VALUES
(1, 'De lunes a viernes'),
(2, 'Fines de semana'),
(3, 'Medio tiempo mañana'),
(4, 'Medio tiempo tarde'),
(5, 'Tiempo completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id`, `nombre`) VALUES
(1, 'Ingles'),
(2, 'Frances'),
(3, 'Español');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `intereses`
--

INSERT INTO `intereses` (`id`, `nombre`) VALUES
(2, 'Cocinero/a'),
(3, 'Empleada Domestica'),
(4, 'Niñera'),
(5, 'Limpieza / Servicios complementarios'),
(6, 'Mensajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE `licencia` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`id`, `tipo`) VALUES
(1, 'No profesional tipo A (motos)'),
(2, 'No profesional tipo B'),
(3, 'No profesional tipo F'),
(4, 'Profesional tipo A1'),
(5, 'Profesional tipo C'),
(6, 'Profesional tipo C1'),
(7, 'Profesional tipo D'),
(8, 'Profesional tipo D1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Ecuador'),
(2, 'Colombia'),
(3, 'Venezuela'),
(4, 'Cuba'),
(5, 'Perú');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `valor` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `nombre`, `valor`) VALUES
(1, 'pagoPayPhone', '5'),
(2, 'codigoPayphone', '3Kxj9K7fClCiE8ce8vJnQCmbYUhG1Q97iciokvcSFe7DCnX1or7ndoc8K2PmLYfxp5VkIEzCpmRIxOqUQuYyap5zVzukzORzCIyNbqOxpbIXBYd7CkLFK7vpBFdzFeGEHdoNlwMmQAVSfedTeJSLf37hAa2RgWQAPmgUZZLVzMcYNbeOEgYfCdgD5R91n_uVihseudeEkpryOgtWEbO3uz9jqkv-uhzP7OOsNBl9nc3CV8GsppYO7Apg1N2OBq9uk8q40x41-iMx7v6sJjTREg__xV9cVvXS310YPdSAhQw84AjPxGWijDp9WL9t3XE_E5W9vQ'),
(3, 'paypalAmbiente', 'sandbox'),
(4, 'paypalApi', 'AXphTKir6kEw1JTY6DKFz_uVkZXXUI8ftzs7zoIyWJ6CZhKZ97dnoTPxkMe77Q371iGXyZE_cHcNm23w'),
(5, 'paypalCosto', '5'),
(6, 'DuracionPremium', '30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raza`
--

CREATE TABLE `raza` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `raza`
--

INSERT INTO `raza` (`id`, `nombre`) VALUES
(1, 'Mestizo'),
(2, 'Indigena'),
(3, 'Afroamericano'),
(4, 'Blanco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `religion`
--

INSERT INTO `religion` (`id`, `nombre`) VALUES
(1, 'Católica'),
(2, 'Cristiano'),
(3, 'Testigo de Jehova'),
(4, 'Ateo'),
(5, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsabilidades`
--

CREATE TABLE `responsabilidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `responsabilidades`
--

INSERT INTO `responsabilidades` (`id`, `nombre`) VALUES
(1, 'Cuida mascotas'),
(2, 'Cuida bebes de 0 a 24 meses'),
(3, 'Cuida niños de 2 a 12 años'),
(4, 'Cuida adultos mayores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector_vivienda`
--

CREATE TABLE `sector_vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sector_vivienda`
--

INSERT INTO `sector_vivienda` (`id`, `nombre`) VALUES
(1, 'Norte'),
(2, 'Centro'),
(3, 'Sur'),
(4, 'Fuera de la ciudad / Valles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signo_zodiaco`
--

CREATE TABLE `signo_zodiaco` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `signo_zodiaco`
--

INSERT INTO `signo_zodiaco` (`id`, `nombre`) VALUES
(1, 'Escorpion'),
(2, 'Libra'),
(3, 'Aries'),
(4, 'Leo'),
(5, 'Sagitario'),
(6, 'Tauro'),
(7, 'Virgo'),
(8, 'Capricornio'),
(9, 'Géminis'),
(11, 'Acuario'),
(12, 'Cáncer'),
(13, 'Piscis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sangre`
--

CREATE TABLE `tipo_sangre` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_sangre`
--

INSERT INTO `tipo_sangre` (`id`, `nombre`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(7, 'B-'),
(8, 'AB+'),
(9, 'AB-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_trabajo`
--

CREATE TABLE `tipo_trabajo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_trabajo`
--

INSERT INTO `tipo_trabajo` (`id`, `nombre`) VALUES
(1, 'Tiempo completo'),
(2, 'Medio Tiempo'),
(3, 'Puertas adentro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `estado`) VALUES
(17, 'isat', 'itobar@prohogar.com.ec', '$2y$04$9HQ6tQbBO3biBaxMsZ7n2uYqJX.pxxn.XVKAZmQVIVEDbJCjp0w3m', 'ROLE_ADMIN', 1),
(18, 'Nicole Ramirez', 'stefynik73@gmail.com', '$2y$04$u4g77e4AXWunWUMoxIjGe.UcNer4etigcWwm3gv/v6TLRGGpM1qr6', 'ROLE_USER', 1),
(19, 'Aida Sevilla', 'aidasevilla23@hotmail.com', '$2y$04$tweu.s19azIwNr1i.EU5neDu/wBM1mDgCaivE6Yqq9qR7iRICMRA6', 'ROLE_USER', 1),
(20, 'anicoral', 'azulita-1112@hotmail.com', '$2y$04$uryZklXHJCf/j8yS/h5F2uQrPXm5NeL8JgEq/lXOga1Ozlkcpuz0u', 'ROLE_USER', 1),
(21, 'Maria', 'magusaraujo@hotmail.com', '$2y$04$5cH/7kEMdbdD9Tgc2qV0W.PiJKMwq3IpKg7ZqLtCXmIGPPpSve/6S', 'ROLE_CLIENTE', 1),
(25, 'paula', 'paula@gmail.com', '$2y$04$YOOZ0.eZWKW.81MG9oOvvOSvfYAs9M2hgvYcuFjzXhyX.kkoyzZYG', 'ROLE_ADMIN', 1),
(26, 'Selena Folleco', 'sexisensual-baby@hotmail.com', '$2y$04$P9SOTAa874igKGUttuhqReP1JeG14YdjOCgrdTHWwFkUvb0c4ggFm', 'ROLE_USER', 1),
(27, 'Deyen', 'deyen265@gmail.com', '$2y$04$jlLW8AKkKeirvQYockn.Z.mDTX8q4wCUM5Py7d7u5lbTe8jEbhFlK', 'ROLE_USER', 1),
(28, 'Pruebaisa', 'sjaramillo@prohogar.com.ec', '$2y$04$Z07JkkUhdWEdBQCXtPhc2.6EMg3HfRSnb68Q4h5IPOY04fibOWNCS', 'ROLE_USER', 1),
(29, 'Pruebaisa1', 'josue.vinueza.tobar@gmail.com', '$2y$04$0JYVC48MXDquxX7XHQoXwOl/8BUOLM1FT5JPHN7WNtsKFeX1KmXhe', 'ROLE_USER', 1),
(30, 'Isabella', 'ftroya@prohogar.com.ec', '$2y$04$pszq5hemzmILbO5uEj3JkeAvbsMMC3uSs7MfCmgJXYQYBB.2UXAXu', 'ROLE_CLIENTE', 1),
(31, 'juanitourquiza', 'juanitourquiza@gmail.com', '$2y$04$gKVGwOzMhrFPhAYxy4ygKulwAFDfjQJZVLt.Pez/PKfBukUg90pni', 'ROLE_USER', 1),
(32, 'juan', 'j@hackeruna.com', '$2y$04$YOOZ0.eZWKW.81MG9oOvvOSvfYAs9M2hgvYcuFjzXhyX.kkoyzZYG', 'ROLE_CLIENTE', 0),
(33, 'Blanquita', 'blanquitabon6@gmail.com', '$2y$04$rAv/MnZ6W72myOoiTIhcf.UAwpEtCeji/83nnCevD/xq06K1eNcI.', 'ROLE_USER', 1),
(34, 'XIMENA SANCHEZ', 'joel_09carrera@hotmail', '$2y$04$WhMC.A7bWoCXiY9SZ0G4M.uYnqqB4/JChmYzpNtwWmKC3Y4TQbI1y', 'ROLE_USER', 1),
(35, 'Richard Blanco', 'richard194lozada@gmail.com', '$2y$04$CHXJQy9I61JNvZEgS23NE.2/MvHp/ifJ1Lau1wp6ADKSZ.1.m.Ha.', 'ROLE_CLIENTE', 1),
(36, 'belen m adrid', 'belenmadrid91@outlook.es', '$2y$04$PwSTg41gxj6w0pkLSp8mlOFOs9.Lp/ydfmYtGAMx3zPoEDClnUevG', 'ROLE_USER', 1),
(37, 'Carlitax', 'carlacjimenezg@gmail.com', '$2y$04$CvHNCT2tkBklV..bnk/wxubRuspgcP8qWUfVpiVRU.1E2p2pl6DOW', 'ROLE_USER', 1),
(38, 'Narcisa Llumiquinga', 'miguetorres0787@gmail.com', '$2y$04$3ON73C5F3Uj6lWanxTf0PeAMc9X01WziFwdO6346OctRoLGaCfWRm', 'ROLE_USER', 1),
(39, 'Narcisa Llumiquinga', 'chimy_mac@hotmail.com', '$2y$04$neSnhASshELocvL4.R6JAelby4VXdENBMhT70yzRRsCpmZCS3jrAa', 'ROLE_USER', 1),
(40, 'joseduardozumbanadiaz', 'josedu81@hotmail.com', '$2y$04$ADxf8WCGC2Jo660apP1P1OB3TXPiMtDcUxxfaaATLVSZVRaR/r38q', 'ROLE_CLIENTE', 1),
(41, 'Doménika', 'dome_sahii@hotmail.com', '$2y$04$md2EIYp3dFu2LM0gFs2tgeJbpHwEa8ueAQAUb/0b2YQrsVpGaq306', 'ROLE_USER', 1),
(42, 'carlosecl420', 'carlosecl_420@hotmail.com', '$2y$04$Pv//YDDsONWBCkuVIgJNNO0X7bOnKxWTJhQ182S.1FEqaA7kGfrq2', 'ROLE_USER', 1),
(43, 'Victoria Galeas', 'vickygaleas1@hotmail.com', '$2y$04$rZqj2J6R/.jA1xPc/aOPjO0eQUhELjm8LYDejg2VdaaG4W4rnQzd.', 'ROLE_USER', 1),
(44, 'Mirian Fernandez', 'mirian-fernandez25@hotmail.com', '$2y$04$t9jCIhicyO.0c4dIyZmmI.sPQyUnPGYvJM3EvBNxAKy0zK83P2.ke', 'ROLE_CLIENTE', 1),
(45, 'Paola barroso', 'paolabarroso52@gmail.com', '$2y$04$oJEyQsSZ0pVbswBHeY9WCOucS81lDx2U3tTMWh2iv57zWBvs.OSxW', 'ROLE_USER', 1),
(46, 'Jaureli', 'videobegins@gmail.com', '$2y$04$HJ1uyDj1qfB6ncmaab7iWuJjL/xmNLpnJrLOLY9A9t7O7rnrVkAPG', 'ROLE_CLIENTE', 1),
(47, 'Nelly Simbaña', 'nellymarisol1993@hotmail.com', '$2y$04$tmzdCRi7d8TGpM0TAXWLL.p8sUJP.GtgsE1h4xefz.o7Z7ZOujhlu', 'ROLE_USER', 1),
(48, 'Stefanny Silva Rivera', 'stefanny_molinerita@hotmail.es', '$2y$04$VUdbhtP7HHI5HHx9/oghj.5mdwKwqm.HfHPIei89V3i.88qcf.sUW', 'ROLE_USER', 1),
(49, 'Verónica Sánchez', 'vero_sanchezrosas@hotmail.com', '$2y$04$EurZ75sFt5ByDsWqCNogheUmbPi/Z8yLWqS2aR23mAg/WnVjLorxC', 'ROLE_CLIENTE', 1),
(50, 'maria collaguazo', 'collaguazop7@gmail.com', '$2y$04$HtQQGeW2d7WhHI1FyP3ssOvz8N9FGDf2AnwtmHBQg1WU0.jBh7/7O', 'ROLE_USER', 1),
(51, 'dgmedina', 'dmedina@prohogar.com.ec', '$2y$04$O3QiXyGVI99SCy846qG1Eewg/EijMNy4rLgvjiZ3hF2zDFivI59kS', 'ROLE_USER', 1),
(52, 'Cecilia Quilumbaquin', 'cecylu74@hotmail.com', '$2y$04$t6GPHz7tC6WZh7aA884jjO1kcbuT5iqaQ6tY2cG1v4EOlTtHM2uwa', 'ROLE_USER', 1),
(53, 'jose guaman', 'jeguamanc29@gmail.com', '$2y$04$JA2afbnq.e4iP/6jsXnjtuzqR7dqZWgY2zzZVfbnJh97vqDJxi2Cu', 'ROLE_USER', 1),
(54, 'Mercedes Ortega', 'joha.estefy22@hotmail.com', '$2y$04$ufzyZ4hwe1GbG8ENK/fMRO2KzajpG69EvdwbRBqtwZLJeHOQO2WTi', 'ROLE_USER', 1),
(55, NULL, NULL, '$2y$04$KQxmc8sRQY9InpaXoWQUcerFOLcZNEYtLdEe.ZxCnwmnY.46Y7JAO', 'ROLE_USER', 1),
(56, 'wilo', 'vampirito515@hotmail.com', '$2y$04$K1SlBL.NU7xw4QhH/j4lx.fbxJ9osPkqp/O74WOOLE3nLzT9vh5rS', 'ROLE_USER', 1),
(57, 'Ana Suarez', 'anitasuarez7854@gmail.com', '$2y$04$xQw0AwsI1PVYn4YhpWOdbunKjaYYF2SGEz4X0Qe/hOCV6LfwRspx6', 'ROLE_USER', 1),
(58, 'Alexandra Pineda', 'veronicaalexandra1980@gmail.com', '$2y$04$F11bOzZ.FE2uFP8gfWuLzukL3V0.WDsZciqPY8CA0AQvuV5gEbMCu', 'ROLE_USER', 1),
(59, 'jesenia', 'jesenia.quilca@gmail.com', '$2y$04$b1RyoTWiM2JoIJjEVWi9V.EGPNgCJqQoVQlkxclZjNuIlYVfPbhDG', 'ROLE_USER', 1),
(60, 'Georgina Logaña', 'geito_0906@hotmail.com.ar', '$2y$04$8Io0PJ/9.FXIOaBQmGGDNuymoKFACdN9LYUParq9KfZtb1Elk/VAu', 'ROLE_USER', 1),
(61, 'Mary Varela', 'luisteven09@hotmail.com', '$2y$04$rh0TghiwFUxGVt4ei2DlFeATyHEMA27NIcyMFh4tbWgqKs4gr6FyG', 'ROLE_USER', 1),
(62, 'Estefanía Anangono', 'steffmell4@gmail.com', '$2y$04$m2AvcGkn8s0tIemqtp7dw.mL3vbBrLQx2YALQbDNrs1dxRKgn06Ji', 'ROLE_USER', 1),
(63, 'BLANCA NARANJO', 'blancanaranjosalazar@hotmail.com', '$2y$04$m9sDDUjVhuWGYzZ8UANk2OVvWQ1yExAemfUMslYszZ.lvdtq5LsKm', 'ROLE_USER', 1),
(64, 'olga', 'olgamuenala946@hotmail.com', '$2y$04$HxmcxUcqEX/.IDggG.6QIeqolxIADvLoY6nh/VyX4jFZOwlm7yERG', 'ROLE_USER', 1),
(65, 'Daisy moreno', 'daisyjosefinamoreno@gmail.com', '$2y$04$3QqFpslnXad6HowV/rf24u1ySDv8jEbTso6dQ7dSC8dFniK2uu8uW', 'ROLE_USER', 1),
(66, 'marjorie', 'belenito89@gmail.com', '$2y$04$DGzL2TPeDMVOPbGKxPe.cubTTHUKX3fSTRxMiMlHlXL5rfrqEhN4W', 'ROLE_USER', 1),
(67, 'LUIS MANUEL CHUSIN', 'luischusin1989@gmail.com', '$2y$04$0P1HQ28RvI7H7bWLXFSMleQu4cc5F0OcoO93pbMuRvIwKRZ5clPbC', 'ROLE_USER', 1),
(68, 'yuneris', 'yunerisg@gmail.com', '$2y$04$ZsKiCkaPKqVIUR9TBu4oZOO3JYmfkKsAAec0O.DuRSbwqrsmBpcKC', 'ROLE_USER', 1),
(69, 'LETICIA QUITO', 'fannyleticia10@yahoo.es', '$2y$04$Ny0RNFlQEFUpyP2BMeuZyOdbwG2aG.lgq7hyC.7zyWWYT1a/hB002', 'ROLE_USER', 1),
(70, 'Sandra Jeaneth', 'viracochasandra@yahoo.es', '$2y$04$I5xn3oZzvvQnKYovyfINXO5jrklMAhvmMvr0yuOJEP7d/xwMPRxVq', 'ROLE_USER', 1),
(71, NULL, 'sara_fda@hotmail.es', '$2y$04$v6noD/6jUUoZHlvtuBePXuNOUFHyMMDBjVE2i8.c27bT8Qc.KthQC', 'ROLE_USER', 1),
(72, 'Martha Perugachi', 'marthylucy1986@gmail.com', '$2y$04$Zb6lPhciAV2cSiCGqPwAlONYaOg6GbkUgmykdJy8hgCSwH6BKj6va', 'ROLE_USER', 1),
(73, 'Mary pupiales', 'maritza.pupiales94@gmail.com', '$2y$04$T8tSya/o2H57RKTUAcy7fetGQHyrpyh2B/XLUuHixUaAZSCaRpVI2', 'ROLE_USER', 1),
(74, 'Erica veintimilla', 'erica.veintimilla@gmail.com', '$2y$04$R9j4EtwkNSiknzFAVMf5oOJ95g4ysiNw6NrXvYDO3d4Z8vOOb2J2i', 'ROLE_USER', 1),
(75, 'Micaela Rogel', 'elizabeth0991446543@gmail.com', '$2y$04$nx4W8.e6QtpZlMurK0hclefhsl2.aWMCi2R9SUyh//W9cDN4N8cAe', 'ROLE_USER', 1),
(76, 'frromero', 'frromero@gmail.com', '$2y$04$ytAjvtySeYfes8KQWvbmOe3GAh0vyk7UaRTU/N/ZaCJ8sgAKHnin6', 'ROLE_USER', 1),
(77, 'Janeth', 'janethsaltos72@gmail.com', '$2y$04$YLZuMPf3pV7CuE3WQr4MDevbr.sCgsGhaCOpqH.6QFyty/Y16Y9lK', 'ROLE_USER', 1),
(78, 'Danay Rivero Trujillo', 'gilberticodanay2017@gmail.com', '$2y$04$k8K3PKlZHox0f5hq/Xzmleex2gDhgx5pYqc6dHt5yJnH/52FcDOtC', 'ROLE_USER', 1),
(79, 'Pedro Rodriguez', 'pedroroguezsanchez0@hotmail.com', '$2y$04$jhGAp8qnh/G9yPVCCirmIeH9oH.mCsWXGDOD/0XeVP3c92TOoQnCq', 'ROLE_USER', 1),
(80, 'Mariela del Rocío  Caiza Sánchez', 'marielacaiza1980@gmail.com', '$2y$04$o0j69Fgqzzkq6zwqZPgoPODEkonLE8fxRG/Rnjr.DJuu8N3S1AfmW', 'ROLE_USER', 1),
(81, 'Carmen Vela', 'elizabethvelarodriguez@hotmail.com', '$2y$04$ivPC3Hbny1WGt3yWhYBWReIQSwj2cvBL7oBmiS0RT6DFUccHpJuhS', 'ROLE_USER', 1),
(82, 'luislopez', 'luis05i@hotmail.com', '$2y$04$r1pOYSY.EiDL38Ep8KS3VeZrCHGOeIUgCyhX9opy9noEgKccIBPqu', 'ROLE_USER', 1),
(83, 'Nancy Elizabeth Chalco Yanez', 'nancyelizabeth_1981@hotmal.com', '$2y$04$bjK6/DrpbGR5S7h6Bu2WX.0mARRhu4Pa6o2zrLTI4/1qUAVCfTqTm', 'ROLE_USER', 1),
(84, 'Liliana jimenez', 'ely.jimenez.apraez@gmail.com', '$2y$04$K1xbi0b7JCWOa/870nYh.Orscz3dfkKDk15Y1jBk9GdVed3ZxHsgq', 'ROLE_USER', 1),
(85, 'JEANNETTE', 'jescobar0507@hotmail.com', '$2y$04$HBroWVBpsXwG8IbNsd6Aj.8kciDZcCHjfOdg4/RRnlYXb4bxgJLRm', 'ROLE_CLIENTE', 1),
(86, 'milly', 'doroty1983@hotmal.com', '$2y$04$jtx4JL4hf1JqW94G2am7T.v67DvJtTyumEuRVVBkWGRNLBl2J9Eo6', 'ROLE_USER', 1),
(87, 'CATAGÑA PONCE JUAN ENRIQUE', 'catagna.ponce@hotamil.com', '$2y$04$Zlp5WY.0LBGu/YocRXBVEuOgVX3ViUEu2SffJ2rjbdXo2ON1i36q6', 'ROLE_CLIENTE', 1),
(88, 'CATAGÑA PONCE JUAN ENRIQUE', 'catagna.ponce@hotmail.com', '$2y$04$1BdcbLG6Zn/ycJUfc3Zqb.R.sv.8xwPvoMinfgArQQTOhRz6u0UXG', 'ROLE_CLIENTE', 1),
(89, 'Maria Puma', 'mizhela_13@hotmail.com', '$2y$04$0K819OPUb3DRCozJfP3vfeD87yKy6U5.txG4bu/GahJSZSiXwwrZG', 'ROLE_USER', 1),
(90, 'ximena', 'tayrazulay@hotmail.es', '$2y$04$lvpcjfZICvfGtYdQZYB8D.iDVNqOumWXG.TI0cIocJECdFFvcyH6O', 'ROLE_USER', 1),
(91, 'Yolanda López', 'gorditabella2671@hotmail.com', '$2y$04$4StEFKgbBxdvibZm6QIK0.w0kb6FBsw2O.KnpA1yIDe1kG.t.8egW', 'ROLE_USER', 1),
(92, 'CELIA GRANDA', 'celita.1986@hotmail.com', '$2y$04$g2DditoYDyEUqhGnakSWJOcg1xLzQX605n2XascHa1zw08ed4Qq.a', 'ROLE_USER', 1),
(93, 'monica alexandra arcos', 'monicaarcos01@gmail.com', '$2y$04$HAXLCBPM4BnQHHUGN6LBFOiO5gERTqul9l9QkTEb9nFpoQ9z4.jhm', 'ROLE_USER', 1),
(94, NULL, 'amparitotib@hotmail.com', '$2y$04$zsRdlESuCkXlUxqEjULrZ...WqxSyEx94IhpPSIUtYY3k8PVFLPQq', 'ROLE_CLIENTE', 1),
(95, 'Luis Ramiro Martinez Tsuntzumachi', 'lewis_martinez1984@hotmail.com', '$2y$04$TT4onCNd2L.fhbXCZRPT4e5iZy6JNyx6UhC5hdtOyy5C.KZuGatNC', 'ROLE_USER', 1),
(96, 'Laura Reyes', 'lauracaro05@hotmail.com', '$2y$04$sMlFYJLxKf6KOyqWgznbkuhH1EWVQkpjBKOXIIOgxH7YL5lAk48ba', 'ROLE_USER', 1),
(97, 'Gonzalo Acosta', 'ggacostag@hotmail.com', '$2y$04$zkfPYV6AoF.zN8xQsvsHM.bpianQ/2E.x1rFORL2OHGMzuylQKANG', 'ROLE_CLIENTE', 1),
(98, NULL, 'magalycc1030@gmail.com', '$2y$04$KijEIHTIBm0R6/yFrmDPCeA5iDB3xl/HK1CGHe/LHFHJaOlqleoHm', 'ROLE_USER', 1),
(99, 'Rosa Ponce', 'rosaponcer@outlook.com', '$2y$04$LHeOz.ByUpTnLLUSIDy3heGvsAIoIBNXj.CEuOtggWbnwvHj7QbLS', 'ROLE_USER', 1),
(100, 'Martha', 'marthachonera@hotmail.com', '$2y$04$AZa1liPCQV6wZHyATSI2LeLRNp2wojxh2xR7kmkpA5h.zpPd5t1zC', 'ROLE_USER', 1),
(101, 'Emma Muñoz', 'emma.munoz206@gmail.com', '$2y$04$0dAz6dEhvbXSSNE5cT4nIeBAriQg4qB/AuFKc5xcxtyf7216qrNKO', 'ROLE_USER', 1),
(102, 'Wendy Barreto', 'wendy.barreto206@gmail.com', '$2y$04$JNywsjjEBR7mk5hisU8AMeyvJJpfmpjW2vM.nAe/MQ2fLWiaCmU8K', 'ROLE_USER', 1),
(103, 'Alex Arrieta', 'alex.arrieta206@gmail.com', '$2y$04$ueuvJVvTGyaCwlBi2iHuFuvGKat3qVaueSLaqJMJrGBdVHZ2i8oCe', 'ROLE_USER', 1),
(104, 'sonia', 'sebastianaguiar52@gmail.com', '$2y$04$qT47lT1vOHzqjEw3/90/SOur0ys1SdRjjRWj7AQrwMOzpEtarqQIG', 'ROLE_USER', 1),
(105, 'Mariapila', 'isabelpozo1985@hotmail.com', '$2y$04$Y4q7n2YBHLHexyCn0HTNjOcWJUkJ2QIDFyatB4gognsIIANZ19dyO', 'ROLE_USER', 1),
(106, 'Veronica Toscano', 'grace79sweet@yahoo.com', '$2y$04$n3tudDykkZQnPtsIIoC5XeJIn6oz7Ik7Xvui6FKRq6bND9eHxssGm', 'ROLE_USER', 1),
(107, 'CATALINA C', 'catalina_alejandra@hotmail.com', '$2y$04$Qb9NcJTuri6UieI4e97DaOE9kyL3AoOtfkrJEw1.dRlUIf6O/vld.', 'ROLE_CLIENTE', 1),
(108, 'Yadira Parra', 'yadiparra1994@gmail.com', '$2y$04$M2LfrhHJ50HnWhpWu5SemuT/6Rlb1At9AWqEUFl5NFmAFxCi8WdzS', 'ROLE_USER', 1),
(109, 'Manuel Vazquez', 'tatyolisan@hotmail.com', '$2y$04$TpBw6x.SMDq8g8IgpLojL.tDvy4VN.fHNLn4FiXKCx1pZCJ31n2D.', 'ROLE_CLIENTE', 1),
(110, 'Julia Antonia Sanchez', 'juliaantoniasa5@gmail.com', '$2y$04$YJIsVJDZuLJ8rPU31vXo5O44llj3W3wb8UVoYQEw1ZWXx0vyfvNf2', 'ROLE_USER', 1),
(111, 'Moraima Hernandez', 'mora2910@hotmail.com', '$2y$04$muYqxB57YzVCpxaOM6lPc./kzSor/9LR1JNSZ4dLUog3H2tqSuwi2', 'ROLE_CLIENTE', 1),
(112, 'CesarTixe', 'cjtc.elchino7@gmail.com', '$2y$04$OqXQID8X/vek94r0frcE3.h/vhwPYAEbT7bsyKbhtQvUnetxIMaUC', 'ROLE_USER', 1),
(113, 'Karina Zambrano', 'karizambrano88@gmail.com', '$2y$04$Qv46W/WV4E90J/cOE1NNJOpCLCHD1hSWaUYMykzUc8x.DdZWDRIs6', 'ROLE_CLIENTE', 1),
(114, 'Esther Muñoz', 'munozesther044@gmail.com', '$2y$04$XWpv3UCpL4b0rgNZzmGXA.ipGeOpTHyBkpow4f6lhq31K.CyxxSKi', 'ROLE_USER', 1),
(115, 'OlgaGrefa', 'olgagrefa962@yahoo.com', '$2y$04$ITroissguIfbtfFfuJ/fVuwjNM.AX8HR/aH5evP/B13LLefTyapvK', 'ROLE_USER', 1),
(116, 'MARIELENA MARTINEZ GALEANO', 'sylviamaribel_martinezrevelo@ahoo.es', '$2y$04$WrzcbWjcAW5cRqHEl6YTkuHl8VSsbCIg7bB2rW0dy.RYgOgWwrLkG', 'ROLE_USER', 1),
(117, 'MARIELENA MARTINEZ GALEANO', 'sylviamaribel_martinezrevelo@Yahoo.es', '$2y$04$YGXm30wpH3LSiPLQinX68uF//E2ar6.Mbm/vhaxFfI1y2RXztYtr2', 'ROLE_USER', 1),
(118, 'Rebeka montalvan', 'rebekamontalvan@hotmail.com', '$2y$04$SLyFxvMNGipUQae7g18fLO/pt0IEYjNgGWwjIN16UhhgwkHGREqAi', 'ROLE_USER', 1),
(119, 'Patricia Alban', 'sandrialban@hotmail.com', '$2y$04$LrfRcJs3/yzjfAOWP5A/duULaBD/qlZGQ9taMBCm7swp.g6mt5Bu2', 'ROLE_USER', 1),
(120, 'jhonatanmark', 'jhonatanmark@gmail.com', '$2y$04$LjvVJwgDRB7xIvukAjMp9OiHw3HV4QZbvVxs6FiAt4gjZxfnuJ3Xu', 'ROLE_USER', 1),
(121, 'Yolanda Sigcha', 'la_verito@hotmail.it', '$2y$04$IyQj7rZb9/qwI.jm.iXvT.sN83qOAqilvodLd5eZuNuNbhcWy2sDe', 'ROLE_USER', 1),
(122, 'rosaortiz', 'rosao2624@gmail.com', '$2y$04$.4DaeDoM9HYVXV4t/lZaxeVbl4mqQJSrcPchdN/ClpXWCg1v9Bo0.', 'ROLE_USER', 1),
(123, 'nohemi santana', 'nohemi-castro@hotmail.com', '$2y$04$e/OfoU3TeiLU.5346QFtKOXCuIfqQz1SiLsh.Y5rrIUfN/1wiLDTK', 'ROLE_USER', 1),
(124, 'Norma Seymi Chicaiza Ulcuango', 'norma_chicaiza72@hotmail.com', '$2y$04$0ieUt0gZPAXTKuB9iUcah.ukxo4QhudT.FND3A53VLkKL3fbgy7AO', 'ROLE_USER', 1),
(125, 'Isabella', 'prohogar2014@gmail.com', '$2y$04$.s8x.9L20hvwgtdKTKK7nuwREfFw3luXDQ5DMw.FrFRHuVGrEdYUm', 'ROLE_CLIENTE', 1),
(126, 'paula1', 'paula1@gmail.com', '$2y$04$YHcEYpWLcScEyoHPrBpUNe.FeuAeUYO9x1t/qu/uN.A7xNAF3y1TW', 'ROLE_USER', 1),
(127, 'RUTH AEMIJOS', 'rutharmijos80@hotmail.com', '$2y$04$1cq8/YX1eh6BRiYsRQluWu.GpV3N0FXAAfOoMhYMN2tCJhfiRZz/6', 'ROLE_USER', 1),
(128, 'cecilia', 'cecilia240166@gmail.com', '$2y$04$NN.f/C1ehV/yM5rdCj71GOgQW2pF7q4s.gq2joi9oBl1SKsW.HQIW', 'ROLE_USER', 1),
(129, 'Doris  pincay', 'andrea_pynrey23@hotmail.com', '$2y$04$wLJHQ4EF/2ZMKprpwVVyE.B6tqPp6RAcmVJ4/S8byd/nWUUE9bLGq', 'ROLE_USER', 1),
(130, 'Rosa Puma', 'rosaanita_1975@hotmail.com', '$2y$04$ltY5ckC5bgzyaz0THRa/Ge/uh27vRDAXk5gOH.CWpwkZutogcVwRO', 'ROLE_USER', 1),
(131, 'Rosa Puma', 'rosaanita__1975@hotmail.com', '$2y$04$5irWQygiPW0B1v/ln9z4JuXSR1Sser0NwBa8q8VuutE3jJaRsjuzC', 'ROLE_USER', 1),
(132, 'luz marina', 'luz.marina1963@hotmail.es', '$2y$04$OV6ru2D3qeigT5kbsYr6Ue6KHDiaACK9xNx..x/khN7ze4aQsUzcu', 'ROLE_USER', 1),
(133, 'MIRIAN SANTACRUZ', 'DULCEELYPRINCESA@HOTMAIL.COM', '$2y$04$PCFcNRuZGHJsjP/DNaHnE.3orCvm5DWFAmk3I0mulocCkdjm3yAtq', 'ROLE_USER', 1),
(134, 'Yere', 'yerexaithocando1984@gmail.com', '$2y$04$cYcFPL7x8Z.dYzuetRnVeO8cgZFp90JXH5wT30fqUD764Ql0r5MAK', 'ROLE_USER', 1),
(135, 'fabiolayar64', 'jona562009@hotmail.com', '$2y$04$HClNCArqAcxE.3bp53.WvOg6wP34b.BYl.hWuHw6ud0qf23a457Mm', 'ROLE_USER', 1),
(136, 'Nelly Toapanta', 'carlostonato8033@hotmail.com', '$2y$04$cTfpsu2FWNR2esItrgMece9XDtOZ9pJw5LoDyFSNYxMgskb0Ppv4a', 'ROLE_CLIENTE', 1),
(137, 'JHON1982', 'chefcito31.jv@gmail.com', '$2y$04$8cFQqyc.ifxGmgZ0hB6sqebtGcqmniwqPV4Xa0QdCeX186oafVWG2', 'ROLE_USER', 1),
(138, 'Alex Sánchez', 'alexitosct-21@hotmail.com', '$2y$04$.c5MTKbgJilKAocI2XZfs.8felvGU6/cFrIz3SFFGutBQM8b1yj8O', 'ROLE_USER', 1),
(139, 'Richard Cobo', 'richard37cobo@gmail.com', '$2y$04$v981vOb1b50gJ18.EVHw3unre7AZEVp3QdGGkLJgQjUNE1YusU4mq', 'ROLE_USER', 1),
(140, 'Irene mero', 'irenemero17@gmail.com', '$2y$04$pIw1G760nZysHhXQ3Nl2QutUpwM32ezWYCV7gKVhxYO6Vf72Js47u', 'ROLE_USER', 1),
(141, 'richeilys gomez', 'richeilysgabriela02@gmail.com', '$2y$04$HHql1xUL.YNPLkukH94cGuqKHbQ1bPOIh0gDp/fh94jXsapm2ueaK', 'ROLE_USER', 1),
(142, 'Erickhacabrera', 'ectorrres@gmail.com', '$2y$04$YF.7.Dk/8Ee3CYZP1niDz.foyO1y94mpdf5CgLRpQmWCRJvXfdm9G', 'ROLE_USER', 1),
(143, 'jenny1', 'victor1_alex@yahoo.es', '$2y$04$2NES4VRaIyLWp8Z72i.UFuEXdgpe605io7JwTTCH93ulUdqKqiODK', 'ROLE_CLIENTE', 1),
(144, 'Rosa Haro', 'rosii_2015@outlook.es', '$2y$04$cmvwEaNlsdEsae5SOYbVq.1ybRazr51lcMq.xcrtpNs/G/u5.B5qW', 'ROLE_USER', 1),
(145, 'Victoria Pacheco', 'vik21@hotmail.com', '$2y$04$vVwjD6hFPVrrFsAGaLWj0.8VIbER94wrdASdrGSWPiJtEJhYOKm0e', 'ROLE_USER', 1),
(146, 'alberto_odreman', 'odremanalberto1991@gmail.com', '$2y$04$K4yiHvc9XoktRRtAbFoiJOb8v62X2v2wIgaZk3IBLwK.ahPlAm2rC', 'ROLE_USER', 1),
(147, 'Juan', 'jrfranco55@gmail.com', '$2y$04$5KSxHbONr9.zBAfLjSVgeuSfXiYJOYfVAiSrGnEjPOBHx95j3QoZG', 'ROLE_USER', 1),
(148, 'luisa perez', 'luisateresaperez68@gmail.com', '$2y$04$X1FbJ.iwQMCVq95qHKfp5.D0ORUIHkNdJueIYD9V5wYUO3ovTSgtG', 'ROLE_USER', 1),
(149, 'Martha Alcocer', 'maralco1965@outlook.com', '$2y$04$Z5QUa3q9imfqmuxoS48goON3czdjIjuy37SaMo7pVeTdnpLU4ki1C', 'ROLE_USER', 1),
(150, 'Blanca', 'blancajaramillo@hotmail.com', '$2y$04$Z3vP4a3RxgK/Z.6CErtBLOpx7iqUEC6XCmde76F.XIjX7IceQGpHu', 'ROLE_USER', 1),
(151, 'arbelis', 'arbelisarnos@gmail.com', '$2y$04$sH4M2dCoNd4IwSX99OIli.0DC5YVZIJ41XMNvN.0OCHtAbXNSSD6W', 'ROLE_USER', 1),
(152, 'John Alexander Chacón López', 'jhonmiko83@gmail.com', '$2y$04$4xowL6yNtizA8VoPP/Qfh.DM3Zi/UHMY3rJ3b.UlYhwe.s4jpiwou', 'ROLE_USER', 1),
(153, 'MARCIA ELIZABETH', 'marciasalcedo4@hotmail.com', '$2y$04$SfM8pLEzNVObm24mB6yOTuFqrCnawNY/2lNuNkZfRNFr7NsV0vdZy', 'ROLE_USER', 1),
(154, 'soledad gomez', 'johana_gomez1705@hotmail.com', '$2y$04$gQ9qBpQnpwil1hd4P63IQ.QI1xC5.z4fLY7CXwfiwkC268isbHskK', 'ROLE_USER', 1),
(155, 'margarita lopez', 'lopezalexandra74@hotmail.com', '$2y$04$f6o2Isp0uxvPpL2UYIxLLOFG6Qc5uYEZ9GnI3fsFz5IF6h2djPN4.', 'ROLE_USER', 1),
(156, 'Lorena Cervantes', 'lorenacervantes2015@gmail.com', '$2y$04$.vQy.JbDZmBrHpwhU.q7O.W9UeIn16nMpyGyMq63OhiOZ0ra7bxAO', 'ROLE_CLIENTE', 1),
(157, NULL, 'wendyper30@hotmail.com', '$2y$04$wDxCwGqJj3pFo5Qwmk2mu.re.76kvb2y.vx2m2IZlblTVTLNNT7.C', 'ROLE_USER', 1),
(158, 'Edison', 'edisonguachamin91@outlook.com', '$2y$04$4xrQC5qitd1epp2mAoysL.HfcAiF93PfsECLPhXYEJmwJ1TPl5kn6', 'ROLE_USER', 1),
(159, 'Martha', 'martha.minda1970@hotmail.com', '$2y$04$nfqGiK2B4vyHx/JhvH01buu5z008OI2RWqGtSWY.24OgyCvxVUsUW', 'ROLE_USER', 1),
(160, 'Josue', 'josue.vinueza@gmail.com', '$2y$04$RL1buLxakoeBhvYKidgEG./8AkhgmYcelMS50tHvcAFHXNXKPQHcO', 'ROLE_CLIENTE', 1),
(161, 'Carmen Fernanda Bernardo Folleco', 'tatianab2806@yahoo.com', '$2y$04$5sVp5zLZ/HGvv5aqRk/YpuDIojNfKvGgH4B8/q7BD0fWU5yqpX1hy', 'ROLE_USER', 1),
(162, 'Rosa Haro', 'rossi_2015@outlook.es', '$2y$04$yRHwQEx8COrD9rnbl3a8u.Zhe35/KA3qUvtky.9IfKuR/21bwlQ.G', 'ROLE_USER', 1),
(163, 'Rosa Haro', 'rosii_2015@outlook.com', '$2y$04$yuKnl/d/5KQwsnPW0nUmLORixkeC6nx.3sZVHYW/MfxooBGVq6rCG', 'ROLE_USER', 1),
(164, 'Cristina Rodriguez', 'kukyrodriguez198_3@outlook.com', '$2y$04$J1aLc03e6lcFD6FD.rBhpuJ5vn4xshThFR3lPeag1tYZnTSg9h3gC', 'ROLE_USER', 1),
(165, 'Paulina troya', 'paulinatroya31@gmail.com', '$2y$04$ZaixVzGhENjtEtS8fyLmauL.fPXYgA80lUzyRuRi4psN7CvkR1yKG', 'ROLE_USER', 1),
(166, 'Margarita Romero', 'andreacarolinalr2710@hotmail.com', '$2y$04$y3C2p1.ecFfV3qcgZte.R.Aw6vZOC6fVYUxh4XwSs6cJzDBHJbFNW', 'ROLE_USER', 1),
(167, 'Sofy', 'sofiapesantes32@gmail.com', '$2y$04$Uc8M07B1H8apksEfmsi64uQu.NAmOhQ2j9ZyscCVnSc1qbjlZWkxS', 'ROLE_USER', 0),
(168, 'Cesar', 'cvinueza@sapienslab.com', '$2y$04$KbJ5en.lleTwVD20DWEqh.qKqxVJoQurr5gIlKQ6nuZUC1boZMsI6', 'ROLE_CLIENTE', 1),
(169, 'Mayra Monta', 'maymarthamonta@gmail.com', '$2y$04$NbUcFfR6icCAeXhQYf6htubO6AI3nPtsM/P0O8Yzluynmj/ZXqBgC', 'ROLE_USER', 1),
(170, NULL, 'carmen_241967@outlook.com', '$2y$04$HQVZF6AapXS2BhheNiOOo.FiMHsiwysanfGDMkNUx/7dJy.CcuWtW', 'ROLE_USER', 1),
(171, 'GRACIELA CARRERA', 'elizabethcarrera1998@hotmail.com', '$2y$04$UB97BQudLOIt57YXHROR4uTS4jA72e2D0./Ix8VpCwYaQQHTeVxDS', 'ROLE_USER', 1),
(172, 'janeth', 'marjuriarmijos@hotmail.com', '$2y$04$KAMPazG/ktSLwjwlO.QqA.L/iZEvqLKyO187srmRG2qeIA0CXBXwC', 'ROLE_USER', 1),
(173, 'ESTEFANIA LLAMUSUNTA', 'estefania_llamusunta@yahoo.es', '$2y$04$zr2mVLxv1vWTA4KUCjsMROHx45n/2QDIWkUKCUrmV6t0oxeJ6z8t.', 'ROLE_USER', 1),
(174, 'Carmen Ipaz', 'stalin.prado.sp@gmail.com', '$2y$04$Cs9HfaCGWZ4ZJdmX1nY/O.J3vPXcO3ru1KGWM0.Xus/pDtXoMUHkC', 'ROLE_USER', 1),
(175, 'Andrea Päez', 'andreapaez1985@hotmail.com', '$2y$04$SKDEbDTJCYIed4m7IAh9BO.s/.2R5IXQMPiXgxY8NFZr2K5f5MZB6', 'ROLE_USER', 1),
(176, 'Noella Eunice Avilés Shiguango', 'flacanoelia29del86@gmail.com', '$2y$04$ZldeXwBpWa0UaM35IStqlOJJJWGLHAXFw5TTajdT1PtQJzbxziyva', 'ROLE_USER', 1),
(177, 'Rebeca', 'beicaortiz@hotmail.com', '$2y$04$4CDtIkoQ3CAAaFIkuYsRPeebx2OKaniaK2q/eoyx9jvJ74juCSfJ6', 'ROLE_USER', 1),
(178, 'Mirian Quinapallo', 'chrismatibarce@hotmail.com', '$2y$04$Is4Q1cVC0RhjEfVqF1qfgeICQIMCO9j1znmIUJrpTPBnWWT1IM4bW', 'ROLE_USER', 1),
(179, 'Shirley', 'chaantonio2010@hotmail.com', '$2y$04$BAjNyf.U1Yo6IjmN7IXuo.3tzP5HOm94Giqd5vaietBtu0DD77nva', 'ROLE_USER', 1),
(180, 'Verónica Avila', 'daivero22@hotmal.com', '$2y$04$gEQ2hXREy.J9.cgOW8/H8uje5qxzPWlhrBCc.z4DaWQ.a4fK7ubkK', 'ROLE_USER', 1),
(181, 'damaris', 'andraiida7@gmail.com', '$2y$04$6ww2v.bNcTJBbxgFpcaMbOA.wTnmMacymEmmT8HMa4PXQgz527qe2', 'ROLE_USER', 1),
(182, 'Olga Chisag', 'chisago5olga@gmail.com', '$2y$04$aT/Atqxb9ZsTV.Ymjmyf.O/eKH7iFO8d86TAilPsC16Z5dFcU7H1C', 'ROLE_USER', 1),
(183, 'Rosita', 'rosa24santacruz@gmail.com', '$2y$04$zVgpAlIlRspWX.LeKNxz2u8LHvet6NL/8fy7cNR6QhMVvJ2HqU7ve', 'ROLE_USER', 1),
(184, 'Geoconda yanchapaxi', 'Geoconda_256@hotmail.com', '$2y$04$Te.DZwJgbAhnY1tLUYP88e.lF5uC419bkNWDGj9F/H.x7bl6ydSc2', 'ROLE_USER', 1),
(185, 'Geoconda yanchapaxi', 'Geoconda_258@hotmail.com', '$2y$04$5//eyLsTMcVu/ksVLb3dteHgd0QMzYM2aZ8/4.Lj7N0dsJTwxzTNC', 'ROLE_USER', 1),
(186, 'Geoconda yanchapaxi', 'Geoconda-258@hotmail.com', '$2y$04$hdPcsc5n5Xj2Evs0Ie5FrOLFrgTxgNwpiSr.Kw1ED2f71Wb7GJ0zO', 'ROLE_USER', 1),
(187, 'Geoconda yanchapaxi', 'Geocondayanchapaxi@gmail.com', '$2y$04$6VVYaWHsQltReCsoyQEcneeaQm3BFyIFKtwzxEJl8fumiAUlq7vZC', 'ROLE_USER', 1),
(188, 'Diana Duran', 'dayacaro20@hotmail.com', '$2y$04$nnP3TlWBgTgcgD.mb183EOdi7MkzUY7odMzrjlP8wnp19vwwEMDb2', 'ROLE_USER', 1),
(189, 'Yessenia Manrique', 'yese98nia@gmail.com', '$2y$04$6UEhE0V/mbXsDbTVnElsxO35hqrc2F7wfYNyIweElqyFwTYYVTYES', 'ROLE_USER', 1),
(190, 'Meria Gualán', 'mery-auxiliadora@hotmail.com', '$2y$04$qIprziWbejKEWBB.AD/gmOSC6YH/6JtCqCSIZ/W9lDM5xmNszLIvC', 'ROLE_USER', 1),
(191, NULL, 'karitoajila1988@hotmail.com', '$2y$04$T/pI12BNKPpTNZk9CubtJeTwGyR/BNnBkGhW6/VQN7YNeXIBTL.wC', 'ROLE_USER', 1),
(192, 'Juana Dolores Enriquez Benalcazar', 'juanis91_@hotmail.com', '$2y$04$nuMaxBf08n1bGRav1moV/uF9j5ElQplL.FrV9LFl5jzRPBitzdr7e', 'ROLE_USER', 1),
(193, 'Gabriela Guerron', 'gabytagqq@yahoo.com', '$2y$04$zY3SEgEZFzotQfCj.mC6y.qs21YL8VDQUv1MzeXLZqzwUX0vppVUS', 'ROLE_CLIENTE', 1),
(194, 'Gabriela Guerrón', 'gabytagq1@yahoo.com', '$2y$04$d8PkdCZcJO0M1zTrPFpYRukmxObti0P7GXeYg7TFiC2yRsKEeW8P6', 'ROLE_CLIENTE', 1),
(195, 'marisol', 'panchimariasol@gmail.com', '$2y$04$gSwbeM0WfPplevDRhHgL4.aGDHlrVThTW8nQZ87gGakV/W4jaPtKK', 'ROLE_USER', 1),
(196, 'MARITZA', 'mk_consultores@hotmail.com', '$2y$04$cR/SdRBztaxNWgXBMG4LI.rK6ol0awHGj4ShMgwK29MYjfC.6im0W', 'ROLE_CLIENTE', 1),
(197, 'Rosa Elena Jimenéz Tayupanda', 'rosajimenez.1973@outlook.es', '$2y$04$9C4sI49aBwMzurFgs8uL6ubaBSH.qT2XAV8iYT8WJhlZnZR8WxSTu', 'ROLE_USER', 1),
(198, 'gaby bravo', 'magacha1603@gmail.com', '$2y$04$vvAeX1cueGgtPmsgx5FOouiYKjH4QifYy/eb/9AGm3sqj968SGqs6', 'ROLE_CLIENTE', 1),
(199, 'Santa miguel', 'miguelsantaperez@gmail.com', '$2y$04$4MerHBkM2OJmKWqjqAoh/e7OBifyFIBFtUHASuvqI5EkwYgu8XAJa', 'ROLE_USER', 1),
(200, 'Mercy', 'leimemercy2018@hotmail.com', '$2y$04$JHtVJ3kgdpRitbZF3Id65.esj.Q0Dc7JuCw7NSxZQapP0G/juE21y', 'ROLE_USER', 1),
(201, 'Mèlida clemencia Pèrez Portilla', 'melidalove@hotmail.es', '$2y$04$/.zgnrlEreaJDAuHPS0vrOq4RZ/Ra6s7oEtpGDIwlB1ihCU9mRDfm', 'ROLE_USER', 1),
(202, 'silvana', 'abigail_1991.14@hotmail.com', '$2y$04$KVx7IwQdv1Ibcn.7uzl9wu2bJILo1PNbzdoTBi6K75AzUOceAGKiq', 'ROLE_USER', 1),
(203, 'ailynsilva', 'ailynsilva173@gmqil.com', '$2y$04$d7xP6dwmgi3J.hlqdtds..RJsKus7ahrpLazFe3NLYyzE2DDCrPLW', 'ROLE_USER', 1),
(204, 'ailynsilva', 'ailynsilva173@gmail.com', '$2y$04$6jUJPWmNPMnJpWBm6KCoEu2uHN7LxgkBNA6vb/xU4er2MW0L6bnyK', 'ROLE_USER', 1),
(205, 'ULBADIAZ', 'ulbadiaz@hotmail.com', '$2y$04$HvnEy4aozmOM/AVfImnx1.opNXJQ/I4zFBcQcscElZlUNDeXXzuGy', 'ROLE_USER', 1),
(206, 'rosa sinchi', 'rosasinchi322@gmail.com', '$2y$04$DpQwC3XOR/O0OtVlfbBHZ.kOCy9c5cLT.PraSGUSAJNaI3Gnszeie', 'ROLE_USER', 1),
(207, 'Yomari nagua', 'yomarinagua2000@gmail.com', '$2y$04$ZiZpGDmyJBwD0omZPu2U7e3.aysMBGJYXnMrbMC1J5t.ohjlbN/RC', 'ROLE_USER', 1),
(208, 'Gloria59', 'caropilataxi@gmail.com', '$2y$04$rrd8WlglC.AkI/TvnBbs3uGbJ0.X125FTmWJhfwFsByMObIcZ2dNO', 'ROLE_USER', 1),
(209, 'Monica Garofalo', 'eli_garofalo_1977@hotmail.com', '$2y$04$5S.1fe2RcT2ldTVwNvnmyeWIQ4c7HDDVmoyANeyrQV9HyNs/AGEKO', 'ROLE_USER', 1),
(210, 'Carlaccr08', 'carlaoniel@gmail.com', '$2y$04$Tj3GgHmq0aabtHhJRI95hugskAnx.DiSNGETgjzGOsnr3ISpiQ4Tq', 'ROLE_USER', 1),
(211, 'Maria Alarcon', 'barreiro.md2000@gmail.com', '$2y$04$2hf02n4fKW8whSAlbiNlaOakA3U3O3aId.Fr1q6gS0wrcfmY.npkm', 'ROLE_USER', 1),
(212, 'dayana ramos', 'dayana_abad15@hotmail.com', '$2y$04$jsljwdNui8fvvHsgD4ZMVOSUprSj1VB.HKin.UQAq4pBuclowUNi2', 'ROLE_USER', 1),
(213, 'Doris', 'doriscofre93@gmail.com', '$2y$04$REThGjsAwVYqpH8XOrOuU./D0K70raCx1caDuspD52b6J4vuyVuHS', 'ROLE_USER', 1),
(214, 'Marco Paucar', 'marckus05@gmail.com', '$2y$04$I5ROJwixVkv2hAk26yFLWefKt3etAzs1yQt0mym9.J52ZrVfsrDoe', 'ROLE_CLIENTE', 1),
(215, 'Maria Leon', 'kathya_casa_123@hotmail.com', '$2y$04$3O4OcD7o7GvYPco618u75OVAAYeurEGVTQEePLEUB5gxPSOfywfNO', 'ROLE_USER', 1),
(216, 'Consuelo Baquerizo Alvarado', 'consueba_baquerizo@hotmail.com', '$2y$04$FgYlt0DbytfTd8JDZLl3ZuWyhqCpWGbxbpHY40j2kruxaINKemULa', 'ROLE_USER', 1),
(217, 'Elsa Martinez', 'chalancye@gmail.com', '$2y$04$PKw6DFUqeaCezxaBjHed/uYHsg8Jkg9ZhY7drtZmv2O9gmgy6uV3W', 'ROLE_USER', 1),
(218, 'Nidia', 'nidiaa.1985@gmail.com', '$2y$04$aLrRIDiMgC/jSV9HitboLO8S0W0.hbaJ2a2GzWhJko6yhQVlpfdbW', 'ROLE_USER', 1),
(219, 'evelynlopez', 'jevelyn32@hotmail.com', '$2y$04$mlCXSSxAVYjqiN7n4r0jyuQGcGiBkSMUHAmEJT4LRjp1AmjA1m6yi', 'ROLE_USER', 1),
(220, 'Mariana Chenas', 'marianachenas@gmail.com', '$2y$04$YQ2iS288wwWcBobi8VQI8ebtMOfOWThZ5nJbkUH8xYvpBshn/0hmy', 'ROLE_USER', 1),
(221, 'Karina Baño', 'fsd.jason.ferooklyn@gmail.com', '$2y$04$qGnH97LFi1JcBiZvQqxeFuISH.Bh7VL8Kot/MMmlE6lrxFyeIGRkG', 'ROLE_USER', 1),
(222, 'susana tituaña', 'denis2000vinicio@gmail.com', '$2y$04$rKphyUni54mnlE1cgpL5UeolWO33n2zVczIX/Bj1WL3VIck2XKWUW', 'ROLE_USER', 1),
(223, NULL, 'mariebarrios1401@gmail.com', '$2y$04$uC5wPSb2HkoMUQ7XcR05Bu1B9ac0M6TB5yx31lG/A2JmhNalNtBtq', 'ROLE_USER', 1),
(224, 'maria leon', 'karocsb123@gmail.com', '$2y$04$d.yOQONPJbkDJERsOObWi.kRjRKJ0Fx82u8QeCPpgJneS/fuzaMUK', 'ROLE_USER', 1),
(225, 'maria leon', 'leo24ramona@gamil.com', '$2y$04$khWSE84eloOutuGjVyPA9e.aiD.UEv3ptP2L7mVXo1JmwfHzEciNu', 'ROLE_USER', 1),
(226, 'Marina Trujillo', 'marina_trujillo@outlook.es', '$2y$04$vH8H6oyGdnh7e0ojSjfId.NfuhDHYvmRWcRrewDY7i9Sj3fE11Syu', 'ROLE_USER', 1),
(227, 'aracely castillo', 'aracelyc1997@hotmail.com', '$2y$04$SU0LyZJ8pTNCnrnlLbvb3.9chxx5dRHgy3jKFBDcs1qeqWxhE06y2', 'ROLE_USER', 1),
(228, 'digna', 'dignajuina72@gmail.com', '$2y$04$kuEqd9eGeJVlTp7KsJBOMuagsQG9cFTDT/jKx/L05i/6TdtXAbZVK', 'ROLE_USER', 1),
(229, 'Sofia', 'lety-solorzano17@outlook.com', '$2y$04$qNIFLQ91oLoCbiSPyYBzae8TmkfGvQ3Ql7Snw1vhr7GXjmNx/XAD.', 'ROLE_USER', 1),
(230, 'Luz cayambe', 'victtoriabunay86@gmail.com', '$2y$04$x8wp9AbStwoEt6IdOxuJY.0YRIbARogo09lg2yS0YXmcFBTzHpCBC', 'ROLE_USER', 1),
(231, 'marco gavilanes', 'marcogavilanes19@hotmail.com', '$2y$04$jdGrQSMty.P7YAj3mvrFce6CMTpuZ7B8gSP4l7H9jhReCUPj.jNry', 'ROLE_CLIENTE', 1),
(232, 'Elizabeth Quisatasi', 'ginaquisatasi82@hotmail.com', '$2y$04$MktH0J/j0HBcg4pfxbzBT.QzTBO/Yed1TiI0FJ8dzlNcKaaMm5FQi', 'ROLE_CLIENTE', 1),
(233, 'yuliana castellano', 'Cyulianajosefina@gmail.com', '$2y$04$0s2hzdOgsCTEfEuH17QWTe4TcUSfmQXDjLUg0p00E1d48ibZpfrhO', 'ROLE_USER', 1),
(234, 'Jhosias guerrero', 'jhdguerrerog@gmail.com', '$2y$04$zgzN7VosUE8gLFlf3xiAtukJbXe.MKLUel7U.dr2qau0s4BrFftru', 'ROLE_USER', 1),
(235, 'Zoila Maria', 'mariabelen_95mcpp@hotmail.com', '$2y$04$FReIN.8lUeyju0fXVuRS2Osa28HYr.QrQRdDCdjQ05gE5Gw9wfFEK', 'ROLE_USER', 1),
(236, 'ALISON TUSO', 'toso.alison1997@gmail.com', '$2y$04$TnF.8d2ssQwDURe/Ug8xKurl7gPbL.mZ2LrNLaCRK7o5um4e.iRdu', 'ROLE_USER', 1),
(237, 'ALISON', 'tuso.alison1997@gmail.com', '$2y$04$MxCFAXvgpZrZnP0Za9W5SOZ/zYpLRWqiuGReD7OTG2pKF6dH5YXFu', 'ROLE_USER', 1),
(238, 'genoveva ortiz', 'chocolata_morada@hotmail.com', '$2y$04$exmpg0l07VaRQeKr9O3yMushkfJzLNzAps3qhHMGMPaY6kOKv.kUG', 'ROLE_USER', 1),
(239, 'Nelly Chancosi', 'faribri17@gmail.com', '$2y$04$1gf88NPo7xoqBEAKuoaWcuccn4h5LfZRtDQv9CHgu1.qdDV1cYJ5q', 'ROLE_USER', 1),
(240, 'bngvhjqmrj', 'usoufq@163.com', '$2y$04$Ct5aONBnTK0C76P1IFNieuBGPQzIdaou0z3K46ILFW6mlZKcraKgy', 'ROLE_USER', 1),
(241, 'Dario xavier tipantuña chico', 'xtituana@gmail.com', '$2y$04$DxASjzLyVI6PxoC6ZL7eoOkkGzalAMF37HgAYtj1hL0IRhCYQiDw2', 'ROLE_CLIENTE', 1),
(242, 'Stalin', 'Sp1307junior@hotmail.com', '$2y$04$2q2Yf6CHkqgVioMtdOitt..XAioNuBBW49KHyznmF4vPB7M6L8hMW', 'ROLE_CLIENTE', 1),
(243, 'jgsuarez', 'gabysuarez653@hotmail.com', '$2y$04$chU7EBU0sM89BUopbyQSYuUJAqqbUQMmUJQQC11pOuqnPY9mWhbxy', 'ROLE_CLIENTE', 1),
(244, 'Rosa farinango', 'rossymari30@gmail.com', '$2y$04$pLeXZGxTpI85dk7Jh9wGre8sbuF539FqdwUcwDmxmIyFetyrxYe.O', 'ROLE_USER', 1),
(245, 'Thalia caizaluisa', 'thaliatoalombo1997@hotmail.com', '$2y$04$TgPbm/b0ipr1CcfvU/IGQ.Pwr/0wBc3q1RX5VWPDok9wgXs62O9yu', 'ROLE_USER', 1),
(246, 'Myriam Cruz', 'myriamcruzj999@gmail.com', '$2y$04$6FhTNhf40Jk2Q2XMloGbT.ma5Y/Ijh6WZXsZbstgD.CziHQxReTyu', 'ROLE_USER', 1),
(247, 'Segundo  paca', 'pacasegundo@gmail.com', '$2y$04$.ktJaMk6N0.DGA7F8ocPVecmSL3Ex57kqGT64StXr9CSsa8G2Lyee', 'ROLE_USER', 1),
(248, 'isabel sanchez', 'mirianisabel.j@hotmail.es', '$2y$04$pJZSD1UHtwHhuwf4jM7dXuBgyXEzPDTETspmP/qpbMGbGjA.W0LM.', 'ROLE_USER', 1),
(249, 'Eli', 'elizrene1989@gmail.com', '$2y$04$9YAfT.Q5NYtxHsdkShy6p.3e3Xmg0.j/aDreUO3QcN2nRW0XhBifi', 'ROLE_USER', 1),
(250, 'Camilamasiel8', 'kami.yepez@hotmail.com', '$2y$04$x1w3mb4y/2alf1uEzYdTVen4H4j3nY1s7ATmY0nRVsjA..iLWYmMi', 'ROLE_USER', 1),
(251, 'Fernanda', 'nandavida94@gmail.com', '$2y$04$LFhb30CHvsJY/ZlTBq/gVuSrBnbOcP7rg5EnsYBV0U5w3B/wy/1IG', 'ROLE_CLIENTE', 1),
(252, 'Paul Navarro', 'poolpda25@outlook.es', '$2y$04$HZOwJCD0QhyF1umOSckr6.OP/YVUNUc47VM5NuCEwrxii99gJxmrq', 'ROLE_USER', 1),
(253, NULL, 'wingjunior88@gmail.com', '$2y$04$Cr1d.Kwqp3lDvHHtDpWMzuUgKQBBY1EnJfMgBpeZDHJRXM8HXutNG', 'ROLE_USER', 1),
(254, 'Kate2103', 'katherineanthony1994@gmail.com', '$2y$04$tsgI8VEW9251TRRyumD9i.1OlUkZXwSQXVRPjrFgeGvlUHueN2cF.', 'ROLE_USER', 1),
(255, 'gladys umaginga', 'gladyssumaginga@hotmail.com', '$2y$04$ChgRC02QNpRb.7SLP1VEsuzpHT0nViOmkaRKHFilQczKak4jirmAm', 'ROLE_USER', 1),
(256, 'Josefina', 'josefina.palomo@yahoo.com', '$2y$04$eNtt/tWBnDRfl.cfnUcVVuOyI6P0nwpefeu4BUwUlPCOLuzuNOnS6', 'ROLE_USER', 1),
(257, 'Estefanía Vaca', 'estefa-777@hotmail.com', '$2y$04$.ifyVPqcxfYZtECT94VzLOGBvh6ybZ7nU5N6zCCahgOhdVcEqYh/m', 'ROLE_USER', 1),
(258, 'silviasva', 'silviasva72@gmail.com', '$2y$04$DD.zYrnKjQW3leg26A.iUuOJCbWvBcGyvC77wdsdaRQuF.RrK9VBG', 'ROLE_USER', 1),
(259, 'Elsy silva', 'sebastianfaria2012@hotmail.com', '$2y$04$j15TG6.1L3ghjn27/05sEuU3pRxjMgB7ud888/aRRajwQjwxmvB.i', 'ROLE_USER', 1),
(260, 'janneth cardenas', 'jannethca69@hotmail.com.ar', '$2y$04$u6Qh54G0Gx0Ni4afR3okou7dJR4niSnfdOMqGDQi7.V4fUoVtrcMe', 'ROLE_CLIENTE', 1),
(261, 'Lisseth Ramos Urrutia', 'lissethramos@hotmail.com', '$2y$04$7QegCbQ3loxBuqpRcwS1fe4IF/a69SZ1FN38FQQauAEwmKwH5XIj6', 'ROLE_USER', 1),
(262, 'david arboleda', 'hendry7_mhrey@hotmail.com', '$2y$04$L4amaluAt.0edatSz9fk9O8lQRQ/BzlKrl.0GWrFBLl4n4Ve.97LO', 'ROLE_USER', 1),
(263, 'LUIS GONZALEZ', 'lggleon6@hotmail.com', '$2y$04$sehvUTkmgPvyCUegn26u3e648XHPpsVn9eBp8t3pXPARY/5.EfNc.', 'ROLE_CLIENTE', 1),
(264, 'doris', 'dorisguzmann4601@gmail.com', '$2y$04$Rm7MOQbziLCsnSz7IQW3MexgnX2Gm2xRrktAKqkb8fTnwVkEO7hEa', 'ROLE_USER', 1),
(265, 'ESTELAPINEDA', 'estelapineda201808@gmail.com', '$2y$04$07VGweIdf2680R285U/rzeJv6gAm.y3NRQYp6XLPWG7iQ1LDa8wk6', 'ROLE_CLIENTE', 1),
(266, 'euniceandrade', 'romerhef@gmail.com', '$2y$04$7g.EpZoTGClmJYYmaYYVt.b/lxV2.FP36DaQ2DAcn9xpUWre499sC', 'ROLE_USER', 1),
(267, 'carmen teran', 'carmenteran123@hotmail.com', '$2y$04$wL5X1Ku/w5F2otqLNWRm1.1PHkTL/mz7Ridl1lkv8tt4teCUUYNRq', 'ROLE_USER', 1),
(268, 'Janrth Ramirez', 'marcoe410@gmail.com', '$2y$04$FbA7QN9PX5ZbX8l78foKnu33ZHUllxwTOk5V06F/JACfmxLc0nJGe', 'ROLE_USER', 1),
(269, 'Teresa perez', 'xav_death@hotmail.com', '$2y$04$1o7xwEnZNH2zmrE9jaXWkuJLPYa06svYMDBMHR0.LBE8Yz1HBlEpO', 'ROLE_USER', 1),
(270, 'Omar Merino', 'aurorapro@netlife.ec', '$2y$04$fVa0LOPTVxFeFQ14hmZcPuC1ubZAd6iMCgmtKrmS.uv2lOLevcc8C', 'ROLE_CLIENTE', 1),
(271, 'elena guachamin', 'elenaguachamin1@gmail.com', '$2y$04$OUFKaYVAQgmGbJPHno/JWurE81sPwPAKM5yjp5IbdqNnCGvn0d3u2', 'ROLE_USER', 1),
(272, 'MERCEDES MERA', 'mercedesmera2018@hotmail.com', '$2y$04$bZ8T9fwtcNFytCEMkk7mS.Mt/iMRZVtL2OUggt4CJg2b0T0fJ.SKG', 'ROLE_USER', 1),
(273, 'Susana Chalco', 'susanach96@hotmail.com', '$2y$04$wLdolOjiWKX4dwZ6J6DnvOORHhhyKbZx5XHZWjYSBXCPrhjZv1ivu', 'ROLE_USER', 1),
(274, 'julyu', 'urribarrijuly@gmail.com', '$2y$04$QWMl/LyHlzE4dJ7L0BVj/eoINuaGGNxBicciQQp6TFObz7VYkw5bS', 'ROLE_USER', 1),
(275, 'Cecilia Santillán', 'santillancecilia1710@gmil.com', '$2y$04$sji2drPYXzz86MFoJ0FV3efwIWwVRhKKyNS3a2wPedh9ObNrpbNym', 'ROLE_USER', 1),
(276, 'Martha guala', 'marthaguala@gmail.com', '$2y$04$vUZLwg/7sj5bMhDuOR0BeuIdwOZ05wzfQG9CsCXNdzobRs/O4Dif2', 'ROLE_USER', 1),
(277, 'Gabriela Paredes', 'Gabyru-7@hotmail.com', '$2y$04$vCzWtb0dOcC0KMDnzJpQLu8xXqQNR8wPpTkXe5r6C7G2aPDz4.kti', 'ROLE_CLIENTE', 1),
(278, 'marthaguala', 'marthaguala@hotmail.com', '$2y$04$9/IsAs4c0m2xQrivWlfS5OReFesXn9PI8eVX5qrgHPVxxVxJtUZa.', 'ROLE_USER', 1),
(279, 'Ximena lara', 'karen_cruz_1995@hotmail.com', '$2y$04$6o2QzWwsClS/w395u9yZleNFxkohUsjb5Ld3pQEivhSmaAZdfmMh.', 'ROLE_USER', 1),
(280, 'marianbella del gatto', 'marianelladelgatto@gmail.com', '$2y$04$xr4Enq.j6CMEM/s3Xz.8v.rjXhMoMp4L0qJQzy494yoplggkKAZwC', 'ROLE_USER', 1),
(281, 'karina morejon', 'karymorena@hotmail.com', '$2y$04$MGuJVn7p4w0ds/CKruz8K.wP0.vtcpwFiEaQw.60jlKZwwRDtquY.', 'ROLE_CLIENTE', 1),
(282, 'María', 'nellixsiempre@hotmail.com', '$2y$04$6vk6AwxF5HEDtLLV68jCWeJorNyC3QzUJrhdHXSYJOvCbIm1YDU2G', 'ROLE_USER', 1),
(283, 'Rosa Elvira Borja Cabrera', 'nicole.angy@hotmail.com', '$2y$04$feI.9HC8iMyZ2drv4SWHV.CKucUC5fd.4npypLpdFKKjbS2esq/t6', 'ROLE_USER', 1),
(284, 'Yasmine Díaz', 'yasminita0123@gmail.com', '$2y$04$UKCBeChGUHTidgv1pBwt6u19jfEN1snktT7/12.f0BgzFyigMhti.', 'ROLE_CLIENTE', 1),
(285, 'tatiana', 'tatianaiza24@hotmail.com', '$2y$04$JDhD8XjYH/n0NQ3ALa7c5OC47rFd6.cUUkW7Uz.jmP1O0I71PMeqa', 'ROLE_CLIENTE', 1),
(286, 'Caridad', 'caridadpadronseijo@gmail.com', '$2y$04$jsehpWEPCfqLfM2dqIDUZesEksAVzmavbP4wpLAMKm.MPhvjRU3gi', 'ROLE_USER', 1),
(287, 'STALIN RUBIO', 'STALIN12345_@HOTMAIL.COM', '$2y$04$7E4C1Tc7GZPPg446jIWoNe6.hdbpHoIsAwbsKkv3mpAZjGIvytCIW', 'ROLE_USER', 1),
(288, 'mariamaxi', 'yatsu212@gmail.com', '$2y$04$Jjf6Xl7QS3KDv4qqhQCHxeY8QRxzog46BbpqVTb.MzKupJAtY4hDO', 'ROLE_USER', 1),
(289, 'JOSSELYN CHICAIZA', 'bebitacarol_joss@hotmail.com', '$2y$04$q2QaWN5iz7SphjTgbutLfu.yBMAbZPSaOdPMDNodFE4zfNUprwhiu', 'ROLE_USER', 1),
(290, 'Maria fernanda flores', 'm_afer951@hotmail.com', '$2y$04$kM2DiJAdiIdlQ8VeiV19UulTbgUzZbVOdOWPcHMZ3acoNbsYfy1km', 'ROLE_USER', 1),
(291, 'Alvaro  Ligua', 'alvaroligua1978@gmail.com', '$2y$04$P5weARM3cUNTaT7qRmMjH.TCEq6Kzkm4.Cf/7wgr2KR2YxSH5z6Nm', 'ROLE_USER', 1),
(292, 'Adriana Arteaga', 'adry12101990@gmail.com', '$2y$04$zuESwYWkjIetg4XPDKZ51.O8cBRX8EVQQIygNMlqCJmwV4cB8nLdS', 'ROLE_USER', 1),
(293, 'Maria Vaca', 'tefa_tipan@hotmail.com', '$2y$04$r4NWbOt0Rewdh.U4QkVtDeMXPiC5/a/2kbKWcSJ0xwM/1uew2Cibe', 'ROLE_USER', 1),
(294, 'Ely Bonito', 'blancabonito99@gmail.com', '$2y$04$YNLtwIrRtAueIOcnl8V.yuyYOreFM7Z.WjG84xb3tr3RTp6z4zFiW', 'ROLE_USER', 1),
(295, 'Fanny de la Cruz', 'tumbaico-delacruz@hotmail.com', '$2y$04$SXuxrZ5fc05WcjZl6mx1zOIjo5mjcoNsc2Z1QqP3qszrDOgMmrJ3G', 'ROLE_USER', 1),
(296, 'Blanca Analila Salazar Loor', 'wandaperri2016@hotmail.com', '$2y$04$hrEExhxvAOx6EJDqB69vCutWUhtGI9oVPMHnahhxYDoARPEgd/BQS', 'ROLE_USER', 1),
(297, 'PATRICIA ZAMBRANO', 'paxi1685@hotmail.com', '$2y$04$0hre7hVyranvhO/sOKoO7uwCO39JleiEqkSfGZmtzVE2aIkNUV5F.', 'ROLE_USER', 1),
(298, 'graciela tipan', 'gladyst200@hotmail.com', '$2y$04$lzkEmsH0YNNTqezt5LSjS.Ek7D9mH6wGShGyHFudXwyykzcBhmwMm', 'ROLE_USER', 1),
(299, 'Alejandra Cando', 'malejandra2101@yahoo.es', '$2y$04$k4AAKuZJXojIgYLtH/b8jeOQ/QAWiWHNO2FMviutaxZu817fOrvFy', 'ROLE_CLIENTE', 1),
(300, 'Verónica Palomino', 'rmosquerammy@gmail.com', '$2y$04$Y0wgwKHCcgrubLSBCpgwNuZuhbD1Pi2zQIx92UJZAse4gs0hwZcKS', 'ROLE_USER', 1),
(301, 'María Fueres', 'cynthiyadirao@gmail.com', '$2y$04$ThaM/4mYO4/JJR3wMpf62.IyVBwpcn8Djup1hS2Fo2qnmanwOPQfC', 'ROLE_USER', 1),
(302, 'Ximena Tipanquiza', 'ximenasimbana204@gmail.com', '$2y$04$ARyrL9COIXe3InTOBPmjuegOozM5h1apEAd9u0It8kbrxAyHE6Hxe', 'ROLE_USER', 1),
(303, 'Ruth', 'ruthvirginia.padillayuquilema@yahoo.com', '$2y$04$5MJHjxaAPw4HewDrf9uesOEehEJkxukbPw/P4Sr9Yq.JVbQBu6F/i', 'ROLE_USER', 1),
(304, 'Gloria Sibada', 'silu19712008@hotmail.com', '$2y$04$GL9RJt4MJ82oZAUz2ySxueGwJy/4uOauq.uZai3M/2zSfJVNK742S', 'ROLE_USER', 1),
(305, NULL, 'boluwatifetawakalitu-@gmail.com', '$2y$04$lVdZETkWVPfKKrFF9sf0MO.OjlcNbBOOl8s5BYGI5MSP6uZL5Kz2q', 'ROLE_USER', 1),
(306, 'Rosa Mercedes Cajilema', 'rosa.cajilema-1@hotmail.com', '$2y$04$IOF2dee5xVMTVRxxYKU4ZOHhoYEgLH3wFvJ42n7vQIgeFrlhXcqTG', 'ROLE_USER', 1),
(307, 'Sabrina Rojas', 'sabri_rojas78@hotmail.com', '$2y$04$PrbDspp6eBo7QxAHU9yLIO1u98.2PsvC8HnYKA9L7wRgrBwOi8fve', 'ROLE_CLIENTE', 1),
(308, 'viviana perugachi', 'vividelrocio@hotmail.com', '$2y$04$eto.q/clhctjAs.KWil1Ru.s.a3tGYBceTVWk5O7x2bJMza2bEyxu', 'ROLE_USER', 1),
(309, 'Pascualina washikiat', 'WASHIKIATPASCUALINA1968@gmail.com', '$2y$04$V8YSy8mpFt4GwwY7v2WxIOw6DkFyKtMqaxK9oHNO19gt7df3dq82y', 'ROLE_USER', 1),
(310, 'Edwin', 'winlopez@hormail.com', '$2y$04$O5KQCiJhWedqQql6p9MXkOzQ5nWEEuYlm2u45GCgxRSJHvTJVqDuC', 'ROLE_USER', 1),
(311, 'Pamela Silva', 'pamelasilvagallardo@gmail.com', '$2y$04$plIQIPDUw8BfmHfdZ8TByezFHU5fGb1GLk8lqF7EOojP4anfERrKu', 'ROLE_CLIENTE', 1),
(312, 'Fernanda Gonzalez', 'ferchitacg38@gmail.com', '$2y$04$83vdHhOQdhKQ04vBXIqhh.LyyOPjjHxmr1IYzWo1YqKPsgjzslepq', 'ROLE_USER', 1),
(313, 'Consuelo Campues', 'consu-32123@hotmail', '$2y$04$MM88MYiAO/Gwr6ClioOAguxtiwcWI9UrIe1.odVoCo8Y8p/3tTdxS', 'ROLE_USER', 1),
(314, 'Raiza', 'zarailet@gmail.com', '$2y$04$zoXNSfy.jM8N9ulqx2slHe//m88mzkb11iqXnDORZ7ElsGBbQczdi', 'ROLE_USER', 1),
(315, 'MarianelaManrique', 'diariolunanueva@gmail.com', '$2y$04$hzff6yxftAn1cJqVwH6REOqnwFxg9k301R62Vy9By5Gxp8IsBICn2', 'ROLE_USER', 1),
(316, 'mario carlos moreno sandoval', 'mariosomoreno2018@gmail.com', '$2y$04$ULmC4ewuBycynUt8729Oje4.qA1c02cEa.Jeq.1KVnSSsVMqqnV7y', 'ROLE_USER', 1),
(317, 'lexi', 'leximoreno@hotmail.com', '$2y$04$cEhyowqsdmfF7KDGI2q60ewTKDB7xfLCVngf1g7iQshVnX7Mzs8Fm', 'ROLE_USER', 1),
(318, 'Carolina Garcia', 'carolinagarcia9013@hotmail.com', '$2y$04$WLKTbuVCv9GCVp.w.MgXeemcsNDWYsdWVxcKDN/bMgO9MIXZjOU1y', 'ROLE_USER', 1),
(319, 'Nathaly vega', 'mariselavega2012@gmail.com', '$2y$04$o00Ss4MMon8M0XOx1JJZBe6SazO4KyeizqiA4rh.Ki3F4Of17/tsO', 'ROLE_USER', 1),
(320, NULL, 'rearevalo@yahoo.com', '$2y$04$XNPxfICYcxuBmWlBYWnWLu6/Ntf6vMDE7WwAcH14zGHdH40FNc0Ui', 'ROLE_USER', 1),
(321, 'Flor Cando', 'flormariacando22@hotmail.com', '$2y$04$B963v9DTlk29Wm4/3.0WKez3U9RAwm.qKDdO5gIhJFYbmNpdes1Xq', 'ROLE_USER', 1),
(322, 'Nellylara', 'nellylara89@gmail.com', '$2y$04$qbzFc4szuKXyqbMCcAyx2ugGJkSxFBJqQqa1QgYBLRKpKl1wmAAWm', 'ROLE_USER', 1),
(323, 'Fabiola', 'fabiola1967_@hotmail.com', '$2y$04$kzmf2ShJeahgNst26bD5NudMf.xdmTEdBxCn5P92B14CAFMURwMaK', 'ROLE_USER', 1),
(324, 'Gabriela', 'gabiotas@hotmail.com', '$2y$04$XQhLaPWrx1dW3j1LoxeBHOd97MbIsP6bS7dIEwqT59gt0QddCdzV6', 'ROLE_USER', 1),
(325, 'maria', 'luishermel_12@hotmail.com', '$2y$04$tqB5ANmY2glEgEUm2fWCY.fajJKFUCuRhjxowZu5PDO4OHPmIsViC', 'ROLE_USER', 1),
(326, 'Monserrte', 'monserrte32@gmail.com', '$2y$04$A1qzsl22qr0hZlMUK02zL.dJmdnhRqfexZKt/GfUITCVX0srV.sNC', 'ROLE_USER', 1),
(327, 'Elena Paredes', 'helenisa67@gmail.com', '$2y$04$4qaZUSNs6k5ImxAvRbxzmeXXOXTJ1Y0m7tUlyxNzu4LQEd8.Hwvqq', 'ROLE_USER', 1),
(328, 'DianaV', 'dvillacis657@gmail.com', '$2y$04$FU7hMjXh7hlE3RjeXx1k0umlxnsQ9a1X7P.vr6zyypAHD9pWhY81q', 'ROLE_USER', 1),
(329, 'maria patricia igma carguachi', 'mariaigma@outlook.com', '$2y$04$qcIOZm..4NrFPtUPtnCxjuX6t50eqW25d8ZFC96v0buqguW9nh/9G', 'ROLE_USER', 1),
(330, 'marlene', 'marlenita13061960@hotmail.com', '$2y$04$Ts33bmUVUYroHOzxL50oquFH3724IEnbyjWZ7YgfgWCyd4D7F9Tq6', 'ROLE_USER', 1),
(331, 'Carmen Padilla', 'camenpadilla100@gmail.com', '$2y$04$ByL5Vq6drPm0F40X/b5.MefHuP7871VGYn5aYqi3T9sTvMPpbWcSe', 'ROLE_USER', 1),
(332, 'Elizabeth Astudillo', 'moranmartha120@gmail.com', '$2y$04$m1CZL4NbMw4uUnr.3l9Q0uKm/4IkTcCtwYBLUJdupvIh2iu677tpu', 'ROLE_USER', 1),
(333, 'rosmary', 'rghuiza06@gmail.com', '$2y$04$PiogUYkP53KqJQgIi.3VSuXTlz6P3OEO/EkuvTKdGlOrS9gyQz6LK', 'ROLE_USER', 1),
(334, 'maria patricia igma', 'mariaigma05@gmail', '$2y$04$mNL7jMwYasuo6ifeUjB2NuyDykQRSwLNk2E1gn7E4fKu0m4OKdzmK', 'ROLE_USER', 1),
(335, 'katerine herrera', 'pukaymas2014@gmail.com', '$2y$04$k7XhFMikiHjsrGwdqCpdB.epTJBz1OzwuD1IzHmK2y.Hs1.rtDUdm', 'ROLE_CLIENTE', 1),
(336, 'Josefina', 'natalia.estrella1280@gmail.com', '$2y$04$c7ODEfWxXj7gPv66cFwGB.18bJlxqzVrRBQPUl.gElpCyQV.vBfym', 'ROLE_USER', 1),
(337, 'Tania', 'taniacy1999@gmail.com', '$2y$04$OtdPKMj/PPpStwyhaDhrOuJWMBxDWYxuBTXJHNhI3e1Znp8ta8uoS', 'ROLE_USER', 1),
(338, 'maria belen balarezo', 'rrhh1@accival.ec', '$2y$04$qTlALR0QmW.wlweZp42A4Oe9oGu4kb/n18tJAoNmbJnmJ3GKdrybe', 'ROLE_CLIENTE', 1),
(339, 'SAMANTA CARCELEN', 'mayegirlsexy10@hotmail.com', '$2y$04$LnY.AfvaRmaTzLs36RNJ/Ou4sH1aiLnuMweCtiiN1soOB8nIth0g6', 'ROLE_USER', 1),
(340, 'Joselyn', 'joselinmessenger@hotmail.com', '$2y$04$RYkiFrvXJwtr2p2yCx0o..PJuxEq3gA/dXWL7RLzq6wPbQTjzeQAG', 'ROLE_USER', 1),
(341, 'Treicy Cano', 'treicyanita_amaury0502@hotmail.com', '$2y$04$D03W6uLnq15dsKfHZLcPHetIDRQtlWfOnJP.6gDu5PFDDxJX1v0fO', 'ROLE_USER', 1),
(342, 'Gabriela Correa', 'gabyemily2425@gmail.com', '$2y$04$AAysWTw0yOsfQ4xXp4WzIOs5.RnWLkiA6.UU9lmUJbtuqdi4umJgW', 'ROLE_USER', 1),
(343, 'José Luis Machoa Huatatoca', 'josemachoa1997@gmail.com', '$2y$04$GUwOKq3OGAtHUAO.kq0Lb.YgUxTTeEIPSV9PpnZsp2oiR0phQcqia', 'ROLE_USER', 1),
(344, 'RUTH MORA', 'ruthmo19@gmail.com', '$2y$04$7y3s.gCaO0wqLUPiXfUsG.4p2ljx6V/GaN4qv69PqH6iT4qD/dWSy', 'ROLE_USER', 1),
(345, 'Sonia Medina', 'jeilyelena@hotmail.com', '$2y$04$0So/sriNrHs8PpgYyWqCXuGL5WREbFAu4TPi4gQoB6AOKBborBXom', 'ROLE_USER', 1),
(346, 'Aida Sevilla', 'aiditamg2017@gmail.com', '$2y$04$VFPijtEJEU5iRbQCANrTb.HD2I86sLXnif/dBX9Y0zO8j2iovC2g2', 'ROLE_USER', 1),
(347, 'Aida Sevilla', 'aiditamag2017@gmail.com', '$2y$04$sp6.ckMN9wQdfdHp0zSRROdBPllAv17TA2DekgFj84flOAbWGc/vy', 'ROLE_CLIENTE', 1),
(348, NULL, 'sandyply11@gmai.com', '$2y$04$yKnGycEJPtoEdKvvrX/mDO3uzexibm2HDy5ig4ZfT4iz5ZyedP32u', 'ROLE_USER', 1),
(349, NULL, 'sandyply11@gmail.com', '$2y$04$sVaoWSlKhI5jUWI6WD2mpevTpA9W6WXgiyGmV00CbjNzXpbEUD9Y.', 'ROLE_USER', 1),
(350, 'Gabriela Quinatoa', 'gabyquinatoa_@hotmail.com', '$2y$04$hbyM5hRQu22ZkeHdPHo4IOeXj1f0h9prWfVuvhq8pBuaE4VLQzJei', 'ROLE_USER', 1),
(351, 'maria patricia igma carguachi', 'mariaigma05@gmail.com', '$2y$04$sWJ7auBVOxU6PDoNRiR59es/yCsGT/3SGF8CUcPoUMvs47NrpMmUi', 'ROLE_USER', 1),
(352, 'mbelen', 'm.belen_g@hotmail.com', '$2y$04$r/L0VA7XkvedDDshZZOKieLXl1ttpbCdayA6haQReH9oq7fg0clbK', 'ROLE_USER', 1),
(353, 'Rosa Conlago', 'rosazoila97@gmail.com', '$2y$04$bXcubQf.7./ISKQQEd9GoeGoS.vYUfLpg5zlS//eqKB.Qh3YgUGgW', 'ROLE_USER', 1),
(354, 'LIBIA CARPIO', 'libilgc@hotmail.com', '$2y$04$OtpcFslVjLh7sRHTs2U2hOmShLwzmqsYKInVxTg/7hEVuFiMWwmf.', 'ROLE_USER', 1),
(355, 'Paulina Rojas', 'francisco.rojas86@hotmail.com', '$2y$04$VmOSUkEpoDf05pQz9v0n8ONbUHzgWysXCyZD4GNsb.uCSVcqHmg8u', 'ROLE_USER', 1),
(356, 'Mishell Valladares', 'mishellvalladares64@gmail.com', '$2y$04$Futu7uDgXGaUl1vD75I7JOPgDw/Wqv.jarc/jT9o1ZXi58T2wSVri', 'ROLE_USER', 1),
(357, 'Aurelia', 'jesusbriones@hotmail.com', '$2y$04$pbckzZaUr.JLCicAkByLe.hAiF6dWCm7vnclXR.EZ.ss5MABpGCLa', 'ROLE_USER', 1),
(358, 'antonia', 'antonias2012@hotmail.com', '$2y$04$GBjWqxj2qPpVZM7.FfDTr.2dV./YdSayQ.2W7QlBxWK4kpdoZtfL2', 'ROLE_USER', 1),
(359, 'david', 'david_c_razy@hotmail.com', '$2y$04$wazwe9Bvssu0BoKM4A0dZOA299B.9dU8KNezSkYOYu8PvpXyKMEF6', 'ROLE_USER', 1),
(360, 'JOSSELYN MONTOYA', 'jossevidi_15@hotmail.com', '$2y$04$ZHruex0/S..TqhwrQ2OUfuSzwtiscit6sDxJs90Ji06sa0kqk7xd2', 'ROLE_USER', 1),
(361, 'Roberto Villamar Villalba', 'RVV80@outlook.es', '$2y$04$GTJbOUCosUDu04jCY1Vxkexvf5Gtk7eAUOCGdmNLyZ.uMuy9sLTOW', 'ROLE_USER', 1),
(362, 'michelle vaca', 'midaya_18_brujitha@hotmail.com', '$2y$04$itDg0CG.p5s870tBVdS2tOJTFMghzWGdk055m3eqpras47zg8eJyO', 'ROLE_USER', 1),
(363, 'ruben', 'drubenne1997@hotmail.com', '$2y$04$Xhid0rb6J3Jchp9glIEhlufY7MpSUF.TxpIUPjkIIbvurYikrYAPq', 'ROLE_USER', 1),
(364, 'Denise', 'denisea.beltran@gmail.com', '$2y$04$1AP.IIyKqxPAZiGejf6kbuSnY.lrR4Im8WOMDj71uNiOaV5NlMMYS', 'ROLE_USER', 1),
(365, 'Carito172425', 'carito-2508@hotmail.com', '$2y$04$tzAWSW8Zcj2Q8Se/WxuPsu8mniPIJMm.LYu165A2s6BHAKDyCL3.K', 'ROLE_USER', 1),
(366, 'anyela', 'saranyelychavez@hotmail.com', '$2y$04$NiEprKjckPHAwHOrYKQiA.n3whAASFMrAQ6KtrZIx8LuCVNWghHUK', 'ROLE_USER', 1),
(367, 'ancianidani@gmail.com', 'ancianidani@gmail.com', '$2y$04$zaxM24PpUJxrjbrxua4cQ.jS9mp9TQlR5HBGxXw05sTiW00xZDgKC', 'ROLE_USER', 1),
(368, 'Jessie', 'jessie.losalpes@gmail.com', '$2y$04$bmN9AsCBX09jZmuOuwbrMeANlodlc4Tkjx5/R/0cRLmNynu4JOe/i', 'ROLE_USER', 1),
(369, 'Deyanira', 'lanenapaucar@hotmail.com', '$2y$04$ZZZgmyP4sPLlGhtpijDUseMBtdP/sYPKOv9kjcbZ6lskj8Gt.3cbK', 'ROLE_USER', 1),
(370, 'TamiN', 'tamieli1591@hotmail.com', '$2y$04$ATLFq.CQWjT7jq6BEs833OumTajfJYw6nLvyYfo51pgYLTWMvr32G', 'ROLE_USER', 1),
(371, 'Lesly Amaguaña', 'leslyday@gmail.com', '$2y$04$aCCeLMB3DkbrZsi1G/HBLe9lmU9WJyp1wpDLG/8RfXyr8lOHLgShq', 'ROLE_USER', 1),
(372, 'MONICA ARAUZ', 'monicaarauzs@hotmail.com', '$2y$04$4oA.NGFFdoQIOyvvUpuoDe.GPhUhk8DvJR5hBSNTtNDauDP63rnkK', 'ROLE_USER', 1),
(373, 'karol__18', 'karool_oyc@hotmail.com', '$2y$04$hNhfc9kQG4TCC3Cz0N5g2uluesEeUBB.nA/IuXUhwlAx7N1HqlDnK', 'ROLE_USER', 1),
(374, 'Wilma Barros', 'wilmabarros25@hotmail.com', '$2y$04$WOOVa79ZuTYz0CrAU2Z7JeA1FSpo/rg.lFpW32EFbewqpdm92AgHS', 'ROLE_USER', 1),
(375, 'Martha Quinllin', 'marthaquinllin@hotmail.com', '$2y$04$LxEUZ51arAh8P4RgX9tg2..b12n0TI5yLApuSN6ahHllVM2h8sO.m', 'ROLE_USER', 1),
(376, 'susana remache', 'susanaremache123@hotmail.com', '$2y$04$G26R6r9QlYiQ/EBdKvORoOk5h5J/MUmP/yvJyWbzT1cwO3ec.XvUm', 'ROLE_USER', 1),
(377, 'Fernanda', 'festrella81@gmail.com', '$2y$04$/xTOyWwXt7FVmLl6qqXHRe4sNmNHJaApcxVOs4fAN8nxhLinHfOwW', 'ROLE_USER', 1),
(378, 'Maribel', 'sonia_cpp@hotmail.com', '$2y$04$YEzypbB7c3lypR1lgeG1m.MjVAZhz6unrS8RJVcYaa81vKd/fHuzG', 'ROLE_USER', 1),
(379, 'María Camas', 'mariacamas82@hotmail.com', '$2y$04$v7MNl6eU9rd2MvBa0SHdjeUKVtn7WoPzWVU7FR5oUOpEXSIysFzJe', 'ROLE_USER', 1),
(380, '0802382317', 'andrademelvin03@gmail.com', '$2y$04$XHn.jXSv7Wmz39099Vfp2uMc9LrdNAFaVAlrgoRs2kS10EQltW7RG', 'ROLE_USER', 1),
(381, 'jhon pavon', 'jhonpavon5656@gmail.com', '$2y$04$fFr7u8V1pxWYulADhhLlauG.uEmZZpDlTSztl3aM..1t7WF68koeW', 'ROLE_USER', 1),
(382, 'jhon esteban pavon', 'jhonpavon565@gmail.com', '$2y$04$SqtpbaPzJVbegTBlVQacDug2EyRjC36xyaJ5WCWqHHpTUPE8Zt4Fe', 'ROLE_USER', 1),
(383, 'Diana Andrade', 'dianaflakita_d15@hotmail.com', '$2y$04$8A1v49vB2W1FGUVqMUvecuDkHSM5.g5L.1x1ZnxU90k2UdEvJ7QtW', 'ROLE_USER', 1),
(384, 'maria-paz22', 'mariapazita99@hotmail.com', '$2y$04$rVWMbmGo/KHCKAHpzKGGsOED.97JfWOjEwpKhyNHsK07.dkFVSfRi', 'ROLE_USER', 1),
(385, 'Viviana Romo', 'vivianamicaelaromopiedra@gmail.com', '$2y$04$kUCqKS.kjN2XppcPmQofC..N1ADAEtKlsKM2Cykr0XxsxWj27UR8e', 'ROLE_USER', 1),
(386, 'karina Villegas', 'karina.1973@outlook.com', '$2y$04$pO0eX55.3MHneJ0RU6IXRexRCjAwIEFrq.aoqs8wYXHh02J30HPXm', 'ROLE_USER', 1),
(387, 'Piter', 'ppemts91@gmail.com', '$2y$04$aqiou7j3ENEa2rrmf8r3IOAHkh3VpKNpshXeE06ZbCV0VFTEmKiu6', 'ROLE_USER', 1),
(388, 'Esteban chulde', 'chuldeesteban3@gmail.com', '$2y$04$IDQeMB30eEPIanM9Pje2E.iL0Q43I1snxFvPDOQVticaYqeaHgl4O', 'ROLE_USER', 1),
(389, 'EriLore', 'erikasantillan901@gmail.com', '$2y$04$sEkdJldz4HGDfKYhKRexgONt2wsIwBSNu.9IBsP3JTwjKibGPMVP2', 'ROLE_USER', 1),
(390, NULL, 'jimmygaona30@gmail.com', '$2y$04$YZL2RGa4D08yoHzRd4gYV.x/x9NxZcT.Khifh1JOifeT79XnW4IXq', 'ROLE_USER', 1),
(391, 'Jenny Acosta', 'jorgeguidoix12@gmail.com', '$2y$04$ETAhi1OE9TiXwn9X2YuBr.04olnTh5vRVguRNAlrEjVmKJb3K2r7O', 'ROLE_USER', 1),
(392, 'andrea merizalde', 'e_andrea16@hotmail.com', '$2y$04$L5lUxPHkhs.aYYdgd4yv3.E/eVJsPUb6VXOt6aiIIrvh.dyMcl2K2', 'ROLE_USER', 1),
(393, 'MARGARITA LINCANGO', 'marlinmo1989@hotmail.com', '$2y$04$CWFhu8fFNkghiIzHS0kpkO3a8kVticDxL4.ZsZRGbByXCQNVTrICm', 'ROLE_USER', 1),
(394, 'mariela', 'mariela1996@hotmail.com', '$2y$04$v/Ii9fjdC3NfvEjmfhyEIuo.W8W3yAOlaJV8vt2e3kLwUiPbx9PJa', 'ROLE_USER', 1),
(395, 'jennygallo', 'jennypgs69@hotmail.com', '$2y$04$dUjO2ksUbuWVVg.JoPAzpuQwgUISlasM6gs9rsjcfCGq/v8heuhuW', 'ROLE_USER', 1),
(396, 'crismaly', 'crismaly.kriz@gmail.com', '$2y$04$pZP8SY1.GEL6gfkv5Si9S.YMJ./NUiClzOoTdkxUaLa3ALK6k0ARa', 'ROLE_USER', 1),
(397, 'johanna katherin', 'katerincusco29@gmail.com', '$2y$04$J7nOm1IdDDxHpXIO5e.8o.CJ3LHlP7NcKFZP4e1Mpdep33bjoXQ1K', 'ROLE_USER', 1),
(398, 'JesusP', 'jesuspichardo18@gmail.com', '$2y$04$zsORvueAb4u0dV7ZDVVmsuFh74i13bGNpstZk2kdm7msCRy5f7f6.', 'ROLE_USER', 1),
(399, 'Diana Doicela', 'ddoicela@yahoo.es', '$2y$04$OqbVkpjh5/2BDzG0tICSDO7LU/D8OjWDDc7nV53Cv9APBLdh3JVjm', 'ROLE_USER', 1),
(400, 'Ariel Salas', 'jordan.salase@gmail.com', '$2y$04$bCUu7aBssGskFzE.jsdfsubtVFquy4oeCKuGCvhc6L6uHF6MVyCdG', 'ROLE_USER', 1),
(401, 'leyser gabriela', 'wilsongaby1993@hotmail.com', '$2y$04$qd3IS.crR4Gq3GUwKq.U2.Gu56uT2iGDs3DhKQ8mtqve.KziFV8h2', 'ROLE_USER', 1),
(402, 'SYLVIA MERIZALDE', 'comercioec@gmail.com', '$2y$04$ih/nDwjJAeBR.sFM.SvG1ug8GkQfjK/fn2yBeYyiSa/t45IVvWbdO', 'ROLE_USER', 1),
(403, 'Dayanna D', 'dayannakdg@hotmail.com', '$2y$04$HfePY28gPApkLLkLlCE3YOwxTTJTj6R5.yRrEu0s6mn4HS8nYeIs2', 'ROLE_USER', 1),
(404, NULL, 'chiquitonacional@gmail.com', '$2y$04$zJUuTc6NhpAptUtNd1H6leDnlO3wGuzLUrqWRfxL3.DO7ROLmAzjG', 'ROLE_CLIENTE', 1);
INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `estado`) VALUES
(405, 'Miguel Carlos Sandoval', 'miguelsannd23@yahoo.com', '$2y$04$Yis21iKb4bKpkLpTZLUYZ.vQckFey8BDmcQVTjiSK4ba7BioMrddG', 'ROLE_USER', 1),
(406, 'ROGER RODRIGUEZ', 'rogerandreslc2015@gmail.com', '$2y$04$BFImNnfshXUhco7EbqnjwecqTnE1kG0CDuPW38oAcSBgmYGRXcnF6', 'ROLE_CLIENTE', 1),
(407, NULL, 'solangeperezlachiquita@hotmail.com', '$2y$04$l9ehce89lNSuHA2fE3HI4eij.I.lW5CCjxeO86GDfsQVLb00MsKoW', 'ROLE_USER', 1),
(408, 'Kathy', 'kathylu_3@hotmail.com', '$2y$04$PgLdSQsYEMY8bx0rpreKYe89m9/MAxs.6xeID0PSAYQ0JVwKSYdNS', 'ROLE_USER', 1),
(409, 'ANDREA ABAD', 'perfect.andre@outlook.com', '$2y$04$zalYBo.OIWklQZPiLvKluOq7Dc4wB.4aygfGDzzv5BMj5cxmvw1gq', 'ROLE_USER', 1),
(410, NULL, 'valladaresandrea_1993@hotmail.com', '$2y$04$Adq6M7k0gRVDzxSsN6Y1YOUI6AU1inGHw.tTlGoR/g8jG.5Z.UtQm', 'ROLE_USER', 1),
(411, 'lorena sango', 'lorenadelpilar085@gmail.com', '$2y$04$oTU819P7HzY47EM0tdxqx.vj.Wo.xjuMm3DjLx/Yyu4GVZJXnrDIS', 'ROLE_USER', 1),
(412, NULL, 'dianamargothperez@gmail.com', '$2y$04$D/UqlbrybHmQbHRZ1fh7ju4z20bDdFxQTU.vTtBL5l5u29mxzmMUS', 'ROLE_USER', 1),
(413, 'mirian dorado', 'mirian.velasco@outlook.es', '$2y$04$2WlWuikzuEb7cbRSmFEfM.AtXHa2VDaYPoPPC5r4RhOEW2m63aqci', 'ROLE_USER', 1),
(414, 'Martha Altamirano', 'maltamirano42@hotmail.com', '$2y$04$t42L3VDAF0g.e5RX5dmoX.g0PTsUF2uv4GcIdKtm1hSXm5Xeojf/m', 'ROLE_CLIENTE', 1),
(415, 'mirian', 'mirian@hotmail.com', '$2y$04$6x6Yf4wEqZahSgwWO9T8CeW/rFfKVwuJsAiHayhNkFxRMRjuNaAjm', 'ROLE_USER', 1),
(416, 'mirian', 'ELIZABETHSANTACUZ@HOTMAIL.COM', '$2y$04$R9fKWwzWUpp7V0wN2vDbW.vNG2dPHT5lQDTdl28Ys0hk44/LQwbVG', 'ROLE_USER', 1),
(417, 'nicolsosa', 'novela2823023@hotmail.com', '$2y$04$plNmGmbmaYGnA7qoq/9dLONegcgjv2J5joDdqH819lx4I9bm0aSye', 'ROLE_USER', 1),
(418, 'Evelyn jarrin', 'gataj1992@hotmail.com', '$2y$04$7mSvLVZIOEiObZJ6YV8wOucBdXIeHn275bf3s11c2WR7feZPYYuoW', 'ROLE_USER', 1),
(419, 'Oscar Millingalli', 'millin_6oscro_88@hotmail.com', '$2y$04$vn4rrFs9eQGqQpA5VSEznO2J3tdBGK91dC6PpoPiB9msYvtvutA2S', 'ROLE_USER', 1),
(420, 'lourdes margoth', 'andrea11.pullotasig.@gmail.com', '$2y$04$rxLG7VWLIzXAgoDhqg6Yg.T/vXUWGmJkqNEEcTH5ZSdyv9ezkdJje', 'ROLE_USER', 1),
(421, 'Silvia', '18silvina@hotmail.es', '$2y$04$dwtkai/c5vtJBrWFqFAtIOQSbav5W5OpkFIP4JLS2H5NT7fioBB2u', 'ROLE_USER', 1),
(422, 'JACQUELINE HUIRACOCHA', 'huiracochajacqueline@gmail.com', '$2y$04$63wwjWo84xRyDnP1xP465eumFPh/eOddl9aX7FJvHo0.4CeBWnWG6', 'ROLE_USER', 1),
(423, 'Estefy Castellano', 'estefycst@gmail.com', '$2y$04$s5SqV92Ykncgu3eXNWI2QuqYSzH/Grr7GuwuuSzNKBCo2TbAvukfi', 'ROLE_USER', 1),
(424, 'Mercy', 'janetmer_10@hotmail.es', '$2y$04$hOPyIBMQyxaL20/Q0dHDSe0ElTftnRQuymmxt81Ww/cZgSggIh/Hi', 'ROLE_USER', 1),
(425, 'mabel', 'mabelyulisaplaza@gmail.com', '$2y$04$.LPha3/R5O1f3FhbeEo0guGohnxLZzfOqBky7SYrvIOF32HIUVnzK', 'ROLE_USER', 1),
(426, 'Patricia Santillan', 'sisa_199@hotmail.com', '$2y$04$9IkAHxzFs09nhFT7tgFAbOQnpjy9pteJBODVKGkMeYIFga4/kXEnO', 'ROLE_USER', 1),
(427, 'Paola Buendia', 'vero34pao@hotmail.com', '$2y$04$vLmRnjAlBgI2wL49C.Tj2.jxcgAMKqwpflO3JkcNrlH13bh4bWXWy', 'ROLE_USER', 1),
(428, 'Ana Cristina Pantoja Vallejos', 'anacrispantoja@hotmail.com', '$2y$04$WouFMBphMzaV.S5ZjTzCWugblpP1oAgPKqUE.oZbb4EvGZIHotP4W', 'ROLE_USER', 1),
(429, NULL, 'rubencillo_1982@hotmail.com', '$2y$04$FafwA/XSV941ompVS4tHMumPlVYBwa75ssq/d/jq3HOF9PBjXKTxC', 'ROLE_USER', 1),
(430, 'Verónica Herrera', 'alexa_ver75@hotmail.com', '$2y$04$ArAsSdt7Jp4JDDmgIxGPRe6Yx2j.JbpYIxNx6UnLYCBM9DBdVJnEq', 'ROLE_USER', 1),
(431, 'Andrea', 'jessyca_yadira@hotmail.com', '$2y$04$G8bmRp.Zl7KSG.vecIGrnOquYDLbsqHdh/HywYPK8Y8DDuNnTmNyG', 'ROLE_USER', 1),
(432, 'nancypacheco', 'nancypacheco2109@gmail.com', '$2y$04$w.BxVVJVf59ePSCEwjLF..2bdKOOhQNY1/7u7KAHpBpxiESH/P876', 'ROLE_CLIENTE', 1),
(433, 'alexandra gavilanes', 'peggui2808@hotmail.com', '$2y$04$lQihHAb7/oueelz.t6YZ4uTAiOa8MsdpP4hj2.DHztTqWavxEOxJG', 'ROLE_USER', 1),
(434, 'Gabriela Lara', 'gabylara2007@hotmail.com', '$2y$04$1kNRVmagP5tA8LpxUgXcQu3XEL.eijbRGJUJ89WIrMp7Ylp9B6LKG', 'ROLE_USER', 1),
(435, 'GLORIA88', 'gloriacamacho1988@outllok.com', '$2y$04$6qd97mdzQjIi/Mi1T6HcfeArcvNeAjSs4m7X2FXYGwKeDTrL66veO', 'ROLE_USER', 1),
(436, 'jazmin Nathalia Rodriguez Casierra', 'natyjazmin199422@gmail.com', '$2y$04$9mrIgUBITp7xtBBXpixdmON.8bDzcFFLOUTcABF.wWQ//Xk6QuoAy', 'ROLE_USER', 1),
(437, 'Jenny Mendez', 'mendezcongojennyalexandra@gmail.com', '$2y$04$9QxQifyKek6eyMS.iHvz.uNPVOuyzXYWjXVQs4TepJdK/i3ElnsVu', 'ROLE_USER', 1),
(438, 'Miriam Poaquiza', 'elizapoa28@gmail.com', '$2y$04$/rTdKrEsdMh3IuiH6.VMLOzPQDrypbEo1eZlBNP8wL9KPF9ox8rYa', 'ROLE_USER', 1),
(439, 'MARIA MORALES', 'karolmabel7a@gmail.com', '$2y$04$amBUb0aE8nbQsh5rpVKXiOKK36nxaHpavnXX8eb4r8WrvtkiqFGUC', 'ROLE_USER', 1),
(440, 'Anita Vasconez', 'anitatugatitapresumida@hotmail.com', '$2y$04$yWzsBEyr6FrYg7L1phm0q.oVnUUouhtjjKJwXwMftvhaxjxZQAw2W', 'ROLE_USER', 1),
(441, 'MARYA', 'MARYAMEJIAS@GMAIL.COM', '$2y$04$7El.RSNXl6rN8sc5/Y5pV.I0oWH.SrVQuUF58QGF/RpG0ume4QNjy', 'ROLE_USER', 1),
(442, 'Jazmin', 'jazminanabel_10@hotmail.com', '$2y$04$wR2CU8eWCI9Dhh2bBceszuisKnxaoQivPJLlS.sr3FGF15tkDDLNe', 'ROLE_USER', 1),
(443, 'Manuel Garcia', 'esteban_garcia82@hotmail.com', '$2y$04$i/3mWa/sI8P.dRU4VwD82OKfVrLJhcufXWvZQLEhmIREOkLMQDrJi', 'ROLE_USER', 1),
(444, 'karlamoya', 'karlapam.2017@hotmail.com', '$2y$04$bBW47F4J3wlIJ5EP1xe9u.r5Ldn7FPV7/EDZZfJ6FWUVX2dxv9CE.', 'ROLE_USER', 1),
(445, 'DAYANA COLTA', 'dayanacolta5@gmail.com', '$2y$04$Eb1KtBKQr1XvSKbYqCHof.LFTAC2Hv.rHFb.mDjvUO.ku9RzsSzPq', 'ROLE_USER', 1),
(446, 'kerly quijosaca', 'kerly123xd@gmail.com', '$2y$04$sttPTovCDURes3s/EoDh9OFL1wIVsDcF2s3snalAm0cC8xzSGa2Mi', 'ROLE_USER', 1),
(447, 'LETICIA QUITO', 'fannyleticia1070@yahoo.es', '$2y$04$G029tD118ARX6SOg1HpRe.xnSyWfhYaRUWLx22oV/sRffSDj.8t6G', 'ROLE_USER', 1),
(448, 'rosa  bosco', 'merly_bosco@hotmail.com', '$2y$04$UbNO8SKIsPG9JUENF2/ymuE79ytRjfaRbeFTm8eFFTrvoO.lReJTe', 'ROLE_USER', 1),
(449, 'Mónica Flores', 'moniflores30@hotmail.com', '$2y$04$.dNBXx/FlbaC6W52V0PGqeSvIKJ6qS9xUS6EsOyjd2KC.UYYZ2ikW', 'ROLE_USER', 1),
(450, 'Dieumise', 'dieumiserouston@gmail.com', '$2y$04$CcQu2wQmuWG2QDMQVRIv.uuih6ehrZCMjxhwk97POeQOEbgIU9Nye', 'ROLE_USER', 1),
(451, NULL, 'washooo18@gmail.com', '$2y$04$ZUsqy52cm7mk4elb1SsAP.KMsDRnjTHKrlfvfkPbZr9E7NxkM913W', 'ROLE_USER', 1),
(452, 'Samantha Proaño', 'samanthap9529@yahoo.com', '$2y$04$poPJA0MY4Dof0DMSpsGr7expMynGyBbiMPPzVelaPGBdslxrclfmS', 'ROLE_USER', 1),
(453, 'Yrsa Espinoza', 'yrsateresa@gmail.com', '$2y$04$ILWyPjNyO5R4qstwWLwISeufOji/LCIPV7S0ceyxiEI9IAPQslC5e', 'ROLE_USER', 1),
(454, 'ANANYILIS ARAY', 'ananyelizarayz@gmail.com', '$2y$04$sOJADtnRzM2sgq8Gf1nSLOKvLxhb8lF93xSgQkRG0IcIL8qvhR0nq', 'ROLE_USER', 1),
(455, 'mafer', 'maryyta311995@yahoo.com', '$2y$04$yDMkzGNhXz133fa05wthfuOoPMbAnKWaYq6C6jz/4cNzJf3icBVjK', 'ROLE_USER', 1),
(456, 'Francesca', 'eustachefrancesca@gmail.com', '$2y$04$00ZT.LGNDfrL0tNATmbH0e.PiU63sOHFuyEgYXomScpsMTejAOWTu', 'ROLE_USER', 1),
(457, 'Yuliver', 'yuliverr@gmail.com', '$2y$04$gilWOfotuZXT4RA88I0qq.Lmzu9mGAA16d4KDNAs46sLWZnjBnWlq', 'ROLE_USER', 1),
(458, 'Ani', 'lemosanahi0688@gmail.com', '$2y$04$agY0gAMus2cUDB5rLWbJtusVD358Dvluu2ROKG3UK7Nc/cW3zq.my', 'ROLE_USER', 1),
(459, 'Norma Perz', 'normaperezcueva@gmail.com', '$2y$04$36ApcilrTa54LKSmT3cIqeWEG0iCL5PkPK.Rs9rR1Dg6T8FBU20ui', 'ROLE_USER', 1),
(460, NULL, 'amada.fuerez.i@gmail.com', '$2y$04$oPpkTWUtQKviAYuHwrJlYOVBgf0KQ8vhrFmlEigxWPcyBixmm6GG2', 'ROLE_USER', 1),
(461, 'monica valdez', 'jeanneht@outlook.es', '$2y$04$jh9YqB04dPYlax8PxNLsVutlzVGCV4yfjUL5ViMGBf2P4kY89VPCW', 'ROLE_USER', 1),
(462, 'Irma Mendoza', 'lbva.lalaleo@udlanet.ec', '$2y$04$zC2dH5s.9E58/y5hsXFNp.Qmp.Y1.y/jzGmMJI9/ls11VouGuUneK', 'ROLE_USER', 1),
(463, 'Brayan Guacapiña', 'brayan11gnr@gmail.com', '$2y$04$wM4SKwiEocZ1TBEWtEQvseuxUSyW9xXcstPwDQTOJmdx0CehFWJpu', 'ROLE_USER', 1),
(464, 'Jefferson', 'cang_99@hotmail.com', '$2y$04$AaMo6fcv.OtPyFb5T7i2.Oqqot/YNYPXc1k2gfKQ93kEsX9VG0Xve', 'ROLE_USER', 1),
(465, 'tania toapanta', 'ttaannyy_19@hotmail.com', '$2y$04$ioO65IALGEP/jyPvyMasnOk2ytvBeHCqG86ptf9LmunvTDHEJDzSy', 'ROLE_USER', 1),
(466, 'Jose  Roman  Pintado Troya', 'eddypintado@hotmail.com', '$2y$04$8u506dg.pGlVIGDAPxRkHei7M2IwN4CILHAoDHG578MtA3IptkV2e', 'ROLE_USER', 1),
(467, 'marina_luz', 'EddyPintado2005@hotmail.com', '$2y$04$xIJOWEHiDTgWVu4QpBs5r.TkQXh.ibEkDvJ9c/ClSEvIF8aLOYqB6', 'ROLE_USER', 1),
(468, 'VERONICA', 'oscar77an@hotmail.com', '$2y$04$TSfxSXFkUJzO6eUeL2Evg.xHXFa9ET.t.jh/hkfr9qn5IivBC/KIy', 'ROLE_USER', 1),
(469, 'Natali', 'natalitupiza1996@hotmail.com', '$2y$04$s2BpYT6GT.GP/l3.LnNZvOKYh8G.aQm/Q.hTBHnjWXF6/2XVwT212', 'ROLE_USER', 1),
(470, 'ponky Méndez', 'ponkymendez64@gmail.com', '$2y$04$gabvIcA.hkWO4cKBdvtTJ..dy3L9C92RnpJ8tYVw0x/zHEsCOKTtC', 'ROLE_USER', 1),
(471, 'Fernanda Paredes', 'fernanda_paredes93@hotmail.com', '$2y$04$vCxhicANw7zbItCfCibuCuyZ8nBUh9.vNdlSSC9m4eILjv2frpvWK', 'ROLE_USER', 1),
(472, 'Santiago Zapata', 'santiagozapata69@hotmail.com', '$2y$04$Ba0vUYS.yTzpZI5tiSCIkObIpuEW6JmZxrECV1Qr93mOQlXPdyZI.', 'ROLE_USER', 1),
(473, 'sofia revelo', 'sofiarevelo_ronny@hotmail.com', '$2y$04$wopDB3/OAb.26g9OIPadAOwgfbfXknPceqYFJ5i7sWvTzhqZzkgQO', 'ROLE_USER', 1),
(474, 'Angelica Jeanneth Martinez Vaca', 'jeannethmar33@gmail.com', '$2y$04$0wKRzy67va7yeqCLirdgkOTaCuYXOdCiE7S9wJHKC9u5YEjNr8kby', 'ROLE_USER', 1),
(475, 'katherine elisabeth sabando sabando', 'yoteamo1414@gmail.com', '$2y$04$PAp0hnpV.Haug0T/Dm7VSO0hsFLWXnYhgmqvdCLhBQUBOKFjCp64e', 'ROLE_USER', 1),
(476, 'Manuela Garcia', 'tefita.garcia1991@outlook.es', '$2y$04$mv9bdGha8KKEv4soFd1FUOleZ52/M3Frw.wP8Ga3v4z4GrQvfka6m', 'ROLE_USER', 1),
(477, 'Nancy chalco', 'nancyelizabeth_1981@hotmail.com', '$2y$04$4oERLyZ2Yp15nUvyudGFEuVcwci6CFmVV.U09LO37oC6FYTC8qn9.', 'ROLE_CLIENTE', 1),
(478, 'Lorena', 'loreb30_@hotmail.com', '$2y$04$ruZg0ZeDf4iPr7MCuiPJ0exLQz9USANADOAdMlkjAWq0iM0ifD6YG', 'ROLE_CLIENTE', 1),
(479, 'Nathaly vega', 'natalyvega273@gmail.com', '$2y$04$lMZKLSGKv6OzstwBjats8eGUo2/XY1Dbt1mm64ODyQyHO7eJm3Q9C', 'ROLE_USER', 1),
(480, 'María lata', 'majitolata@gmail.com', '$2y$04$d34GJ.nYfa4hcRCjHt6sy.byxlo4yjz4boK16wpBRXcBrUygwG.3u', 'ROLE_USER', 1),
(481, 'Marcela Soria', 'pomeya5@hotmail.com', '$2y$04$aQSNuz3ihgy.Vl/QsPY3Zej1iz1iB5GHGp34CaIZPQIkInFyJjzq2', 'ROLE_USER', 1),
(482, 'Carmen', 'carmen123@hotmail.com', '$2y$04$bi0ys2PSijQj9a0lX.w1EOSRt4EYQNl3.kvBpYVSSAf3a1Y/lmDei', 'ROLE_USER', 1),
(483, 'Carmen', 'neovin95@hotnail.com', '$2y$04$woScbXWeqEDiuC4hJRJN9.PgDiNaWUJT6IfO1q8sUsWpY.RPfQhhS', 'ROLE_USER', 1),
(484, 'Gina alexandra caicedo quijano', 'caicedogina2200@gmail.com', '$2y$04$2wo8FRbb4WjIVxBsHWOCxeRYWL7ajpScFMNgHLC4CUMFEF5tLo43e', 'ROLE_USER', 1),
(485, 'Alex Puma', 'apuma305@gmail.com', '$2y$04$gcoc7TxwoK8yDZOUoinaGem5SXp4OCNFhXXn8lxQABNW7NNLrNxLy', 'ROLE_USER', 1),
(486, 'ELVIA MOROCHO', 'helvy_m_20@hotmail.com', '$2y$04$ShYtLtiZXoQ1SsD0uRohUuOW.0MEH/Td.Pr/sNPmzCmqX7budDOhW', 'ROLE_USER', 1),
(487, 'JEIMY JARAMILLO', 'jeimyjaramillo-80@hotmail.com', '$2y$04$srZZnjPcsP2MR6kLSSrlqeFYFUp4ok3c.hmN4T7YmYPj/VWok7KLC', 'ROLE_USER', 1),
(488, NULL, 'magysela2014@hotmail.com', '$2y$04$D2Dn0h2seUiXtmGE0FD8PeIFeeZ1yjdQwBvr5qcmuDtOmC1820GOe', 'ROLE_USER', 1),
(489, 'tania guayllazaca', 'taniajulisa1997@hotmail.com', '$2y$04$jg3W6Z4ofAa2q7Xt9DFAcutCX0KpUGKwtnCPrJxKQCPv8dROwLq0i', 'ROLE_USER', 1),
(490, 'Viviana', 'lilianasillocatota@gmail.com', '$2y$04$Kz6Revm7ypJARNXYkvovu.3H4qAUyUBRLXuUo3P1R5.uLB5/I6l2K', 'ROLE_USER', 1),
(491, 'Ana Arce', 'rociaarce1974@gmail.com', '$2y$04$z53zFzy3j8.AGm2XLfPRrel9CN.ALsJphNml0zEL5lrzsFFAOddTi', 'ROLE_USER', 1),
(492, 'Ana Arce', 'rociarce@gmail.com', '$2y$04$X16PKfWCLxDDH1RZba2TuORLm/mTKyId2BeSe.xqRn1c4yxw2cQ3e', 'ROLE_USER', 1),
(493, 'María Cecilia Carlosama Quilca', 'Ceciliacarlosama09@gmail.com', '$2y$04$8AgMbiLjxj4VlnxYuc0UnuF3UC6MFPaATgRvRNEl1jpT78CgpZVk2', 'ROLE_USER', 1),
(494, 'Silvana Inca', 'hugo_molina2014@hotmail.com', '$2y$04$SNCf5uxaca2RRgsx6vwC3O/LJYb9NZkVdIklvwN2ZnUaUzewXBMqO', 'ROLE_USER', 1),
(495, 'Rosa Eva Cevallos Vaca', 'rositac191@hotmail.com', '$2y$04$inBh5CFwngVziFZPu.eHf.m8KlukIAtQKfZlOFCCKjXJa9s7GDHa.', 'ROLE_USER', 1),
(496, 'fernanda muzo', 'emylyabigail@hotmail.com', '$2y$04$jZrpVOdqDLp9iPYfP3u9v.O.8GXhhRYxc3XdKzPxqHVADhQlbCb6W', 'ROLE_USER', 1),
(497, 'cecilia', 'cecilia240166@hotmail.com', '$2y$04$ka9ThYU4RFXzIYxnSpR9P.GMMcfAfWdssNutVEZIbVhKhvkeT/Vpm', 'ROLE_USER', 1),
(498, 'FERNANDA', 'richy.fer@hotmail.com', '$2y$04$on9GWC0x8h0.35NQ/oe9rOteF/E8YMF.jjCpK.7HB80smVI82w4Me', 'ROLE_USER', 1),
(499, NULL, 'lulu.narvaez@outlook.com', '$2y$04$NL2AaQArUZhtx4C.exqFyefuoVFaN0UYuW7KNG2wCWw/TDsCRp9mO', 'ROLE_USER', 1),
(500, 'Maria Maisanche', 'emorocho1994@hotmail.com', '$2y$04$uWSQqoFHdL8htdf4LjYX/excL2/MAL3jLwCOf9Fr01r5.Zt.Grm1S', 'ROLE_USER', 1),
(501, 'Maria Ortiz', 'celianaimbaquingo@gmail.com', '$2y$04$dxZyN4XG/pqJ.AmvgdSEW.CvMFWkBG18Txqtj/cLmddsDMnYlqC9q', 'ROLE_USER', 1),
(502, 'Janeth Gavilanes', 'janitagavilanes1.jg@gmail.com', '$2y$04$S3WsMRg0zbaeDcisqiyy3ujFyCGFpELT3j0Q3vWpftBcLDxLqgSri', 'ROLE_USER', 1),
(503, 'arelys gonzalez', 'scarlet71gu@gmail.com', '$2y$04$XMmuVjYjmfAydjofJLmfWepaPnCS04nNOb7qFlgS6bLrE12umA8iO', 'ROLE_USER', 1),
(504, NULL, 'd2ny_@hotmail.com', '$2y$04$.WPTGLw002jgq9GGG6hJmeYkFXhsJSb6b27NwrZuc7GGfxyoyBZ/W', 'ROLE_USER', 1),
(505, 'Soledad Arboleda', 'maria1475sole@gmail.com', '$2y$04$9HtNoICvtHjlUXd/X/.b4.nOipcqW7zXN2AhPvVh8R8mGQk239fwm', 'ROLE_USER', 1),
(506, 'damaris19', 'damaris.tulcan1999@gmail.com', '$2y$04$QK4aargu/MgBvve3v5y.suG9Nebro0uk3onZdwoZchmPtVoDjL9Q6', 'ROLE_USER', 1),
(507, 'Diana Carolina', 'dc_diancarolina@hotmail.com', '$2y$04$dO9Aqo7zIBvuyBRBfcct/.1tDcHeXUOcrYQtmOjxQWbuYUGXzhrh6', 'ROLE_USER', 1),
(508, 'Diana Carolina', 'dc_dianacarolina@hotmail.com', '$2y$04$kU55240NZZsU0C7EVcA4B.sf.ARkh8HC1k29zWqWPNb5g/HVSAp8u', 'ROLE_USER', 1),
(509, 'Alfonsina Montano', 'alfonsinamontano@hotmail.com', '$2y$04$88/nl13Oeahs3usFvuxWIeCds4248.gpnftXVU9PA27ruY48nBz12', 'ROLE_USER', 1),
(510, 'jessica', 'alexandra_yaguachi@hotmail.com', '$2y$04$MySqCv3hXIkFgw.s1M4SiOS4FOntKHmXE.YAohkYDq6Uy1T5k9t0u', 'ROLE_USER', 1),
(511, 'Ivonne Pamela Chala Gomez', 'natalychalagomez1@hotmail.com', '$2y$04$gb0ift0LkwSKb48g6sNlQOeOagNmqfKWQviQJ7raK0UGIf07NooRy', 'ROLE_USER', 1),
(512, 'Luz Uyaguari', 'kryntn@hotmail.com', '$2y$04$059.HIKZHhiKzj08PpbFq.gs3//VGT5kVdovJjtB/Q76K.q1CunsC', 'ROLE_USER', 1),
(513, NULL, 'judy_ines_11@hotmail.com', '$2y$04$3/w3BUozGXRf6ySNnpyGJ.p3mnXHiY7BzGAygvqUTeyTMcJ8Ksdly', 'ROLE_USER', 1),
(514, 'Daysi Briones', 'daysibriones1981@gmail.com', '$2y$04$yu7s6GcZ7A/7XclOATMai.nSJHsdAA86i/YQO7WRPKtSHbDuhz9jS', 'ROLE_USER', 1),
(515, NULL, 'astudillom348@gmail.com', '$2y$04$0pG/GLjtHO5d3nJMHmtBmujMNG1M6CN5pvj/oau2/aUZyPRBgNQku', 'ROLE_USER', 1),
(516, 'cinthya alobuela', 'cinthya365@hotmail.com', '$2y$04$NkK6iApkBKY1gX02n7A45eN0WoO4JyVK4CQXOJlAtb335FR4pPdXe', 'ROLE_USER', 1),
(517, 'Gloria Moreno', 'clem.1966@hotmail.com', '$2y$04$vKcLN.vvBAaUnNOwK3yTiepvGgQ6.ZY6XIPW95wOG6InF1XxtbZd6', 'ROLE_USER', 1),
(518, 'Germania', 'germania.cano@yahoo.com', '$2y$04$d9rcc9pip.MwVV/M4l2m0eDa3qYEL9trqJH0Hxz3bDz3t.iwYbVP6', 'ROLE_CLIENTE', 1),
(519, 'estefania paspuel', 'akdquiro552@gmail.com', '$2y$04$UZ2s72CIzGELWX0qJ/WuxO7hIiP4xQpi.tHfFi9XpDxdavI20dg/W', 'ROLE_USER', 1),
(520, 'Janila Castillo', 'bellacastillo95@outlook.es', '$2y$04$XnZfwA0ErxnjEnFsaa9Mm.PVo6i6zlNnLRlt9IC5PtQKE3IBZh6Ri', 'ROLE_USER', 1),
(521, 'Norma Yanez', 'yanezprinsesas@gmail.com', '$2y$04$3nrrWa51xfycYvtDgLzaAetYEVXVXXdyRUEXe7WbLwDsVnHKrKa7.', 'ROLE_USER', 1),
(522, 'Rosita guaman', 'soleguaman159@hotmail.com', '$2y$04$/skeKEQSbrwFFbilHZ3MiuQBWLrRzXkYG4M.rBk5/6y3el5KukDYS', 'ROLE_USER', 1),
(523, 'TATIANA PADILLA', 'padillaivone1989@gmail.com', '$2y$04$.s4Exy.v7qw1kckGNEtMiOZ5O8UCALvfhwhjizqjyKXV28FPhP16O', 'ROLE_USER', 1),
(524, NULL, 'a.leoniciopala@gmail.com', '$2y$04$UAavCwkPs0o4lKPfwAMmY.d3irG2TAuEDIcBx3ivF7fs9JggL/gaW', 'ROLE_USER', 1),
(525, 'Amparo Tibanquiza', 'ampariquiza@gmail.com', '$2y$04$mgCmle8iMdqCEc.YJqRBw.mQ.XfDNlKc7u9BlSrsrqPYON4N4ogeK', 'ROLE_USER', 1),
(526, 'Jonathan Suárez', 'jonathanfsuarez@gmail.com', '$2y$04$mvkv2N2QzLfb4yjeoaHQqenVlLH1ylvNEan55UfKL2RtB7zOvzpnK', 'ROLE_USER', 1),
(527, 'Jonathan Suárez', 'jonathanfsuarez10@gmail.com', '$2y$04$.Q6itU0py14Ldam5D3zBZupZY02NgPRqqGWngf4QcVjc6lKdr8WaW', 'ROLE_USER', 1),
(528, 'maria lima', 'cmaitelimac-123@hotmail.com', '$2y$04$HcmVm3y4Ud8G1uNE9lMZuOdWf.eYa3J6Fs.EdYOlmjL4Ys.cQ5RgS', 'ROLE_USER', 1),
(529, 'Mayra zambrano', 'mayzambra@gmail.com', '$2y$04$Xeky7Mulvelus9XY2cCOmeIcL/tVLs9/gXGIyos/kOf7IgoOQz/eq', 'ROLE_USER', 1),
(530, 'Diana Cuenca', 'Ximeeeee_93dyanis@hotmai.com', '$2y$04$TL5DbaGuuA8io73KctdJbuPLOOe5uIYxsLaG4fJF3n/57DfTLp6RS', 'ROLE_USER', 1),
(531, 'SARA PATRICIA QUINATOA MOYANO', 'saritaquinatoa1998@hotmail.com', '$2y$04$Rj5mZTFrS7D5kk2Q2IO2zupDHJq/RLHJgSw06IhWs6TPxtcydghIi', 'ROLE_USER', 1),
(532, 'IRENE FERNANDA GUINGLA', 'irene-19guingla@hotmail.com', '$2y$04$Jwo4VbSJJiEOck6FtmrwB.d1kSt65dTLQmPh99nClqdUmlhpw5jVu', 'ROLE_CLIENTE', 1),
(533, 'Martha Aguirre', 'maguirre8012@gmail.com', '$2y$04$5hRsuyblTc6BKs.wvQyw/uWtqXBVSnkD87WthxxlnXMynFSTYo0jS', 'ROLE_CLIENTE', 1),
(534, 'IRENE', 'IRENEARMAS1996@GMAX.COM', '$2y$04$QshwKidXMBZVWzN0abgd5eMjFmhiEMhXWnDPmIIsVXiPROojYHZ3O', 'ROLE_USER', 1),
(535, 'sara quinatoa', 'saritaquinatoa19982@hotmail.com', '$2y$04$WVfJgHeenaDgb9sJR86vvuD4/xTcy/Te9ZGXT6ogqUuv5zIiTQxAu', 'ROLE_USER', 1),
(536, 'Yuleima Elizabeth', 'yuleimaegb18@gmail.com', '$2y$04$9bWpvnBg9A81wCbnvpqKpOnOuAt8.diq8ZfKoVPx.ZQwVTf2uuKni', 'ROLE_CLIENTE', 1),
(537, 'Jacqueline Cepeda', 'jake_ale18@hotmail.com', '$2y$04$/c9JiQDQaj/6BgHfq0i7kOe9vBr9xDTSUJLybQHu6BFLdGJ2g6646', 'ROLE_USER', 1),
(538, 'Enith Fabricia Narvaez Grijalva', 'narvaez_fabricia@hotmail.com', '$2y$04$ejsdc0n7Rhfkw6aqxU6DhewAabI.BQx3eOBHoaALW5ako5k/x0wrC', 'ROLE_USER', 1),
(539, 'Luzmila', 'mamayash@hotmail.com', '$2y$04$swibu92ZKPng/vxr/dgVUOLEInsxIBdJKBbS53y2j4oZEoV9GVvCq', 'ROLE_USER', 1),
(540, 'JoselynV', 'joselynstreet@live.com', '$2y$04$ZnkXM40X9R6EquH5/MQpsOj0mp71bvET/dEqba6wbUBAMzlcZP/JO', 'ROLE_USER', 1),
(541, 'VERONICA GARCIA', 'velytosgarcia@gmail.com', '$2y$04$8tP5EkD6Zt7A1kV96/029O/qGq36TMPtnFuWUOlXqxZWjc1Bbdm/2', 'ROLE_USER', 1),
(542, 'Rosa valdez', 'flaquitarosivaldez@gmail.com', '$2y$04$wbI7dKDKVAH5MpWPdTazi.CXWNNoNFf4KQK988kR5Y18YJbIydugu', 'ROLE_USER', 1),
(543, 'Segundo Jiménez', 'segundojimenez264@gmail.com', '$2y$04$fQFO3P9gjC.ORIZJHSP/CuySD.J.yB7GuMJqxKjKTG0HpEqEZRsw6', 'ROLE_USER', 1),
(544, 'Shirley Maria MERO SANTOS', 'shirleymariamero@hotmail.com', '$2y$04$t3orArkZgNdy21CdAGnt3OwtAyIg/t0HDd2Pg7qAyFRqSCptcfVk6', 'ROLE_USER', 1),
(545, 'Rocio del Pilar Caiza Valenzuela', 'chio221@outlook.com', '$2y$04$mR.TA//Pg8tVAdSFPnZh8OIn4Uq0uO90xcjT2b0mYqFrZNuMqUD.K', 'ROLE_USER', 1),
(546, 'Rebeca Pardo', 'rebecapardo23@outlook', '$2y$04$wtEqloX/PLV9byXh99DDM.50qXWAOX9IUrhMDm4GINgWpV/X/mhmK', 'ROLE_USER', 1),
(547, 'Rebeca Pardo', 'rebecapardo23@outlook.com', '$2y$04$eRyUrSwbelx5eYw6XfTAI.3uiskh4zJYuevgcpbl9IOflBAnjgqxa', 'ROLE_USER', 1),
(548, 'Betty Jimenez', 'povedaolguita29@gmail.com', '$2y$04$.k8Jeascr2oZ5/MMXX2HkeDwnplU6NW0jcCeDAP0IfIRY1WFpLLpK', 'ROLE_USER', 1),
(549, 'evelyn carmita', 'ivi.beauty@outlook.es', '$2y$04$uKCENhcc8D6OyR8tNElaLeTZjHh/xekQ3hMDsUXzw.j2PE/.Bja6a', 'ROLE_USER', 1),
(550, 'ana zambrano', 'anazambrano24@hotmail.com', '$2y$04$poksGuc9M5E/AsojGVk.9eIB3UV6uXBKLOvvk0In4S8SIBSjybnZi', 'ROLE_USER', 1),
(551, 'Jenny Tipan', 'jennyfernandatc@gmail.com', '$2y$04$aiEid9KFLgLsfsNzwl8vhukoL5ama6JFhFzJD9g43He/eyJ39ltMq', 'ROLE_USER', 1),
(552, 'deslgadocruz', 'santacruzdelgadomonica@gmail.com', '$2y$04$zqydPf8r6swR0RZpf3P5Ae6IobBZP18cnPcN2DXLf65LJ5viLpyi2', 'ROLE_USER', 1),
(553, 'MISHEL SANDOVAL', 'mishelsandoval0204@gmail.com', '$2y$04$qr5p09BUUY/n16i40bUba.DzqKXeQSamRxF2w6WAg0NO2SEz.uUfi', 'ROLE_USER', 1),
(554, 'sobeida rodriguez', 'sobeida1919@hotmail.com', '$2y$04$XZq4FmMrsauqugNpZtr21.//Mli1iZ3nbDRmeILuqL4jcT7uVIVyy', 'ROLE_USER', 1),
(555, NULL, 'miche_laura73@hotmail.com', '$2y$04$sCNqG62OCN1BplVNLbDOsOSNrxYtyX4Vhd63qDly/fOD/YDXPF7dW', 'ROLE_USER', 1),
(556, 'Maria Sandoval', 'mariayfernando5492@gmail.com', '$2y$04$HUJwpOcroramn9xxbfqn1u2dXECLqDqyFIkdk27No0QO0LJ6/JUVq', 'ROLE_USER', 1),
(557, 'JOHANNA ALMEIDA', 'evelyn_2421@hotmail.com', '$2y$04$.mLPqsdrXGXiGpNOncsxcOH.Vboon1Xu7qOhqFBGFbIHQxLo0Ke/e', 'ROLE_USER', 1),
(558, 'Delia Jeaneth Canchigña tucta', 'mishel.karo123@gmail.com', '$2y$04$xgnB0JQFwIPodqvtlbn8se0FdcjRZXuNLdvjWYsVZTduyuh.y8zHW', 'ROLE_USER', 1),
(559, 'Angel Jumbo', 'angeljumbo@hotmail.es', '$2y$04$njLY0g9SEW8ZIbnBtI80Keh5gXrOTi/0GuN1H3eVdZ8GflKvlDjWu', 'ROLE_CLIENTE', 1),
(560, 'Tatiana Guevara', 'maribelguevarap@hotmail.com', '$2y$04$37dbYPSrsWPy5U4zG3rbEOLkLaY3zJ6ztc3GJzMZ3Y0IjoMYj5kni', 'ROLE_CLIENTE', 1),
(561, 'Edisound', 'edisound@gmail.com', '$2y$04$O9wEbea5.hiFwuPU309RlukHK6Uk7tfoypX5cZZbUCPPSzPRzxvyG', 'ROLE_CLIENTE', 1),
(562, 'DILCIA GIL', 'alejandravasquez355@hotmail.com', '$2y$04$Zkik.YbYam3CYO9pKYy.IukmuMGxWvYEVYZZ0zfdQPukb72a0aUkK', 'ROLE_USER', 1),
(563, 'giovanna', 'geovanabauzachig@gmail.com', '$2y$04$7wloIQGIOrpsEG/R2iJnour5jrXR.v6l6S8ebE.4Sb.3nAZ05b3Ke', 'ROLE_USER', 1),
(564, 'achidriss', 'achidriss@hotmail.fr', '$2y$04$UwpBoHCdcxQquLiZ3UWoj.Yldc0PPNllkdwu9842ZowozC5h5xCNi', 'ROLE_USER', 1),
(565, 'EGLY', 'merchangonzalezgabriela@gmail.com', '$2y$04$HG2Ug1G3nm.EXCIhK4DuDOBhh5MdUj0qMXB6fR/82MsOLPHJ0ozOO', 'ROLE_USER', 1),
(566, 'EGLY GONZALEZ', 'diegoalvarez2014@gmail.com', '$2y$04$A7ZDYZp0YG8wtMsvvXUj/eG6Q2FB6zxlhig9ZVKFRB5rOaNr54SIG', 'ROLE_USER', 1),
(567, 'Ibialvarez', 'ibialvarez28@gmail.com', '$2y$04$ZGJKKvCEBVYh9VRhD/C1E.n8dhINaMCHU4MW5ZkWDXmXlgNuETgT6', 'ROLE_USER', 1),
(568, 'RosaQ68', 'rossymi89@hotmail.com', '$2y$04$bT7RPMJkQEa8Rz6P4113JeuOHGdBY4GqCfC7yg8szwdHGWbwLNYgW', 'ROLE_USER', 1),
(569, 'pamelafalconi', 'pamymelisa@hotmail.com', '$2y$04$8NTCLnupJINPjfgVvXgCUuAU/Po1t8iWR5pQSqtB6UkHbF.IHX6wu', 'ROLE_USER', 1),
(570, 'Miriam Castro', 'r.miri_10cb@live.com', '$2y$04$xmKzjj/FAewNDQWTO6epluCbLXV1/Sdn2FkbkJN7vqByh7tOKov0u', 'ROLE_USER', 1),
(571, 'jenny', 'jenny-1996ajj@hotmail.com', '$2y$04$gJScE9Yfno1T7r38ULzgAe2hwao42hsT4QMwnoJw4zrkDc/pMxb5.', 'ROLE_USER', 1),
(572, 'Mercedes Zambrano', 'nickquis@gmail.com', '$2y$04$TvXEgMj375Exv2LKG9wdv.3eF.WV58.bGm5vUm.5w.mpABukonDrm', 'ROLE_USER', 1),
(573, 'Patricia Nieto', 'patty_nieto84@hotmail.com', '$2y$04$HzqX3AyDTYKQt3GTEDxceOywoJD3qBMOJQCdteEGklHWa2ZeAKoOq', 'ROLE_USER', 1),
(574, 'Carlos Diaz Berenguel', 'carlos.diaz@gm.com', '$2y$04$pJPmAm6lcsM6rkVHgobgFOI/eEHm/hI2H0b7HeM3ZghJq0zhvLQgu', 'ROLE_CLIENTE', 1),
(575, 'ozziejims', 'ozziejims@gmail.com', '$2y$04$xsOnau.UCs3csS8ULiP2ze7om37.TDtgoulZQ1EysfOfeS9i8cvQi', 'ROLE_USER', 1),
(576, 'Erika', 'erikazari20@gmail.com', '$2y$04$DA2U/OlVuxJJSIQkXvHAoerBr5j.pTy4EIN8K6N5zlNChIX8t0rZW', 'ROLE_USER', 1),
(577, 'vivianaa', 'danleo_02@hotmail.com', '$2y$04$dH9MO/E95p5pF2MS0YKr4OyyxnvbG.2BaL8SQOW9c1Bbgk0m9ec/C', 'ROLE_USER', 1),
(578, 'Andrea Medina', 'vero_nikamedina@hotmail.com', '$2y$04$yMcc59xtHNhHyEUK/DIm7.I4cmrC1eOz7drIrYkKV5DGFXLRopC2a', 'ROLE_USER', 1),
(579, 'Andrea Mosquera', 'andreamosqueraj@hotmail.com', '$2y$04$BcbRl8db2kRDCSuNIt/jtOaA60y.U4ac4Nc5O25uqCBSBlW0oCpNK', 'ROLE_CLIENTE', 1),
(580, 'Alexandra Mejia', 'alexmejia2024@hotmail.com', '$2y$04$3FudJLjY/1z6E1agt/FwhOQLj5MAXYpn5aben1SsTpReBSw/aO9a2', 'ROLE_USER', 1),
(581, 'engelmann', 'shinchanjaimes@gmail.com', '$2y$04$iZQFbcOpfkTImgAeL2737eVfNA7o6FJc0n9UrNVJXj/ZN8Qy2oXuq', 'ROLE_USER', 1),
(582, 'Maria', 'guamandelia20@gmail.com', '$2y$04$QSVv0vJLqWY1RAam8Q9OTuVAKNmJh7sMztP7zd4rrDUEYO.DhhQDO', 'ROLE_USER', 1),
(583, 'Tania Arregui', 'gaby_mateo1994@hotmail.com', '$2y$04$7QDI5SEym4GqZ1FsAcgClOnCyI9meiwrhIRVq8wOopQmABGfvkG9.', 'ROLE_USER', 1),
(584, 'Alexandra Ostaiza', 'Alexandraparraga309@gmail.com', '$2y$04$gfmleCBrS9oCmFvszzWHpuQ5PgvuMk5dGPT3TJvVmwKAdv2FHT8Yq', 'ROLE_USER', 1),
(585, 'Catherine Zelaya', 'czelaya90@gmail.com', '$2y$04$VPXTNyhO8POpvn3D3XLbk.80olHKQt2Ev8V8QINpA/uZAze3Z168C', 'ROLE_CLIENTE', 1),
(586, 'TATIANA PADILLA', 'tiffanycongo3@gmail.com', '$2y$04$cRbfh/u6ntvV1ye8RB7tQ.fEUOHPm8AkHw/9SAcrfomrm6FHGXZY.', 'ROLE_USER', 1),
(587, 'Laura', 'tigretonlucy@hotmail.com', '$2y$04$dA/oBFADt5Hnq.7hFNVY5.uVKdHE1VxtmTeB/BiFS47AyzoiHJFQS', 'ROLE_USER', 1),
(588, 'rosatayango', 'rosatayango@gmail.com', '$2y$04$MNY3ocx3zhMu6RxxT5b9Q.jIB0xoicIaAeKIUajwEgcwQOTyL3Xj.', 'ROLE_USER', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vivienda`
--

CREATE TABLE `vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `vivienda`
--

INSERT INTO `vivienda` (`id`, `nombre`) VALUES
(1, 'Propia'),
(2, 'Arrendada'),
(3, 'Prestada por un familiar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8E86059EC604D5C6` (`pais_id`);

--
-- Indices de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7BE2A7C32B32DB58` (`sexo_id`),
  ADD KEY `IDX_7BE2A7C34D9DE1E8` (`signo_zodiaco_id`),
  ADD KEY `IDX_7BE2A7C375376D93` (`estado_civil_id`),
  ADD KEY `IDX_7BE2A7C379F2C342` (`horario_trabajo_id`),
  ADD KEY `IDX_7BE2A7C381A75788` (`vivienda_id`),
  ADD KEY `IDX_7BE2A7C38CCBB6A9` (`raza_id`),
  ADD KEY `IDX_7BE2A7C3E8608214` (`ciudad_id`),
  ADD KEY `IDX_7BE2A7C399A5433` (`tipo_sangre_id`),
  ADD KEY `IDX_7BE2A7C3B56F7D88` (`estudios_id`),
  ADD KEY `IDX_7BE2A7C3B7850CBD` (`religion_id`),
  ADD KEY `IDX_7BE2A7C3B9FC1162` (`tipo_trabajo_id`),
  ADD KEY `IDX_7BE2A7C3C604D5C6` (`pais_id`),
  ADD KEY `IDX_7BE2A7C3FB396A56` (`sector_vivienda_id`),
  ADD KEY `IDX_7BE2A7C3A76ED395` (`user_id`),
  ADD KEY `IDX_7BE2A7C33A0F5A23` (`licencia_id`);

--
-- Indices de la tabla `curriculum_aptitudes`
--
ALTER TABLE `curriculum_aptitudes`
  ADD PRIMARY KEY (`curriculum_id`,`aptitudes_id`),
  ADD KEY `IDX_893D2D1D5AEA4428` (`curriculum_id`),
  ADD KEY `IDX_893D2D1D8D156021` (`aptitudes_id`);

--
-- Indices de la tabla `curriculum_enfermedades`
--
ALTER TABLE `curriculum_enfermedades`
  ADD PRIMARY KEY (`curriculum_id`,`enfermedades_id`),
  ADD KEY `IDX_A93EEB825AEA4428` (`curriculum_id`),
  ADD KEY `IDX_A93EEB823035D395` (`enfermedades_id`);

--
-- Indices de la tabla `curriculum_idiomas`
--
ALTER TABLE `curriculum_idiomas`
  ADD PRIMARY KEY (`curriculum_id`,`idiomas_id`),
  ADD KEY `IDX_C5466C605AEA4428` (`curriculum_id`),
  ADD KEY `IDX_C5466C608D1F41D1` (`idiomas_id`);

--
-- Indices de la tabla `curriculum_intereses`
--
ALTER TABLE `curriculum_intereses`
  ADD PRIMARY KEY (`curriculum_id`,`intereses_id`),
  ADD KEY `IDX_EA267BAD5AEA4428` (`curriculum_id`),
  ADD KEY `IDX_EA267BAD2ECFAD6C` (`intereses_id`);

--
-- Indices de la tabla `curriculum_responsabilidades`
--
ALTER TABLE `curriculum_responsabilidades`
  ADD PRIMARY KEY (`curriculum_id`,`responsabilidades_id`),
  ADD KEY `IDX_6554A1735AEA4428` (`curriculum_id`),
  ADD KEY `IDX_6554A173CABEC292` (`responsabilidades_id`);

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DD0E3034A76ED395` (`user_id`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_14CDED3BA76ED395` (`user_id`);

--
-- Indices de la tabla `horario_trabajo`
--
ALTER TABLE `horario_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licencia`
--
ALTER TABLE `licencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `raza`
--
ALTER TABLE `raza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `responsabilidades`
--
ALTER TABLE `responsabilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sector_vivienda`
--
ALTER TABLE `sector_vivienda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `signo_zodiaco`
--
ALTER TABLE `signo_zodiaco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_trabajo`
--
ALTER TABLE `tipo_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;
--
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `horario_trabajo`
--
ALTER TABLE `horario_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `licencia`
--
ALTER TABLE `licencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `raza`
--
ALTER TABLE `raza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `responsabilidades`
--
ALTER TABLE `responsabilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sector_vivienda`
--
ALTER TABLE `sector_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `signo_zodiaco`
--
ALTER TABLE `signo_zodiaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tipo_trabajo`
--
ALTER TABLE `tipo_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;
--
-- AUTO_INCREMENT de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `FK_8E86059EC604D5C6` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `FK_7BE2A7C32B32DB58` FOREIGN KEY (`sexo_id`) REFERENCES `sexo` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C33A0F5A23` FOREIGN KEY (`licencia_id`) REFERENCES `licencia` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C34D9DE1E8` FOREIGN KEY (`signo_zodiaco_id`) REFERENCES `signo_zodiaco` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C375376D93` FOREIGN KEY (`estado_civil_id`) REFERENCES `estado_civil` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C379F2C342` FOREIGN KEY (`horario_trabajo_id`) REFERENCES `horario_trabajo` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C381A75788` FOREIGN KEY (`vivienda_id`) REFERENCES `vivienda` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C38CCBB6A9` FOREIGN KEY (`raza_id`) REFERENCES `raza` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C399A5433` FOREIGN KEY (`tipo_sangre_id`) REFERENCES `tipo_sangre` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3B56F7D88` FOREIGN KEY (`estudios_id`) REFERENCES `estudios` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3B7850CBD` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3B9FC1162` FOREIGN KEY (`tipo_trabajo_id`) REFERENCES `tipo_trabajo` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3C604D5C6` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3E8608214` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3FB396A56` FOREIGN KEY (`sector_vivienda_id`) REFERENCES `sector_vivienda` (`id`);

--
-- Filtros para la tabla `curriculum_aptitudes`
--
ALTER TABLE `curriculum_aptitudes`
  ADD CONSTRAINT `FK_893D2D1D5AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `FK_893D2D1D8D156021` FOREIGN KEY (`aptitudes_id`) REFERENCES `aptitudes` (`id`);

--
-- Filtros para la tabla `curriculum_enfermedades`
--
ALTER TABLE `curriculum_enfermedades`
  ADD CONSTRAINT `FK_A93EEB823035D395` FOREIGN KEY (`enfermedades_id`) REFERENCES `enfermedades` (`id`),
  ADD CONSTRAINT `FK_A93EEB825AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`);

--
-- Filtros para la tabla `curriculum_idiomas`
--
ALTER TABLE `curriculum_idiomas`
  ADD CONSTRAINT `FK_C5466C605AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `FK_C5466C608D1F41D1` FOREIGN KEY (`idiomas_id`) REFERENCES `idiomas` (`id`);

--
-- Filtros para la tabla `curriculum_intereses`
--
ALTER TABLE `curriculum_intereses`
  ADD CONSTRAINT `FK_EA267BAD2ECFAD6C` FOREIGN KEY (`intereses_id`) REFERENCES `intereses` (`id`),
  ADD CONSTRAINT `FK_EA267BAD5AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`);

--
-- Filtros para la tabla `curriculum_responsabilidades`
--
ALTER TABLE `curriculum_responsabilidades`
  ADD CONSTRAINT `FK_6554A1735AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `FK_6554A173CABEC292` FOREIGN KEY (`responsabilidades_id`) REFERENCES `responsabilidades` (`id`);

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `FK_DD0E3034A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD CONSTRAINT `FK_14CDED3BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
