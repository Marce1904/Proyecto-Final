-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-05-2022 a las 21:43:23
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modulo5u4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `img_id`, `subtitulo`, `cuerpo`) VALUES
(14, 'Nuevo producto -  Vitamina C ', 'co1fuuauhgaex8lh42ad', 'Las BB Cream llegaron al mercado como un recurso diario para perfeccionar tu piel y a la vez hidratarla y protegerla. Con el poder revitalizante y antioxidante de la Vit C y un activo específico para protegerte de los efectos de la contaminación ambiental y digital.', 'Protege tu piel mientras le ofrece un aspecto homogéneo y luminoso. Usala todos los días, aplica también pantalla solar y potenciá la protección diaria. Viene en tres tonos. Cod. 15503 Light Cod. 15510 Medium Cod. 15527 Dark'),
(13, 'Descubrí la línea de Renovación Celular', 'fglbm4ndowjrlxcskd2u', 'Activos específicos pensados para cada tipo de piel', 'GLYCOLIC RENEWER Crema Renovadora Glicólico Crema suave y de fácil absorción. MANDELIC RENEWER Gel Renovador Mandélico Su textura gelificada permite su rápida absorción sin dejar residuo oleoso. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Marcelo', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
