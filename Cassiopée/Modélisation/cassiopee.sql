-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: cassiopee
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
  `code` varchar(2) DEFAULT '',
  `name` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_countries` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'DS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua and Barbuda'),(10,'AR','Argentina'),(11,'AM','Armenia'),(12,'AW','Aruba'),(13,'AU','Australia'),(14,'AT','Austria'),(15,'AZ','Azerbaijan'),(16,'BS','Bahamas'),(17,'BH','Bahrain'),(18,'BD','Bangladesh'),(19,'BB','Barbados'),(20,'BY','Belarus'),(21,'BE','Belgium'),(22,'BZ','Belize'),(23,'BJ','Benin'),(24,'BM','Bermuda'),(25,'BT','Bhutan'),(26,'BO','Bolivia'),(27,'BA','Bosnia and Herzegovina'),(28,'BW','Botswana'),(29,'BV','Bouvet Island'),(30,'BR','Brazil'),(31,'IO','British Indian Ocean Territory'),(32,'BN','Brunei Darussalam'),(33,'BG','Bulgaria'),(34,'BF','Burkina Faso'),(35,'BI','Burundi'),(36,'KH','Cambodia'),(37,'CM','Cameroon'),(38,'CA','Canada'),(39,'CV','Cape Verde'),(40,'KY','Cayman Islands'),(41,'CF','Central African Republic'),(42,'TD','Chad'),(43,'CL','Chile'),(44,'CN','China'),(45,'CX','Christmas Island'),(46,'CC','Cocos (Keeling) Islands'),(47,'CO','Colombia'),(48,'KM','Comoros'),(49,'CG','Congo'),(50,'CK','Cook Islands'),(51,'CR','Costa Rica'),(52,'HR','Croatia (Hrvatska)'),(53,'CU','Cuba'),(54,'CY','Cyprus'),(55,'CZ','Czech Republic'),(56,'DK','Denmark'),(57,'DJ','Djibouti'),(58,'DM','Dominica'),(59,'DO','Dominican Republic'),(60,'TP','East Timor'),(61,'EC','Ecuador'),(62,'EG','Egypt'),(63,'SV','El Salvador'),(64,'GQ','Equatorial Guinea'),(65,'ER','Eritrea'),(66,'EE','Estonia'),(67,'ET','Ethiopia'),(68,'FK','Falkland Islands (Malvinas)'),(69,'FO','Faroe Islands'),(70,'FJ','Fiji'),(71,'FI','Finland'),(72,'FR','France'),(73,'FX','France, Metropolitan'),(74,'GF','French Guiana'),(75,'PF','French Polynesia'),(76,'TF','French Southern Territories'),(77,'GA','Gabon'),(78,'GM','Gambia'),(79,'GE','Georgia'),(80,'DE','Germany'),(81,'GH','Ghana'),(82,'GI','Gibraltar'),(83,'GK','Guernsey'),(84,'GR','Greece'),(85,'GL','Greenland'),(86,'GD','Grenada'),(87,'GP','Guadeloupe'),(88,'GU','Guam'),(89,'GT','Guatemala'),(90,'GN','Guinea'),(91,'GW','Guinea-Bissau'),(92,'GY','Guyana'),(93,'HT','Haiti'),(94,'HM','Heard and Mc Donald Islands'),(95,'HN','Honduras'),(96,'HK','Hong Kong'),(97,'HU','Hungary'),(98,'IS','Iceland'),(99,'IN','India'),(100,'IM','Isle of Man'),(101,'ID','Indonesia'),(102,'IR','Iran (Islamic Republic of)'),(103,'IQ','Iraq'),(104,'IE','Ireland'),(105,'IL','Israel'),(106,'IT','Italy'),(107,'CI','Ivory Coast'),(108,'JE','Jersey'),(109,'JM','Jamaica'),(110,'JP','Japan'),(111,'JO','Jordan'),(112,'KZ','Kazakhstan'),(113,'KE','Kenya'),(114,'KI','Kiribati'),(115,'KP','Korea, Democratic People\'s Republic of'),(116,'KR','Korea, Republic of'),(117,'XK','Kosovo'),(118,'KW','Kuwait'),(119,'KG','Kyrgyzstan'),(120,'LA','Lao People\'s Democratic Republic'),(121,'LV','Latvia'),(122,'LB','Lebanon'),(123,'LS','Lesotho'),(124,'LR','Liberia'),(125,'LY','Libyan Arab Jamahiriya'),(126,'LI','Liechtenstein'),(127,'LT','Lithuania'),(128,'LU','Luxembourg'),(129,'MO','Macau'),(130,'MK','Macedonia'),(131,'MG','Madagascar'),(132,'MW','Malawi'),(133,'MY','Malaysia'),(134,'MV','Maldives'),(135,'ML','Mali'),(136,'MT','Malta'),(137,'MH','Marshall Islands'),(138,'MQ','Martinique'),(139,'MR','Mauritania'),(140,'MU','Mauritius'),(141,'TY','Mayotte'),(142,'MX','Mexico'),(143,'FM','Micronesia, Federated States of'),(144,'MD','Moldova, Republic of'),(145,'MC','Monaco'),(146,'MN','Mongolia'),(147,'ME','Montenegro'),(148,'MS','Montserrat'),(149,'MA','Morocco'),(150,'MZ','Mozambique'),(151,'MM','Myanmar'),(152,'NA','Namibia'),(153,'NR','Nauru'),(154,'NP','Nepal'),(155,'NL','Netherlands'),(156,'AN','Netherlands Antilles'),(157,'NC','New Caledonia'),(158,'NZ','New Zealand'),(159,'NI','Nicaragua'),(160,'NE','Niger'),(161,'NG','Nigeria'),(162,'NU','Niue'),(163,'NF','Norfolk Island'),(164,'MP','Northern Mariana Islands'),(165,'NO','Norway'),(166,'OM','Oman'),(167,'PK','Pakistan'),(168,'PW','Palau'),(169,'PS','Palestine'),(170,'PA','Panama'),(171,'PG','Papua New Guinea'),(172,'PY','Paraguay'),(173,'PE','Peru'),(174,'PH','Philippines'),(175,'PN','Pitcairn'),(176,'PL','Poland'),(177,'PT','Portugal'),(178,'PR','Puerto Rico'),(179,'QA','Qatar'),(180,'RE','Reunion'),(181,'RO','Romania'),(182,'RU','Russian Federation'),(183,'RW','Rwanda'),(184,'KN','Saint Kitts and Nevis'),(185,'LC','Saint Lucia'),(186,'VC','Saint Vincent and the Grenadines'),(187,'WS','Samoa'),(188,'SM','San Marino'),(189,'ST','Sao Tome and Principe'),(190,'SA','Saudi Arabia'),(191,'SN','Senegal'),(192,'RS','Serbia'),(193,'SC','Seychelles'),(194,'SL','Sierra Leone'),(195,'SG','Singapore'),(196,'SK','Slovakia'),(197,'SI','Slovenia'),(198,'SB','Solomon Islands'),(199,'SO','Somalia'),(200,'ZA','South Africa'),(201,'GS','South Georgia South Sandwich Islands'),(202,'SS','South Sudan'),(203,'ES','Spain'),(204,'LK','Sri Lanka'),(205,'SH','St. Helena'),(206,'PM','St. Pierre and Miquelon'),(207,'SD','Sudan'),(208,'SR','Suriname'),(209,'SJ','Svalbard and Jan Mayen Islands'),(210,'SZ','Swaziland'),(211,'SE','Sweden'),(212,'CH','Switzerland'),(213,'SY','Syrian Arab Republic'),(214,'TW','Taiwan'),(215,'TJ','Tajikistan'),(216,'TZ','Tanzania, United Republic of'),(217,'TH','Thailand'),(218,'TG','Togo'),(219,'TK','Tokelau'),(220,'TO','Tonga'),(221,'TT','Trinidad and Tobago'),(222,'TN','Tunisia'),(223,'TR','Turkey'),(224,'TM','Turkmenistan'),(225,'TC','Turks and Caicos Islands'),(226,'TV','Tuvalu'),(227,'UG','Uganda'),(228,'UA','Ukraine'),(229,'AE','United Arab Emirates'),(230,'GB','United Kingdom'),(231,'US','United States'),(232,'UM','United States minor outlying islands'),(233,'UY','Uruguay'),(234,'UZ','Uzbekistan'),(235,'VU','Vanuatu'),(236,'VA','Vatican City State'),(237,'VE','Venezuela'),(238,'VN','Vietnam'),(239,'VG','Virgin Islands (British)'),(240,'VI','Virgin Islands (U.S.)'),(241,'WF','Wallis and Futuna Islands'),(242,'EH','Western Sahara'),(243,'YE','Yemen'),(244,'ZR','Zaire'),(245,'ZM','Zambia'),(246,'ZW','Zimbabwe'),(247,'WW','Worldwide'),(249,NULL,'Null'),(250,NULL,'East Asia'),(251,NULL,'and Europe'),(252,NULL,'South America'),(253,NULL,'COUNTRIES/AREAS DEPLOYED:  Worldwide');
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
  `date_creation` date DEFAULT NULL,
  `advisoryDescription` text,
  `cvss` smallint(5) unsigned NOT NULL,
  `cwe` smallint(5) unsigned NOT NULL,
  `name` char(255) DEFAULT NULL,
  `link` text,
  `date_publication` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cve_cvss` (`cvss`),
  KEY `fk_cve_cwe` (`cwe`),
  CONSTRAINT `fk_cve_cvss` FOREIGN KEY (`cvss`) REFERENCES `cvss` (`id`),
  CONSTRAINT `fk_cve_cwe` FOREIGN KEY (`cwe`) REFERENCES `cwe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cve`
