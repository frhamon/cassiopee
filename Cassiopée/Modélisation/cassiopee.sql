-- MySQL dump 10.16  Distrib 10.3.7-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cassiopee
-- ------------------------------------------------------
-- Server version	10.3.7-MariaDB

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_countries` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'DS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua and Barbuda'),(10,'AR','Argentina'),(11,'AM','Armenia'),(12,'AW','Aruba'),(13,'AU','Australia'),(14,'AT','Austria'),(15,'AZ','Azerbaijan'),(16,'BS','Bahamas'),(17,'BH','Bahrain'),(18,'BD','Bangladesh'),(19,'BB','Barbados'),(20,'BY','Belarus'),(21,'BE','Belgium'),(22,'BZ','Belize'),(23,'BJ','Benin'),(24,'BM','Bermuda'),(25,'BT','Bhutan'),(26,'BO','Bolivia'),(27,'BA','Bosnia and Herzegovina'),(28,'BW','Botswana'),(29,'BV','Bouvet Island'),(30,'BR','Brazil'),(31,'IO','British Indian Ocean Territory'),(32,'BN','Brunei Darussalam'),(33,'BG','Bulgaria'),(34,'BF','Burkina Faso'),(35,'BI','Burundi'),(36,'KH','Cambodia'),(37,'CM','Cameroon'),(38,'CA','Canada'),(39,'CV','Cape Verde'),(40,'KY','Cayman Islands'),(41,'CF','Central African Republic'),(42,'TD','Chad'),(43,'CL','Chile'),(44,'CN','China'),(45,'CX','Christmas Island'),(46,'CC','Cocos (Keeling) Islands'),(47,'CO','Colombia'),(48,'KM','Comoros'),(49,'CG','Congo'),(50,'CK','Cook Islands'),(51,'CR','Costa Rica'),(52,'HR','Croatia (Hrvatska)'),(53,'CU','Cuba'),(54,'CY','Cyprus'),(55,'CZ','Czech Republic'),(56,'DK','Denmark'),(57,'DJ','Djibouti'),(58,'DM','Dominica'),(59,'DO','Dominican Republic'),(60,'TP','East Timor'),(61,'EC','Ecuador'),(62,'EG','Egypt'),(63,'SV','El Salvador'),(64,'GQ','Equatorial Guinea'),(65,'ER','Eritrea'),(66,'EE','Estonia'),(67,'ET','Ethiopia'),(68,'FK','Falkland Islands (Malvinas)'),(69,'FO','Faroe Islands'),(70,'FJ','Fiji'),(71,'FI','Finland'),(72,'FR','France'),(73,'FX','France, Metropolitan'),(74,'GF','French Guiana'),(75,'PF','French Polynesia'),(76,'TF','French Southern Territories'),(77,'GA','Gabon'),(78,'GM','Gambia'),(79,'GE','Georgia'),(80,'DE','Germany'),(81,'GH','Ghana'),(82,'GI','Gibraltar'),(83,'GK','Guernsey'),(84,'GR','Greece'),(85,'GL','Greenland'),(86,'GD','Grenada'),(87,'GP','Guadeloupe'),(88,'GU','Guam'),(89,'GT','Guatemala'),(90,'GN','Guinea'),(91,'GW','Guinea-Bissau'),(92,'GY','Guyana'),(93,'HT','Haiti'),(94,'HM','Heard and Mc Donald Islands'),(95,'HN','Honduras'),(96,'HK','Hong Kong'),(97,'HU','Hungary'),(98,'IS','Iceland'),(99,'IN','India'),(100,'IM','Isle of Man'),(101,'ID','Indonesia'),(102,'IR','Iran (Islamic Republic of)'),(103,'IQ','Iraq'),(104,'IE','Ireland'),(105,'IL','Israel'),(106,'IT','Italy'),(107,'CI','Ivory Coast'),(108,'JE','Jersey'),(109,'JM','Jamaica'),(110,'JP','Japan'),(111,'JO','Jordan'),(112,'KZ','Kazakhstan'),(113,'KE','Kenya'),(114,'KI','Kiribati'),(115,'KP','Korea, Democratic People\'s Republic of'),(116,'KR','Korea, Republic of'),(117,'XK','Kosovo'),(118,'KW','Kuwait'),(119,'KG','Kyrgyzstan'),(120,'LA','Lao People\'s Democratic Republic'),(121,'LV','Latvia'),(122,'LB','Lebanon'),(123,'LS','Lesotho'),(124,'LR','Liberia'),(125,'LY','Libyan Arab Jamahiriya'),(126,'LI','Liechtenstein'),(127,'LT','Lithuania'),(128,'LU','Luxembourg'),(129,'MO','Macau'),(130,'MK','Macedonia'),(131,'MG','Madagascar'),(132,'MW','Malawi'),(133,'MY','Malaysia'),(134,'MV','Maldives'),(135,'ML','Mali'),(136,'MT','Malta'),(137,'MH','Marshall Islands'),(138,'MQ','Martinique'),(139,'MR','Mauritania'),(140,'MU','Mauritius'),(141,'TY','Mayotte'),(142,'MX','Mexico'),(143,'FM','Micronesia, Federated States of'),(144,'MD','Moldova, Republic of'),(145,'MC','Monaco'),(146,'MN','Mongolia'),(147,'ME','Montenegro'),(148,'MS','Montserrat'),(149,'MA','Morocco'),(150,'MZ','Mozambique'),(151,'MM','Myanmar'),(152,'NA','Namibia'),(153,'NR','Nauru'),(154,'NP','Nepal'),(155,'NL','Netherlands'),(156,'AN','Netherlands Antilles'),(157,'NC','New Caledonia'),(158,'NZ','New Zealand'),(159,'NI','Nicaragua'),(160,'NE','Niger'),(161,'NG','Nigeria'),(162,'NU','Niue'),(163,'NF','Norfolk Island'),(164,'MP','Northern Mariana Islands'),(165,'NO','Norway'),(166,'OM','Oman'),(167,'PK','Pakistan'),(168,'PW','Palau'),(169,'PS','Palestine'),(170,'PA','Panama'),(171,'PG','Papua New Guinea'),(172,'PY','Paraguay'),(173,'PE','Peru'),(174,'PH','Philippines'),(175,'PN','Pitcairn'),(176,'PL','Poland'),(177,'PT','Portugal'),(178,'PR','Puerto Rico'),(179,'QA','Qatar'),(180,'RE','Reunion'),(181,'RO','Romania'),(182,'RU','Russian Federation'),(183,'RW','Rwanda'),(184,'KN','Saint Kitts and Nevis'),(185,'LC','Saint Lucia'),(186,'VC','Saint Vincent and the Grenadines'),(187,'WS','Samoa'),(188,'SM','San Marino'),(189,'ST','Sao Tome and Principe'),(190,'SA','Saudi Arabia'),(191,'SN','Senegal'),(192,'RS','Serbia'),(193,'SC','Seychelles'),(194,'SL','Sierra Leone'),(195,'SG','Singapore'),(196,'SK','Slovakia'),(197,'SI','Slovenia'),(198,'SB','Solomon Islands'),(199,'SO','Somalia'),(200,'ZA','South Africa'),(201,'GS','South Georgia South Sandwich Islands'),(202,'SS','South Sudan'),(203,'ES','Spain'),(204,'LK','Sri Lanka'),(205,'SH','St. Helena'),(206,'PM','St. Pierre and Miquelon'),(207,'SD','Sudan'),(208,'SR','Suriname'),(209,'SJ','Svalbard and Jan Mayen Islands'),(210,'SZ','Swaziland'),(211,'SE','Sweden'),(212,'CH','Switzerland'),(213,'SY','Syrian Arab Republic'),(214,'TW','Taiwan'),(215,'TJ','Tajikistan'),(216,'TZ','Tanzania, United Republic of'),(217,'TH','Thailand'),(218,'TG','Togo'),(219,'TK','Tokelau'),(220,'TO','Tonga'),(221,'TT','Trinidad and Tobago'),(222,'TN','Tunisia'),(223,'TR','Turkey'),(224,'TM','Turkmenistan'),(225,'TC','Turks and Caicos Islands'),(226,'TV','Tuvalu'),(227,'UG','Uganda'),(228,'UA','Ukraine'),(229,'AE','United Arab Emirates'),(230,'GB','United Kingdom'),(231,'US','United States'),(232,'UM','United States minor outlying islands'),(233,'UY','Uruguay'),(234,'UZ','Uzbekistan'),(235,'VU','Vanuatu'),(236,'VA','Vatican City State'),(237,'VE','Venezuela'),(238,'VN','Vietnam'),(239,'VG','Virgin Islands (British)'),(240,'VI','Virgin Islands (U.S.)'),(241,'WF','Wallis and Futuna Islands'),(242,'EH','Western Sahara'),(243,'YE','Yemen'),(244,'ZR','Zaire'),(245,'ZM','Zambia'),(246,'ZW','Zimbabwe'),(247,'WW','Worldwide');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cve`
--

