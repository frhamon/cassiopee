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
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cve`
--

LOCK TABLES `cve` WRITE;
/*!40000 ALTER TABLE `cve` DISABLE KEYS */;
INSERT INTO `cve` VALUES (393,'2018-01-01','The device has predictable TCP initial sequence numbers that allow attackers to hijack TCP connections carrying unsecured communications.',422,405,'CVE-2018-7838','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7838'),(394,'2019-01-01','An out-of-bounds read vulnerability has been identified, which may crash the system.',423,406,'CVE-2019-10975','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10975'),(395,'2019-01-01','The application searches for resources by means of an untrusted search path that could execute a malicious .dll file not under the application\'s direct control and outside the intended directories.',424,407,'CVE-2019-10971','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10971'),(396,'2019-05-14','If affected installations do not have “Encrypted Communication” configured, an unauthenticated attacker with network access may be able to execute arbitrary code.',425,408,'CVE-2019-10922','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10922'),(397,'2019-05-14','The vulnerability could allow an attacker to execute arbitrary code if the attacker tricks a legitimate user into opening a manipulated project. In order to exploit the vulnerability, a valid user must open a manipulated project file.',426,409,'CVE-2019-10924','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10924'),(398,'2019-05-14','Attackers with access to Port 10005/TCP could perform device reconfigurations and obtain project files from the devices.',427,410,'CVE-2019-10919','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10919'),(399,'2019-05-14','Project data stored on the device, which is accessible via Port 10005/TCP, can be decrypted due to a hardcoded encryption key.',428,411,'CVE-2019-10920','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10920'),(400,'2019-05-14','Unencrypted storage of passwords in the project could allow an attacker with access to Port 10005/TCP to obtain passwords of the device.',428,412,'CVE-2019-10921','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10921'),(401,'2019-05-14','Successful exploitation requires no privileges and no user interaction. An attacker with network access to the device could use the vulnerability to compromise availability of the affected system.',430,413,'CVE-2019-6578','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6578'),(402,'2019-05-14','An improperly configured parameter read/write execution via fieldbus network may cause the controller to restart. An attacker with access to the fieldbus network could cause a denial-of-service condition by sending specially crafted packets.The vulnerability could be exploited by an attacker with network access to the device. Successful exploitation requires no privileges and no user interaction. An attacker could use the vulnerability to compromise the availability of the affected system.',430,414,'CVE-2019-6574','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6574'),(403,'2019-05-10','An unauthenticated user with access to the web interface can execute arbitrary system commands within the underlying operating system, which may allow the attacker to copy files, read configuration, write files, delete files, or reboot the device.',425,415,'CVE-2018-7084','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7084'),(404,'2019-05-10','An unauthenticated attacker can access core dumps of previously crashed processes through the web interface of the device, which may allow disclosure of sensitive information.',428,416,'CVE-2018-7083','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7083'),(405,'2018-01-01','3.2.3    INFORMATION EXPOSURE CWE-200An unauthenticated user may retrieve recently cached configuration commands by sending a crafted URL to the web interface of an affected device, which may allow disclosure of sensitive information.',428,417,'CVE-2018-16417','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16417'),(406,'2019-05-10','An authenticated administrative user can execute arbitrary commands on the underlying operating system.',435,418,'CVE-2018-7082','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7082'),(407,'2019-05-10','If an attacker can trick an administrator into clicking a link, they could then take administrative actions on the device or expose a session cookie for an administrative session.',436,419,'CVE-2018-7064','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7064'),(408,'2019-05-14','An attacker with network access to the project file could run arbitrary system commands with the privileges of the local database server. This may impact the confidentiality, integrity, and availability of the affected system.',437,420,'CVE-2019-10916','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10916'),(409,'2019-05-14','An attacker with local access to the project file could cause a denial-of-service condition on the affected product as the project file is loaded. Successful exploitation could compromise availability of the affected system.',423,421,'CVE-2019-10917','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10917'),(410,'2019-05-14','An authenticated attacker with network access to the DCOM interface could execute arbitrary commands with SYSTEM privileges. Successful exploitation could compromise confidentiality, integrity, and availability of the affected system.',439,422,'CVE-2019-10918','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10918'),(411,'2019-05-14','The affected devices offer SNMP read/write capabilities with a hardcoded community string, which may allow an attacker to read/write variables over SNMP. This could compromise the confidentiality and integrity of the affected system.',440,423,'CVE-2019-6572','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6572'),(412,'2019-05-14','An attacker with network access could potentially obtain a TLS session key and use it to decrypt TLS traffic. This could impact the confidentiality of communications between the device and a legitimate user.',441,424,'CVE-2019-6576','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6576'),(413,'2019-05-14','The integrated web server could allow a cross-site scripting (XSS) attack if an attacker is able to modify certain device configuration settings via SNMP. This could impact confidentiality and integrity of the affected system.',442,425,'CVE-2019-6577','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6577'),(414,'2017-01-01','The application utilizes hard coded username and password credentials for application login.',425,426,'CVE-2017-14728','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14728'),(415,'2017-01-01','The application web interface does not properly neutralize user-controllable input, which could allow cross-site scripting.',444,427,'CVE-2017-14850','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14850'),(416,'2017-01-01','The application does not properly sanitize external input, which may allow an attacker to access the product by specially crafted input.',427,428,'CVE-2017-14851','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14851'),(417,'2017-01-01','The application transmits information in plain text, including credentials, which could allow an attacker with access to transmitted data to obtain credentials and bypass authentication.',446,429,'CVE-2017-14852','https://nvd.nist.gov/vuln/detail/CVE-2017-14852'),(418,'2017-01-01','The application does not properly restrict syntax from external input, which could allow unauthenticated users to execute specially crafted code on the target system.',447,430,'CVE-2017-14853','https://nvd.nist.gov/vuln/detail/CVE-2017-14853'),(419,'2017-01-01','The application utilizes a function that accepts user input. This input is not properly validated, which could allow an attacker to execute arbitrary code.',448,431,'CVE-2017-14854','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14854'),(420,'2019-05-09','A non-administrative user may place malicious files within the installer file directory, which may allow an attacker to gain administrative privileges on a system during installation or upgrade.',426,432,'CVE-2019-6564','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6564'),(421,'2019-05-09','An attacker may place malicious files within the working directory of the program, which may allow an attacker to manipulate widgets and UI elements.',426,433,'CVE-2019-6546','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6546'),(422,'2019-05-09','Two backdoor accounts with hardcoded credentials exist, which may allow control over the database. This service is inaccessible to attackers if Windows default firewall settings are used by the end user.',451,434,'CVE-2019-6548','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6548'),(423,'2019-05-09','A service running with system privileges may allow an unprivileged user to perform certain administrative actions, which may allow the execution of scheduled scripts with system administrator privileges. This service is inaccessible to attackers if Windows default firewall settings are used by the end user.',452,435,'CVE-2019-6544','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6544'),(424,'2019-05-09','A non-administrative user may replace the uninstaller with a malicious version, which could allow an attacker to gain administrator privileges to the system.',424,436,'CVE-2019-6566','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6566'),(425,'2019-05-06','A specially crafted authenticated HTTP request can inject arbitrary commands, resulting in remote code execution.',437,437,'CVE-2018-4061','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4061'),(426,'2019-05-06','Activating SNMPD outside of the WebUI can cause the activation of the hard-coded credentials, resulting in the exposure of a privileged user. An attacker can activate SNMPD without any configuration changes to trigger this vulnerability.',455,438,'CVE-2018-4062','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4062'),(427,'2019-05-06','A specially crafted authenticated HTTP request can upload a file, resulting in an executable, routable code upload to the web server.',437,439,'CVE-2018-4063','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4063'),(428,'2019-05-06','A specially crafted HTTP ping request can cause reflected JavaScript to be executed and run on the user’s browser. An attacker can exploit this by convincing a user to click a link or embedded URL that redirects to the reflected cross-site scripting vulnerability.',444,440,'CVE-2018-4065','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4065'),(429,'2019-05-06','A specially crafted HTTP request can cause an authenticated user to perform privileged requests unknowingly, resulting in unauthenticated requests through an authenticated user. Triggering this vulnerability may allow an attacker access to authenticated pages via an authenticated user.',458,441,'CVE-2018-4066','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4066'),(430,'2019-05-06','A specially crafted authenticated HTTP request can cause an information leak, resulting in the disclosure of internal file paths.',459,442,'CVE-2018-4067','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4067'),(431,'2019-05-06','The ACEManager authentication functionality is delivered in plaintext XML to the web server. An attacker can listen to network traffic upstream from the device, which may allow access to credentials.',441,443,'CVE-2018-4069','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4069'),(432,'2019-05-01','The software incorrectly neutralizes user-controllable input before it is placed in output that is used as a web page that is served to other users.',461,444,'CVE-2019-6562','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6562'),(433,'2018-01-01','The device has predictable TCP initial sequence numbers that allow attackers to hijack TCP connections carrying unsecured communications.',422,445,'CVE-2018-7838','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7838'),(434,'2018-01-01','The device has predictable TCP initial sequence numbers that allow attackers to hijack TCP connections carrying unsecured communications.',422,446,'CVE-2018-7838','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7838'),(435,'2018-01-01','The device has predictable TCP initial sequence numbers that allow attackers to hijack TCP connections carrying unsecured communications.',422,447,'CVE-2018-7838','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7838'),(436,'2018-01-01','The device has predictable TCP initial sequence numbers that allow attackers to hijack TCP connections carrying unsecured communications.',422,448,'CVE-2018-7838','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7838');
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
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvss`
--

