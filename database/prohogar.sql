-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2017 at 12:28 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prohogar`
--

-- --------------------------------------------------------

--
-- Table structure for table `aptitudes`
--

CREATE TABLE `aptitudes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aptitudes`
--

INSERT INTO `aptitudes` (`id`, `nombre`) VALUES
(1, 'Sabe cocinar'),
(2, 'Sabe limpiar'),
(3, 'Sabe planchar');

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `sexo_id` int(11) DEFAULT NULL,
  `signo_zodiaco_id` int(11) DEFAULT NULL,
  `estado_civil_id` int(11) DEFAULT NULL,
  `horario_trabajo_id` int(11) DEFAULT NULL,
  `vivienda_id` int(11) DEFAULT NULL,
  `raza_id` int(11) DEFAULT NULL,
  `tipo_sangre_id` int(11) DEFAULT NULL,
  `estudios_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `tipo_trabajo_id` int(11) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL,
  `sector_vivienda_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `cedula` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hijos` int(11) DEFAULT NULL,
  `madre_soltera` tinyint(1) DEFAULT NULL,
  `ligadura` tinyint(1) DEFAULT NULL,
  `discapacidad` tinyint(1) DEFAULT NULL,
  `conducir` tinyint(1) DEFAULT NULL,
  `capacitacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seudonimo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatura` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peso` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experiencia_laboral` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`id`, `sexo_id`, `signo_zodiaco_id`, `estado_civil_id`, `horario_trabajo_id`, `vivienda_id`, `raza_id`, `tipo_sangre_id`, `estudios_id`, `religion_id`, `tipo_trabajo_id`, `pais_id`, `sector_vivienda_id`, `user_id`, `nombre`, `apellido`, `telefono`, `direccion`, `imagen`, `fecha_nacimiento`, `cedula`, `celular`, `hijos`, `madre_soltera`, `ligadura`, `discapacidad`, `conducir`, `capacitacion`, `seudonimo`, `barrio`, `video`, `estatura`, `peso`, `experiencia_laboral`) VALUES
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Juan', 'Urquiza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_aptitudes`
--

CREATE TABLE `curriculum_aptitudes` (
  `curriculum_id` int(11) NOT NULL,
  `aptitudes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_enfermedades`
--

CREATE TABLE `curriculum_enfermedades` (
  `curriculum_id` int(11) NOT NULL,
  `enfermedades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_idiomas`
--

CREATE TABLE `curriculum_idiomas` (
  `curriculum_id` int(11) NOT NULL,
  `idiomas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_intereses`
--

CREATE TABLE `curriculum_intereses` (
  `curriculum_id` int(11) NOT NULL,
  `intereses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_responsabilidades`
--

CREATE TABLE `curriculum_responsabilidades` (
  `curriculum_id` int(11) NOT NULL,
  `responsabilidades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enfermedades`
--

CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enfermedades`
--

INSERT INTO `enfermedades` (`id`, `nombre`) VALUES
(1, 'Tiene asma'),
(2, 'Tiene epilepsia'),
(3, 'Tiene diabetes'),
(4, 'Tiene alguna enfermedad contagiosa'),
(5, 'Tiene alergias');

-- --------------------------------------------------------

--
-- Table structure for table `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estado_civil`
--

INSERT INTO `estado_civil` (`id`, `nombre`) VALUES
(1, 'Casado');

-- --------------------------------------------------------

--
-- Table structure for table `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estudios`
--