--

LOCK TABLES `cve` WRITE;
/*!40000 ALTER TABLE `cve` DISABLE KEYS */;
INSERT INTO `cve` VALUES (1027,'2018-01-01','The device has predictable TCP initial sequence numbers that allow attackers to hijack TCP connections carrying unsecured communications.',1061,1044,'CVE-2018-6821','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-6821',NULL),(1028,'2019-01-01','An out-of-bounds read vulnerability has been identified, which may crash the system.',1062,1045,'CVE-2019-10975','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10975',NULL),(1029,'2019-01-01','The application searches for resources by means of an untrusted search path that could execute a malicious .dll file not under the application\'s direct control and outside the intended directories.',1063,1046,'CVE-2019-10971','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10971',NULL),(1030,'2019-01-01','If affected installations do not have “Encrypted Communication” configured, an unauthenticated attacker with network access may be able to execute arbitrary code.',1064,1047,'CVE-2019-10922','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10922','2019-05-14'),(1031,'2019-01-01','The vulnerability could allow an attacker to execute arbitrary code if the attacker tricks a legitimate user into opening a manipulated project. In order to exploit the vulnerability, a valid user must open a manipulated project file.',1065,1048,'CVE-2019-10924','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10924','2019-05-14'),(1032,'2019-01-01','Attackers with access to Port 10005/TCP could perform device reconfigurations and obtain project files from the devices.',1066,1049,'CVE-2019-10919','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10919','2019-05-14'),(1033,'2019-01-01','Project data stored on the device, which is accessible via Port 10005/TCP, can be decrypted due to a hardcoded encryption key.',1067,1050,'CVE-2019-10920','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10920','2019-05-14'),(1034,'2019-01-01','Unencrypted storage of passwords in the project could allow an attacker with access to Port 10005/TCP to obtain passwords of the device.',1067,1051,'CVE-2019-10921','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10921','2019-05-14'),(1035,'2019-01-01','Successful exploitation requires no privileges and no user interaction. An attacker with network access to the device could use the vulnerability to compromise availability of the affected system.',1069,1052,'CVE-2019-6578','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6578','2019-05-14'),(1036,'2019-01-01','An improperly configured parameter read/write execution via fieldbus network may cause the controller to restart. An attacker with access to the fieldbus network could cause a denial-of-service condition by sending specially crafted packets.The vulnerability could be exploited by an attacker with network access to the device. Successful exploitation requires no privileges and no user interaction. An attacker could use the vulnerability to compromise the availability of the affected system.',1069,1053,'CVE-2019-6574','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6574','2019-05-14'),(1037,'2018-01-01','An unauthenticated user with access to the web interface can execute arbitrary system commands within the underlying operating system, which may allow the attacker to copy files, read configuration, write files, delete files, or reboot the device.',1064,1054,'CVE-2018-7084','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7084','2019-05-10'),(1038,'2018-01-01','An unauthenticated attacker can access core dumps of previously crashed processes through the web interface of the device, which may allow disclosure of sensitive information.',1067,1055,'CVE-2018-7083','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7083','2019-05-10'),(1039,'2018-01-01','3.2.3    INFORMATION EXPOSURE CWE-200An unauthenticated user may retrieve recently cached configuration commands by sending a crafted URL to the web interface of an affected device, which may allow disclosure of sensitive information.',1067,1056,'CVE-2018-16417','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16417',NULL),(1040,'2018-01-01','An authenticated administrative user can execute arbitrary commands on the underlying operating system.',1074,1057,'CVE-2018-7082','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7082','2019-05-10'),(1041,'2018-01-01','If an attacker can trick an administrator into clicking a link, they could then take administrative actions on the device or expose a session cookie for an administrative session.',1075,1058,'CVE-2018-7064','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-7064','2019-05-10'),(1042,'2019-01-01','An attacker with network access to the project file could run arbitrary system commands with the privileges of the local database server. This may impact the confidentiality, integrity, and availability of the affected system.',1076,1059,'CVE-2019-10916','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10916','2019-05-14'),(1043,'2019-01-01','An attacker with local access to the project file could cause a denial-of-service condition on the affected product as the project file is loaded. Successful exploitation could compromise availability of the affected system.',1062,1060,'CVE-2019-10917','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10917','2019-05-14'),(1044,'2019-01-01','An authenticated attacker with network access to the DCOM interface could execute arbitrary commands with SYSTEM privileges. Successful exploitation could compromise confidentiality, integrity, and availability of the affected system.',1078,1061,'CVE-2019-10918','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10918','2019-05-14'),(1045,'2019-01-01','The affected devices offer SNMP read/write capabilities with a hardcoded community string, which may allow an attacker to read/write variables over SNMP. This could compromise the confidentiality and integrity of the affected system.',1079,1062,'CVE-2019-6572','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6572','2019-05-14'),(1046,'2019-01-01','An attacker with network access could potentially obtain a TLS session key and use it to decrypt TLS traffic. This could impact the confidentiality of communications between the device and a legitimate user.',1080,1063,'CVE-2019-6576','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6576','2019-05-14'),(1047,'2019-01-01','The integrated web server could allow a cross-site scripting (XSS) attack if an attacker is able to modify certain device configuration settings via SNMP. This could impact confidentiality and integrity of the affected system.',1081,1064,'CVE-2019-6577','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6577','2019-05-14'),(1048,'2017-01-01','The application utilizes hard coded username and password credentials for application login.',1064,1065,'CVE-2017-14728','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14728',NULL),(1049,'2017-01-01','The application web interface does not properly neutralize user-controllable input, which could allow cross-site scripting.',1083,1066,'CVE-2017-14850','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14850',NULL),(1050,'2017-01-01','The application does not properly sanitize external input, which may allow an attacker to access the product by specially crafted input.',1066,1067,'CVE-2017-14851','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14851',NULL),(1051,'2017-01-01','The application transmits information in plain text, including credentials, which could allow an attacker with access to transmitted data to obtain credentials and bypass authentication.',1085,1068,'CVE-2017-14852','https://nvd.nist.gov/vuln/detail/CVE-2017-14852',NULL),(1052,'2017-01-01','The application does not properly restrict syntax from external input, which could allow unauthenticated users to execute specially crafted code on the target system.',1086,1069,'CVE-2017-14853','https://nvd.nist.gov/vuln/detail/CVE-2017-14853',NULL),(1053,'2017-01-01','The application utilizes a function that accepts user input. This input is not properly validated, which could allow an attacker to execute arbitrary code.',1087,1070,'CVE-2017-14854','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-14854',NULL),(1054,'2019-01-01','A non-administrative user may place malicious files within the installer file directory, which may allow an attacker to gain administrative privileges on a system during installation or upgrade.',1065,1071,'CVE-2019-6564','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6564','2019-05-09'),(1055,'2019-01-01','An attacker may place malicious files within the working directory of the program, which may allow an attacker to manipulate widgets and UI elements.',1065,1072,'CVE-2019-6546','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6546','2019-05-09'),(1056,'2019-01-01','Two backdoor accounts with hardcoded credentials exist, which may allow control over the database. This service is inaccessible to attackers if Windows default firewall settings are used by the end user.',1090,1073,'CVE-2019-6548','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6548','2019-05-09'),(1057,'2019-01-01','A service running with system privileges may allow an unprivileged user to perform certain administrative actions, which may allow the execution of scheduled scripts with system administrator privileges. This service is inaccessible to attackers if Windows default firewall settings are used by the end user.',1091,1074,'CVE-2019-6544','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6544','2019-05-09'),(1058,'2019-01-01','A non-administrative user may replace the uninstaller with a malicious version, which could allow an attacker to gain administrator privileges to the system.',1063,1075,'CVE-2019-6566','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6566','2019-05-09'),(1059,'2018-01-01','A specially crafted authenticated HTTP request can inject arbitrary commands, resulting in remote code execution.',1076,1076,'CVE-2018-4061','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4061','2019-05-06'),(1060,'2018-01-01','Activating SNMPD outside of the WebUI can cause the activation of the hard-coded credentials, resulting in the exposure of a privileged user. An attacker can activate SNMPD without any configuration changes to trigger this vulnerability.',1094,1077,'CVE-2018-4062','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4062','2019-05-06'),(1061,'2018-01-01','A specially crafted authenticated HTTP request can upload a file, resulting in an executable, routable code upload to the web server.',1076,1078,'CVE-2018-4063','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4063','2019-05-06'),(1062,'2018-01-01','A specially crafted HTTP ping request can cause reflected JavaScript to be executed and run on the user’s browser. An attacker can exploit this by convincing a user to click a link or embedded URL that redirects to the reflected cross-site scripting vulnerability.',1083,1079,'CVE-2018-4065','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4065','2019-05-06'),(1063,'2018-01-01','A specially crafted HTTP request can cause an authenticated user to perform privileged requests unknowingly, resulting in unauthenticated requests through an authenticated user. Triggering this vulnerability may allow an attacker access to authenticated pages via an authenticated user.',1097,1080,'CVE-2018-4066','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4066','2019-05-06'),(1064,'2018-01-01','A specially crafted authenticated HTTP request can cause an information leak, resulting in the disclosure of internal file paths.',1098,1081,'CVE-2018-4067','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4067','2019-05-06'),(1065,'2018-01-01','The ACEManager authentication functionality is delivered in plaintext XML to the web server. An attacker can listen to network traffic upstream from the device, which may allow access to credentials.',1080,1082,'CVE-2018-4069','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-4069','2019-05-06'),(1066,'2019-01-01','The software incorrectly neutralizes user-controllable input before it is placed in output that is used as a web page that is served to other users.',1100,1083,'CVE-2019-6562','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6562','2019-05-01'),(1067,'2019-01-01','An attacker could send a crafted HTTP/HTTPS request to render the web server unavailable and/or lead to remote code execution caused by a stack-based buffer overflow vulnerability. A cold restart is required for recovering the system.',1101,1084,'CVE-2019-10952','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10952','2019-05-01'),(1068,'2019-01-01','An attacker could send crafted SMTP packets to cause a denial-of-service condition where the controller enters a major non-recoverable faulted state (MNRF). ',1102,1085,'CVE-2019-10954','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10954','2019-05-01'),(1069,'2019-01-01','The device is susceptible to a denial-of-service condition as a result of an overflow of TCP packets, which requires the device to be manually rebooted.',1069,1086,'CVE-2019-10948','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10948','2019-04-30'),(1070,'2019-01-01','The device provides insecure telnet services that lack authentication requirements. An attacker who successfully exploits this vulnerability may be able to access the underlying operating system.',1064,1087,'CVE-2019-10950','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10950','2019-04-30'),(1071,'2019-01-01','An open redirect vulnerability could allow a remote unauthenticated attacker to input a malicious link to redirect users to a malicious site that could run or download arbitrary malware on the user’s machine.',1105,1088,'CVE-2019-10955','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10955','2019-04-25'),(1072,'2019-01-01','Multiple stack-based buffer overflow vulnerabilities may be exploited by processing specially crafted project files, allowing an attacker to remotely execute arbitrary code. This may occur because CNCSoft lacks user input validation before copying data from project files onto the stack.',1065,1089,'CVE-2019-10947','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10947','2019-04-17'),(1073,'2019-01-01','Multiple heap-based buffer overflow vulnerabilities may be exploited by processing specially crafted project files, allowing an attacker to remotely execute arbitrary code. There is a lack of user input validation before copying data from project files onto the heap.',1065,1090,'CVE-2019-10951','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10951','2019-04-17'),(1074,'2019-01-01','Multiple out-of-bounds read vulnerabilities may be exploited, allowing information disclosure due to a lack of user input validation for processing specially crafted project files.',1108,1091,'CVE-2019-10949','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10949','2019-04-17'),(1075,'2019-01-01','By exploiting the undocumented service access, it is possible to change the settings of a device and access web-based management with administrator privileges. An attacker can exploit this vulnerability to lock other users out from the device or open closed network ports. It is also possible to use this service access as an FTP user and exchange or delete the application.',1064,1092,'CVE-2019-10712','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10712','2019-05-07'),(1076,'2019-01-01','Researchers have found some controllers are susceptible to a denial-of-service attack due to a flood of network packets.',1069,1093,'CVE-2019-10953','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-10953','2019-04-17'),(1077,'2017-01-01','Specially crafted packets sent to Port 161/UDP could cause a denial-of-service condition. The affected devices must be restarted manually.',1069,1094,'CVE-2017-12741','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-12741','2019-04-17'),(1078,'2019-01-01','An attacker with network access to the web server on Port 80/TCP or 443/TCP could execute system commands with administrative privileges.',1112,1095,'CVE-2019-6579','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6579','2019-04-24'),(1079,'2019-01-01','An attacker with network access to the affected systems could exploit the vulnerability. Successful exploitation requires no system privileges and no user interaction. An attacker could use the vulnerability to compromise availability of the OPC communication.',1069,1096,'CVE-2019-6575','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6575','2019-05-14'),(1080,'2018-01-01','The vulnerability could be exploited by an attacker providing a malicious HTTP server. Successful exploitation requires no system privileges. User interaction by a legitimate use is required to exploit the vulnerability. An attacker could use the vulnerability to compromise confidentiality, integrity and availability of the affected device.',1114,1097,'CVE-2018-14618','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-14618','2018-09-05'),(1081,'2018-01-01','The vulnerability could be exploited by an attacker providing a malicious HTTP server. Successful exploitation requires no system privileges and no user interaction. An attacker could use the vulnerability to compromise availability of the affected system.',1069,1098,'CVE-2018-16890','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16890','2019-02-06'),(1082,'2019-01-01','The vulnerability could be exploited by an attacker providing a malicious HTTP server. Successful exploitation requires no system privileges and no user interaction. An attacker could use the vulnerability to compromise confidentiality, integrity and availability of the affected system.',1090,1099,'CVE-2019-3822','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-3822','2019-02-06'),(1083,'2019-01-01','The vulnerability could be exploited by an attacker with network access to the affected system. An attacker must have access to a low privileged account to exploit the vulnerability. An attacker could use the vulnerability to compromise confidentiality, integrity and availability of the affected system.',1117,1100,'CVE-2019-6570','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6570','2019-04-17'),(1084,'2018-01-01','This vulnerability could be exploited by an attacker spoofing a malicious BGP UPDATE message within the network.',1064,1101,'CVE-2018-5379','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-5379','2018-02-19'),(1085,'2018-01-01','The vulnerability could be exploited by an attacker spoofing a malicious BGP code-point. Successful exploitation requires the attacker to be in the position of a configured, trusted BGP peer.',1119,1102,'CVE-2018-5380','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-5380','2018-02-19'),(1086,'2018-01-01','The vulnerability could be exploited by an attacker spoofing a malicious BGP OPEN message. Successful exploitation requires the attacker to be in the position of a configured, trusted BGP peer.',1069,1103,'CVE-2018-5381','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-5381','2018-02-19'),(1087,'2019-01-01','The webserver of the affected devices contains a vulnerability that may allow an attacker to cause a denial-of-service condition, which leads to a restart of the webserver.',1069,1104,'CVE-2019-6568','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6568','2019-05-14'),(1088,'2019-01-01','When processing project files, the application fails to check if it is referencing freed memory. An attacker could use a specially crafted project file to exploit and execute code under the privileges of the application.',1122,1105,'CVE-2019-6556','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6556','2019-04-10'),(1089,'2018-01-01','An unauthenticated remote attacker could send invalid data to the Cisco Network Plug and Play agent (also referred to as the Cisco Open Plug-n-Play agent) causing a memory leak on the device, which could cause the device to reload.',1123,1106,'CVE-2018-15377','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-15377','2018-10-05'),(1090,'2018-01-01','Sending a specially crafted open shortest path first version 3 (OSPFv3) packet could allow an unauthenticated, adjacent attacker to cause an affected device to reload, resulting in a denial-of-service condition.',1124,1107,'CVE-2018-0466','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-0466','2018-10-05'),(1091,'2018-01-01','Sending a malformed HTTP packet in the web framework of Cisco IOS XE Software could allow an unauthenticated, remote attacker to cause a buffer overflow condition on an affected device, resulting in a denial-of-service condition.',1102,1108,'CVE-2018-0470','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-0470','2018-10-05'),(1092,'2018-01-01','Sending a custom precision time protocol (PTP) packet to or through an affected device could allow an unauthenticated remote attacker to cause a denial-of-service condition of PTP, which may result in time synchronization issues across the network.',1069,1109,'CVE-2018-0473','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-0473','2018-10-05'),(1093,'2018-01-01','Sending a malicious IPv6 packet to or through the affected device could allow an unauthenticated, remote attacker to cause the device to reload, resulting in a denial-of-service condition.',1102,1110,'CVE-2018-0467','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-0467','2018-10-05'),(1094,'2018-01-01','Sending a high rate of Cisco discovery protocol packets to an affected device could allow an unauthenticated, adjacent attacker to exhaust memory on an affected device, resulting in a denial-of-service condition.',1124,1111,'CVE-2018-15373','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-15373','2018-10-05'),(1095,'2018-01-01','Sending malformed IPsec packets to an affected device could allow an unauthenticated remote attacker to cause the device to reload. IPsec is disabled by default in the Allen-Bradley Stratix 5950 devices.',1102,1112,'CVE-2018-0472','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-0472','2018-10-05'),(1096,'2019-01-01','Multiple command injection vulnerabilities, caused by a lack of proper validation of user-supplied data, may allow remote code execution.',1064,1113,'CVE-2019-6552','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6552','2019-04-05'),(1097,'2019-01-01','Multiple stack-based buffer overflow vulnerabilities, caused by a lack of proper validation of the length of user-supplied data, may allow remote code execution.',1064,1114,'CVE-2019-6550','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6550','2019-04-05'),(1098,'2019-01-01','An improper access control vulnerability may allow an attacker to cause a denial-of-service condition.',1069,1115,'CVE-2019-6554','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6554','2019-04-05'),(1099,'2018-01-01','A remote, unauthenticated threat actor can repeatedly send specific CIP packets to an affected PowerFlex 525 drive, which may allow disruption of the availability of the device. ',1069,1116,'CVE-2018-19282','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-19282','2019-04-04'),(1100,'2019-01-01','The monitor barrier of the affected products insufficiently blocks data from being forwarded over the mirror port and into the mirrored network. An attacker could exploit this vulnerability to transmit malicious packets to systems in the mirrored network to influence their configuration and runtime behavior.This vulnerability could be exploited by an attacker with network access to the traffic-receiving network. Successful exploitation requires no system privileges and no user interaction. An attacker could use the vulnerability to compromise the confidentiality and availability of the traffic-generating network.',1134,1117,'CVE-2019-6569','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6569','2019-03-26'),(1101,'2019-01-01','A WebHMI utility may be exploited by any logged-in user, allowing the execution of arbitrary OS commands on the server. This provides the opportunity for a command injection attack.',1135,1118,'CVE-2019-9743','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-9743','2019-03-26'),(1102,'2019-01-01','An unauthenticated user can initiate a remote reboot, which may be used to cause a denial of service condition.',1069,1119,'CVE-2019-6542','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6542','2019-03-28'),(1103,'2019-01-01','The Conexus telemetry protocol utilized within this ecosystem does not implement authentication or authorization. An attacker with adjacent short-range access to an affected product, in situations where the product’s radio is turned on, can inject, replay, modify, and/or intercept data within the telemetry communication. This communication protocol provides the ability to read and write memory values to affected implanted cardiac devices; therefore, an attacker could exploit this communication protocol to change memory in the implanted cardiac device.',1137,1120,'CVE-2019-6538','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6538','2019-03-25'),(1104,'2019-01-01','The Conexus telemetry protocol utilized within this ecosystem does not implement encryption. An attacker with adjacent short-range access to a target product can listen to communications, including the transmission of sensitive data.',1138,1121,'CVE-2019-6540','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6540','2019-03-26'),(1105,'2019-01-01','The uncontrolled search path element vulnerability allows an attacker to load and execute a malicious file from the ux32w.dll in third-party component Sentinel UltraPro.',1139,1122,'CVE-2019-6534','https://nvd.nist.gov/vuln/detail/CVE-2019-6534','2019-04-11'),(1106,'2018-01-01','A cross-site scripting error exists that does not properly validate input, which may allow arbitrary web script to be executed.',1140,1123,'CVE-2018-18875','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-18875',NULL),(1107,'2018-01-01','A path traversal vulnerability exists that could allow an attacker read access to files within the directory structure of the target device.',1141,1124,'CVE-2018-18876','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-18876',NULL),(1108,'2018-01-01','An improper authentication vulnerability exists that could allow a possible authentication bypass, allowing an attacker to manipulate the device and cause a denial-of-service condition.',1064,1125,'CVE-2018-18877','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-18877',NULL),(1109,'2018-01-01','An improper input validation vulnerability exists allowing an attacker to craft the input in a form that is not expected by the rest of the application, causing a denial-of-service condition and the device to become unavailable.',1069,1126,'CVE-2018-18878','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-18878',NULL),(1110,'2018-01-01','A code injection vulnerability exists that could allow remote code execution.',1064,1127,'CVE-2018-18879','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-18879',NULL),(1111,'2018-01-01','A cross-site scripting error exists that does not properly validate input, which may allow arbitrary web script to be executed.',1140,1128,'CVE-2018-18880','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-18880',NULL),(1112,'2019-01-01','Opening specially crafted ELS file may result in a write past the end of an allocated buffer, which may allow an attacker to execute remote code in the context of the current process.',1065,1129,'CVE-2019-6536','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6536','2019-03-27'),(1113,'2019-01-01','The uncontrolled search path element vulnerability enables an attacker to load and execute a malicious file from the ux32w.dll in Sentinel UltraPro.',1139,1130,'CVE-2019-6534','https://nvd.nist.gov/vuln/detail/CVE-2019-6534','2019-04-11'),(1114,'2018-01-01','A path traversal vulnerability has been identified, which may allow unauthorized disclosure of information.',1141,1131,'CVE-2018-16059','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-16059','2018-09-07'),(1115,'2019-01-01','An input validation issue in a .dll file of RSLinx Classic where the data in a Forward Open service request is passed to a fixed size buffer, allowing an attacker to exploit a stack-based buffer overflow condition.',1112,1132,'CVE-2019-6553','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6553','2019-04-04'),(1116,'2019-01-01','The web application browser interprets input as active HTML, JavaScript, or VBScript, which could allow an attacker to execute arbitrary code.',1150,1133,'CVE-2019-6528','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6528','2019-03-05'),(1117,'2019-01-01','Several buffer overflow vulnerabilities have been identified, which may allow remote code execution.',1069,1134,'CVE-2019-6557','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6557','2019-03-05'),(1118,'2019-01-01','A cross-site request forgery has been identified, which may allow for the execution of unauthorized actions on the device.',1152,1135,'CVE-2019-6561','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6561','2019-03-05'),(1119,'2019-01-01','The device fails to properly validate user input, giving unauthenticated and authenticated attackers the ability to perform XSS attacks, which may be used to send a malicious script.',1152,1136,'CVE-2019-6565','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6565','2019-03-05'),(1120,'2019-01-01','The device does not properly check authority on server side, which results in a read-only user being able to perform arbitrary configuration changes.',1069,1137,'CVE-2019-6520','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6520','2019-03-05'),(1121,'2019-01-01','The devices do not implement sufficient measures to prevent multiple failed authentication attempts, which may allow an attacker to discover passwords via brute force attack.',1069,1138,'CVE-2019-6524','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6524','2019-03-05'),(1122,'2019-01-01','The devices use plaintext transmission of sensitive data, which may allow an attacker to capture sensitive data such as an administrative password.',1069,1139,'CVE-2019-6526','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6526','2019-04-15'),(1123,'2019-01-01','Failure to properly check array bounds may allow an attacker to read device memory on arbitrary addresses, which may allow an attacker to retrieve sensitive data or cause device reboot.',1069,1140,'CVE-2019-6522','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6522','2019-03-05'),(1124,'2019-01-01','The devices store plaintext passwords, which may allow sensitive information to be read by someone with access to the device.',1067,1141,'CVE-2019-6518','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6518','2019-03-05'),(1125,'2019-01-01','The software generates a predictable cookie calculated with an MD5 hash, allowing an attacker to capture the administrator\'s password, which could lead to a full compromise of the device.',1064,1142,'CVE-2019-6563','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6563','2019-03-05'),(1126,'2019-01-01','The devices allow remote authenticated users to cause a denial of service via a specially crafted packet, which may cause the switch to crash.',1069,1143,'CVE-2019-6559','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6559','2019-03-05'),(1127,'2019-01-01','Insufficient session authentication may allow an unauthenticated user to enable escalation of privilege via network access. ',1161,1144,'CVE-2019-0102','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0102','2019-02-18'),(1128,'2019-01-01','Insufficient file protection in the install routine may allow an authenticated user to enable information disclosure via local access.  ',1162,1145,'CVE-2019-0103','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0103','2019-02-18'),(1129,'2019-01-01','Insufficient file protection in the uninstall routine may allow an authenticated user to enable information disclosure via local access.  ',1162,1146,'CVE-2019-0104','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0104','2019-02-18'),(1130,'2019-01-01','Insufficient file permissions checking in the install routine may allow an authenticated user to enable escalation of privilege via local access. ',1164,1147,'CVE-2019-0105','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0105','2019-02-18'),(1131,'2019-01-01','Insufficient run protection in the install routine may allow a privileged user to enable escalation of privilege via local access.',1165,1148,'CVE-2019-0106','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0106','2019-02-18'),(1132,'2019-01-01','Insufficient user prompt in the install routine may allow a privileged user to enable escalation of privilege via local access.',1166,1149,'CVE-2019-0107','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0107','2019-02-18'),(1133,'2019-01-01','Improper file permissions may allow an authenticated user to enable disclosure of information via local access. ',1167,1150,'CVE-2019-0108','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0108','2019-02-18'),(1134,'2019-01-01','Improper folder permissions may allow an authenticated user to enable disclosure of information via local access. ',1168,1151,'CVE-2019-0109','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0109','2019-02-18'),(1135,'2019-01-01','Insufficient key management may allow an authenticated user to enable information disclosure via local access. ',1169,1152,'CVE-2019-0110','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0110','2019-02-18'),(1136,'2019-01-01','Improper file permissions may allow an authenticated user to enable information disclosure via local access. ',1170,1153,'CVE-2019-0111','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0111','2019-02-18'),(1137,'2019-01-01','Improper flow control in crypto routines may allow a privileged user to enable a denial of service via local access. ',1171,1154,'CVE-2019-0112','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-0112','2019-02-18'),(1138,'2019-01-01','An out-of-bounds read vulnerability may cause the software to crash due to lacking user input validation for processing project files.',1172,1155,'CVE-2019-6547','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6547','2019-02-28'),(1139,'2019-01-01','An improper input validation vulnerability may be exploited by processing specially crafted POC files. This may allow an attacker to read confidential information and remotely execute arbitrary code.',1173,1156,'CVE-2019-6555','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6555','2019-02-28'),(1140,'2018-01-01','A remote attacker could inject arbitrary code into a targeted user’s web browser to gain access to the affected device.',1083,1157,'CVE-2018-19615','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-19615','2019-03-18'),(1141,'2018-01-01','A remote attacker may be able to use a proxy to enable functionality that is typically available to those with administrative rights for the web application, allowing the attacker to bypass authentication. Once bypassed, the attacker could disrupt user settings and device configuration. ',1064,1158,'CVE-2018-19616','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-19616','2018-12-26'),(1142,'2019-01-01','Using a specially crafted URL, an attacker can bypass user authentication to cause the device to reboot, which may be used to cause a continual denial-of-service condition.',1069,1159,'CVE-2019-6551','http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-6551','2019-02-28');
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
) ENGINE=InnoDB AUTO_INCREMENT=1177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvss`
--

LOCK TABLES `cvss` WRITE;
/*!40000 ALTER TABLE `cvss` DISABLE KEYS */;
INSERT INTO `cvss` VALUES (1061,'A','L','N','N','U','L','L','N',5.4),(1062,'L','L','N','R','U','N','N','L',3.3),(1063,'L','L','L','R','U','H','H','H',7.3),(1064,'N','L','N','N','U','H','H','H',9.8),(1065,'L','L','N','R','U','H','H','H',7.8),(1066,'N','L','N','N','U','H','H','L',9.4),(1067,'N','L','N','N','U','H','N','N',7.5),(1069,'N','L','N','N','U','N','N','H',7.5),(1074,'N','L','H','N','U','H','H','H',7.2),(1075,'N','H','N','R','U','H','L','L',6.4),(1076,'N','L','H','N','C','H','H','H',9.1),(1078,'N','L','L','N','U','H','H','H',8.8),(1079,'N','L','N','N','U','L','L','N',6.5),(1080,'N','H','N','N','U','H','N','N',5.9),(1081,'N','L','L','R','C','L','L','N',5.4),(1083,'N','L','N','R','C','L','L','N',6.1),(1085,'N','L','N','N','U','H','L','L',8.6),(1086,'N','L','N','N','U','L','H','L',8.6),(1087,'N','L','N','N','U','N','H',')',9.1),(1090,'N','H','N','N','U','H','H','H',8.1),(1091,'N','H','N','N','U','L','L','L',5.6),(1094,'N','H','H','N','U','H','L','H',6.2),(1097,'N','H','N','R','U','N','H','H',6.8),(1098,'N','L','H','N','C','L','N','N',4.1),(1100,'A','L','L','R','U','L','L','N',4.1),(1101,'N','L','N','N','U','N','N','L',5.3),(1102,'N','L','N','N','C','N','N','H',8.6),(1105,'N','L','N','R','C','L','L','L',7.1),(1108,'L','L','N','R','U','L','N','N',3.3),(1112,'N','L','N','N','C','H','H','H',10.0),(1114,'N','H','N','R','U','H','H','H',7.5),(1117,'N','L','L','N','U','L','H','H',8.3),(1119,'N','L','L','N','U','N','N','L',4.3),(1122,'L','L','N','R','U','L','L','H',6.6),(1123,'N','H','N','N','C','N','N','H',6.8),(1124,'A','L','N','N','C','N','N','H',7.4),(1134,'N','H','N','N','C','L','N','L',5.4),(1135,'N','L','L','N','C','H','H','H',9.9),(1137,'A','L','N','N','C','N','H','H',9.3),(1138,'A','L','N','N','U','H','N','N',6.5),(1139,'L','L','H','R','U','H','H','H',6.5),(1140,'N','L','N','N','U','L','L','L',7.3),(1141,'N','L','N','N','U','L','N','N',5.3),(1150,'N','L','L','N','C','H','L','N',8.5),(1152,'N','L','N','R','U','H','H','H',9.6),(1161,'A','L','N','N','U','H','H','H',8.8),(1162,'L','L','L','N','U','H','N','N',5.5),(1164,'L','H','L','R','U','H','H','H',6.7),(1165,'L','L','H','N','U','N','H','H',6.0),(1166,'L','H','H','R','C','H','H','H',7.2),(1167,'L','L','L','N','U','L','N','N',3.3),(1168,'L','L','L','N','U','L','L','L',5.3),(1169,'L','L','L','N','U','H','H','N',7.1),(1170,'L','L','L','N','C','L','N','N',3.8),(1171,'L','H','H','R','U','N','N','H',4.0),(1172,'L','L','N','R','U','L','N','L',4.4),(1173,'L','L','N','R','U','H','H',')',7.8);
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
  `cweAbstraction` text,
  `cweStructure` text,
  `cweSFP2Cluster` smallint(5) unsigned NOT NULL,
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cwe_cwesfp2cluster` (`cweSFP2Cluster`),
  CONSTRAINT `fk_cwe_cwesfp2cluster` FOREIGN KEY (`cweSFP2Cluster`) REFERENCES `sfp2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwe`