LOCK TABLES `cvss` WRITE;
/*!40000 ALTER TABLE `cvss` DISABLE KEYS */;
INSERT INTO `cvss` VALUES (422,'A','L','N','N','U','L','L','N',5.4),(423,'L','L','N','R','U','N','N','L',3.3),(424,'L','L','L','R','U','H','H','H',7.3),(425,'N','L','N','N','U','H','H','H',9.8),(426,'L','L','N','R','U','H','H','H',7.8),(427,'N','L','N','N','U','H','H','L',9.4),(428,'N','L','N','N','U','H','N','N',7.5),(430,'N','L','N','N','U','N','N','H',7.5),(435,'N','L','H','N','U','H','H','H',7.2),(436,'N','H','N','R','U','H','L','L',6.4),(437,'N','L','H','N','C','H','H','H',9.1),(439,'N','L','L','N','U','H','H','H',8.8),(440,'N','L','N','N','U','L','L','N',6.5),(441,'N','H','N','N','U','H','N','N',5.9),(442,'N','L','L','R','C','L','L','N',5.4),(444,'N','L','N','R','C','L','L','N',6.1),(446,'N','L','N','N','U','H','L','L',8.6),(447,'N','L','N','N','U','L','H','L',8.6),(448,'N','L','N','N','U','N','H',')',9.1),(451,'N','H','N','N','U','H','H','H',8.1),(452,'N','H','N','N','U','L','L','L',5.6),(455,'N','H','H','N','U','H','L','H',6.2),(458,'N','H','N','R','U','N','H','H',6.8),(459,'N','L','H','N','C','L','N','N',4.1),(461,'A','L','L','R','U','L','L','N',4.1);
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
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cwe_cwesfp2cluster` (`cweSFP2Cluster`),
  CONSTRAINT `fk_cwe_cwesfp2cluster` FOREIGN KEY (`cweSFP2Cluster`) REFERENCES `sfp2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwe`
--

LOCK TABLES `cwe` WRITE;
/*!40000 ALTER TABLE `cwe` DISABLE KEYS */;
INSERT INTO `cwe` VALUES (405,'https://cwe.mitre.org/data/definitions/330.html','Class','Simple',411,'CWE-330'),(406,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',412,'CWE-125'),(407,'https://cwe.mitre.org/data/definitions/426.html','Base','Simple',411,'CWE-426'),(408,'https://cwe.mitre.org/data/definitions/306.html','Variant','Simple',414,'CWE-306'),(409,'https://cwe.mitre.org/data/definitions/502.html','Variant','Simple',415,'CWE-502'),(410,'https://cwe.mitre.org/data/definitions/306.html','Variant','Simple',414,'CWE-306'),(411,'https://cwe.mitre.org/data/definitions/231.html','Variant','Simple',417,'CWE-231'),(412,'https://cwe.mitre.org/data/definitions/256.html','Variant','Simple',418,'CWE-256'),(413,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',419,'CWE-400'),(414,'https://cwe.mitre.org/data/definitions/20.html','Class','Simple',415,'CWE-20'),(415,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',421,'CWE-77'),(416,'https://cwe.mitre.org/data/definitions/200.html','Class','Simple',418,'CWE-200'),(417,'https://cwe.mitre.org/data/definitions/200.html','Class','Simple',418,'CWE-200'),(418,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',421,'CWE-77'),(419,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',421,'CWE-79'),(420,'https://cwe.mitre.org/data/definitions/89.html','Base','Simple',421,'CWE-89'),(421,'https://cwe.mitre.org/data/definitions/248.html','Base','Simple',427,'CWE-248'),(422,'https://cwe.mitre.org/data/definitions/749.html','Base','Simple',428,'CWE-749'),(423,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',411,'CWE-798'),(424,'https://cwe.mitre.org/data/definitions/522.html','Base','Simple',418,'CWE-522'),(425,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',421,'CWE-79'),(426,'https://cwe.mitre.org/data/definitions/798','Base','Simple',411,'CWE-798'),(427,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',421,'CWE-79'),(428,'https://cwe.mitre.org/data/definitions/89.html','Base','Simple',421,'CWE-89'),(429,'https://cwe.mitre.org/data/definitions/311.html','Base','Simple',418,'CWE-311'),(430,'https://cwe.mitre.org/data/definitions/94.html','Class','Simple',436,'CWE-94'),(431,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',412,'CWE-121'),(432,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',436,'CWE-427'),(433,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',436,'CWE-427'),(434,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',411,'CWE-798'),(435,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',441,'CWE-284'),(436,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',441,'CWE-284'),(437,'https://cwe.mitre.org/data/definitions/78.html','Base','Simple',421,'CWE-78'),(438,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',411,'CWE-798'),(439,'https://cwe.mitre.org/data/definitions/434.html','Base','Simple',411,'CWE-434'),(440,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',421,'CWE-79'),(441,'https://cwe.mitre.org/data/definitions/352.html','Compound','Composite',411,'CWE-352'),(442,'https://cwe.mitre.org/data/definitions/200.html','Class','Simple',418,'CWE-200'),(443,'https://cwe.mitre.org/data/definitions/311.html','Base','Simple',418,'CWE-311'),(444,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',421,'CWE-79'),(445,'https://cwe.mitre.org/data/definitions/330.html','Class','Simple',411,'CWE-330'),(446,'https://cwe.mitre.org/data/definitions/330.html','Class','Simple',411,'CWE-330'),(447,'https://cwe.mitre.org/data/definitions/330.html','Class','Simple',411,'CWE-330'),(448,'https://cwe.mitre.org/data/definitions/330.html','Class','Simple',411,'CWE-330');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert`
--