INSERT INTO `estudios` (`id`, `nombre`) VALUES
(1, 'Primaria terminada'),
(2, 'Primaria incompleta'),
(3, 'Primaria en curso');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'juanitourquiza', 'juanitourquiza', 'juanitourquiza@gmail.com', 'juanitourquiza@gmail.com', 1, NULL, '$2y$13$yKNdeRlGg7eEsqeAjCcPb.lUQ/zClWaGlO2zCug8ijyBhhalIzrR6', '2017-12-04 22:06:34', NULL, NULL, 'a:0:{}'),
(2, 'prueba', 'prueba', 'juanito___10@hotmail.com', 'juanito___10@hotmail.com', 1, NULL, '$2y$13$FyGihP83NZB/vUPFuk73UevO0cXTaaK95Y9KrTCXc6m3XU3EJXOua', '2017-12-04 10:49:22', NULL, NULL, 'a:0:{}'),
(3, 'miguel', 'miguel', 'miguel@io.com', 'miguel@io.com', 1, NULL, '$2y$13$43qcux/bptoSfCqwiW5R6uPuPJ.J.hShwnPP0QBp17ce7INoeB33W', '2017-12-04 11:44:58', NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `hojavida`
--

CREATE TABLE `hojavida` (
  `id` int(11) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `estado_civil` varchar(10) NOT NULL,
  `hijos` varchar(5) NOT NULL,
  `intereses` varchar(50) NOT NULL,
  `trabajo_de` varchar(255) NOT NULL,
  `horario` varchar(30) NOT NULL,
  `tipo_documento` varchar(10) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `seudonimo` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `signo` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `ciudad_natal` varchar(20) NOT NULL,
  `ciudad_residencia` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `barrio` varchar(30) NOT NULL,
  `sector` varchar(20) NOT NULL,
  `num_hijos` varchar(20) NOT NULL,
  `edad_hijo` varchar(20) NOT NULL,
  `vivienda` varchar(30) NOT NULL,
  `madre_soltera` varchar(30) NOT NULL,
  `ligada` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `discapacidad` varchar(30) NOT NULL,
  `cual_discapacidad` varchar(30) NOT NULL,
  `celular` varchar(30) NOT NULL,
  `telefono_fijo` varchar(30) NOT NULL,
  `idiomas` varchar(20) NOT NULL,
  `estudios` varchar(20) NOT NULL,
  `curso_realizado` varchar(20) NOT NULL,
  `automovil` varchar(20) NOT NULL,
  `licencia` varchar(20) NOT NULL,
  `cocina` varchar(10) NOT NULL,
  `nivel_cocina` varchar(20) NOT NULL,
  `anios_cocina` varchar(10) NOT NULL,
  `gusto_cocina` varchar(20) NOT NULL,
  `especialidad_cocina` varchar(20) NOT NULL,
  `organizacion` varchar(20) NOT NULL,
  `nivel_limpieza` varchar(20) NOT NULL,
  `anios_limpieza` varchar(20) NOT NULL,
  `gusto_limpieza` varchar(20) NOT NULL,
  `especilidad_organizacion` varchar(20) NOT NULL,
  `planchado` varchar(30) NOT NULL,
  `nivel_planchado` varchar(30) NOT NULL,
  `anios_planchado` varchar(30) NOT NULL,
  `gusto_planchado` varchar(30) NOT NULL,
  `lineas_planchado` varchar(30) NOT NULL,
  `especialidad_planchado` varchar(30) NOT NULL,
  `bebes` varchar(20) NOT NULL,
  `nivel_bebes` varchar(20) NOT NULL,
  `anios_bebes` varchar(20) NOT NULL,
  `especialidad_bebes` varchar(20) NOT NULL,
  `ninos` varchar(20) NOT NULL,
  `nivel_ninos` varchar(20) NOT NULL,
  `anos_ninos` varchar(20) NOT NULL,
  `especialidad_ninos` varchar(20) NOT NULL,
  `mayores` varchar(20) NOT NULL,
  `nivel_mayores` varchar(20) NOT NULL,
  `anios_mayores` varchar(20) NOT NULL,
  `especialidad_mayores` varchar(20) NOT NULL,
  `movilidad_reducida` varchar(20) NOT NULL,
  `nmovilidad_reducida` varchar(20) NOT NULL,
  `amovilidad_reducida` varchar(20) NOT NULL,
  `emovilidad_reducida` varchar(20) NOT NULL,
  `tipo_sangre` varchar(20) NOT NULL,
  `asma` varchar(20) NOT NULL,
  `epilepsia` varchar(20) NOT NULL,
  `diabetes` varchar(20) NOT NULL,
  `enfermedades_contagiosas` varchar(20) NOT NULL,
  `alergias` varchar(20) NOT NULL,
  `alergia_cual` varchar(20) NOT NULL,
  `otros` varchar(20) NOT NULL,
  `acepto_horas` varchar(10) NOT NULL,
  `aspiracion_salarial` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `horario_trabajo`
--

CREATE TABLE `horario_trabajo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `horario_trabajo`
--

INSERT INTO `horario_trabajo` (`id`, `nombre`) VALUES
(1, 'De Lunes a Viernes'),
(2, 'De Lunes a Sabado');

-- --------------------------------------------------------

--
-- Table structure for table `idiomas`
--

CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `idiomas`
--

INSERT INTO `idiomas` (`id`, `nombre`) VALUES
(1, 'Español'),
(2, 'Ingles'),
(3, 'Frances');

-- --------------------------------------------------------

--
-- Table structure for table `intereses`
--

CREATE TABLE `intereses` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `intereses`
--

INSERT INTO `intereses` (`id`, `nombre`) VALUES
(1, 'Conserje'),
(2, 'Cocinero/a '),
(3, 'Empleada doméstica'),
(4, 'Limpieza de oficinas o edificios');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Ecuador'),
(2, 'Colombia');

-- --------------------------------------------------------

--
-- Table structure for table `raza`
--

CREATE TABLE `raza` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `raza`
--

INSERT INTO `raza` (`id`, `nombre`) VALUES
(1, 'Mestizo'),
(2, 'Indigena');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `nombre`) VALUES
(1, 'Catolico'),
(2, 'Cristiano');

-- --------------------------------------------------------

--
-- Table structure for table `responsabilidades`
--

CREATE TABLE `responsabilidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responsabilidades`
--

INSERT INTO `responsabilidades` (`id`, `nombre`) VALUES
(1, 'Cuida mascotas'),
(2, 'Cuida bebes de 0 a 24 meses'),
(3, 'Cuida niños de 2 a 12 años'),
(4, 'Cuida adultos mayores');

-- --------------------------------------------------------

--
-- Table structure for table `sector_vivienda`
--

CREATE TABLE `sector_vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sector_vivienda`
--

INSERT INTO `sector_vivienda` (`id`, `nombre`) VALUES
(1, 'Centro'),
(2, 'Norte');

-- --------------------------------------------------------

--
-- Table structure for table `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sexo`
--

INSERT INTO `sexo` (`id`, `nombre`) VALUES
(1, 'masculino'),
(2, 'femenino');

-- --------------------------------------------------------

--
-- Table structure for table `signo_zodiaco`
--

CREATE TABLE `signo_zodiaco` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `signo_zodiaco`
--

INSERT INTO `signo_zodiaco` (`id`, `nombre`) VALUES
(1, 'geminis'),
(2, 'escorpion');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_sangre`
--

CREATE TABLE `tipo_sangre` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipo_sangre`
--

INSERT INTO `tipo_sangre` (`id`, `nombre`) VALUES
(1, 'O+'),
(2, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_trabajo`
--

CREATE TABLE `tipo_trabajo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipo_trabajo`
--

INSERT INTO `tipo_trabajo` (`id`, `nombre`) VALUES
(1, 'tiempo completo'),
(2, 'medio tiempo');

-- --------------------------------------------------------

--
-- Table structure for table `user_aptitudes`
--

CREATE TABLE `user_aptitudes` (
  `user_id` int(11) NOT NULL,
  `aptitudes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_enfermedades`
--

CREATE TABLE `user_enfermedades` (
  `user_id` int(11) NOT NULL,
  `enfermedades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_idiomas`
--

CREATE TABLE `user_idiomas` (
  `user_id` int(11) NOT NULL,
  `idiomas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_intereses`
--

CREATE TABLE `user_intereses` (
  `user_id` int(11) NOT NULL,
  `intereses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_responsabilidades`
--

CREATE TABLE `user_responsabilidades` (
  `user_id` int(11) NOT NULL,
  `responsabilidades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vivienda`
--

CREATE TABLE `vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vivienda`
--

INSERT INTO `vivienda` (`id`, `nombre`) VALUES
(1, 'Propia'),
(2, 'Arrendada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aptitudes`
--
ALTER TABLE `aptitudes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8E86059EC604D5C6` (`pais_id`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7BE2A7C32B32DB58` (`sexo_id`),
  ADD KEY `IDX_7BE2A7C34D9DE1E8` (`signo_zodiaco_id`),
  ADD KEY `IDX_7BE2A7C375376D93` (`estado_civil_id`),
  ADD KEY `IDX_7BE2A7C379F2C342` (`horario_trabajo_id`),
  ADD KEY `IDX_7BE2A7C381A75788` (`vivienda_id`),
  ADD KEY `IDX_7BE2A7C38CCBB6A9` (`raza_id`),
  ADD KEY `IDX_7BE2A7C399A5433` (`tipo_sangre_id`),
  ADD KEY `IDX_7BE2A7C3B56F7D88` (`estudios_id`),
  ADD KEY `IDX_7BE2A7C3B7850CBD` (`religion_id`),
  ADD KEY `IDX_7BE2A7C3B9FC1162` (`tipo_trabajo_id`),
  ADD KEY `IDX_7BE2A7C3C604D5C6` (`pais_id`),
  ADD KEY `IDX_7BE2A7C3FB396A56` (`sector_vivienda_id`),
  ADD KEY `IDX_7BE2A7C3A76ED395` (`user_id`);

--
-- Indexes for table `curriculum_aptitudes`
--
ALTER TABLE `curriculum_aptitudes`
  ADD PRIMARY KEY (`curriculum_id`,`aptitudes_id`),
  ADD KEY `IDX_893D2D1D5AEA4428` (`curriculum_id`),
  ADD KEY `IDX_893D2D1D8D156021` (`aptitudes_id`);

--
-- Indexes for table `curriculum_enfermedades`
--
ALTER TABLE `curriculum_enfermedades`
  ADD PRIMARY KEY (`curriculum_id`,`enfermedades_id`),
  ADD KEY `IDX_A93EEB825AEA4428` (`curriculum_id`),
  ADD KEY `IDX_A93EEB823035D395` (`enfermedades_id`);

--
-- Indexes for table `curriculum_idiomas`
--
ALTER TABLE `curriculum_idiomas`
  ADD PRIMARY KEY (`curriculum_id`,`idiomas_id`),
  ADD KEY `IDX_C5466C605AEA4428` (`curriculum_id`),
  ADD KEY `IDX_C5466C608D1F41D1` (`idiomas_id`);

--
-- Indexes for table `curriculum_intereses`
--
ALTER TABLE `curriculum_intereses`
  ADD PRIMARY KEY (`curriculum_id`,`intereses_id`),
  ADD KEY `IDX_EA267BAD5AEA4428` (`curriculum_id`),
  ADD KEY `IDX_EA267BAD2ECFAD6C` (`intereses_id`);

--
-- Indexes for table `curriculum_responsabilidades`
--
ALTER TABLE `curriculum_responsabilidades`
  ADD PRIMARY KEY (`curriculum_id`,`responsabilidades_id`),
  ADD KEY `IDX_6554A1735AEA4428` (`curriculum_id`),
  ADD KEY `IDX_6554A173CABEC292` (`responsabilidades_id`);

--
-- Indexes for table `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Indexes for table `hojavida`
--
ALTER TABLE `hojavida`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horario_trabajo`
--
ALTER TABLE `horario_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raza`
--
ALTER TABLE `raza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsabilidades`
--
ALTER TABLE `responsabilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector_vivienda`
--
ALTER TABLE `sector_vivienda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signo_zodiaco`
--
ALTER TABLE `signo_zodiaco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_trabajo`
--
ALTER TABLE `tipo_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_aptitudes`
--
ALTER TABLE `user_aptitudes`
  ADD PRIMARY KEY (`user_id`,`aptitudes_id`),
  ADD KEY `IDX_F896FDAEA76ED395` (`user_id`),
  ADD KEY `IDX_F896FDAE8D156021` (`aptitudes_id`);

--
-- Indexes for table `user_enfermedades`
--
ALTER TABLE `user_enfermedades`
  ADD PRIMARY KEY (`user_id`,`enfermedades_id`),
  ADD KEY `IDX_AE1A14C5A76ED395` (`user_id`),
  ADD KEY `IDX_AE1A14C53035D395` (`enfermedades_id`);

--
-- Indexes for table `user_idiomas`
--
ALTER TABLE `user_idiomas`
  ADD PRIMARY KEY (`user_id`,`idiomas_id`),
  ADD KEY `IDX_4AA85574A76ED395` (`user_id`),
  ADD KEY `IDX_4AA855748D1F41D1` (`idiomas_id`);

--
-- Indexes for table `user_intereses`
--
ALTER TABLE `user_intereses`
  ADD PRIMARY KEY (`user_id`,`intereses_id`),
  ADD KEY `IDX_9B8DAB1EA76ED395` (`user_id`),
  ADD KEY `IDX_9B8DAB1E2ECFAD6C` (`intereses_id`);

--
-- Indexes for table `user_responsabilidades`
--
ALTER TABLE `user_responsabilidades`
  ADD PRIMARY KEY (`user_id`,`responsabilidades_id`),
  ADD KEY `IDX_21875B20A76ED395` (`user_id`),
  ADD KEY `IDX_21875B20CABEC292` (`responsabilidades_id`);

--
-- Indexes for table `vivienda`
--
ALTER TABLE `vivienda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aptitudes`
--
ALTER TABLE `aptitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `horario_trabajo`
--
ALTER TABLE `horario_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `intereses`
--
ALTER TABLE `intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `raza`
--
ALTER TABLE `raza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `responsabilidades`
--
ALTER TABLE `responsabilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sector_vivienda`
--
ALTER TABLE `sector_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `signo_zodiaco`
--
ALTER TABLE `signo_zodiaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_trabajo`
--
ALTER TABLE `tipo_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vivienda`
--
ALTER TABLE `vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `FK_8E86059EC604D5C6` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);

--
-- Constraints for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `FK_7BE2A7C32B32DB58` FOREIGN KEY (`sexo_id`) REFERENCES `sexo` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C34D9DE1E8` FOREIGN KEY (`signo_zodiaco_id`) REFERENCES `signo_zodiaco` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C375376D93` FOREIGN KEY (`estado_civil_id`) REFERENCES `estado_civil` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C379F2C342` FOREIGN KEY (`horario_trabajo_id`) REFERENCES `horario_trabajo` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C381A75788` FOREIGN KEY (`vivienda_id`) REFERENCES `vivienda` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C38CCBB6A9` FOREIGN KEY (`raza_id`) REFERENCES `raza` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C399A5433` FOREIGN KEY (`tipo_sangre_id`) REFERENCES `tipo_sangre` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3B56F7D88` FOREIGN KEY (`estudios_id`) REFERENCES `estudios` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3B7850CBD` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3B9FC1162` FOREIGN KEY (`tipo_trabajo_id`) REFERENCES `tipo_trabajo` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3C604D5C6` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `FK_7BE2A7C3FB396A56` FOREIGN KEY (`sector_vivienda_id`) REFERENCES `sector_vivienda` (`id`);

--
-- Constraints for table `curriculum_aptitudes`
--
ALTER TABLE `curriculum_aptitudes`
  ADD CONSTRAINT `FK_893D2D1D5AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `FK_893D2D1D8D156021` FOREIGN KEY (`aptitudes_id`) REFERENCES `aptitudes` (`id`);

--
-- Constraints for table `curriculum_enfermedades`
--
ALTER TABLE `curriculum_enfermedades`
  ADD CONSTRAINT `FK_A93EEB823035D395` FOREIGN KEY (`enfermedades_id`) REFERENCES `enfermedades` (`id`),
  ADD CONSTRAINT `FK_A93EEB825AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`);

--
-- Constraints for table `curriculum_idiomas`
--
ALTER TABLE `curriculum_idiomas`
  ADD CONSTRAINT `FK_C5466C605AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `FK_C5466C608D1F41D1` FOREIGN KEY (`idiomas_id`) REFERENCES `idiomas` (`id`);

--
-- Constraints for table `curriculum_intereses`
--
ALTER TABLE `curriculum_intereses`
  ADD CONSTRAINT `FK_EA267BAD2ECFAD6C` FOREIGN KEY (`intereses_id`) REFERENCES `intereses` (`id`),
  ADD CONSTRAINT `FK_EA267BAD5AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`);

--
-- Constraints for table `curriculum_responsabilidades`
--
ALTER TABLE `curriculum_responsabilidades`
  ADD CONSTRAINT `FK_6554A1735AEA4428` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `FK_6554A173CABEC292` FOREIGN KEY (`responsabilidades_id`) REFERENCES `responsabilidades` (`id`);

--
-- Constraints for table `user_aptitudes`
--
ALTER TABLE `user_aptitudes`
  ADD CONSTRAINT `FK_F896FDAE8D156021` FOREIGN KEY (`aptitudes_id`) REFERENCES `aptitudes` (`id`),
  ADD CONSTRAINT `FK_F896FDAEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Constraints for table `user_enfermedades`
--
ALTER TABLE `user_enfermedades`
  ADD CONSTRAINT `FK_AE1A14C53035D395` FOREIGN KEY (`enfermedades_id`) REFERENCES `enfermedades` (`id`),
  ADD CONSTRAINT `FK_AE1A14C5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Constraints for table `user_idiomas`
--
ALTER TABLE `user_idiomas`
  ADD CONSTRAINT `FK_4AA855748D1F41D1` FOREIGN KEY (`idiomas_id`) REFERENCES `idiomas` (`id`),
  ADD CONSTRAINT `FK_4AA85574A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Constraints for table `user_intereses`
--
ALTER TABLE `user_intereses`
  ADD CONSTRAINT `FK_9B8DAB1E2ECFAD6C` FOREIGN KEY (`intereses_id`) REFERENCES `intereses` (`id`),
  ADD CONSTRAINT `FK_9B8DAB1EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Constraints for table `user_responsabilidades`
--
ALTER TABLE `user_responsabilidades`
  ADD CONSTRAINT `FK_21875B20A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_21875B20CABEC292` FOREIGN KEY (`responsabilidades_id`) REFERENCES `responsabilidades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;