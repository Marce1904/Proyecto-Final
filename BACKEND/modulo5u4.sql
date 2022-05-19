-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-05-2022 a las 10:35:47
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `img_id`, `subtitulo`, `cuerpo`) VALUES
(1, 'IFE ANSES 2022 para monotributistas, jubilados y pensionados: la buena noticia para beneficiarios', NULL, 'El Gobierno lanzó un bono destinado a trabajadores informales y para ellos hay una buena noticia. Conocé los detalles acerca de los requisitos y cómo acceder.', 'odas y todos los trabajadores sin ingresos formales que se encuentran en condiciones de solicitarlo deberán inscribirse a través del sitio web oficial de la ANSES,  con CUIL y Clave de la Seguridad Social.\r\n\r\nUna vez que las y los solicitantes firmen la Declaración Jurada, se evaluará su situación socioeconómica a fin de que el refuerzo de ingresos llegue efectivamente a las personas para las cuales se implementó esta medida.\r\n\r\nIFE 2022: calendario de pago y de inscripción\r\n21 de abril: Inicio de inscripción - Actualización de datos en mi ANSES\r\n28 de abril: Se completa la inscripción con la solicitud del Refuerzo, aceptación de DDJJ y carga del CBU.\r\n5 de mayo: Desde esta fecha, la persona se entera si tiene derecho al cobro.\r\n19 de mayo: Se comienza a pagar el Refuerzo de Ingresos\r\nQuienes al 28 de abril no hayan llegado a realizar la primera etapa de inscripción podrán seguir haciéndolo.'),
(2, 'Boca prepara una final ante Barracas Central por la Copa Liga Profesional', NULL, 'El Xeneize sabe que un triunfo les da la clasificación, pero si dejan puntos en el camino podrían complicarse. Así, el plantel entrena en Ezeiza y Battaglia le da forma al equipo.', '00000000000000000000'),
(7, 'Cambios', '', 'Cambios', 'asavsdvs'),
(8, 'asdasd', '', 'adsasda', 'asdasda'),
(9, 'prueba 1', '', 'asaokmsd', 'asdad'),
(10, 'sdsd', 'i7qpdsow9sjdade9idpm', 'sdcsdvsd', 'sdsd'),
(5, 'er1232323', '', 'er2323e23', 'er2323e23aaaaaaaaaaaaaaaaaaaaaaaaaaa');

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
