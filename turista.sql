-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2019 a las 01:26:17
-- Versión del servidor: 10.1.24-MariaDB
-- Versión de PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turista`
--

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
(1, '2019_02_06_195309_create_table_reservaciones', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id` int(11) NOT NULL,
  `nombreC` varchar(50) NOT NULL,
  `apellidoC` varchar(50) NOT NULL,
  `cedula` int(10) NOT NULL,
  `telefono` int(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `numHabitacion` int(10) NOT NULL,
  `tipoHabitacion` varchar(50) NOT NULL,
  `costoHabitacion` double NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fechaInicial` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id`, `nombreC`, `apellidoC`, `cedula`, `telefono`, `direccion`, `numHabitacion`, `tipoHabitacion`, `costoHabitacion`, `estado`, `fechaInicial`, `fechaFinal`) VALUES
(1, 'Lizbeth', 'Borja', 1726686510, 983493110, 'Villaflora', 101, 'matrimonio', 125, 'libre', '2019-02-06', '2019-02-13'),
(2, 'Pepe', 'Maldonado', 1578696251, 984412619, 'Guamani', 25, 'matrimonio', 500, 'Ocupado', '2019-02-20', '2019-02-21'),
(3, 'Jessica', 'Faz', 1726482015, 984152613, 'San Luis', 103, 'Estandar', 25.5, 'Libre', '2019-02-21', '2019-02-19'),
(4, 'Pablo', 'Jimenez', 1745698201, 964132648, 'San Bartolo', 202, 'De lujo', 1000, 'ocupado', '2019-02-21', '2019-02-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_reservaciones`
--

CREATE TABLE `table_reservaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombreC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numHabitacion` int(11) NOT NULL,
  `tipoHabitacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costoHabitacion` double NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaInicial` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_reservaciones`
--
ALTER TABLE `table_reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `table_reservaciones`
--
ALTER TABLE `table_reservaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