DROP TABLE IF EXISTS `cve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cve` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `advisoryDescription` text DEFAULT NULL,
  `cvss` smallint(5) unsigned NOT NULL,
  `cwe` smallint(5) unsigned NOT NULL,
  `name` char(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cve_cvss` (`cvss`),
  KEY `fk_cve_cwe` (`cwe`),
  CONSTRAINT `fk_cve_cvss` FOREIGN KEY (`cvss`) REFERENCES `cvss` (`id`),
  CONSTRAINT `fk_cve_cwe` FOREIGN KEY (`cwe`) REFERENCES `cwe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cve`
--

LOCK TABLES `cve` WRITE;
/*!40000 ALTER TABLE `cve` DISABLE KEYS */;
INSERT INTO `cve` VALUES (152,'2017-01-01','The application utilizes hard coded username and password credentials for application login.',178,161,'CVE-2017-14728','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14728'),(153,'2017-01-01','The application utilizes hard coded username and password credentials for application login.',178,162,'CVE-2017-14728','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14728'),(154,'2017-01-01','The application web interface does not properly neutralize user-controllable input, which could allow cross-site scripting.',180,163,'CVE-2017-14850','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14850'),(155,'2017-01-01','The application does not properly sanitize external input, which may allow an attacker to access the product by specially crafted input.',181,164,'CVE-2017-14851','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14851'),(156,'2017-01-01','The application transmits information in plain text, including credentials, which could allow an attacker with access to transmitted data to obtain credentials and bypass authentication.',182,165,'CVE-2017-14852','https://nvd.nist.gov/vuln/detail/CVE-2017-14852'),(157,'2017-01-01','The application does not properly restrict syntax from external input, which could allow unauthenticated users to execute specially crafted code on the target system.',183,166,'CVE-2017-14853','https://nvd.nist.gov/vuln/detail/CVE-2017-14853'),(158,'2017-01-01','The application utilizes a function that accepts user input. This input is not properly validated, which could allow an attacker to execute arbitrary code.',184,167,'CVE-2017-14854','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14854'),(159,'2019-01-01','A non-administrative user may place malicious files within the installer file directory, which may allow an attacker to gain administrative privileges on a system during installation or upgrade.',185,168,'CVE-2019-6564','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6564'),(160,'2019-01-01','A non-administrative user may place malicious files within the installer file directory, which may allow an attacker to gain administrative privileges on a system during installation or upgrade.',185,169,'CVE-2019-6564','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6564'),(161,'2019-01-01','An attacker may place malicious files within the working directory of the program, which may allow an attacker to manipulate widgets and UI elements.',185,170,'CVE-2019-6546','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6546'),(162,'2019-01-01','Two backdoor accounts with hardcoded credentials exist, which may allow control over the database. This service is inaccessible to attackers if Windows default firewall settings are used by the end user.',188,171,'CVE-2019-6548','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6548'),(163,'2019-01-01','A service running with system privileges may allow an unprivileged user to perform certain administrative actions, which may allow the execution of scheduled scripts with system administrator privileges. This service is inaccessible to attackers if Windows default firewall settings are used by the end user.',189,172,'CVE-2019-6544','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6544'),(164,'2019-01-01','A non-administrative user may replace the uninstaller with a malicious version, which could allow an attacker to gain administrator privileges to the system.',190,173,'CVE-2019-6566','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6566'),(165,'2018-01-01','A specially crafted authenticated HTTP request can inject arbitrary commands, resulting in remote code execution.',191,174,'CVE-2018-4061','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4061'),(166,'2018-01-01','A specially crafted authenticated HTTP request can inject arbitrary commands, resulting in remote code execution.',191,175,'CVE-2018-4061','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4061'),(167,'2018-01-01','Activating SNMPD outside of the WebUI can cause the activation of the hard-coded credentials, resulting in the exposure of a privileged user. An attacker can activate SNMPD without any configuration changes to trigger this vulnerability.',193,176,'CVE-2018-4062','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4062'),(168,'2018-01-01','A specially crafted authenticated HTTP request can upload a file, resulting in an executable, routable code upload to the web server.',191,177,'CVE-2018-4063','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4063');
/*!40000 ALTER TABLE `cve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvss`
--

DROP TABLE IF EXISTS `cvss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvss` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `AV` varchar(1) DEFAULT NULL,
  `AC` varchar(1) DEFAULT NULL,
  `PR` varchar(1) DEFAULT NULL,
  `UI` varchar(1) DEFAULT NULL,
  `S` varchar(1) DEFAULT NULL,
  `C` varchar(1) DEFAULT NULL,
  `I` varchar(1) DEFAULT NULL,
  `A` varchar(1) DEFAULT NULL,
  `score` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_cvss` (`AV`,`AC`,`PR`,`UI`,`S`,`C`,`I`,`A`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvss`
--

LOCK TABLES `cvss` WRITE;
/*!40000 ALTER TABLE `cvss` DISABLE KEYS */;
INSERT INTO `cvss` VALUES (178,'N','L','N','N','U','H','H','H',9.8),(180,'N','L','N','R','C','L','L','N',6.1),(181,'N','L','N','N','U','H','H','L',9.4),(182,'N','L','N','N','U','H','L','L',8.6),(183,'N','L','N','N','U','L','H','L',8.6),(184,'N','L','N','N','U','N','H',')',9.1),(185,'L','L','N','R','U','H','H','H',7.8),(188,'N','H','N','N','U','H','H','H',8.1),(189,'N','H','N','N','U','L','L','L',5.6),(190,'L','L','L','R','U','H','H','H',7.3),(191,'N','L','H','N','C','H','H','H',9.1),(193,'N','H','H','N','U','H','L','H',6.2);
/*!40000 ALTER TABLE `cvss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwe`
--

DROP TABLE IF EXISTS `cwe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwe` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cweLink` char(255) DEFAULT NULL,
  `cweAbstraction` text DEFAULT NULL,
  `cweStructure` text DEFAULT NULL,
  `cweSFP2Cluster` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cwe_cwesfp2cluster` (`cweSFP2Cluster`),
  CONSTRAINT `fk_cwe_cwesfp2cluster` FOREIGN KEY (`cweSFP2Cluster`) REFERENCES `sfp2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwe`
--

LOCK TABLES `cwe` WRITE;
/*!40000 ALTER TABLE `cwe` DISABLE KEYS */;
INSERT INTO `cwe` VALUES (161,'https://cwe.mitre.org/data/definitions/798','Base','Simple',167),(162,'https://cwe.mitre.org/data/definitions/798','Base','Simple',167),(163,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',169),(164,'https://cwe.mitre.org/data/definitions/89.html','Base','Simple',169),(165,'https://cwe.mitre.org/data/definitions/311.html','Base','Simple',171),(166,'https://cwe.mitre.org/data/definitions/94.html','Class','Simple',172),(167,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',173),(168,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',172),(169,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',172),(170,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',172),(171,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',167),(172,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',178),(173,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',178),(174,'https://cwe.mitre.org/data/definitions/78.html','Base','Simple',169),(175,'https://cwe.mitre.org/data/definitions/78.html','Base','Simple',169),(176,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',167),(177,'https://cwe.mitre.org/data/definitions/434.html','Base','Simple',167),(178,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',169);
/*!40000 ALTER TABLE `cwe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetype`
--

DROP TABLE IF EXISTS `devicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicetype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_devicetype` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicetype`
--

LOCK TABLES `devicetype` WRITE;
/*!40000 ALTER TABLE `devicetype` DISABLE KEYS */;
INSERT INTO `devicetype` VALUES (1,'type');
/*!40000 ALTER TABLE `devicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icscert`
--

DROP TABLE IF EXISTS `icscert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icscert` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `patch` smallint(5) unsigned NOT NULL,
  `name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_icscert_patch` (`patch`),
  CONSTRAINT `fk_icscert_patch` FOREIGN KEY (`patch`) REFERENCES `patch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert`
--

LOCK TABLES `icscert` WRITE;
/*!40000 ALTER TABLE `icscert` DISABLE KEYS */;
INSERT INTO `icscert` VALUES (24,'2019-05-02',1,'ICSA-19-122-01'),(25,'2019-05-02',1,'ICSA-19-122-02'),(26,'2019-05-02',1,'ICSA-19-122-03');
/*!40000 ALTER TABLE `icscert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icscert_cve`
--

DROP TABLE IF EXISTS `icscert_cve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icscert_cve` (
  `id_icscert_cve` int(11) NOT NULL AUTO_INCREMENT,
  `id_icscert` smallint(5) unsigned NOT NULL,
  `id_cve` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_icscert_cve`),
  UNIQUE KEY `UQ_icscert_cve__id_icscert__id_cve` (`id_icscert`,`id_cve`),
  KEY `FK_icscert_cve__id_cve` (`id_cve`),
  CONSTRAINT `FK_icscert_cve__id_cve` FOREIGN KEY (`id_cve`) REFERENCES `cve` (`id`),
  CONSTRAINT `FK_icscert_cve__id_icscert` FOREIGN KEY (`id_icscert`) REFERENCES `icscert` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert_cve`
--

LOCK TABLES `icscert_cve` WRITE;
/*!40000 ALTER TABLE `icscert_cve` DISABLE KEYS */;
INSERT INTO `icscert_cve` VALUES (8,24,152),(9,25,159),(10,26,165);
/*!40000 ALTER TABLE `icscert_cve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icscert_product`
--

DROP TABLE IF EXISTS `icscert_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icscert_product` (
  `id_icscert_product` int(11) NOT NULL AUTO_INCREMENT,
  `id_icscert` smallint(5) unsigned NOT NULL,
  `id_product` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_icscert_product`),
  UNIQUE KEY `UQ_icscert_product__id_icscert__id_product` (`id_icscert`,`id_product`),
  KEY `FK_icscert_product__id_product` (`id_product`),
  CONSTRAINT `FK_icscert_product__id_icscert` FOREIGN KEY (`id_icscert`) REFERENCES `icscert` (`id`),
  CONSTRAINT `FK_icscert_product__id_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert_product`
--

LOCK TABLES `icscert_product` WRITE;
/*!40000 ALTER TABLE `icscert_product` DISABLE KEYS */;
INSERT INTO `icscert_product` VALUES (7,24,44),(8,25,45),(9,26,46);
/*!40000 ALTER TABLE `icscert_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patch`
--

DROP TABLE IF EXISTS `patch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patch` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `patch` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_patch` (`patch`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patch`
--

LOCK TABLES `patch` WRITE;
/*!40000 ALTER TABLE `patch` DISABLE KEYS */;
INSERT INTO `patch` VALUES (1,'nom de patch de remplacement');
/*!40000 ALTER TABLE `patch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `sector` smallint(5) unsigned NOT NULL,
  `deviceYN` tinyint(4) DEFAULT NULL,
  `deviceType` smallint(5) unsigned NOT NULL,
  `deviceComment` text DEFAULT NULL,
  `vendor` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_sector` (`sector`),
  KEY `fk_product_deviceType` (`deviceType`),
  KEY `fk_product_vendor` (`vendor`),
  CONSTRAINT `fk_product_deviceType` FOREIGN KEY (`deviceType`) REFERENCES `devicetype` (`id`),
  CONSTRAINT `fk_product_vendor` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (44,'SiteOmat',122,0,1,'Device Comment',183),(45,'Communicator',126,0,1,'Device Comment',184),(46,'AirLink ALEOS',122,0,1,'Device Comment',185);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_countries`
--

DROP TABLE IF EXISTS `product_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_countries` (
  `id_product_countries` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` smallint(5) unsigned NOT NULL,
  `id_countries` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_product_countries`),
  UNIQUE KEY `UQ_product_countries__id_product__id_countries` (`id_product`,`id_countries`),
  KEY `FK_product_countries__id_countries` (`id_countries`),
  CONSTRAINT `FK_product_countries__id_countries` FOREIGN KEY (`id_countries`) REFERENCES `countries` (`id`),
  CONSTRAINT `FK_product_countries__id_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_countries`
--

LOCK TABLES `product_countries` WRITE;
/*!40000 ALTER TABLE `product_countries` DISABLE KEYS */;
INSERT INTO `product_countries` VALUES (7,44,247),(8,45,247),(9,46,247);
/*!40000 ALTER TABLE `product_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sector`
--

DROP TABLE IF EXISTS `product_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sector` (
  `id_product_sector` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` smallint(5) unsigned NOT NULL,
  `id_sector` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_product_sector`),
  UNIQUE KEY `UQ_product_sector__id_product__id_sector` (`id_product`,`id_sector`),
  KEY `fk_product_sector__id_sector` (`id_sector`),
  CONSTRAINT `fk_product_sector__id_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_product_sector__id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sector`
--

LOCK TABLES `product_sector` WRITE;
/*!40000 ALTER TABLE `product_sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_sector` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (122,'Commercial Facilities'),(126,'Critical Manufacturing'),(124,'Energy'),(125,'Transportation Systems');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sfp1`
--

DROP TABLE IF EXISTS `sfp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sfp1` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_sfp1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfp1`
--

LOCK TABLES `sfp1` WRITE;
/*!40000 ALTER TABLE `sfp1` DISABLE KEYS */;
INSERT INTO `sfp1` VALUES (184,'Access Control'),(177,'Information Leak'),(179,'Memory Access'),(173,'None'),(175,'Tainted Input');
/*!40000 ALTER TABLE `sfp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sfp2`
--

DROP TABLE IF EXISTS `sfp2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sfp2` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `sfp1` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_sfp2` (`name`),
  KEY `fk_sfp2_sfp1` (`sfp1`),
  CONSTRAINT `fk_sfp2_sfp1` FOREIGN KEY (`sfp1`) REFERENCES `sfp1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfp2`
--

LOCK TABLES `sfp2` WRITE;
/*!40000 ALTER TABLE `sfp2` DISABLE KEYS */;
INSERT INTO `sfp2` VALUES (167,'None',173),(169,'Tainted Input to Command',175),(171,'Exposed Data',177),(172,'Tainted Input to Environment',175),(173,'Faulty Buffer Access',179),(178,'Access Management',184);
/*!40000 ALTER TABLE `sfp2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `location` char(255) DEFAULT NULL,
  `name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_vendor` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (183,'Israel','Orpak (acquired by Gilbarco Veeder-Root)'),(184,'United States','General Electric'),(185,'Canada','Sierra Wireless');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-06 14:59:50
