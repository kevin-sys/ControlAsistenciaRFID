-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-03-2021 a las 14:59:41
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id15591380_controlasistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `CodigoAula` int(11) NOT NULL,
  `NombreAula` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `NumeroPiso` int(11) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`CodigoAula`, `NombreAula`, `NumeroPiso`, `FechaRegistro`) VALUES
(3, 'L', 101, '2020-11-29 05:45:04'),
(4, 'I', 101, '2020-11-29 22:33:27'),
(5, 'P', 101, '2020-11-29 22:33:37'),
(6, 'E', 101, '2020-11-29 22:33:47'),
(7, 'J', 204, '2020-12-06 15:29:33'),
(8, 'H', 205, '2020-12-09 00:31:57'),
(9, 'Ñ', 102, '2020-12-09 00:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargaacademica`
--

CREATE TABLE `cargaacademica` (
  `Codigo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Programa` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Periodo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Grupo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerDia` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `HoraInicio1` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `HoraFin1` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Aula1` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoDia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `HoraInicio2` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `HoraFin2` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Aula2` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargaacademica`
--

INSERT INTO `cargaacademica` (`Codigo`, `Programa`, `Periodo`, `Grupo`, `PrimerDia`, `HoraInicio1`, `HoraFin1`, `Aula1`, `SegundoDia`, `HoraInicio2`, `HoraFin2`, `Aula2`, `FechaRegistro`) VALUES
('MD-345/naturales', 'Medicina', '2020-2', '01', 'Martes', '14', '19:59', 'I 101', 'Viernes', '13', '19:59', 'I 101', '2020-12-11 21:47:08'),
('MD-345/naturales', 'Derecho', '2020-2', '01', 'Lunes', '6:59', '7:59', 'P 101', 'Martes', '6', '11:59', 'L 101', '2020-12-12 05:44:34'),
('MD-345/naturales', 'electro', '2020-2', '01', 'Martes', '9', '19:59', 'P 101', 'Sabado', '11', '20:59', 'H 205', '2020-12-12 05:45:53'),
('MD-345/naturales', 'enfermeria', '2020-2', '01', 'Lunes', '12:59', '10:59', 'L 101', 'Sabado', '13', '18:59', 'E 101', '2020-12-12 05:47:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `CodigoCiudad` int(11) NOT NULL,
  `NombreCiudad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `NombreDepartamento` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`CodigoCiudad`, `NombreCiudad`, `NombreDepartamento`) VALUES
(1, 'Valledupar', 'Cesar'),
(3, 'Bosconia', 'Cesar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `CodigoDepartamento` int(11) NOT NULL,
  `NombreDepartamento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `NombrePais` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`CodigoDepartamento`, `NombreDepartamento`, `NombrePais`) VALUES
(1, 'Cesar', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Identificacion` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerNombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoNombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Sexo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Departamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Pais` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`Identificacion`, `PrimerNombre`, `SegundoNombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `Direccion`, `Ciudad`, `Departamento`, `Pais`) VALUES
('110210277', 'Anya', 'Milena', 'Zapata', 'Meza', '1988-10-10', 'F', '3048720309', 'anya@gmail.com', 'barrio el galan calle 12#23-45', 'valledupar', 'cesar', 'Colombia'),
('6666099976', 'Heidy', 'dalinda', 'Daza', 'galindo', '1970-10-10', 'F', '3015522083', 'heidy@gmail.com', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia'),
('6666099977', 'Stefany', 'daniela', 'Gutierrez', 'daza', '1987-06-11', 'F', '3015522083', 'kevin@gmail.com', 'calle 12 barrio el galan', 'valledupar', 'cesar', 'Colombia'),
('8080089889', 'Amilkar', 'Jose', 'Contreras', 'daza', '1986-10-14', 'M', '3025454649', 'amilkar@gmail.com', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `TipoDocumento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Identificacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `FechaExpedicion` date NOT NULL,
  `PrimerNombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoNombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoApellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Sexo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `EstadoCivil` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Icfes` int(11) NOT NULL,
  `Sisben` int(11) NOT NULL,
  `NombrePrograma` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Departamento` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Pais` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`TipoDocumento`, `Identificacion`, `FechaExpedicion`, `PrimerNombre`, `SegundoNombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `EstadoCivil`, `Icfes`, `Sisben`, `NombrePrograma`, `Direccion`, `Ciudad`, `Departamento`, `Pais`, `FechaRegistro`) VALUES
('Cedula de ciudadania', '6666099977', '2017-11-02', 'Amilkar', 'Jose', 'Contreras', 'daza', '1980-03-12', 'M', '3015522083', 'kevin@gmail.com', 'Divorciado/a', 413, 23, 'Ingenieria de sistemas', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia', '2020-12-07 05:59:51'),
('Cedula de ciudadania', '8080089889', '2018-07-10', 'Heidy', 'daniela', 'Gutierrez', 'daza', '1900-01-10', 'F', '3025454649', 'heidy@gmail.com', 'Soltero/a', 500, 50, 'Ingenieria de sistemas', 'barrio la nevada', 'valledupar', 'cesar', 'Colombia', '2020-12-07 06:07:27'),
('Tarjeta de Identidad', '98348020', '2019-12-03', 'Ramona', 'dalinda', 'Duarte', 'galindo', '1987-09-10', 'F', '3045910495', 'ramona@gmail.com', 'Divorciado/a', 140, 19, 'enfermeria', 'calle 15 barrio el dangon', 'valledupar', 'cesar', 'Colombia', '2020-12-07 06:09:08'),
('Cedula de ciudadania', '84848411', '2020-12-02', 'Heidy', 'ana', 'Contreras', 'Mora', '2020-12-11', 'F', '3015522083', 'heidy@gmail.com', 'Casado/a', 65, 54, 'electro', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia', '2020-12-07 06:27:31'),
('Cedula de ciudadania', '808008988999', '2020-12-10', 'Stefany', 'ana', 'Gutierrez', 'Mora', '2020-12-01', 'M', '3025454649', 'heidy@gmail.com', 'Casado/a', 455, 34, 'Derecho', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia', '2020-12-07 06:41:32'),
('Tarjeta de Identidad', '3434345233', '2020-12-05', 'Juan', 'dalinda', 'Contreras', 'Mora', '2020-12-10', 'F', '3045910495', 'heidy@gmail.com', 'Casado/a', 345, 34, 'electro', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia', '2020-12-07 06:42:23'),
('Cedula de ciudadania', '898098989', '2020-12-03', 'Amilkar', 'dalinda', 'Contreras', 'Mora', '2020-12-20', 'M', '3025454649', 'heidy@gmail.com', 'Casado/a', 56, 76, 'electro', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia', '2020-12-07 06:45:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `CodigoFacultad` int(11) NOT NULL,
  `NombreFacultad` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `CantidadProgramas` int(11) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Sede` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`CodigoFacultad`, `NombreFacultad`, `CantidadProgramas`, `FechaRegistro`, `Sede`) VALUES
(5, 'Ingenierias y tecnologicas', 9, '2020-12-12 17:16:26', 'Sede Sabanas'),
(6, 'Sociales y economicas', 8, '2020-12-19 18:55:36', 'SedeSabanas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefedepartamento`
--

CREATE TABLE `jefedepartamento` (
  `Identificacion` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerNombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoNombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `DepartamentoCargo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Sexo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Departamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Pais` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `jefedepartamento`
--

INSERT INTO `jefedepartamento` (`Identificacion`, `PrimerNombre`, `SegundoNombre`, `PrimerApellido`, `SegundoApellido`, `DepartamentoCargo`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `Direccion`, `Ciudad`, `Departamento`, `Pais`) VALUES
('6666099977', 'Stefany', 'daniela', 'Gutierrez', 'daza', 'Ingenieria de sistemas', '1999-10-10', 'F', '3015522083', 'heidy@gmail.com', 'barrio nando marin', 'valledupar', 'cesar', 'Colombia'),
('8080089889', 'Juan', 'Jose', 'Gutierrez', 'daza', 'Licenciatura en sociales', '1976-02-20', 'M', '3025454649', 'juan@gmail.com', 'bario mareigua', 'valledupar', 'cesar', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `CodigoMateria` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `NombreMateria` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `NumeroCredito` int(11) NOT NULL,
  `Programa` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`CodigoMateria`, `NombreMateria`, `NumeroCredito`, `Programa`, `FechaRegistro`) VALUES
('MD-345', 'naturales', 5, 'Medicina', '2020-12-09 03:18:56'),
('ML-304', 'Quimica', 4, 'Medicina', '2020-12-09 03:24:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `CodigoPais` int(11) NOT NULL,
  `NombrePais` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`CodigoPais`, `NombrePais`) VALUES
(1, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planasignatura`
--

CREATE TABLE `planasignatura` (
  `CodigoPlan` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Programa` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Materia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Hdd` int(11) NOT NULL,
  `Htp` int(11) NOT NULL,
  `Hti` int(11) NOT NULL,
  `TipoAsignatura` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `NaturalezaAsignatura` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `DescripcionAsignatura` text COLLATE utf8_spanish_ci NOT NULL,
  `ObjetivoGeneral` text COLLATE utf8_spanish_ci NOT NULL,
  `ObjetivosEspecificos` text COLLATE utf8_spanish_ci NOT NULL,
  `EstrategiasPedagogicas` text COLLATE utf8_spanish_ci NOT NULL,
  `CompetenciasGenericas` text COLLATE utf8_spanish_ci NOT NULL,
  `ReferenciasBibliograficas` text COLLATE utf8_spanish_ci NOT NULL,
  `PrimerParcial` int(11) NOT NULL DEFAULT 30,
  `SegundoParcial` int(11) NOT NULL DEFAULT 30,
  `TercerParcial` int(11) NOT NULL DEFAULT 40,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `planasignatura`
--

INSERT INTO `planasignatura` (`CodigoPlan`, `Programa`, `Materia`, `Hdd`, `Htp`, `Hti`, `TipoAsignatura`, `NaturalezaAsignatura`, `DescripcionAsignatura`, `ObjetivoGeneral`, `ObjetivosEspecificos`, `EstrategiasPedagogicas`, `CompetenciasGenericas`, `ReferenciasBibliograficas`, `PrimerParcial`, `SegundoParcial`, `TercerParcial`, `FechaRegistro`) VALUES
('pli01', 'Ingenieria de sistemas', 'calculo', 45, 50, 80, 'Teorica', 'Habilitable', 'El desarrollo de software con calidad requiere la aplicación de técnicas, metodologías,\r\nactividades, tecnologías eficientes, trabajo en equipo y la consolidación de ideas que permitan\r\nobtener un producto final verificado y validado correctamente conforme a las especificaciones\r\ndadas por el usuario. En concordancia con lo anterior el estudiante debe apropiarse de los\r\nconocimientos detallados en aras de fortalecer su rol como ingeniero de software.', 'Comprender los conceptos fundamentales, proceso de software y metodologías propuestas por\r\nla ingeniería de software, su aplicabilidad e importancia en el desarrollo de productos de\r\nsoftware con calidad.', 'Entender los conceptos básicos e introductorios de ingeniería de software para su\r\nposterior aplicación.\r\n\r\nConocer los conceptos fundamentales sobre sistemas de información y su importancia\r\nen la toma de decisiones en una organización.\r\n\r\nAplicar las metodologías, métodos y actividades utilizados durante el proceso de\r\ndesarrollo de software', 'trabajo presencial o acompañamiento directo: consiste en el tiempo dedicado a la\r\nactividad académica en la que hay interacción entre el docente y el estudiante, a través de\r\nclases magistrales, seminarios, talleres, y laboratorios; donde se da explicación a los temas\r\nprogramados en el curso, se realiza en las instalaciones de la institución en horarios definidos\r\npreviamente y en espacios destinados para ello tales como: salones de clases, salas de\r\nsistemas e informática, laboratorios, visitas técnicas y demás lugares que permitan y cumplan\r\ncon las normas exigidas para impartir clases.', 'Comprende un texto y sus partes para reflexionar, profundizar y aplicar\r\nsu conocimiento en ámbitos cotidianos, académicos y profesionales.', 'CAMPOS Víctor, “Ingeniería del Software”, Ed. Pearson educación, 5ta edición, España 2011.\r\n FERNANDEZ Rubén, *Utilización de UML en ingeniería del software con objetos y\r\ncomponentes”, Ed. Pearson Educación, 5ta edición, España 2007.\r\n GUERRERO Ekaterina, “Ingeniería del Software clásica y orientada a objetos”, Ed. Pearson\r\neducación, 6ta edición, España 2011.', 30, 30, 40, '2020-12-11 06:27:44'),
('pli017', 'Ingenieria de sistemas', 'naturales', 45, 50, 80, 'Practica', 'Habilitable', 'descripcion', 'objetivo general', 'obbjetivo especifico', 'estrategias metodologicas', 'competencias genericas', 'bibliografia', 30, 30, 40, '2020-12-11 01:42:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `CodigoPrograma` int(11) NOT NULL,
  `NombrePrograma` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `CantidadCreditos` int(11) NOT NULL,
  `NombreFacultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaciondocente`
--

CREATE TABLE `relaciondocente` (
  `Codigo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Grupo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Docente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `relaciondocente`
--

INSERT INTO `relaciondocente` (`Codigo`, `Grupo`, `Docente`, `FechaRegistro`) VALUES
('MD-345/naturales', '01', 'Heidy Daza', '2020-12-11 05:35:36'),
('ML-304/Quimica', '01', 'Stefany Gutierrez', '2020-12-11 05:59:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Identificacion` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Contraseña` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `TipoUsuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerNombre` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Usuario` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Identificacion`, `Contraseña`, `TipoUsuario`, `PrimerNombre`, `PrimerApellido`, `FechaRegistro`, `Usuario`) VALUES
('089968656', 'rochety', 'Estudiante', 'rocha', 'rochety', '2020-12-23 18:04:48', 'rochety'),
('1065', '5555', 'Administrador', 'Kevin', 'Duarte', '2020-11-11 03:58:07', 'Admin'),
('2303491', '343434', 'Docente', 'Ever', 'Gomez', '2020-11-11 04:19:34', 'everg'),
('2323234', '11245', 'Estudiante', 'Pedro', 'Mora', '2020-11-11 04:22:00', 'pedro12'),
('6666', '222323', 'Docente', 'Amilkar', 'Oñate', '2020-11-11 04:06:05', 'Amilkar'),
('8080', 'e343434', 'Estudiante', 'Stefany', 'Gutierrez', '2020-11-11 04:01:27', 'stefany'),
('9090', '44444', 'Estudiante', 'Juan', 'Molina', '2020-11-11 15:47:57', 'juanm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`CodigoCiudad`,`NombreCiudad`),
  ADD KEY `NombreDepartamento` (`NombreDepartamento`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`CodigoDepartamento`,`NombreDepartamento`),
  ADD UNIQUE KEY `NombreDepartamento` (`NombreDepartamento`),
  ADD KEY `NombrePais` (`NombrePais`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`CodigoFacultad`),
  ADD UNIQUE KEY `UKFACULTAD` (`NombreFacultad`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`CodigoPais`,`NombrePais`),
  ADD UNIQUE KEY `NombrePais` (`NombrePais`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`CodigoPrograma`),
  ADD UNIQUE KEY `NombrePrograma` (`NombrePrograma`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Identificacion`),
  ADD UNIQUE KEY `Usuario` (`Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `CodigoCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `CodigoDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `CodigoFacultad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `CodigoPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `CodigoPrograma` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`NombreDepartamento`) REFERENCES `departamento` (`NombreDepartamento`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`NombrePais`) REFERENCES `pais` (`NombrePais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

//CREAR FORANEA

ALTER TABLE docente 
ADD CONSTRAINT IDDOIDUS 
FOREIGN KEY (Identificacion) 
REFERENCES usuario (Identificacion);