--

LOCK TABLES `cwe` WRITE;
/*!40000 ALTER TABLE `cwe` DISABLE KEYS */;
INSERT INTO `cwe` VALUES (1044,'https://cwe.mitre.org/data/definitions/330.html','Class','Simple',1050,'CWE-330'),(1045,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1046,'https://cwe.mitre.org/data/definitions/426.html','Base','Simple',1050,'CWE-426'),(1047,'https://cwe.mitre.org/data/definitions/306.html','Variant','Simple',1053,'CWE-306'),(1048,'https://cwe.mitre.org/data/definitions/502.html','Variant','Simple',1054,'CWE-502'),(1049,'https://cwe.mitre.org/data/definitions/306.html','Variant','Simple',1053,'CWE-306'),(1050,'https://cwe.mitre.org/data/definitions/231.html','Variant','Simple',1056,'CWE-231'),(1051,'https://cwe.mitre.org/data/definitions/256.html','Variant','Simple',1057,'CWE-256'),(1052,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1053,'https://cwe.mitre.org/data/definitions/20.html','Class','Simple',1054,'CWE-20'),(1054,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',1060,'CWE-77'),(1055,'https://cwe.mitre.org/data/definitions/200.html','Class','Simple',1057,'CWE-200'),(1056,'https://cwe.mitre.org/data/definitions/200.html','Class','Simple',1057,'CWE-200'),(1057,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',1060,'CWE-77'),(1058,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1059,'https://cwe.mitre.org/data/definitions/89.html','Base','Simple',1060,'CWE-89'),(1060,'https://cwe.mitre.org/data/definitions/248.html','Base','Simple',1066,'CWE-248'),(1061,'https://cwe.mitre.org/data/definitions/749.html','Base','Simple',1067,'CWE-749'),(1062,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',1050,'CWE-798'),(1063,'https://cwe.mitre.org/data/definitions/522.html','Base','Simple',1057,'CWE-522'),(1064,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1065,'https://cwe.mitre.org/data/definitions/798','Base','Simple',1050,'CWE-798'),(1066,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1067,'https://cwe.mitre.org/data/definitions/89.html','Base','Simple',1060,'CWE-89'),(1068,'https://cwe.mitre.org/data/definitions/311.html','Base','Simple',1057,'CWE-311'),(1069,'https://cwe.mitre.org/data/definitions/94.html','Class','Simple',1075,'CWE-94'),(1070,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',1051,'CWE-121'),(1071,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',1075,'CWE-427'),(1072,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',1075,'CWE-427'),(1073,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',1050,'CWE-798'),(1074,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',1080,'CWE-284'),(1075,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',1080,'CWE-284'),(1076,'https://cwe.mitre.org/data/definitions/78.html','Base','Simple',1060,'CWE-78'),(1077,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',1050,'CWE-798'),(1078,'https://cwe.mitre.org/data/definitions/434.html','Base','Simple',1050,'CWE-434'),(1079,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1080,'https://cwe.mitre.org/data/definitions/352.html','Compound','Composite',1050,'CWE-352'),(1081,'https://cwe.mitre.org/data/definitions/200.html','Class','Simple',1057,'CWE-200'),(1082,'https://cwe.mitre.org/data/definitions/311.html','Base','Simple',1057,'CWE-311'),(1083,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1084,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1085,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',1051,'CWE-121'),(1086,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1087,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',1080,'CWE-284'),(1088,'https://cwe.mitre.org/data/definitions/601.html','Variant','Simple',1060,'CWE-601'),(1089,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',1051,'CWE-121'),(1090,'https://cwe.mitre.org/data/definitions/122.html','Variant','Simple',1051,'CWE-122'),(1091,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1092,'https://cwe.mitre.org/data/definitions/798.html','Base','Simple',1050,'CWE-798'),(1093,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1094,'http://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1095,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',1060,'CWE-77'),(1096,'https://cwe.mitre.org/data/definitions/248.html','Base','Simple',1066,'CWE-248'),(1097,'https://cwe.mitre.org/data/definitions/131.html','Base','Simple',1103,'CWE-131'),(1098,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1099,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',1051,'CWE-121'),(1100,'https://cwe.mitre.org/data/definitions/280.html','Base','Simple',1066,'CWE-280'),(1101,'https://cwe.mitre.org/data/definitions/415.html','Variant','Simple',1107,'CWE-415'),(1102,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1103,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1104,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1105,'https://cwe.mitre.org/data/definitions/416.html','Base','Simple',1111,'CWE-416'),(1106,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1107,'https://cwe.mitre.org/data/definitions/399.html','None','class',1050,'CWE-399'),(1108,'https://cwe.mitre.org/data/definitions/399.html','None','class',1050,'CWE-399'),(1109,'https://cwe.mitre.org/data/definitions/399.html','None','class',1050,'CWE-399'),(1110,'https://cwe.mitre.org/data/definitions/20.html','Class','Simple',1054,'CWE-20'),(1111,'https://cwe.mitre.org/data/definitions/399.html','None','class',1050,'CWE-399'),(1112,'https://cwe.mitre.org/data/definitions/20.html','Class','Simple',1054,'CWE-20'),(1113,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',1060,'CWE-77'),(1114,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',1051,'CWE-121'),(1115,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',1080,'CWE-284'),(1116,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1117,'https://cwe.mitre.org/data/definitions/440.html','Base','Simple',1123,'CWE-440'),(1118,'https://cwe.mitre.org/data/definitions/77.html','Class','Simple',1060,'CWE-77'),(1119,'https://cwe.mitre.org/data/definitions/306.html','Variant','Simple',1053,'CWE-306'),(1120,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',1080,'CWE-284'),(1121,'https://cwe.mitre.org/data/definitions/319.html','Variant','Simple',1057,'CWE-319'),(1122,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',1075,'CWE-427'),(1123,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1124,'https://cwe.mitre.org/data/definitions/22.html','Class','Simple',1130,'CWE-22'),(1125,'https://cwe.mitre.org/data/definitions/287.html','Class','Simple',1131,'CWE-287'),(1126,'https://cwe.mitre.org/data/definitions/20.html','Class','Simple',1054,'CWE-20'),(1127,'https://cwe.mitre.org/data/definitions/94.html','Class','Simple',1075,'CWE-94'),(1128,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1129,'https://cwe.mitre.org/data/definitions/787.html','Base','Simple',1050,'CWE-787'),(1130,'https://cwe.mitre.org/data/definitions/427.html','Base','Simple',1075,'CWE-427'),(1131,'https://cwe.mitre.org/data/definitions/22.html','Class','Simple',1130,'CWE-22'),(1132,'https://cwe.mitre.org/data/definitions/121.html','Variant','Simple',1051,'CWE-121'),(1133,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1134,'https://cwe.mitre.org/data/definitions/120.html','Base','Simple',1051,'CWE-120'),(1135,'https://cwe.mitre.org/data/definitions/352.html','Compound','Composite',1050,'CWE-352'),(1136,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1137,'https://cwe.mitre.org/data/definitions/284.html','Class','Simple',1080,'CWE-284'),(1138,'https://cwe.mitre.org/data/definitions/307.html','Base','Simple',1144,'CWE-307'),(1139,'https://cwe.mitre.org/data/definitions/311.html','Base','Simple',1057,'CWE-311'),(1140,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1141,'https://cwe.mitre.org/data/definitions/256.html','Variant','Simple',1057,'CWE-256'),(1142,'https://cwe.mitre.org/data/definitions/341.html','Base','Simple',1050,'CWE-341'),(1143,'https://cwe.mitre.org/data/definitions/400.html','Class','Simple',1058,'CWE-400'),(1144,'https://cwe.mitre.org/data/definitions/287.html','Class','Simple',1131,'CWE-287'),(1145,'https://cwe.mitre.org/data/definitions/693.html','Class','Simple',1067,'CWE-693'),(1146,'https://cwe.mitre.org/data/definitions/693.html','Class','Simple',1067,'CWE-693'),(1147,'http://cwe.mitre.org/data/definitions/275.html','None','class',1050,'CWE-275'),(1148,'http://cwe.mitre.org/data/definitions/693.html','Class','Simple',1067,'CWE-693'),(1149,'http://cwe.mitre.org/data/definitions/693.html','Class','Simple',1067,'CWE-693'),(1150,'http://cwe.mitre.org/data/definitions/275.html','None','class',1050,'CWE-275'),(1151,'http://cwe.mitre.org/data/definitions/275.html','None','class',1050,'CWE-275'),(1152,'http://cwe.mitre.org/data/definitions/320.html','None','class',1050,'CWE-320'),(1153,'http://cwe.mitre.org/data/definitions/275.html','None','class',1050,'CWE-275'),(1154,'http://cwe.mitre.org/data/definitions/691.html','Class','Simple',1160,'CWE-691'),(1155,'https://cwe.mitre.org/data/definitions/125.html','Base','Simple',1051,'CWE-125'),(1156,'https://cwe.mitre.org/data/definitions/20.html','Class','Simple',1054,'CWE-20'),(1157,'https://cwe.mitre.org/data/definitions/79.html','Base','Simple',1060,'CWE-79'),(1158,'https://cwe.mitre.org/data/definitions/288.html','Base','Simple',1131,'CWE-288'),(1159,'https://cwe.mitre.org/data/definitions/288.html','Base','Simple',1131,'CWE-288');
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
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `UC_icscert_name` (`name`),
  KEY `fk_icscert_patch` (`patch`),
  CONSTRAINT `fk_icscert_patch` FOREIGN KEY (`patch`) REFERENCES `patch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert`
--

LOCK TABLES `icscert` WRITE;
/*!40000 ALTER TABLE `icscert` DISABLE KEYS */;
INSERT INTO `icscert` VALUES (386,'2019-05-16',117,'ICSA-19-136-01'),(387,'2019-05-16',117,'ICSA-19-136-02'),(388,'2019-05-14',117,'ICSA-19-134-01'),(389,'2019-05-14',117,'ICSA-19-134-02'),(390,'2019-05-14',117,'ICSA-19-134-03'),(391,'2019-05-14',117,'ICSA-19-134-04'),(392,'2019-05-14',117,'ICSA-19-134-05'),(393,'2019-05-14',117,'ICSA-19-134-06'),(394,'2019-05-14',117,'ICSA-19-134-07'),(395,'2019-05-14',117,'ICSA-19-134-08'),(396,'2019-05-14',117,'ICSA-19-134-09'),(397,'2019-05-02',117,'ICSA-19-122-01'),(398,'2019-05-02',117,'ICSA-19-122-02'),(399,'2019-05-02',117,'ICSA-19-122-03'),(400,'2019-04-30',117,'ICSMA-19-120-01'),(401,'2019-04-30',117,'ICSA-19-120-01'),(402,'2019-04-23',117,'ICSMA-19-113-01'),(403,'2019-04-23',117,'ICSA-19-113-01'),(404,'2019-04-16',117,'ICSA-19-106-01'),(405,'2019-04-16',117,'ICSA-19-106-02'),(406,'2019-04-16',117,'ICSA-19-106-03'),(407,'2019-04-09',117,'ICSA-19-099-01'),(408,'2019-04-09',117,'ICSA-19-099-02'),(409,'2019-04-09',117,'ICSA-19-099-03'),(410,'2019-04-09',117,'ICSA-19-099-04'),(411,'2019-04-09',117,'ICSA-19-099-05'),(412,'2019-04-09',117,'ICSA-19-099-06'),(413,'2019-04-04',117,'ICSA-19-094-01'),(414,'2019-04-04',117,'ICSA-19-094-02'),(415,'2019-04-04',117,'ICSA-19-094-03'),(416,'2019-04-04',117,'ICSA-19-094-04'),(417,'2019-04-02',117,'ICSA-19-092-01'),(418,'2019-03-28',117,'ICSA-19-087-01'),(419,'2019-03-26',117,'ICSA-19-085-01'),(420,'2019-03-26',117,'ICSA-19-085-02'),(421,'2019-03-26',117,'ICSA-19-085-03'),(422,'2019-03-21',117,'ICSMA-19-080-01'),(423,'2019-03-19',117,'ICSA-19-078-01'),(424,'2019-03-19',117,'ICSA-19-078-02'),(425,'2019-03-14',117,'ICSA-19-073-01'),(426,'2019-03-14',117,'ICSA-19-073-02'),(427,'2019-03-14',117,'ICSA-19-073-03'),(428,'2019-03-05',117,'ICSA-19-064-01'),(429,'2019-02-28',117,'ICSA-19-059-01'),(430,'2019-02-26',117,'ICSA-19-057-01'),(431,'2019-02-19',117,'ICSA-19-050-01'),(432,'2019-02-19',117,'ICSA-19-050-02'),(433,'2019-02-19',117,'ICSA-19-050-03'),(434,'2019-02-19',117,'ICSA-19-050-04'),(435,'2019-02-14',117,'ICSA-19-045-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert_cve`
--

LOCK TABLES `icscert_cve` WRITE;
/*!40000 ALTER TABLE `icscert_cve` DISABLE KEYS */;
INSERT INTO `icscert_cve` VALUES (869,386,1027),(870,387,1028),(871,388,1029),(872,389,1030),(873,390,1031),(874,391,1032),(875,391,1033),(876,391,1034),(877,392,1035),(878,393,1036),(879,394,1037),(880,394,1038),(881,394,1039),(882,394,1040),(883,394,1041),(884,395,1042),(885,395,1043),(886,395,1044),(887,396,1045),(888,396,1046),(889,396,1047),(890,397,1048),(891,397,1049),(892,397,1050),(893,397,1051),(894,397,1052),(895,397,1053),(896,398,1054),(897,398,1055),(898,398,1056),(899,398,1057),(900,398,1058),(901,399,1059),(902,399,1060),(903,399,1061),(904,399,1062),(905,399,1063),(906,399,1064),(907,399,1065),(908,400,1066),(909,401,1067),(910,401,1068),(911,402,1069),(912,402,1070),(913,403,1071),(914,404,1072),(915,404,1073),(916,404,1074),(917,405,1075),(918,406,1076),(919,407,1077),(920,408,1078),(921,409,1079),(922,410,1080),(923,410,1081),(924,410,1082),(925,410,1083),(926,411,1084),(927,411,1085),(928,411,1086),(929,412,1087),(930,413,1088),(931,414,1089),(932,415,1090),(933,415,1091),(934,415,1092),(935,415,1093),(936,415,1094),(937,416,1095),(938,417,1096),(939,417,1097),(940,417,1098),(941,418,1099),(942,419,1100),(943,420,1101),(944,421,1102),(945,422,1103),(946,422,1104),(947,423,1105),(948,424,1106),(949,424,1107),(950,424,1108),(951,424,1109),(952,424,1110),(953,424,1111),(954,425,1112),(955,426,1105),(956,427,1114),(957,428,1115),(958,429,1116),(959,430,1117),(960,430,1118),(961,430,1119),(962,430,1120),(963,430,1121),(964,430,1122),(965,430,1123),(966,430,1124),(967,430,1125),(968,430,1126),(969,431,1127),(970,431,1128),(971,431,1129),(972,431,1130),(973,431,1131),(974,431,1132),(975,431,1133),(976,431,1134),(977,431,1135),(978,431,1136),(979,431,1137),(980,432,1138),(981,433,1139),(982,434,1140),(983,434,1141),(984,435,1142);
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
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icscert_product`
--

LOCK TABLES `icscert_product` WRITE;
/*!40000 ALTER TABLE `icscert_product` DISABLE KEYS */;
INSERT INTO `icscert_product` VALUES (342,386,396),(343,387,397),(344,388,398),(345,389,399),(346,390,400),(347,391,401),(348,392,402),(349,393,403),(350,394,404),(351,395,405),(352,396,406),(353,397,407),(354,398,408),(355,399,409),(356,400,410),(357,401,411),(358,402,412),(359,403,413),(360,404,414),(361,405,415),(362,406,416),(363,407,417),(364,408,418),(365,409,419),(366,410,420),(367,411,421),(368,412,422),(369,413,423),(370,414,424),(371,415,425),(372,416,426),(373,417,427),(374,418,428),(375,419,429),(376,420,430),(377,421,431),(378,422,432),(379,423,433),(380,424,434),(381,425,435),(382,426,436),(383,427,437),(384,428,438),(385,429,439),(386,430,440),(387,431,441),(388,432,414),(389,433,443),(390,434,444),(391,435,445);
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
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patch`
--

LOCK TABLES `patch` WRITE;
/*!40000 ALTER TABLE `patch` DISABLE KEYS */;
INSERT INTO `patch` VALUES (117,'Default Patch Name');
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
  `deviceComment` text,
  `vendor` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_deviceType` (`deviceType`),
  KEY `fk_product_vendor` (`vendor`),
  CONSTRAINT `fk_product_deviceType` FOREIGN KEY (`deviceType`) REFERENCES `devicetype` (`id`),
  CONSTRAINT `fk_product_vendor` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (396,'Modicon M580, Modicon M340, Modicon Premium, and Modicon Quantum',0,1,'Device Comment',535),(397,'Alpha7 PC Loader',0,1,'Device Comment',536),(398,'Network Configurator for DeviceNet ',0,1,'Device Comment',537),(399,'SIMATIC WinCC and SIMATIC PCS 7',0,1,'Device Comment',538),(400,'LOGO! Soft Comfort',0,1,'Device Comment',538),(401,'LOGO!8 BM',0,1,'Device Comment',538),(402,'SINAMICS PERFECT HARMONY GH180 Drives NXG I and NXG II',0,1,'Device Comment',538),(403,'SINAMICS PERFECT HARMONY GH180 Fieldbus Network',0,1,'Device Comment',538),(404,'SCALANCE W1750D',0,1,'Device Comment',538),(405,'SIMATIC PCS 7, WinCC Runtime Professional, WinCC (TIA Portal)',0,1,'Device Comment',538),(406,'SIMATIC WinCC Runtime Advanced, WinCC Runtime Professional, WinCC (TIA Portal); HMI Panels',0,1,'Device Comment',538),(407,'SiteOmat',0,1,'Device Comment',546),(408,'Communicator',0,1,'Device Comment',547),(409,'AirLink ALEOS',0,1,'Device Comment',548),(410,'Tasy EMR',0,1,'Device Comment',549),(411,'CompactLogix 5370',0,1,'Device Comment',550),(412,'FCR Capsula X/Carbon X',0,1,'Device Comment',551),(413,'MicroLogix 1400 and CompactLogix 5370 Controllers',0,1,'Device Comment',550),(414,'Delta Industrial Automation CNCSoft',0,1,'Device Comment',553),(415,'Series 750-88x and 750-87x',0,1,'Device Comment',554),(416,'Programmable Logic Controllers',0,1,'Device Comment',555),(417,'SIMOCODE pro V EIP',0,1,'Device Comment',538),(418,'Spectrum Power 4.7',0,1,'Device Comment',538),(419,'SIMATIC, SINEC-NMS, SINEMA, SINEMURIK Industrial Control Products with OPC UA',0,1,'Device Comment',538),(420,'SINEMA Remote Connect (Client and Server)',0,1,'Device Comment',538),(421,'RUGGEDCOM ROX II',0,1,'Device Comment',538),(422,'CP, SIMATIC, SIMOCODE, SINAMICS, SITOP, and TIM',0,1,'Device Comment',538),(423,'CX-Programmer within CX-One',0,1,'Device Comment',537),(424,'Stratix 5400/5410/5700, ArmorStratix 5700',0,1,'Device Comment',550),(425,'Stratix 5400/5410/5700/8000/8300, ArmorStratix 5700',0,1,'Device Comment',550),(426,'Stratix 5950',0,1,'Device Comment',550),(427,'WebAccess/SCADA',0,1,'Device Comment',566),(428,'PowerFlex 525 AC Drives',0,1,'Device Comment',550),(429,'SCALANCE X',0,1,'Device Comment',538),(430,'RAD-80211-XD',0,1,'Device Comment',569),(431,'Datagate MK2, Storm 24, Pixelator',0,1,'Device Comment',570),(432,'MyCareLink Monitor, CareLink Monitor, CareLink 2090 Programmer, specific Medtronic implanted cardiac devices listed below',0,1,'Device Comment',571),(433,'InduSoft Web Studio, InTouch Edge HMI',0,1,'Device Comment',572),(434,'Weather MicroServer',0,1,'Device Comment',573),(435,'LAquis SCADA',0,1,'Device Comment',574),(436,'Sentinel UltraPro',0,1,'Device Comment',575),(437,'WirelessHART-Gateways',0,1,'Device Comment',576),(438,'RSLinx Classic',0,1,'Device Comment',550),(439,'Telecontrol Gateway and Smart Telecontrol Unit family, IEC104 Security Proxy',0,1,'Device Comment',578),(440,'IKS, EDS',0,1,'Device Comment',579),(441,'Data Center Manager SDK',0,1,'Device Comment',580),(442,'Delta Industrial Automation CNCSoft',0,1,'Device Comment',553),(443,'Cscape',0,1,'Device Comment',582),(444,'Allen-Bradley PowerMonitor 1000',0,1,'Device Comment',550),(445,'Internet FAX Analog Telephone Adapter (ATA)',0,1,'Device Comment',584);
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
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_countries`
--

LOCK TABLES `product_countries` WRITE;
/*!40000 ALTER TABLE `product_countries` DISABLE KEYS */;
INSERT INTO `product_countries` VALUES (698,396,253),(699,397,253),(700,398,253),(701,399,253),(702,400,253),(703,401,253),(704,402,253),(705,403,253),(706,404,253),(707,405,253),(708,406,253),(709,407,253),(710,408,253),(711,409,253),(712,410,30),(713,410,142),(714,411,253),(715,412,253),(716,413,253),(717,414,253),(718,415,253),(719,416,249),(720,417,253),(721,418,253),(722,419,253),(723,420,253),(724,421,253),(725,422,253),(726,423,253),(727,424,253),(728,425,253),(729,426,253),(731,427,231),(730,427,250),(732,427,251),(733,428,253),(734,429,253),(735,430,253),(736,431,253),(737,432,253),(738,433,253),(739,434,231),(740,435,252),(741,436,253),(742,437,253),(743,438,253),(744,439,253),(745,440,253),(746,441,253),(748,443,253),(749,444,253),(750,445,253);
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
) ENGINE=InnoDB AUTO_INCREMENT=1096 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sector`
--

LOCK TABLES `product_sector` WRITE;
/*!40000 ALTER TABLE `product_sector` DISABLE KEYS */;
INSERT INTO `product_sector` VALUES (955,396,1083),(956,397,1084),(957,398,1084),(958,399,1086),(959,399,1087),(960,399,1088),(961,399,1089),(962,400,1090),(963,400,1091),(964,401,1090),(965,401,1091),(966,402,1086),(967,402,1087),(968,402,1088),(971,402,1089),(970,402,1091),(969,402,1097),(972,403,1086),(973,403,1087),(974,403,1088),(977,403,1089),(976,403,1091),(975,403,1097),(978,404,1086),(979,404,1087),(980,404,1088),(982,404,1091),(981,404,1097),(983,404,1111),(985,405,1084),(984,405,1086),(986,405,1087),(987,405,1088),(988,405,1089),(990,406,1084),(989,406,1086),(991,406,1087),(992,406,1088),(993,406,1089),(995,407,1087),(994,407,1090),(996,407,1091),(997,408,1084),(998,408,1087),(1002,409,1087),(1005,409,1089),(999,409,1090),(1004,409,1091),(1000,409,1128),(1001,409,1129),(1003,409,1131),(1006,410,1097),(1007,411,1084),(1008,412,1097),(1009,413,1084),(1010,414,1084),(1012,415,1084),(1013,415,1087),(1011,415,1090),(1014,415,1091),(1015,416,1143),(1017,417,1084),(1016,417,1086),(1018,417,1087),(1019,417,1088),(1020,417,1089),(1022,418,1084),(1021,418,1086),(1023,418,1087),(1024,418,1088),(1025,418,1089),(1027,419,1084),(1026,419,1086),(1028,419,1087),(1029,419,1088),(1030,419,1089),(1031,420,1159),(1032,421,1087),(1034,421,1091),(1033,421,1097),(1036,422,1084),(1037,422,1087),(1038,422,1088),(1039,422,1089),(1035,422,1090),(1040,423,1084),(1041,424,1084),(1042,424,1087),(1043,424,1089),(1044,425,1084),(1045,425,1087),(1046,425,1089),(1047,426,1084),(1048,426,1087),(1049,426,1089),(1050,427,1084),(1051,427,1087),(1052,427,1089),(1053,428,1084),(1055,429,1084),(1054,429,1086),(1056,429,1087),(1057,429,1088),(1058,429,1111),(1060,430,1084),(1059,430,1128),(1061,430,1189),(1062,431,1090),(1063,432,1097),(1065,433,1084),(1066,433,1087),(1064,433,1090),(1067,433,1091),(1068,433,1111),(1069,434,1189),(1070,435,1086),(1072,435,1087),(1073,435,1088),(1075,435,1089),(1071,435,1090),(1074,435,1091),(1079,436,1097),(1076,436,1128),(1078,436,1131),(1080,436,1189),(1077,436,1205),(1081,437,1084),(1082,437,1189),(1083,438,1084),(1084,438,1087),(1085,438,1089),(1086,439,1087),(1087,440,1084),(1088,440,1087),(1089,440,1217),(1090,441,1189),(1092,443,1084),(1093,444,1087),(1095,445,1189),(1094,445,1222);
/*!40000 ALTER TABLE `product_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `products_by_sector`
--

DROP TABLE IF EXISTS `products_by_sector`;
/*!50001 DROP VIEW IF EXISTS `products_by_sector`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `products_by_sector` AS SELECT 
 1 AS `pname`,
 1 AS `sname`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=1224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1159,'Agriculture and Food; Chemical; Critical Manufacturing; Energy; Water/Wastewater'),(1217,'and Transportation Systems'),(1111,'and Water and Wastewater Systems'),(1086,'Chemical'),(1090,'Commercial Facilities'),(1222,'Communication'),(1128,'Communications'),(1084,'Critical Manufacturing'),(1129,'Emergency Services'),(1087,'Energy'),(1205,'Financial Services'),(1088,'Food and Agriculture'),(1131,'Government Facilities'),(1097,'Healthcare and Public Health'),(1189,'Information Technology'),(1083,'Multiple Sectors'),(1143,'Null'),(1091,'Transportation Systems'),(1089,'Water and Wastewater Systems');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sector_instances`
--

DROP TABLE IF EXISTS `sector_instances`;
/*!50001 DROP VIEW IF EXISTS `sector_instances`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sector_instances` AS SELECT 
 1 AS `sname`,
 1 AS `quantity`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=1172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfp1`
--

LOCK TABLES `sfp1` WRITE;
/*!40000 ALTER TABLE `sfp1` DISABLE KEYS */;
INSERT INTO `sfp1` VALUES (1086,'Access Control'),(1129,'API'),(1059,'Authentication'),(1072,'Exception Management'),(1063,'Information Leak'),(1057,'Memory Access'),(1113,'Memory Management'),(1056,'None'),(1073,'Other'),(1136,'Path Resolution'),(1064,'Resource Management'),(1060,'Tainted Input');
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
) ENGINE=InnoDB AUTO_INCREMENT=1166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfp2`
--

LOCK TABLES `sfp2` WRITE;
/*!40000 ALTER TABLE `sfp2` DISABLE KEYS */;
INSERT INTO `sfp2` VALUES (1050,'None',1056),(1051,'Faulty Buffer Access',1057),(1053,'Missing Authentication',1059),(1054,'Tainted Input to Variable',1060),(1056,'Incorrect Input Handling',1060),(1057,'Exposed Data',1063),(1058,'Unrestricted Consumption',1064),(1060,'Tainted Input to Command',1060),(1066,'Unchecked Status Condition',1072),(1067,'Architecture',1073),(1075,'Tainted Input to Environment',1060),(1080,'Access Management',1086),(1103,'Incorrect Buffer Length Computation',1057),(1107,'Faulty Memory Release',1113),(1111,'Faulty Resource Use',1064),(1123,'Use of an Improper API',1129),(1130,'Path Traversal',1136),(1131,'Authentication Bypass',1059),(1144,'Unrestricted Authentication',1059),(1160,'Design',1073);
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
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (535,'France','Schneider Electric'),(536,'Japan','Fuji Electric'),(537,'Japan','Omron'),(538,'Germany','Siemens'),(546,'Israel','Orpak (acquired by Gilbarco Veeder-Root)'),(547,'United States','General Electric'),(548,'Canada','Sierra Wireless'),(549,'Netherlands','Philips'),(550,'United States','Rockwell Automation'),(551,'Japan','Fujifilm'),(553,'Taiwan','Delta Electronics (Delta)'),(554,'United States, Germany, Switzerland, Poland, China, India','WAGO'),(555,'Null','ABB, Phoenix Contact, Schneider Electric, Siemens, WAGO'),(566,'Taiwan','Advantech'),(569,'Germany','Phoenix Contact'),(570,'Australia','ENTTEC'),(571,'Ireland','Medtronic'),(572,'United Kingdom','AVEVA'),(573,'United States','Columbia Weather Systems, Inc.'),(574,'Brazil','LCDS—Leão Consultoria e Desenvolvimento de Sistemas LTDA ME'),(575,'Netherlands','Gemalto'),(576,'Germany','PEPPERL+FUCHS'),(578,'Germany','PSI GridConnect GmbH (formerly known as PSI Nentec GmbH)'),(579,'Taiwan','Moxa'),(580,'United States','Intel'),(582,'United States','Horner Automation'),(584,'United States','Pangea Communications');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `products_by_sector`
--

/*!50001 DROP VIEW IF EXISTS `products_by_sector`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_by_sector` AS select `product`.`name` AS `pname`,`sector`.`name` AS `sname` from ((`product` join `sector`) join `product_sector`) where ((`product`.`id` = `product_sector`.`id_product`) and (`product_sector`.`id_sector` = `sector`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sector_instances`
--

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

-- Dump completed on 2019-05-21 19:01:02
