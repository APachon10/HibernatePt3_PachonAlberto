-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 18-12-2019 a les 19:03:59
-- Versió del servidor: 10.4.8-MariaDB
-- Versió de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `forhonor`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `faccion`
--

CREATE TABLE `faccion` (
  `faccion_id` int(11) NOT NULL,
  `nombre_faccion` varchar(15) NOT NULL,
  `lore` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `faccion`
--

INSERT INTO `faccion` (`faccion_id`, `nombre_faccion`, `lore`) VALUES
(1, 'Caballeros', 'Los caballeros de Ashfeld son paradigmas del poder. La Legión de Hierro los envió para llevar la paz a esas tierras y, desde entonces, disfrutan de la libertad y han hecho de Ashfeld su hogar.'),
(2, 'Samurais', 'La historia no ha tratado bien a los samuráis. Originarios de una tienda allende los mares, cuentan la historia de un emperador y una patria que desaparecieron entre el mar y el fuego. Casi un milenio'),
(3, 'Vikingos', 'Los vikingos desaparecieron hace siglos, tras escapar de sus destrozadas tierras natales en pos de costas desconocidas. Los caballeros conquistaron a aquellos que se quedaron atrás e hicieron que se i');

-- --------------------------------------------------------

--
-- Estructura de la taula `personajes`
--

CREATE TABLE `personajes` (
  `personaje_id` int(11) NOT NULL,
  `nombre_personaje` varchar(15) NOT NULL,
  `ataque` int(11) NOT NULL,
  `defensa` int(11) NOT NULL,
  `faccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `personajes`
--

INSERT INTO `personajes` (`personaje_id`, `nombre_personaje`, `ataque`, `defensa`, `faccion_id`) VALUES
(1, ' Guardianes', 300, 200, 1),
(2, 'Pacificadoras', 150, 100, 1),
(3, 'Shugoki', 100, 150, 2),
(4, 'Orochi', 200, 100, 2),
(5, 'Valquiria', 300, 300, 3),
(6, 'Berserker', 500, 250, 3);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `faccion`
--
ALTER TABLE `faccion`
  ADD PRIMARY KEY (`faccion_id`);

--
-- Índexs per a la taula `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`personaje_id`),
  ADD KEY `faccion_id` (`faccion_id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `faccion`
--
ALTER TABLE `faccion`
  MODIFY `faccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`faccion_id`) REFERENCES `faccion` (`faccion_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
