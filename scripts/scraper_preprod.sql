-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: scraperdb.c1mkc0degkxm.eu-central-1.rds.amazonaws.com    Database: scraper_preprod
-- ------------------------------------------------------
-- Server version	5.6.39-log

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
-- Table structure for table `main_exchange`
--

DROP TABLE IF EXISTS `main_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_exchange` (
  `id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_exchange`
--

LOCK TABLES `main_exchange` WRITE;
/*!40000 ALTER TABLE `main_exchange` DISABLE KEYS */;
INSERT INTO `main_exchange` VALUES (62411556,'2018-03-30','2018-03-27','Pénzpiaci 2016 eszközalap',1.00083,282067125,'HUF'),(45707119,'2018-03-30','2018-03-27','Hazai kötvény eszközalap',1.0568,575796732,'HUF'),(52767911,'2018-03-30','2018-03-27','Tallózó abszolút hozam eszközalap',1.05439,571906704,'HUF'),(59236577,'2018-03-30','2018-03-27','Világjáró kötvény eszközalap',0.96855,85582997,'HUF'),(57329316,'2018-03-30','2018-03-27','Horizont 15+ vegyes eszközalap',1.04726,304989138,'HUF'),(97846771,'2018-03-30','2018-03-27','Horizont 10+ vegyes eszközalap',1.05377,378490701,'HUF'),(4613472,'2018-03-30','2018-03-27','Horizont 5+ vegyes eszközalap',1.04884,230639802,'HUF'),(42922169,'2018-03-30','2018-03-27','Hazai részvény eszközalap',1.10634,344491749,'HUF'),(44187970,'2018-03-30','2018-03-27','Fejl?d? világ részvény eszközalap',1.10034,68907515,'HUF'),(90741645,'2018-03-30','2018-03-27','Fejlett világ részvény eszközalap',0.9826,35415673,'HUF'),(55486592,'2018-03-30','2018-03-27','Világmárkák részvény eszközalap',0.99473,57674323,'HUF'),(15101756,'2018-03-30','2018-03-27','Kötvény eszközalap',3.24893,13235472143,'HUF'),(22444051,'2018-03-30','2018-03-27','Vegyes I. eszközalap',3.66282,5870667485,'HUF'),(19356297,'2018-03-30','2018-03-27','Vegyes II. eszközalap',3.98362,3865897007,'HUF'),(92702543,'2018-03-30','2018-03-27','Külföldi -OECD- részvény eszközalap',0.82454,3002396908,'HUF'),(65532104,'2018-03-30','2018-03-27','Magyar részvény eszközalap',4.16346,4788163065,'HUF'),(31980278,'2018-03-30','2018-03-27','DeLuxe részvény eszközalap',2.20641,9708989146,'HUF'),(51515791,'2018-03-30','2018-03-27','New Europe részvény eszközalap',0.47865,844455627,'HUF'),(45448288,'2018-03-30','2018-03-27','Eldorado latin-amerikai részvény eszközalap',0.99032,3516347382,'HUF'),(3258826,'2018-03-30','2018-03-27','Himalája ázsiai részvény eszközalap',1.33735,5000691744,'HUF'),(88101469,'2018-03-30','2018-03-27','Global Selection eszközalap',1.36294,248052822,'HUF'),(8019112,'2018-03-30','2018-03-27','Konzervatív vegyes eszközalap',1.7541,2516898291,'HUF'),(84862470,'2018-03-30','2018-03-27','Kiegyensúlyozott vegyes eszközalap',1.73484,3007624163,'HUF'),(3223476,'2018-03-30','2018-03-27','Dinamikus vegyes eszközalap',1.65791,1121697774,'HUF'),(81524352,'2018-03-30','2018-03-27','ÁrfolyamFix 2019 árfolyamvédett eszközalap',1.4828,8333336000,'HUF'),(27915478,'2018-03-30','2018-03-27','Likviditási eszközalap',1.15333,13860451653,'HUF'),(63128764,'2018-03-30','2018-03-27','Selection abszolút hozam eszközalap',1.24043,24074570691,'HUF'),(10672959,'2018-03-30','2018-03-27','Navigáció 15+ vegyes eszközalap',1.13006,1598316196,'HUF'),(21442410,'2018-03-30','2018-03-27','Navigáció 10+ vegyes eszközalap',1.08707,1273996989,'HUF'),(17225767,'2018-03-30','2018-03-27','Navigáció 5+ vegyes eszközalap',1.05311,1082109702,'HUF'),(53780421,'2018-03-30','2018-03-27','EuróKötvény eszközalap',1.24646,8806048,'EUR'),(80231445,'2018-03-30','2018-03-27','EuróRészvény eszközalap',1.00651,3065759,'EUR'),(70726597,'2018-03-30','2018-03-27','EuróRészvény Plusz eszközalap',0.7634,7512060,'EUR'),(22277356,'2018-03-30','2018-03-27','Új Technológiák részvény eszközalap',1.8524,6380649,'EUR'),(90994319,'2018-03-30','2018-03-27','Ázsiai ingatlan részvény eszközalap',1.06176,2433820,'EUR'),(41503527,'2018-03-30','2018-03-27','EuroProtect80 eszközalap',1.0397,2936625,'EUR'),(99907552,'2018-03-30','2018-03-27','Amazonas latin-amerikai részvény eszközalap',0.75717,760097,'EUR'),(5431937,'2018-03-30','2018-03-27','Olympic részvény eszközalap',1.81917,2639419,'EUR'),(84911003,'2018-03-30','2018-03-27','New Tigers ázsiai részvény eszközalap',1.27912,1308416989,'HUF'),(70879440,'2018-03-30','2018-03-27','Nova vegyes eszközalap',1.36163,282320737,'HUF'),(51559483,'2018-03-30','2018-03-27','Top Trend t?kevédett eszközalap',1.97381,1852616659,'HUF');
/*!40000 ALTER TABLE `main_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selector`
--

DROP TABLE IF EXISTS `selector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selector` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selector`
--

LOCK TABLES `selector` WRITE;
/*!40000 ALTER TABLE `selector` DISABLE KEYS */;
INSERT INTO `selector` VALUES (62411556,'Pénzpiaci 2016 eszközalap'),(45707119,'Hazai kötvény eszközalap'),(52767911,'Tallózó abszolút hozam eszközalap'),(59236577,'Világjáró kötvény eszközalap'),(57329316,'Horizont 15+ vegyes eszközalap'),(97846771,'Horizont 10+ vegyes eszközalap'),(4613472,'Horizont 5+ vegyes eszközalap'),(42922169,'Hazai részvény eszközalap'),(44187970,'Fejl?d? világ részvény eszközalap'),(90741645,'Fejlett világ részvény eszközalap'),(55486592,'Világmárkák részvény eszközalap'),(15101756,'Kötvény eszközalap'),(22444051,'Vegyes I. eszközalap'),(19356297,'Vegyes II. eszközalap'),(92702543,'Külföldi -OECD- részvény eszközalap'),(65532104,'Magyar részvény eszközalap'),(31980278,'DeLuxe részvény eszközalap'),(51515791,'New Europe részvény eszközalap'),(45448288,'Eldorado latin-amerikai részvény eszközalap'),(3258826,'Himalája ázsiai részvény eszközalap'),(88101469,'Global Selection eszközalap'),(8019112,'Konzervatív vegyes eszközalap'),(84862470,'Kiegyensúlyozott vegyes eszközalap'),(3223476,'Dinamikus vegyes eszközalap'),(81524352,'ÁrfolyamFix 2019 árfolyamvédett eszközalap'),(27915478,'Likviditási eszközalap'),(63128764,'Selection abszolút hozam eszközalap'),(10672959,'Navigáció 15+ vegyes eszközalap'),(21442410,'Navigáció 10+ vegyes eszközalap'),(17225767,'Navigáció 5+ vegyes eszközalap'),(53780421,'EuróKötvény eszközalap'),(80231445,'EuróRészvény eszközalap'),(70726597,'EuróRészvény Plusz eszközalap'),(22277356,'Új Technológiák részvény eszközalap'),(90994319,'Ázsiai ingatlan részvény eszközalap'),(41503527,'EuroProtect80 eszközalap'),(99907552,'Amazonas latin-amerikai részvény eszközalap'),(5431937,'Olympic részvény eszközalap'),(84911003,'New Tigers ázsiai részvény eszközalap'),(70879440,'Nova vegyes eszközalap'),(51559483,'Top Trend t?kevédett eszközalap');
/*!40000 ALTER TABLE `selector` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08  7:39:07
