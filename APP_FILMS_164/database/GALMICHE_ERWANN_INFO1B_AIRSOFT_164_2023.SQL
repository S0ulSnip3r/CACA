-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.1.72-community - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour projetairsoft
CREATE DATABASE IF NOT EXISTS `projetairsoft` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projetairsoft`;

-- Listage de la structure de la table projetairsoft. t_address_user
CREATE TABLE IF NOT EXISTS `t_address_user` (
  `id_address_user` int(11) NOT NULL AUTO_INCREMENT,
  `rue` varchar(50) DEFAULT NULL,
  `npa` int(11) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id_address_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table projetairsoft.t_address_user : ~2 rows (environ)
/*!40000 ALTER TABLE `t_address_user` DISABLE KEYS */;
INSERT INTO `t_address_user` (`id_address_user`, `rue`, `npa`, `ville`, `code_postal`, `date_naissance`) VALUES
	(1, 'Gougouz', 1112, 'ECHICHENS', 1112, '2023-06-04'),
	(2, NULL, NULL, 'gougouz', NULL, NULL);
/*!40000 ALTER TABLE `t_address_user` ENABLE KEYS */;

-- Listage de la structure de la table projetairsoft. t_arme
CREATE TABLE IF NOT EXISTS `t_arme` (
  `id_arme` int(11) NOT NULL AUTO_INCREMENT,
  `nom_arme` varchar(50) DEFAULT NULL,
  `classification_arme` char(50) DEFAULT NULL,
  `num_serie` int(11) DEFAULT NULL,
  `type_arme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_arme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table projetairsoft.t_arme : ~0 rows (environ)
/*!40000 ALTER TABLE `t_arme` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_arme` ENABLE KEYS */;

-- Listage de la structure de la table projetairsoft. t_arme_address
CREATE TABLE IF NOT EXISTS `t_arme_address` (
  `id_arme_address` int(11) NOT NULL AUTO_INCREMENT,
  `fk_arme` int(11) NOT NULL DEFAULT '0',
  `fk_address_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_arme_address`),
  KEY `fk_arme` (`fk_arme`),
  KEY `fk_address_user` (`fk_address_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table projetairsoft.t_arme_address : ~0 rows (environ)
/*!40000 ALTER TABLE `t_arme_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_arme_address` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