LOCK TABLES `icscert` WRITE;
/*!40000 ALTER TABLE `icscert` DISABLE KEYS */;
INSERT INTO `icscert` VALUES (91,'2019-05-16',29,'ICSA-19-136-01'),(92,'2019-05-16',29,'ICSA-19-136-02'),(93,'2019-05-14',29,'ICSA-19-134-01'),(94,'2019-05-14',29,'ICSA-19-134-02'),(95,'2019-05-14',29,'ICSA-19-134-03'),(96,'2019-05-14',29,'ICSA-19-134-04'),(97,'2019-05-14',29,'ICSA-19-134-05'),(98,'2019-05-14',29,'ICSA-19-134-06'),(99,'2019-05-14',29,'ICSA-19-134-07'),(100,'2019-05-14',29,'ICSA-19-134-08'),(101,'2019-05-14',29,'ICSA-19-134-09'),(102,'2019-05-02',29,'ICSA-19-122-01'),(103,'2019-05-02',29,'ICSA-19-122-02'),(104,'2019-05-02',29,'ICSA-19-122-03'),(105,'2019-04-30',29,'ICSMA-19-120-01'),(106,'2019-05-16',29,'ICSA-19-136-01'),(107,'2019-05-16',29,'ICSA-19-136-01'),(108,'2019-05-16',29,'ICSA-19-136-01'),(109,'2019-05-16',29,'ICSA-19-136-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert_cve`
--

LOCK TABLES `icscert_cve` WRITE;
/*!40000 ALTER TABLE `icscert_cve` DISABLE KEYS */;
INSERT INTO `icscert_cve` VALUES (235,91,393),(236,92,394),(237,93,395),(238,94,396),(239,95,397),(240,96,398),(241,96,399),(242,96,400),(243,97,401),(244,98,402),(245,99,403),(246,99,404),(247,99,405),(248,99,406),(249,99,407),(250,100,408),(251,100,409),(252,100,410),(253,101,411),(254,101,412),(255,101,413),(256,102,414),(257,102,415),(258,102,416),(259,102,417),(260,102,418),(261,102,419),(262,103,420),(263,103,421),(264,103,422),(265,103,423),(266,103,424),(267,104,425),(268,104,426),(269,104,427),(270,104,428),(271,104,429),(272,104,430),(273,104,431),(274,105,432);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert_product`
--

LOCK TABLES `icscert_product` WRITE;
/*!40000 ALTER TABLE `icscert_product` DISABLE KEYS */;
INSERT INTO `icscert_product` VALUES (56,91,107),(57,92,108),(58,93,109),(59,94,110),(60,95,111),(61,96,112),(62,97,113),(63,98,114),(64,99,115),(65,100,116),(66,101,117),(67,102,118),(68,103,119),(69,104,120),(70,105,121);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patch`
--

LOCK TABLES `patch` WRITE;
/*!40000 ALTER TABLE `patch` DISABLE KEYS */;
INSERT INTO `patch` VALUES (29,'Default Patch Name'),(1,'nom de patch de remplacement');
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
  `deviceYN` tinyint(4) DEFAULT NULL,
  `deviceType` smallint(5) unsigned NOT NULL,
  `deviceComment` text DEFAULT NULL,
  `vendor` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_deviceType` (`deviceType`),
  KEY `fk_product_vendor` (`vendor`),
  CONSTRAINT `fk_product_deviceType` FOREIGN KEY (`deviceType`) REFERENCES `devicetype` (`id`),
  CONSTRAINT `fk_product_vendor` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (107,'Modicon M580, Modicon M340, Modicon Premium, and Modicon Quantum',0,1,'Device Comment',246),(108,'Alpha7 PC Loader',0,1,'Device Comment',247),(109,'Network Configurator for DeviceNet ',0,1,'Device Comment',248),(110,'SIMATIC WinCC and SIMATIC PCS 7',0,1,'Device Comment',249),(111,'LOGO! Soft Comfort',0,1,'Device Comment',249),(112,'LOGO!8 BM',0,1,'Device Comment',249),(113,'SINAMICS PERFECT HARMONY GH180 Drives NXG I and NXG II',0,1,'Device Comment',249),(114,'SINAMICS PERFECT HARMONY GH180 Fieldbus Network',0,1,'Device Comment',249),(115,'SCALANCE W1750D',0,1,'Device Comment',249),(116,'SIMATIC PCS 7, WinCC Runtime Professional, WinCC (TIA Portal)',0,1,'Device Comment',249),(117,'SIMATIC WinCC Runtime Advanced, WinCC Runtime Professional, WinCC (TIA Portal); HMI Panels',0,1,'Device Comment',249),(118,'SiteOmat',0,1,'Device Comment',257),(119,'Communicator',0,1,'Device Comment',258),(120,'AirLink ALEOS',0,1,'Device Comment',259),(121,'Tasy EMR',0,1,'Device Comment',260),(122,'Modicon M580, Modicon M340, Modicon Premium, and Modicon Quantum',0,1,'Device Comment',246),(123,'Modicon M580, Modicon M340, Modicon Premium, and Modicon Quantum',0,1,'Device Comment',246),(124,'Modicon M580, Modicon M340, Modicon Premium, and Modicon Quantum',0,1,'Device Comment',246),(125,'Modicon M580, Modicon M340, Modicon Premium, and Modicon Quantum',0,1,'Device Comment',246);
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
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_countries`
--

LOCK TABLES `product_countries` WRITE;
/*!40000 ALTER TABLE `product_countries` DISABLE KEYS */;
INSERT INTO `product_countries` VALUES (399,107,247),(400,108,247),(401,109,247),(402,110,247),(403,111,247),(404,112,247),(405,113,247),(406,114,247),(407,115,247),(408,116,247),(409,117,247),(410,118,247),(411,119,247),(412,120,247),(413,121,30),(414,121,142);
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sector`
--

LOCK TABLES `product_sector` WRITE;
/*!40000 ALTER TABLE `product_sector` DISABLE KEYS */;
INSERT INTO `product_sector` VALUES (154,107,282),(155,108,283),(156,109,283),(157,110,285),(158,110,286),(159,110,287),(160,110,288),(161,111,289),(162,111,290),(163,112,289),(164,112,290),(165,113,285),(166,113,286),(167,113,287),(170,113,288),(169,113,290),(168,113,296),(171,114,285),(172,114,286),(173,114,287),(176,114,288),(175,114,290),(174,114,296),(177,115,285),(178,115,286),(179,115,287),(181,115,290),(180,115,296),(182,115,310),(184,116,283),(183,116,285),(185,116,286),(186,116,287),(187,116,288),(189,117,283),(188,117,285),(190,117,286),(191,117,287),(192,117,288),(194,118,286),(193,118,289),(195,118,290),(196,119,283),(197,119,286),(201,120,286),(204,120,288),(198,120,289),(203,120,290),(199,120,327),(200,120,328),(202,120,330),(205,121,296);
/*!40000 ALTER TABLE `product_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `products_by_sector`
--

DROP TABLE IF EXISTS `products_by_sector`;
/*!50001 DROP VIEW IF EXISTS `products_by_sector`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `products_by_sector` (
  `pname` tinyint NOT NULL,
  `sname` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (310,'and Water and Wastewater Systems'),(285,'Chemical'),(289,'Commercial Facilities'),(327,'Communications'),(283,'Critical Manufacturing'),(328,'Emergency Services'),(286,'Energy'),(287,'Food and Agriculture'),(330,'Government Facilities'),(296,'Healthcare and Public Health'),(282,'Multiple Sectors'),(290,'Transportation Systems'),(288,'Water and Wastewater Systems');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sector_instances`
--

DROP TABLE IF EXISTS `sector_instances`;
/*!50001 DROP VIEW IF EXISTS `sector_instances`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sector_instances` (
  `sname` tinyint NOT NULL,
  `quantity` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfp1`
--

LOCK TABLES `sfp1` WRITE;
/*!40000 ALTER TABLE `sfp1` DISABLE KEYS */;
INSERT INTO `sfp1` VALUES (447,'Access Control'),(420,'Authentication'),(433,'Exception Management'),(424,'Information Leak'),(418,'Memory Access'),(417,'None'),(434,'Other'),(425,'Resource Management'),(421,'Tainted Input');
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
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfp2`
--

LOCK TABLES `sfp2` WRITE;
/*!40000 ALTER TABLE `sfp2` DISABLE KEYS */;
INSERT INTO `sfp2` VALUES (411,'None',417),(412,'Faulty Buffer Access',418),(414,'Missing Authentication',420),(415,'Tainted Input to Variable',421),(417,'Incorrect Input Handling',421),(418,'Exposed Data',424),(419,'Unrestricted Consumption',425),(421,'Tainted Input to Command',421),(427,'Unchecked Status Condition',433),(428,'Architecture',434),(436,'Tainted Input to Environment',421),(441,'Access Management',447);
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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (246,'France','Schneider Electric'),(247,'Japan','Fuji Electric'),(248,'Japan','Omron'),(249,'Germany','Siemens'),(257,'Israel','Orpak (acquired by Gilbarco Veeder-Root)'),(258,'United States','General Electric'),(259,'Canada','Sierra Wireless'),(260,'Netherlands','Philips');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `products_by_sector`
--

/*!50001 DROP TABLE IF EXISTS `products_by_sector`*/;
/*!50001 DROP VIEW IF EXISTS `products_by_sector`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_by_sector` AS select `product`.`name` AS `pname`,`sector`.`name` AS `sname` from ((`product` join `sector`) join `product_sector`) where `product`.`id` = `product_sector`.`id_product` and `product_sector`.`id_sector` = `sector`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sector_instances`
--

/*!50001 DROP TABLE IF EXISTS `sector_instances`*/;
/*!50001 DROP VIEW IF EXISTS `sector_instances`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sector_instances` AS select `products_by_sector`.`sname` AS `sname`,count(0) AS `quantity` from `products_by_sector` group by `products_by_sector`.`sname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-20  0:18:47
