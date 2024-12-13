CREATE DATABASE  IF NOT EXISTS `villancicos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `villancicos`;
-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: villancicos
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `villancico`
--

DROP TABLE IF EXISTS `villancico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `villancico` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Compositor` varchar(50) DEFAULT NULL,
  `Anyo` int(11) DEFAULT NULL,
  `Letra` text NOT NULL,
  `VideoURL` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villancico`
--

LOCK TABLES `villancico` WRITE;
/*!40000 ALTER TABLE `villancico` DISABLE KEYS */;
INSERT INTO `villancico` VALUES (1,'Adeste Fideles','John Francis Wade',1743,'<p>Alegres de coraz&oacute;n<br />Llenos de esperanza<br />Venimos hasta Bel&eacute;n<br />Para ver a Jes&uacute;s<br /><br />Vuelen campanas<br />Que ya est&aacute; aqu&iacute; el Ni&ntilde;o Dios<br />Los &aacute;ngeles del cielo<br />Bailan de contento<br />Que sepa el mundo<br />Entero que Dios lleg&oacute;<br /><br />Alegres de coraz&oacute;n<br />Llenos de esperanza<br />Venimos hasta Bel&eacute;n<br />Para ver a Jes&uacute;s<br /><br />Vuelen campanas<br />Que ya est&aacute; aqu&iacute; el Ni&ntilde;o Dios<br />Los &aacute;ngeles del cielo<br />Bailan de contento<br />Que sepa el mundo<br />Entero que Dios lleg&oacute;<br /><br />Alegres de coraz&oacute;n<br />Llenos de esperanza<br />Venimos hasta Bel&eacute;n<br />Para ver a Jes&uacute;s<br /><br />Vuelen campanas<br />Que ya est&aacute; aqu&iacute; el Ni&ntilde;o Dios<br />Los &aacute;ngeles del cielo<br />Bailan de contento<br />Que sepa el mundo<br />Entero que Dios lleg&oacute;<br /><br />Vuelen campanas<br />Que ya est&aacute; aqu&iacute; el Ni&ntilde;o Dios<br />Los &aacute;ngeles del cielo<br />Bailan de contento<br />Que sepa el mundo<br />Entero que Dios lleg&oacute;<br /><br />Vuelen campanas<br />Que ya est&aacute; aqu&iacute; el Ni&ntilde;o Dios<br />Los &aacute;ngeles del cielo<br />Bailan de contento<br />Que sepa el mundo<br />Entero que Dios lleg&oacute;</p>','https://www.youtube.com/embed/7F7uf-WmsDQ'),(2,'Campana sobre campana','Desconocido. Procedencia Andaluza',NULL,'<p>Campana sobre campana<br />Y sobre campana una<br />As&oacute;mate a la ventana<br />Ver&aacute;s el ni&ntilde;o en la cuna</p>\n<p>Bel&eacute;n, campanas de Bel&eacute;n<br />Que los &aacute;ngeles tocan<br />Qu&eacute; nuevas me tra&eacute;is?</p>\n<p>Recogido tu reba&ntilde;o<br />A d&oacute;nde vas pastorcito?<br />Voy a llevar al portal<br />Reques&oacute;n, manteca y vino</p>\n<p>Bel&eacute;n, campanas de Bel&eacute;n<br />Que los &aacute;ngeles tocan<br />Qu&eacute; nuevas me tra&eacute;is?</p>\n<div>&nbsp;</div>\n<p>Campana sobre campana<br />Y sobre campana dos<br />As&oacute;mate a la ventana<br />Porque esta naciendo Dios</p>\n<p>Bel&eacute;n, campanas de bel&eacute;n<br />Que los &aacute;ngeles tocan<br />Qu&eacute; nuevas me tra&eacute;is?</p>\n<p>Caminando a medianoche<br />&iquest;D&oacute;nde caminas pastor?<br />Te llevare a cu&iacute;darte</p>\n<p>Como a Dios, mi coraz&oacute;n</p>\n<p>Bel&eacute;n, campanas de bel&eacute;n<br />Que los &aacute;ngeles tocan<br />&iquest;Qu&eacute; nuevas me tra&eacute;is?</p>\n<p>Campana sobre campana<br />Y sobre campana una<br />As&oacute;mate a la ventana<br />Veras al ni&ntilde;o en la cuna</p>\n<p>Bel&eacute;n, campanas de bel&eacute;n<br />Que los &aacute;ngeles tocan<br />&iquest;Qu&eacute; nuevas me tra&eacute;is?</p>\n<p>Recogido tu reba&ntilde;o<br />A d&oacute;nde vas pastorcito?<br />Voy a llevar al portal<br />Reques&oacute;n, manteca y vino</p>\n<p>Bel&eacute;n, campanas de bel&eacute;n<br />Que los &aacute;ngeles tocan<br />&iquest;Qu&eacute; nuevas me tra&eacute;is?</p>','https://www.youtube.com/embed/c1QVf4ywHrY'),(3,'Arre borriquito','Ricardo Boronat y Diego San José de la Torre',1925,'<p>Tengo puesto un nacimiento&nbsp;<br />En un rinc&oacute;n de mi casa&nbsp;<br />Con pastores y pastoras&nbsp;<br />Y un palacio en la monta&ntilde;a&nbsp;</p>','https://www.youtube.com/embed/3hFlzGFZKFI'),(4,'Ven a cantar','Desconocido',NULL,'<p>Otro a&ntilde;o que queda atr&aacute;s,&nbsp;<br />mil momentos que recordar.&nbsp;<br />Otro a&ntilde;o, mil sue&ntilde;os m&aacute;s&nbsp;<br />hechos realidad.&nbsp;<br /><br />Los problemas vienen y van,&nbsp;<br />y al final todo sigue igual.&nbsp;<br />No hay monta&ntilde;a que pueda m&aacute;s,&nbsp;<br />que la voluntad.&nbsp;<br /><br />Alzo mi copa aqu&iacute;,&nbsp;<br />para brindar por ti,&nbsp;<br />y desearte lo mejor.&nbsp;<br /><br />Navidad, feliz Navidad,&nbsp;<br />vuelve a casa, vuelve al hogar.&nbsp;<br />Navidad, dulce Navidad,&nbsp;<br />es calor de hogar.&nbsp;<br /><br />Ven a cantar, ven a cantar,&nbsp;<br />que ya lleg&oacute; la Navidad.&nbsp;<br />Ven a cantar, ven a cantar,&nbsp;<br />que ya est&aacute; aqu&iacute; la Navidad.&nbsp;<br /><br />Ven a cantar, ven a cantar,&nbsp;<br />que ya lleg&oacute; la Navidad.&nbsp;<br />Ven a cantar, ven a cantar,&nbsp;<br />que ya est&aacute; aqu&iacute; la Navidad.</p>','https://www.youtube.com/embed/5ipkAxRm_Pw'),(5,'Noche de paz',' Franz Xaver Gruber',1816,'<p>Noche de paz, noche de amor, <br />Todo duerme derredor <br />Entre los astros que esparcen su luz <br />Bella anunciando al ni&ntilde;o Jes&uacute;s <br />Brilla la estrella de paz <br />Brilla la estrella de amor.</p>','https://www.youtube.com/embed/C0YImrwIypo'),(6,'Blanca navidad','Irving Berlin',1942,'<p>Oh! Blanca navidad, sue&ntilde;o<br />Y con la nieve en derredor<br />Blanca es mi quimera, y es mensajera<br />De paz y de puro amor<br /><br />Oh! Blanca navidad, nieve<br />Un blanco sue&ntilde;o y un cantar<br />Recordar tu infancia podr&aacute;s<br />Al llegar la blanca navidad<br /><br />Oh! Blanca navidad, sue&ntilde;o<br />Y con la nieve en derredor<br />Blanca es mi quimera, y es mensajera<br />De paz y de puro amor<br />','https://www.youtube.com/embed/765fwRdrpnw'),(7,'Santa Claus Is Coming To Town','John Frederick Coots y Haven Gillespie',1932,'<p>You better watch out.<br />You better not cry,<br />better not pout.<br />I\'m telling you why:<br />Santa Claus is coming to town.<br /><br />He\'s making a list,<br />and checking it twice;<br />gonna find out<br />who\'s naughty and nice.<br />Santa Claus is coming to town.<br /><br />He sees you when you\'re sleeping.<br />He knows when you\'re awake.<br />He knows if you\'ve been bad or good,<br />so be good for goodness sake!<br /><br />Oh! You better watch out!<br />You better not cry,<br />better not pout, I\'m telling you why:<br />Santa Claus is coming to town,<br />Santa Claus is coming to town .&nbsp;</p>','https://www.youtube.com/embed/G6Lp0i_I34w'),(8,'Jingle Bells','James Pierpont',1857,'<p>Dashing through the snow&nbsp;<br />On a one-horse open sleigh&nbsp;<br />Over the fields we go&nbsp;<br />Laughing all the way;&nbsp;<br />Bells on bob-tail ring&nbsp;<br />making spirits bright&nbsp;<br />What fun it is to ride and sing&nbsp;<br />A sleighing song tonight&nbsp;<br />Jingle bells&nbsp;<br />jingle bells&nbsp;<br />jingle all the way!&nbsp;<br />O what fun it is to ride&nbsp;<br />In a one-horse open sleigh&nbsp;<br /><br />A day or two ago&nbsp;<br />I thought I\'d take a ride&nbsp;<br />And soon Miss Fanny Bright&nbsp;<br />Was seated by my side;&nbsp;<br />The horse was lean and lank;&nbsp;<br />Misfortune seemed his lot;&nbsp;<br />He got into a drifted bank&nbsp;<br />And we&nbsp;<br />we got upsot&nbsp;<br />Jingle Bells&nbsp;<br />Jingle Bells&nbsp;<br />Jingle all the way!&nbsp;<br />What fun it is to ride&nbsp;<br />In a one-horse open sleigh</p>','https://www.youtube.com/embed/eQ34DSTjsLQ'),(9,'Mi burrito sabanero','Hugo Blanco',1972,'    <p>','https://www.youtube.com/embed/lJawRaON8h0');
/*!40000 ALTER TABLE `villancico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10  7:21:36
