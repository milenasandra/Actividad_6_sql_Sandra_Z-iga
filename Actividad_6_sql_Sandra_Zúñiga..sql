-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.condition_confirmation
DROP TABLE IF EXISTS `condition_confirmation`;
CREATE TABLE IF NOT EXISTS `condition_confirmation` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.condition_confirmation: ~3 rows (aproximadamente)
DELETE FROM `condition_confirmation`;
INSERT INTO `condition_confirmation` (`id`, `name`) VALUES
	(1, 'extinta'),
	(2, 'bajo riesgo'),
	(3, 'amenazada');

-- Volcando estructura para tabla los_animales.displacement_shapes
DROP TABLE IF EXISTS `displacement_shapes`;
CREATE TABLE IF NOT EXISTS `displacement_shapes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.displacement_shapes: ~5 rows (aproximadamente)
DELETE FROM `displacement_shapes`;
INSERT INTO `displacement_shapes` (`id`, `name`) VALUES
	(1, 'rastrero'),
	(2, 'bípedo'),
	(3, 'cuadrupedo'),
	(4, 'aéreo'),
	(5, 'acuático');

-- Volcando estructura para tabla los_animales.embryo_developments
DROP TABLE IF EXISTS `embryo_developments`;
CREATE TABLE IF NOT EXISTS `embryo_developments` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.embryo_developments: ~3 rows (aproximadamente)
DELETE FROM `embryo_developments`;
INSERT INTO `embryo_developments` (`id`, `name`) VALUES
	(1, 'ovovivíparo'),
	(2, 'vivíparo'),
	(3, 'ovíparo');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats: ~3 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'tierra'),
	(2, 'aire'),
	(3, 'mar');

-- Volcando estructura para tabla los_animales.habitats_animals_species
DROP TABLE IF EXISTS `habitats_animals_species`;
CREATE TABLE IF NOT EXISTS `habitats_animals_species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `animals_species_id` smallint(5) unsigned NOT NULL,
  `habitats_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats_animals_species: ~10 rows (aproximadamente)
DELETE FROM `habitats_animals_species`;
INSERT INTO `habitats_animals_species` (`id`, `animals_species_id`, `habitats_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 3),
	(4, 4, 2),
	(5, 5, 1),
	(6, 6, 1),
	(7, 7, 1),
	(8, 8, 1),
	(9, 9, 1),
	(10, 10, 1);

-- Volcando estructura para tabla los_animales.powers_supply_type
DROP TABLE IF EXISTS `powers_supply_type`;
CREATE TABLE IF NOT EXISTS `powers_supply_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.powers_supply_type: ~3 rows (aproximadamente)
DELETE FROM `powers_supply_type`;
INSERT INTO `powers_supply_type` (`id`, `name`) VALUES
	(1, 'herbívoros'),
	(2, 'carnívoros'),
	(3, 'omnívoros');

-- Volcando estructura para tabla los_animales.species_of_animal
DROP TABLE IF EXISTS `species_of_animal`;
CREATE TABLE IF NOT EXISTS `species_of_animal` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `power_supply_type_id` smallint(5) unsigned NOT NULL,
  `condition_confirmation_id` smallint(5) unsigned NOT NULL,
  `develop_embryo_id` smallint(5) unsigned NOT NULL,
  `displacement_id` smallint(5) unsigned NOT NULL,
  `specie_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species_of_animal: ~10 rows (aproximadamente)
DELETE FROM `species_of_animal`;
INSERT INTO `species_of_animal` (`id`, `name`, `amount`, `power_supply_type_id`, `condition_confirmation_id`, `develop_embryo_id`, `displacement_id`, `specie_type_id`) VALUES
	(1, 'oso de anteojos', 8000, 3, 3, 2, 3, 1),
	(2, 'lobito de río', 128, 2, 3, 2, 3, 4),
	(3, 'delfín bají', 0, 2, 1, 2, 5, 1),
	(4, 'loro orejiamarillo', 2600, 3, 2, 3, 4, 0),
	(5, 'tortuga', 315, 1, 2, 2, 3, 3),
	(6, 'boa', 2500, 2, 2, 1, 1, 3),
	(7, 'canguro', 50000, 1, 2, 2, 2, 1),
	(8, 'elefante africano', 400000, 1, 3, 2, 3, 1),
	(9, 'león', 20000, 2, 2, 2, 3, 1),
	(10, 'iguana', 3500, 1, 3, 3, 1, 3);

-- Volcando estructura para tabla los_animales.species_types
DROP TABLE IF EXISTS `species_types`;
CREATE TABLE IF NOT EXISTS `species_types` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species_types: ~4 rows (aproximadamente)
DELETE FROM `species_types`;
INSERT INTO `species_types` (`id`, `name`) VALUES
	(1, 'mamifero'),
	(2, 'anfibio '),
	(3, 'reptil'),
	(4, 'aves');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
