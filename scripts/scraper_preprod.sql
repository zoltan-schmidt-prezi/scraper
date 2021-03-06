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
-- Current Database: `scraper_preprod`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `scraper_preprod` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scraper_preprod`;

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
  `rate` float DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_exchange`
--

LOCK TABLES `main_exchange` WRITE;
/*!40000 ALTER TABLE `main_exchange` DISABLE KEYS */;
INSERT INTO `main_exchange` VALUES (62411556,'2018-03-30','2018-03-27',1.00083,282067125),(45707119,'2018-03-30','2018-03-27',1.0568,575796732),(52767911,'2018-03-30','2018-03-27',1.05439,571906704),(59236577,'2018-03-30','2018-03-27',0.96855,85582997),(57329316,'2018-03-30','2018-03-27',1.04726,304989138),(97846771,'2018-03-30','2018-03-27',1.05377,378490701),(4613472,'2018-03-30','2018-03-27',1.04884,230639802),(42922169,'2018-03-30','2018-03-27',1.10634,344491749),(44187970,'2018-03-30','2018-03-27',1.10034,68907515),(90741645,'2018-03-30','2018-03-27',0.9826,35415673),(55486592,'2018-03-30','2018-03-27',0.99473,57674323),(15101756,'2018-03-30','2018-03-27',3.24893,13235472143),(22444051,'2018-03-30','2018-03-27',3.66282,5870667485),(19356297,'2018-03-30','2018-03-27',3.98362,3865897007),(92702543,'2018-03-30','2018-03-27',0.82454,3002396908),(65532104,'2018-03-30','2018-03-27',4.16346,4788163065),(31980278,'2018-03-30','2018-03-27',2.20641,9708989146),(51515791,'2018-03-30','2018-03-27',0.47865,844455627),(45448288,'2018-03-30','2018-03-27',0.99032,3516347382),(3258826,'2018-03-30','2018-03-27',1.33735,5000691744),(88101469,'2018-03-30','2018-03-27',1.36294,248052822),(8019112,'2018-03-30','2018-03-27',1.7541,2516898291),(84862470,'2018-03-30','2018-03-27',1.73484,3007624163),(3223476,'2018-03-30','2018-03-27',1.65791,1121697774),(81524352,'2018-03-30','2018-03-27',1.4828,8333336000),(27915478,'2018-03-30','2018-03-27',1.15333,13860451653),(63128764,'2018-03-30','2018-03-27',1.24043,24074570691),(10672959,'2018-03-30','2018-03-27',1.13006,1598316196),(21442410,'2018-03-30','2018-03-27',1.08707,1273996989),(17225767,'2018-03-30','2018-03-27',1.05311,1082109702),(53780421,'2018-03-30','2018-03-27',1.24646,8806048),(80231445,'2018-03-30','2018-03-27',1.00651,3065759),(70726597,'2018-03-30','2018-03-27',0.7634,7512060),(22277356,'2018-03-30','2018-03-27',1.8524,6380649),(90994319,'2018-03-30','2018-03-27',1.06176,2433820),(41503527,'2018-03-30','2018-03-27',1.0397,2936625),(99907552,'2018-03-30','2018-03-27',0.75717,760097),(5431937,'2018-03-30','2018-03-27',1.81917,2639419),(84911003,'2018-03-30','2018-03-27',1.27912,1308416989),(70879440,'2018-03-30','2018-03-27',1.36163,282320737),(51559483,'2018-03-30','2018-03-27',1.97381,1852616659),(62411556,'2018-04-17','2018-04-13',1.00088,307779853),(45707119,'2018-04-17','2018-04-13',1.05839,581101338),(52767911,'2018-04-17','2018-04-13',1.06053,630117072),(59236577,'2018-04-17','2018-04-13',0.96995,90502653),(57329316,'2018-04-17','2018-04-13',1.06016,335166578),(97846771,'2018-04-17','2018-04-13',1.06317,407975772),(4613472,'2018-04-17','2018-04-13',1.05468,245891476),(42922169,'2018-04-17','2018-04-13',1.12693,351004958),(44187970,'2018-04-17','2018-04-13',1.10567,73772282),(90741645,'2018-04-17','2018-04-13',1.00296,38464867),(55486592,'2018-04-17','2018-04-13',1.00105,60431836),(15101756,'2018-04-17','2018-04-13',3.25208,13178197478),(22444051,'2018-04-17','2018-04-13',3.68707,5915713034),(19356297,'2018-04-17','2018-04-13',4.03362,3924171248),(92702543,'2018-04-17','2018-04-13',0.84271,3085419793),(65532104,'2018-04-17','2018-04-13',4.23935,5054389265),(31980278,'2018-04-17','2018-04-13',2.23287,9158902798),(51515791,'2018-04-17','2018-04-13',0.45509,764848349),(45448288,'2018-04-17','2018-04-13',0.99947,3549062915),(3258826,'2018-04-17','2018-04-13',1.35057,5023253882),(88101469,'2018-04-17','2018-04-13',1.36454,248343654),(8019112,'2018-04-17','2018-04-13',1.76025,2538190747),(84862470,'2018-04-17','2018-04-13',1.74688,3051310798),(3223476,'2018-04-17','2018-04-13',1.67763,1155737927),(81524352,'2018-04-17','2018-04-13',1.4867,8355254000),(27915478,'2018-04-17','2018-04-13',1.15303,14452611831),(63128764,'2018-04-17','2018-04-13',1.24823,24217966616),(10672959,'2018-04-17','2018-04-13',1.14435,1797926935),(21442410,'2018-04-17','2018-04-13',1.09527,1326077704),(17225767,'2018-04-17','2018-04-13',1.05752,1119535066),(53780421,'2018-04-17','2018-04-13',1.24645,9505776),(80231445,'2018-04-17','2018-04-13',1.03483,3093872),(70726597,'2018-04-17','2018-04-13',0.76924,7229246),(22277356,'2018-04-17','2018-04-13',1.84921,6019263),(90994319,'2018-04-17','2018-04-13',1.07967,2436583),(41503527,'2018-04-17','2018-04-13',1.0517,2970519),(99907552,'2018-04-17','2018-04-13',0.76846,773427),(5431937,'2018-04-17','2018-04-13',1.86952,2439790),(84911003,'2018-04-17','2018-04-13',1.27034,1250842997),(70879440,'2018-04-17','2018-04-13',1.36297,284299431),(51559483,'2018-04-17','2018-04-13',1.97099,1867666063),(62411556,'2018-04-18','2018-04-13',1.00088,307779853),(45707119,'2018-04-18','2018-04-13',1.05839,581101338),(52767911,'2018-04-18','2018-04-13',1.06053,630117072),(59236577,'2018-04-18','2018-04-13',0.96995,90502653),(57329316,'2018-04-18','2018-04-13',1.06016,335166578),(97846771,'2018-04-18','2018-04-13',1.06317,407975772),(4613472,'2018-04-18','2018-04-13',1.05468,245891476),(42922169,'2018-04-18','2018-04-13',1.12693,351004958),(44187970,'2018-04-18','2018-04-13',1.10567,73772282),(90741645,'2018-04-18','2018-04-13',1.00296,38464867),(55486592,'2018-04-18','2018-04-13',1.00105,60431836),(15101756,'2018-04-18','2018-04-13',3.25208,13178197478),(22444051,'2018-04-18','2018-04-13',3.68707,5915713034),(19356297,'2018-04-18','2018-04-13',4.03362,3924171248),(92702543,'2018-04-18','2018-04-13',0.84271,3085419793),(65532104,'2018-04-18','2018-04-13',4.23935,5054389265),(31980278,'2018-04-18','2018-04-13',2.23287,9158902798),(51515791,'2018-04-18','2018-04-13',0.45509,764848349),(45448288,'2018-04-18','2018-04-13',0.99947,3549062915),(3258826,'2018-04-18','2018-04-13',1.35057,5023253882),(88101469,'2018-04-18','2018-04-13',1.36454,248343654),(8019112,'2018-04-18','2018-04-13',1.76025,2538190747),(84862470,'2018-04-18','2018-04-13',1.74688,3051310798),(3223476,'2018-04-18','2018-04-13',1.67763,1155737927),(81524352,'2018-04-18','2018-04-13',1.4867,8355254000),(27915478,'2018-04-18','2018-04-13',1.15303,14452611831),(63128764,'2018-04-18','2018-04-13',1.24823,24217966616),(10672959,'2018-04-18','2018-04-13',1.14435,1797926935),(21442410,'2018-04-18','2018-04-13',1.09527,1326077704),(17225767,'2018-04-18','2018-04-13',1.05752,1119535066),(53780421,'2018-04-18','2018-04-13',1.24645,9505776),(80231445,'2018-04-18','2018-04-13',1.03483,3093872),(70726597,'2018-04-18','2018-04-13',0.76924,7229246),(22277356,'2018-04-18','2018-04-13',1.84921,6019263),(90994319,'2018-04-18','2018-04-13',1.07967,2436583),(41503527,'2018-04-18','2018-04-13',1.0517,2970519),(99907552,'2018-04-18','2018-04-13',0.76846,773427),(5431937,'2018-04-18','2018-04-13',1.86952,2439790),(84911003,'2018-04-18','2018-04-13',1.27034,1250842997),(70879440,'2018-04-18','2018-04-13',1.36297,284299431),(51559483,'2018-04-18','2018-04-13',1.97099,1867666063);
/*!40000 ALTER TABLE `main_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `id` int(11) DEFAULT NULL,
  `buydate` date DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `costperbond` float DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selector`
--

DROP TABLE IF EXISTS `selector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selector` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `currency` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selector`
--

LOCK TABLES `selector` WRITE;
/*!40000 ALTER TABLE `selector` DISABLE KEYS */;
INSERT INTO `selector` VALUES (62411556,'Pénzpiaci 2016 eszközalap','HUF'),(45707119,'Hazai kötvény eszközalap','HUF'),(52767911,'Tallózó abszolút hozam eszközalap','HUF'),(59236577,'Világjáró kötvény eszközalap','HUF'),(57329316,'Horizont 15+ vegyes eszközalap','HUF'),(97846771,'Horizont 10+ vegyes eszközalap','HUF'),(4613472,'Horizont 5+ vegyes eszközalap','HUF'),(42922169,'Hazai részvény eszközalap','HUF'),(44187970,'Fejl?d? világ részvény eszközalap','HUF'),(90741645,'Fejlett világ részvény eszközalap','HUF'),(55486592,'Világmárkák részvény eszközalap','HUF'),(15101756,'Kötvény eszközalap','HUF'),(22444051,'Vegyes I. eszközalap','HUF'),(19356297,'Vegyes II. eszközalap','HUF'),(92702543,'Külföldi -OECD- részvény eszközalap','HUF'),(65532104,'Magyar részvény eszközalap','HUF'),(31980278,'DeLuxe részvény eszközalap','HUF'),(51515791,'New Europe részvény eszközalap','HUF'),(45448288,'Eldorado latin-amerikai részvény eszközalap','HUF'),(3258826,'Himalája ázsiai részvény eszközalap','HUF'),(88101469,'Global Selection eszközalap','HUF'),(8019112,'Konzervatív vegyes eszközalap','HUF'),(84862470,'Kiegyensúlyozott vegyes eszközalap','HUF'),(3223476,'Dinamikus vegyes eszközalap','HUF'),(81524352,'ÁrfolyamFix 2019 árfolyamvédett eszközalap','HUF'),(27915478,'Likviditási eszközalap','HUF'),(63128764,'Selection abszolút hozam eszközalap','HUF'),(10672959,'Navigáció 15+ vegyes eszközalap','HUF'),(21442410,'Navigáció 10+ vegyes eszközalap','HUF'),(17225767,'Navigáció 5+ vegyes eszközalap','HUF'),(53780421,'EuróKötvény eszközalap','EUR'),(80231445,'EuróRészvény eszközalap','EUR'),(70726597,'EuróRészvény Plusz eszközalap','EUR'),(22277356,'Új Technológiák részvény eszközalap','EUR'),(90994319,'Ázsiai ingatlan részvény eszközalap','EUR'),(41503527,'EuroProtect80 eszközalap','EUR'),(99907552,'Amazonas latin-amerikai részvény eszközalap','EUR'),(5431937,'Olympic részvény eszközalap','EUR'),(84911003,'New Tigers ázsiai részvény eszközalap','HUF'),(70879440,'Nova vegyes eszközalap','HUF'),(51559483,'Top Trend t?kevédett eszközalap','HUF');
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

-- Dump completed on 2018-04-29  9:14:37
