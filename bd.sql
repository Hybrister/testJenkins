-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ocs_test_jenkins
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `accountinfo`
--

DROP TABLE IF EXISTS `accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountinfo` (
  `HARDWARE_ID` int(11) NOT NULL,
  `TAG` varchar(255) DEFAULT 'NA',
  `fields_3` varchar(255) DEFAULT NULL,
  `fields_4` date DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`),
  KEY `TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinfo`
--

LOCK TABLES `accountinfo` WRITE;
/*!40000 ALTER TABLE `accountinfo` DISABLE KEYS */;
INSERT INTO `accountinfo` VALUES (1,'MachineDEV','test','2018-06-01'),(3,'TEST/DEV','2018-05-28',NULL);
/*!40000 ALTER TABLE `accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountinfo_config`
--

DROP TABLE IF EXISTS `accountinfo_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountinfo_config` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME_ACCOUNTINFO` varchar(255) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID_TAB` int(11) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `SHOW_ORDER` int(11) NOT NULL,
  `ACCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinfo_config`
--

LOCK TABLES `accountinfo_config` WRITE;
/*!40000 ALTER TABLE `accountinfo_config` DISABLE KEYS */;
INSERT INTO `accountinfo_config` VALUES (1,'TAG',0,'TAG',1,'TAG',1,'COMPUTERS',NULL),(2,'TAG',0,'TAG',1,'TAG',1,'SNMP',NULL),(3,NULL,0,'WXCXWCXW',1,'cxwcxwcxwcxw',2,'COMPUTERS',''),(4,NULL,6,'DATEGARANTIE',1,'DATE GARANTIE',3,'COMPUTERS','');
/*!40000 ALTER TABLE `accountinfo_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_categories`
--

DROP TABLE IF EXISTS `assets_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(255) NOT NULL,
  `CATEGORY_DESC` varchar(255) NOT NULL,
  `SQL_QUERY` text NOT NULL,
  `SQL_ARGS` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_categories`
--

LOCK TABLES `assets_categories` WRITE;
/*!40000 ALTER TABLE `assets_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batteries`
--

DROP TABLE IF EXISTS `batteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batteries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `MANUFACTUREDATE` varchar(10) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CHEMISTRY` varchar(20) DEFAULT NULL,
  `DESIGNCAPACITY` varchar(10) DEFAULT NULL,
  `DESIGNVOLTAGE` varchar(20) DEFAULT NULL,
  `SBDSVERSION` varchar(255) DEFAULT NULL,
  `MAXERROR` int(10) DEFAULT NULL,
  `OEMSPECIFIC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`),
  KEY `NAME` (`NAME`),
  KEY `MANUFACTURER` (`MANUFACTURER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batteries`
--

LOCK TABLES `batteries` WRITE;
/*!40000 ALTER TABLE `batteries` DISABLE KEYS */;
/*!40000 ALTER TABLE `batteries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bios`
--

DROP TABLE IF EXISTS `bios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bios` (
  `HARDWARE_ID` int(11) NOT NULL,
  `SMANUFACTURER` varchar(255) DEFAULT NULL,
  `SMODEL` varchar(255) DEFAULT NULL,
  `SSN` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `BMANUFACTURER` varchar(255) DEFAULT NULL,
  `BVERSION` varchar(255) DEFAULT NULL,
  `BDATE` varchar(255) DEFAULT NULL,
  `ASSETTAG` varchar(255) DEFAULT NULL,
  `MMANUFACTURER` varchar(255) DEFAULT NULL,
  `MMODEL` varchar(255) DEFAULT NULL,
  `MSN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`),
  KEY `SSN` (`SSN`),
  KEY `ASSETTAG` (`ASSETTAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bios`
--

LOCK TABLES `bios` WRITE;
/*!40000 ALTER TABLE `bios` DISABLE KEYS */;
INSERT INTO `bios` VALUES (1,'QEMU','Standard PC (i440FX + PIIX, 1996)','','Other','SeaBIOS','rel-1.11.0-0-g63451fca13-prebuilt.qemu-project.org','01/04/2014','',NULL,NULL,NULL),(3,'QEMU','Standard PC (i440FX + PIIX, 1996)','','Other','SeaBIOS','rel-1.11.0-0-g63451fca13-prebuilt.qemu-project.org','01/04/2014','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_macaddresses`
--

DROP TABLE IF EXISTS `blacklist_macaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_macaddresses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MACADDRESS` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`MACADDRESS`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_macaddresses`
--

LOCK TABLES `blacklist_macaddresses` WRITE;
/*!40000 ALTER TABLE `blacklist_macaddresses` DISABLE KEYS */;
INSERT INTO `blacklist_macaddresses` VALUES (1,'00:00:00:00:00:00'),(2,'FF:FF:FF:FF:FF:FF'),(3,'44:45:53:54:00:00'),(4,'44:45:53:54:00:01'),(5,'00:01:02:7D:9B:1C'),(6,'00:08:A1:46:06:35'),(7,'00:08:A1:66:E2:1A'),(8,'00:09:DD:10:37:68'),(9,'00:0F:EA:9A:E2:F0'),(10,'00:10:5A:72:71:F3'),(11,'00:11:11:85:08:8B'),(12,'10:11:11:11:11:11'),(13,'44:45:53:54:61:6F'),(14,'');
/*!40000 ALTER TABLE `blacklist_macaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_serials`
--

DROP TABLE IF EXISTS `blacklist_serials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_serials` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIAL` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`SERIAL`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_serials`
--

LOCK TABLES `blacklist_serials` WRITE;
/*!40000 ALTER TABLE `blacklist_serials` DISABLE KEYS */;
INSERT INTO `blacklist_serials` VALUES (1,'N/A'),(2,'(null string)'),(3,'INVALID'),(4,'SYS-1234567890'),(5,'SYS-9876543210'),(6,'SN-12345'),(7,'SN-1234567890'),(8,'1111111111'),(9,'1111111'),(10,'1'),(11,'0123456789'),(12,'12345'),(13,'123456'),(14,'1234567'),(15,'12345678'),(16,'123456789'),(17,'1234567890'),(18,'123456789000'),(19,'12345678901234567'),(20,'0000000000'),(21,'000000000'),(22,'00000000'),(23,'0000000'),(24,'000000'),(25,'NNNNNNN'),(26,'xxxxxxxxxxx'),(27,'EVAL'),(28,'IATPASS'),(29,'none'),(30,'To Be Filled By O.E.M.'),(31,'Tulip Computers'),(32,'Serial Number xxxxxx'),(33,'SN-123456fvgv3i0b8o5n6n7k'),(34,'');
/*!40000 ALTER TABLE `blacklist_serials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_subnet`
--

DROP TABLE IF EXISTS `blacklist_subnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_subnet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBNET` varchar(20) NOT NULL DEFAULT '',
  `MASK` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`SUBNET`,`MASK`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_subnet`
--

LOCK TABLES `blacklist_subnet` WRITE;
/*!40000 ALTER TABLE `blacklist_subnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_subnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `NAME` varchar(50) NOT NULL,
  `IVALUE` int(11) DEFAULT NULL,
  `TVALUE` varchar(255) DEFAULT NULL,
  `COMMENTS` text,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('FREQUENCY',0,'','Specify the frequency (days) of inventories. (0: inventory at each login. -1: no inventory)'),('PROLOG_FREQ',24,'','Specify the frequency (hours) of prolog, on agents'),('IPDISCOVER',2,'','Max number of computers per gateway retrieving IP on the network'),('INVENTORY_DIFF',1,'','Activate/Deactivate inventory incremental writing'),('IPDISCOVER_LATENCY',100,'','Default latency between two arp requests'),('INVENTORY_TRANSACTION',1,'','Enable/disable db commit at each inventory section'),('REGISTRY',1,'','Activates or not the registry query function'),('IPDISCOVER_MAX_ALIVE',7,'','Max number of days before an Ip Discover computer is replaced'),('DEPLOY',1,'','Activates or not the automatic deployment option'),('UPDATE',0,'','Activates or not the update feature'),('TRACE_DELETED',1,'','Trace deleted/duplicated computers (Activated by GLPI)'),('LOGLEVEL',0,'','ocs engine loglevel'),('AUTO_DUPLICATE_LVL',7,'','Duplicates bitmap'),('DOWNLOAD',0,'','Activate softwares auto deployment feature'),('DOWNLOAD_CYCLE_LATENCY',60,'','Time between two cycles (seconds)'),('DOWNLOAD_PERIOD_LENGTH',10,'','Number of cycles in a period'),('DOWNLOAD_FRAG_LATENCY',10,'','Time between two downloads (seconds)'),('DOWNLOAD_PERIOD_LATENCY',1,'','Time between two periods (seconds)'),('DOWNLOAD_TIMEOUT',30,'','Validity of a package (in days)'),('DOWNLOAD_PACK_DIR',0,'/var/lib/ocsinventory-reports','Directory for download files'),('IPDISCOVER_IPD_DIR',0,'/var/lib/ocsinventory-reports','Directory for Ipdiscover files'),('DOWNLOAD_SERVER_URI',0,'$IP$/local','Server url used for group of server'),('DOWNLOAD_SERVER_DOCROOT',0,'d:\\tele_ocs','Server directory used for group of server'),('LOCK_REUSE_TIME',600,'','Validity of a computer\'s lock'),('INVENTORY_WRITE_DIFF',0,'','Configure engine to make a differential update of inventory sections (row level). Lower DB backend load, higher frontend load'),('INVENTORY_CACHE_ENABLED',1,'','Enable some stuff to improve DB queries, especially for GUI multicriteria searching system'),('DOWNLOAD_GROUPS_TRACE_EVENTS',1,'','Specify if you want to track packages affected to a group on computer\'s level'),('ENABLE_GROUPS',1,'','Enable the computer\'s groups feature'),('GROUPS_CACHE_OFFSET',43200,'','Random number computed in the defined range. Designed to avoid computing many groups in the same process'),('GROUPS_CACHE_REVALIDATE',43200,'','Specify the validity of computer\'s groups (default: compute it once a day - see offset)'),('IPDISCOVER_BETTER_THRESHOLD',1,'','Specify the minimal difference to replace an ipdiscover agent'),('IPDISCOVER_NO_POSTPONE',0,'','Disable the time before a first election (not recommended)'),('IPDISCOVER_USE_GROUPS',0,'','Enable groups for ipdiscover (for example, you might want to prevent some groups'),('GENERATE_OCS_FILES',0,'','Use with ocsinventory-injector, enable the multi entities feature'),('OCS_FILES_FORMAT',0,'OCS','Generate either compressed file or clear XML text'),('OCS_FILES_OVERWRITE',1,'','Specify if you want to keep trace of all inventory between to synchronisation with the higher level server'),('OCS_FILES_PATH',0,'/tmp','Path to ocs files directory (must be writeable)'),('OCS_SERVER_ADDRESS',0,'127.0.0.1','Ocs serveur ip for plugin webservice'),('PROLOG_FILTER_ON',0,'','Enable prolog filter stack'),('INVENTORY_FILTER_ENABLED',0,'','Enable core filter system to modify some things \"on the fly\"'),('INVENTORY_FILTER_FLOOD_IP',0,'','Enable inventory flooding filter. A dedicated ipaddress ia allowed to send a new computer only once in this period'),('INVENTORY_FILTER_FLOOD_IP_CACHE_TIME',300,'','Period definition for INVENTORY_FILTER_FLOOD_IP'),('INVENTORY_FILTER_ON',0,'','Enable inventory filter stack'),('GUI_REPORT_RAM_MAX',512,'','Filter on RAM for console page'),('GUI_REPORT_RAM_MINI',128,'','Filter on RAM for console page'),('GUI_REPORT_NOT_VIEW',3,'','Filter on DAY for console page'),('GUI_REPORT_PROC_MINI',1000,'','Filter on Hard Drive for console page'),('GUI_REPORT_DD_MAX',4000,'','Filter on Hard Drive for console page'),('GUI_REPORT_PROC_MAX',3000,'','Filter on PROCESSOR for console page'),('GUI_REPORT_DD_MINI',500,'','Filter on PROCESSOR for console page'),('GUI_REPORT_AGIN_MACH',30,'','Filter on lastdate for console page'),('TAB_ACCOUNTAG_1',1,'TAG','Default TAB on computers accountinfo'),('TAB_ACCOUNTSNMP_1',1,'TAG','Default TAB on snmp accountinfo'),('SNMP_INVENTORY_DIFF',1,NULL,'Configure engine to update snmp inventory regarding to snmp_laststate table (lower DB backend load)'),('LOG_DIR',0,'/var/lib/ocsinventory-reports','Directory for logs files'),('WARN_UPDATE',1,'1','Warn user if an update is available'),('INVENTORY_ON_STARTUP',1,'1','Launch inventory on agent service statup'),('INVENTORY_CACHE_REVALIDATE',7,'','the engine will clean the inventory cache structures'),('GUI_VERSION',0,'7011','Version of the installed GUI and database'),('SESSION_VALIDITY_TIME',600,'','Validity of a session (prolog=>postinventory)'),('DOWNLOAD_REDISTRIB',1,'','Use redistribution servers'),('LOG_SCRIPT',0,'/var/lib/ocsinventory-reports','Directory for logs scripts files'),('WOL_PORT',0,'7,9','Wol ports'),('PASSWORD_VERSION',1,'PASSWORD_BCRYPT','Password encryption version'),('INVENTORY_SESSION_ONLY',0,NULL,NULL),('CUSTOM_THEME',NULL,'OCS',NULL),('LOG_GUI',0,NULL,NULL),('TAB_CACHE',0,NULL,NULL),('CONEX_LDAP_CHECK_FIELD1_ROLE',NULL,'admin',NULL),('CONEX_LDAP_CHECK_FIELD2_ROLE',NULL,'admin',NULL),('SNMP',0,NULL,NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conntrack`
--

DROP TABLE IF EXISTS `conntrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conntrack` (
  `IP` varchar(255) NOT NULL DEFAULT '',
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IP`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conntrack`
--

LOCK TABLES `conntrack` WRITE;
/*!40000 ALTER TABLE `conntrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `conntrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controllers`
--

DROP TABLE IF EXISTS `controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controllers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (1,1,'Intel','Intel(R) 82371SB PCI Bus Master IDE Controller','Intel(R) 82371SB PCI Bus Master IDE Controller','Intel(R) 82371SB PCI Bus Master IDE Controller','','IDE Controller'),(2,1,'(Standard IDE ATA/ATAPI controllers)','ATA Channel 0','ATA Channel 0','IDE Channel','','IDE Controller'),(3,1,'(Standard IDE ATA/ATAPI controllers)','ATA Channel 1','ATA Channel 1','IDE Channel','','IDE Controller'),(4,1,'Microsoft','Microsoft Storage Spaces Controller','Microsoft Storage Spaces Controller','Microsoft Storage Spaces Controller','','SCSI Controller'),(5,1,'Intel','Intel(R) 82371SB PCI to USB Universal Host Controller','Intel(R) 82371SB PCI to USB Universal Host Controller','Intel(R) 82371SB PCI to USB Universal Host Controller','','USB Controller'),(11,3,'Intel','Intel(R) 82371SB PCI Bus Master IDE Controller','Intel(R) 82371SB PCI Bus Master IDE Controller','Intel(R) 82371SB PCI Bus Master IDE Controller','','IDE Controller'),(12,3,'(Standard IDE ATA/ATAPI controllers)','ATA Channel 0','ATA Channel 0','IDE Channel','','IDE Controller'),(13,3,'(Standard IDE ATA/ATAPI controllers)','ATA Channel 1','ATA Channel 1','IDE Channel','','IDE Controller'),(14,3,'Microsoft','Microsoft Storage Spaces Controller','Microsoft Storage Spaces Controller','Microsoft Storage Spaces Controller','','SCSI Controller'),(15,3,'Intel','Intel(R) 82371SB PCI to USB Universal Host Controller','Intel(R) 82371SB PCI to USB Universal Host Controller','Intel(R) 82371SB PCI to USB Universal Host Controller','','USB Controller');
/*!40000 ALTER TABLE `controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpus`
--

DROP TABLE IF EXISTS `cpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `CORES` int(11) DEFAULT NULL,
  `L2CACHESIZE` varchar(255) DEFAULT NULL,
  `CPUARCH` varchar(255) DEFAULT NULL,
  `DATA_WIDTH` int(11) DEFAULT NULL,
  `CURRENT_ADDRESS_WIDTH` int(11) DEFAULT NULL,
  `LOGICAL_CPUS` int(11) DEFAULT NULL,
  `VOLTAGE` varchar(255) DEFAULT NULL,
  `CURRENT_SPEED` varchar(255) DEFAULT NULL,
  `SOCKET` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpus`
--

LOCK TABLES `cpus` WRITE;
/*!40000 ALTER TABLE `cpus` DISABLE KEYS */;
INSERT INTO `cpus` VALUES (1,1,'GenuineIntel','Common KVM processor','CPU Enabled','2394',4,'0','x86_64',64,64,4,'','2394','CPU 0'),(3,3,'GenuineIntel','QEMU Virtual CPU version 2.5+','CPU Enabled','2394',4,'0','x86_64',64,64,4,'','2394','CPU 0');
/*!40000 ALTER TABLE `cpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_equiv`
--

DROP TABLE IF EXISTS `deleted_equiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleted_equiv` (
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DELETED` varchar(255) NOT NULL,
  `EQUIVALENT` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_equiv`
--

LOCK TABLES `deleted_equiv` WRITE;
/*!40000 ALTER TABLE `deleted_equiv` DISABLE KEYS */;
INSERT INTO `deleted_equiv` VALUES ('2018-06-14 15:57:18','2',NULL);
/*!40000 ALTER TABLE `deleted_equiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deploy`
--

DROP TABLE IF EXISTS `deploy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deploy` (
  `NAME` varchar(255) NOT NULL,
  `CONTENT` longblob NOT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deploy`
--

LOCK TABLES `deploy` WRITE;
/*!40000 ALTER TABLE `deploy` DISABLE KEYS */;
/*!40000 ALTER TABLE `deploy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `IVALUE` int(11) DEFAULT NULL,
  `TVALUE` varchar(255) DEFAULT NULL,
  `COMMENTS` text,
  KEY `HARDWARE_ID` (`HARDWARE_ID`),
  KEY `TVALUE` (`TVALUE`),
  KEY `IVALUE` (`IVALUE`),
  KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'IPDISCOVER',1,'172.18.26.0',''),(3,'IPDISCOVER',2,'172.18.26.0',NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetype`
--

DROP TABLE IF EXISTS `devicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicetype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicetype`
--

LOCK TABLES `devicetype` WRITE;
/*!40000 ALTER TABLE `devicetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `devicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dico_ignored`
--

DROP TABLE IF EXISTS `dico_ignored`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dico_ignored` (
  `EXTRACTED` varchar(255) NOT NULL,
  PRIMARY KEY (`EXTRACTED`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dico_ignored`
--

LOCK TABLES `dico_ignored` WRITE;
/*!40000 ALTER TABLE `dico_ignored` DISABLE KEYS */;
/*!40000 ALTER TABLE `dico_ignored` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dico_soft`
--

DROP TABLE IF EXISTS `dico_soft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dico_soft` (
  `EXTRACTED` varchar(255) NOT NULL,
  `FORMATTED` varchar(255) NOT NULL,
  PRIMARY KEY (`EXTRACTED`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dico_soft`
--

LOCK TABLES `dico_soft` WRITE;
/*!40000 ALTER TABLE `dico_soft` DISABLE KEYS */;
/*!40000 ALTER TABLE `dico_soft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_affect_rules`
--

DROP TABLE IF EXISTS `download_affect_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_affect_rules` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `CFIELD` varchar(20) NOT NULL,
  `OP` varchar(20) NOT NULL,
  `COMPTO` varchar(20) NOT NULL,
  `SERV_VALUE` varchar(20) DEFAULT NULL,
  `RULE_NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_affect_rules`
--

LOCK TABLES `download_affect_rules` WRITE;
/*!40000 ALTER TABLE `download_affect_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_affect_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_available`
--

DROP TABLE IF EXISTS `download_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_available` (
  `FILEID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `FRAGMENTS` int(11) NOT NULL,
  `SIZE` int(11) NOT NULL,
  `OSNAME` varchar(255) NOT NULL,
  `COMMENT` text,
  `ID_WK` int(11) DEFAULT NULL,
  `DELETED` int(1) DEFAULT '0',
  PRIMARY KEY (`FILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_available`
--

LOCK TABLES `download_available` WRITE;
/*!40000 ALTER TABLE `download_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_enable`
--

DROP TABLE IF EXISTS `download_enable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_enable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILEID` varchar(255) NOT NULL,
  `INFO_LOC` varchar(255) NOT NULL,
  `PACK_LOC` varchar(255) NOT NULL,
  `CERT_PATH` varchar(255) DEFAULT NULL,
  `CERT_FILE` varchar(255) DEFAULT NULL,
  `SERVER_ID` int(11) DEFAULT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FILEID` (`FILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_enable`
--

LOCK TABLES `download_enable` WRITE;
/*!40000 ALTER TABLE `download_enable` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_enable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_history`
--

DROP TABLE IF EXISTS `download_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_history` (
  `HARDWARE_ID` int(11) NOT NULL,
  `PKG_ID` int(11) NOT NULL DEFAULT '0',
  `PKG_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`PKG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_history`
--

LOCK TABLES `download_history` WRITE;
/*!40000 ALTER TABLE `download_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_servers`
--

DROP TABLE IF EXISTS `download_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_servers` (
  `HARDWARE_ID` int(11) NOT NULL,
  `URL` varchar(250) NOT NULL,
  `ADD_PORT` int(11) NOT NULL,
  `ADD_REP` varchar(250) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`HARDWARE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_servers`
--

LOCK TABLES `download_servers` WRITE;
/*!40000 ALTER TABLE `download_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_conf_values`
--

DROP TABLE IF EXISTS `downloadwk_conf_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_conf_values` (
  `FIELD` int(11) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEFAULT_FIELD` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_conf_values`
--

LOCK TABLES `downloadwk_conf_values` WRITE;
/*!40000 ALTER TABLE `downloadwk_conf_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadwk_conf_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_fields`
--

DROP TABLE IF EXISTS `downloadwk_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_fields` (
  `TAB` varchar(100) DEFAULT NULL,
  `FIELD` varchar(100) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `LBL` varchar(100) DEFAULT NULL,
  `MUST_COMPLETED` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE` varchar(255) DEFAULT NULL,
  `DEFAULT_FIELD` int(1) DEFAULT NULL,
  `RESTRICTED` int(1) DEFAULT NULL,
  `LINK_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_fields`
--

LOCK TABLES `downloadwk_fields` WRITE;
/*!40000 ALTER TABLE `downloadwk_fields` DISABLE KEYS */;
INSERT INTO `downloadwk_fields` VALUES ('1','USER',3,'1038',1,1,'loggeduser',1,0,0),('2','NAME_TELEDEPLOY',0,'1037',1,2,'',1,0,0),('2','INFO_PACK',0,'53',1,3,'',1,0,0),('3','PRIORITY',2,'1039',1,4,'',1,0,0),('3','NOTIF_USER',2,'1040',1,5,'',1,0,0),('3','REPORT_USER',2,'1041',1,6,'',1,0,0),('3','REBOOT',2,'1042',1,7,'',1,0,0),('4','VALID_INSTALL',6,'1043',1,8,'',1,0,0),('4','STATUS',2,'1046',0,9,'2',1,1,0),('5','LIST_HISTO',10,'1052',0,10,'select AUTHOR,DATE,ACTION from downloadwk_history where id_dde=%s$$$$OLD_MODIF',1,0,0);
/*!40000 ALTER TABLE `downloadwk_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_history`
--

DROP TABLE IF EXISTS `downloadwk_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DDE` int(11) DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `ACTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_history`
--

LOCK TABLES `downloadwk_history` WRITE;
/*!40000 ALTER TABLE `downloadwk_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadwk_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_pack`
--

DROP TABLE IF EXISTS `downloadwk_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_pack` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_USER` varchar(255) DEFAULT NULL,
  `GROUP_USER` varchar(255) DEFAULT NULL,
  `Q_DATE` int(11) DEFAULT NULL,
  `fields_1` varchar(255) DEFAULT NULL,
  `fields_2` varchar(255) DEFAULT NULL,
  `fields_3` varchar(255) DEFAULT NULL,
  `fields_4` varchar(255) DEFAULT NULL,
  `fields_5` varchar(255) DEFAULT NULL,
  `fields_6` varchar(255) DEFAULT NULL,
  `fields_7` varchar(255) DEFAULT NULL,
  `fields_8` varchar(255) DEFAULT NULL,
  `fields_9` varchar(255) DEFAULT NULL,
  `fields_10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_pack`
--

LOCK TABLES `downloadwk_pack` WRITE;
/*!40000 ALTER TABLE `downloadwk_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadwk_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_statut_request`
--

DROP TABLE IF EXISTS `downloadwk_statut_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_statut_request` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `LBL` varchar(255) DEFAULT NULL,
  `ACTIF` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_statut_request`
--

LOCK TABLES `downloadwk_statut_request` WRITE;
/*!40000 ALTER TABLE `downloadwk_statut_request` DISABLE KEYS */;
INSERT INTO `downloadwk_statut_request` VALUES (1,'NIV0','DELETE',0),(2,'NIV1','WAITING FOR INCLUSION',0),(3,'NIV2','ACKNOWLEDGEMENT',0),(4,'NIV3','REFUSAL',0),(5,'NIV4','NEED TO CHANGE',0),(6,'NIV5','CREATE PACKAGE',0),(7,'NIV6','LOCAL TEST',0),(8,'NIV7','PERIMETER LIMITED DEPLOYMENT',0),(9,'NIV8','DURING DEPLOYMENT',0);
/*!40000 ALTER TABLE `downloadwk_statut_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_tab_values`
--

DROP TABLE IF EXISTS `downloadwk_tab_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_tab_values` (
  `FIELD` varchar(100) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `LBL` varchar(100) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEFAULT_FIELD` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_tab_values`
--

LOCK TABLES `downloadwk_tab_values` WRITE;
/*!40000 ALTER TABLE `downloadwk_tab_values` DISABLE KEYS */;
INSERT INTO `downloadwk_tab_values` VALUES ('TAB','INFO_DEM','1033',1,1),('TAB','INFO_PAQUET','1034',2,1),('TAB','INFO_CONF','1035',3,1),('TAB','INFO_VALID','1036',4,1),('TAB','INFO_HISTO','1052',5,1);
/*!40000 ALTER TABLE `downloadwk_tab_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drives`
--

DROP TABLE IF EXISTS `drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drives` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `LETTER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `FILESYSTEM` varchar(255) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `FREE` int(11) DEFAULT NULL,
  `NUMFILES` int(11) DEFAULT NULL,
  `VOLUMN` varchar(255) DEFAULT NULL,
  `CREATEDATE` date DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drives`
--

LOCK TABLES `drives` WRITE;
/*!40000 ALTER TABLE `drives` DISABLE KEYS */;
INSERT INTO `drives` VALUES (19,1,'C:','Hard Drive','NTFS',93241,20581,0,'','0000-00-00'),(20,1,'D:','CD-Rom Drive','',0,0,0,'','0000-00-00'),(29,3,'C:','Hard Drive','NTFS',92853,30660,0,'','0000-00-00'),(30,3,'D:','CD-Rom Drive','',0,0,0,'','0000-00-00');
/*!40000 ALTER TABLE `drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_mutex`
--

DROP TABLE IF EXISTS `engine_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_mutex` (
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `PID` int(11) DEFAULT NULL,
  `TAG` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`NAME`,`TAG`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_mutex`
--

LOCK TABLES `engine_mutex` WRITE;
/*!40000 ALTER TABLE `engine_mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_persistent`
--

DROP TABLE IF EXISTS `engine_persistent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_persistent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `IVALUE` int(11) DEFAULT NULL,
  `TVALUE` varchar(255) DEFAULT NULL,
  UNIQUE KEY `NAME` (`NAME`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_persistent`
--

LOCK TABLES `engine_persistent` WRITE;
/*!40000 ALTER TABLE `engine_persistent` DISABLE KEYS */;
INSERT INTO `engine_persistent` VALUES (1,'SESSION_CLEAN_DATE',1529910807,NULL),(2,'INVENTORY_CACHE_CLEAN_DATE',1529497893,NULL);
/*!40000 ALTER TABLE `engine_persistent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `NAME` varchar(100) NOT NULL,
  `VERSION` varchar(50) NOT NULL,
  `OS` varchar(70) NOT NULL,
  `CONTENT` longblob NOT NULL,
  PRIMARY KEY (`NAME`,`OS`,`VERSION`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `HARDWARE_ID` int(11) NOT NULL DEFAULT '0',
  `REQUEST` longtext,
  `CREATE_TIME` int(11) DEFAULT '0',
  `REVALIDATE_FROM` int(11) DEFAULT '0',
  `XMLDEF` longtext,
  PRIMARY KEY (`HARDWARE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_cache`
--

DROP TABLE IF EXISTS `groups_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_cache` (
  `HARDWARE_ID` int(11) NOT NULL DEFAULT '0',
  `GROUP_ID` int(11) NOT NULL DEFAULT '0',
  `STATIC` int(11) DEFAULT '0',
  PRIMARY KEY (`HARDWARE_ID`,`GROUP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_cache`
--

LOCK TABLES `groups_cache` WRITE;
/*!40000 ALTER TABLE `groups_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICEID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `WORKGROUP` varchar(255) DEFAULT NULL,
  `USERDOMAIN` varchar(255) DEFAULT NULL,
  `OSNAME` varchar(255) DEFAULT NULL,
  `OSVERSION` varchar(255) DEFAULT NULL,
  `OSCOMMENTS` varchar(255) DEFAULT NULL,
  `PROCESSORT` varchar(255) DEFAULT NULL,
  `PROCESSORS` int(11) DEFAULT '0',
  `PROCESSORN` smallint(6) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `SWAP` int(11) DEFAULT NULL,
  `IPADDR` varchar(255) DEFAULT NULL,
  `DNS` varchar(255) DEFAULT NULL,
  `DEFAULTGATEWAY` varchar(255) DEFAULT NULL,
  `ETIME` datetime DEFAULT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `LASTCOME` datetime DEFAULT NULL,
  `QUALITY` decimal(7,4) DEFAULT NULL,
  `FIDELITY` bigint(20) DEFAULT '1',
  `USERID` varchar(255) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `WINCOMPANY` varchar(255) DEFAULT NULL,
  `WINOWNER` varchar(255) DEFAULT NULL,
  `WINPRODID` varchar(255) DEFAULT NULL,
  `WINPRODKEY` varchar(255) DEFAULT NULL,
  `USERAGENT` varchar(50) DEFAULT NULL,
  `CHECKSUM` bigint(20) unsigned DEFAULT '262143',
  `SSTATE` int(11) DEFAULT '0',
  `IPSRC` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `ARCH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`DEVICEID`,`ID`),
  KEY `NAME` (`NAME`),
  KEY `CHECKSUM` (`CHECKSUM`),
  KEY `USERID` (`USERID`),
  KEY `WORKGROUP` (`WORKGROUP`),
  KEY `OSNAME` (`OSNAME`),
  KEY `MEMORY` (`MEMORY`),
  KEY `DEVICEID` (`DEVICEID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware`
--

LOCK TABLES `hardware` WRITE;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` VALUES (1,'DESKTOP-O9ID7O1-2018-06-01-10-40-22','DESKTOP-O9ID7O1','WORKGROUP',NULL,'Microsoft Windows 10 Professionnel','10.0.16299',NULL,'Common KVM processor [4 core(s) x86_64]',2394,1,16894,19966,'172.18.26.212',NULL,NULL,NULL,'2018-06-03 15:31:49','2018-06-03 15:31:49',0.6310,4,'user-win-dev',0,NULL,NULL,'user-win-dev','00331-10000-00001-AA328','W269N-WFGWX-YVC9B-4J6C9-T83GX','OCS-NG_WINDOWS_AGENT_v2.3.1.2',524287,0,'172.18.26.212','19104CED-27A1-4B05-A0C9-ACFE6DA9FBE2','x86 64 bit'),(3,'DESKTOP-PMOIBHH-2018-06-01-16-31-07','DESKTOP-PMOIBHH','WORKGROUP',NULL,'Microsoft Windows 10 Professionnel','10.0.17134',NULL,'QEMU Virtual CPU version 2.5+ [4 core(s) x86_64]',2394,1,16500,18932,'172.18.26.218',NULL,NULL,NULL,'2018-06-25 07:17:51','2018-06-25 07:17:51',2.6962,9,NULL,0,NULL,NULL,'user-win-dev','00330-80000-00000-AA072','VK7JG-NPHTM-C97JM-9MPGT-3V66T','OCS-NG_WINDOWS_AGENT_v2.3.1.2',524287,0,'172.18.26.218','DE92B0F1-2990-4EF2-8449-2E15EC93750F','x86 64 bit');
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware_osname_cache`
--

DROP TABLE IF EXISTS `hardware_osname_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware_osname_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OSNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OSNAME` (`OSNAME`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware_osname_cache`
--

LOCK TABLES `hardware_osname_cache` WRITE;
/*!40000 ALTER TABLE `hardware_osname_cache` DISABLE KEYS */;
INSERT INTO `hardware_osname_cache` VALUES (4,'Microsoft Windows 10 Professionnel');
/*!40000 ALTER TABLE `hardware_osname_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inputs`
--

DROP TABLE IF EXISTS `inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inputs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INTERFACE` varchar(255) DEFAULT NULL,
  `POINTTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inputs`
--

LOCK TABLES `inputs` WRITE;
/*!40000 ALTER TABLE `inputs` DISABLE KEYS */;
INSERT INTO `inputs` VALUES (14,1,'Keyboard','','Étendu (101 ou 102 touches)','Standard PS/2 Keyboard','',''),(15,1,'Pointing','(Standard system devices)','USB Input Device','USB Input Device','USB',''),(16,1,'Pointing','Microsoft','PS/2 Compatible Mouse','PS/2 Compatible Mouse','PS/2',''),(20,3,'Keyboard','','Étendu (101 ou 102 touches)','Remote Desktop Keyboard Device','',''),(21,3,'Keyboard','','Étendu (101 ou 102 touches)','Standard PS/2 Keyboard','',''),(22,3,'Pointing','(Standard system devices)','USB Input Device','USB Input Device','USB',''),(23,3,'Pointing','(Standard system devices)','Remote Desktop Mouse Device','Remote Desktop Mouse Device','Other',''),(24,3,'Pointing','Microsoft','PS/2 Compatible Mouse','PS/2 Compatible Mouse','PS/2','');
/*!40000 ALTER TABLE `inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itmgmt_comments`
--

DROP TABLE IF EXISTS `itmgmt_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itmgmt_comments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `COMMENTS` longtext,
  `USER_INSERT` varchar(100) DEFAULT NULL,
  `DATE_INSERT` date DEFAULT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `VISIBLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itmgmt_comments`
--

LOCK TABLES `itmgmt_comments` WRITE;
/*!40000 ALTER TABLE `itmgmt_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `itmgmt_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `javainfo`
--

DROP TABLE IF EXISTS `javainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `javainfo` (
  `HARDWARE_ID` int(11) NOT NULL,
  `JAVANAME` varchar(255) DEFAULT 'NONAME',
  `JAVAPATHLEVEL` int(11) DEFAULT '0',
  `JAVACOUNTRY` varchar(255) DEFAULT NULL,
  `JAVACLASSPATH` varchar(255) DEFAULT NULL,
  `JAVAHOME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `javainfo`
--

LOCK TABLES `javainfo` WRITE;
/*!40000 ALTER TABLE `javainfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `javainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journallog`
--

DROP TABLE IF EXISTS `journallog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journallog` (
  `HARDWARE_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOURNALLOG` longtext,
  `LISTENERNAME` varchar(255) DEFAULT 'NONAME',
  `DATE` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '0',
  `ERRORCODE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journallog`
--

LOCK TABLES `journallog` WRITE;
/*!40000 ALTER TABLE `journallog` DISABLE KEYS */;
/*!40000 ALTER TABLE `journallog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `NAME` varchar(60) NOT NULL,
  `IMG` blob,
  `JSON_VALUE` longtext,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locks` (
  `HARDWARE_ID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `SINCE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`HARDWARE_ID`),
  KEY `SINCE` (`SINCE`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memories`
--

DROP TABLE IF EXISTS `memories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CAPACITY` varchar(255) DEFAULT NULL,
  `PURPOSE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `NUMSLOTS` smallint(6) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memories`
--

LOCK TABLES `memories` WRITE;
/*!40000 ALTER TABLE `memories` DISABLE KEYS */;
INSERT INTO `memories` VALUES (1,1,'System Memory','DIMM 0 (Multi-bit ECC)','16384','System Memory','RAM','0',1,'DIMM 0'),(2,1,'System Memory','DIMM 1 (Multi-bit ECC)','510','System Memory','RAM','0',2,'DIMM 1'),(4,3,'System Memory','DIMM 0 (Multi-bit ECC)','16384','System Memory','RAM','0',1,'DIMM 0'),(5,3,'System Memory','DIMM 1 (Multi-bit ECC)','116','System Memory','RAM','0',2,'DIMM 1');
/*!40000 ALTER TABLE `memories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modems`
--

DROP TABLE IF EXISTS `modems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modems` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modems`
--

LOCK TABLES `modems` WRITE;
/*!40000 ALTER TABLE `modems` DISABLE KEYS */;
/*!40000 ALTER TABLE `modems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitors`
--

DROP TABLE IF EXISTS `monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monitors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitors`
--

LOCK TABLES `monitors` WRITE;
/*!40000 ALTER TABLE `monitors` DISABLE KEYS */;
INSERT INTO `monitors` VALUES (1,1,'(Standard monitor types)','Generic Non-PnP Monitor','Generic Non-PnP Monitor','Generic Non-PnP Monitor',''),(3,3,'(Standard monitor types)','Generic Non-PnP Monitor','Generic Non-PnP Monitor','Generic Non-PnP Monitor','');
/*!40000 ALTER TABLE `monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netmap`
--

DROP TABLE IF EXISTS `netmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `netmap` (
  `IP` varchar(15) NOT NULL,
  `MAC` varchar(17) NOT NULL,
  `MASK` varchar(15) NOT NULL,
  `NETID` varchar(15) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MAC`),
  KEY `IP` (`IP`),
  KEY `NETID` (`NETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netmap`
--

LOCK TABLES `netmap` WRITE;
/*!40000 ALTER TABLE `netmap` DISABLE KEYS */;
INSERT INTO `netmap` VALUES ('172.18.26.254','00:14:B7:00:93:56','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','172.18.26.254'),('172.18.26.220','00:22:19:99:D0:31','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','172.18.26.220'),('172.18.26.218','1A:81:79:69:19:36','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','DESKTOP-PMOIBHH.factorfx.com'),('172.18.26.10','32:36:37:32:30:66','255.255.255.0','172.18.26.0','2018-06-03 15:31:49','172.18.26.10'),('172.18.26.11','3A:63:66:39:38:35','255.255.255.0','172.18.26.0','2018-06-03 15:31:49','172.18.26.11'),('172.18.26.201','56:2A:80:DE:E1:A2','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','DESKTOP-PMOIBHH.factorfx.com'),('172.18.26.209','5E:E5:5A:49:AC:9C','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','DESKTOP-PMOIBHH.factorfx.com'),('172.18.26.88','62:30:38:62:35:33','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','172.18.26.88'),('172.18.26.212','66:62:37:64:32:32','255.255.255.0','172.18.26.0','2018-06-03 15:31:49','DESKTOP-O9ID7O1.factorfx.com'),('172.18.26.208','AA:56:4D:1E:4B:A9','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','172.18.26.208'),('172.18.26.215','B2:48:33:EA:02:52','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','172.18.26.215'),('172.18.26.22','D6:F5:BA:16:B1:17','255.255.255.0','172.18.26.0','2018-06-03 15:31:49','172.18.26.22'),('172.18.26.13','E6:CA:BB:51:C7:FC','255.255.255.0','172.18.26.0','2018-06-25 07:17:52','172.18.26.13');
/*!40000 ALTER TABLE `netmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_devices`
--

DROP TABLE IF EXISTS `network_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_devices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) DEFAULT NULL,
  `USER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MACADDR` (`MACADDR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_devices`
--

LOCK TABLES `network_devices` WRITE;
/*!40000 ALTER TABLE `network_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `network_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networks`
--

DROP TABLE IF EXISTS `networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `TYPEMIB` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `MTU` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `IPADDRESS` varchar(255) DEFAULT NULL,
  `IPMASK` varchar(255) DEFAULT NULL,
  `IPGATEWAY` varchar(255) DEFAULT NULL,
  `IPSUBNET` varchar(255) DEFAULT NULL,
  `IPDHCP` varchar(255) DEFAULT NULL,
  `VIRTUALDEV` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `MACADDR` (`MACADDR`),
  KEY `IPADDRESS` (`IPADDRESS`),
  KEY `IPGATEWAY` (`IPGATEWAY`),
  KEY `IPSUBNET` (`IPSUBNET`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networks`
--

LOCK TABLES `networks` WRITE;
/*!40000 ALTER TABLE `networks` DISABLE KEYS */;
INSERT INTO `networks` VALUES (1,1,'Intel(R) PRO/1000 MT Network Connection','Ethernet','ethernetCsmacd','1 Gb/s','','66:62:37:64:32:32','Up','172.18.26.212','255.255.255.0','172.18.26.254','172.18.26.0','172.18.26.254',0),(5,3,'Intel(R) PRO/1000 MT Network Connection','Ethernet','ethernetCsmacd','1 Gb/s','','1A:81:79:69:19:36','Up','172.18.26.218','255.255.255.0','172.18.26.254','172.18.26.0','172.18.26.254',0),(6,3,'Intel(R) PRO/1000 MT Network Connection #2','Ethernet','ethernetCsmacd','1 Gb/s','','56:2A:80:DE:E1:A2','Up','172.18.26.201','255.255.255.0','172.18.26.254','172.18.26.0','172.18.26.254',0),(7,3,'Realtek RTL8139C+ Fast Ethernet NIC','Ethernet','ethernetCsmacd','100 Mb/s','','5E:E5:5A:49:AC:9C','Up','172.18.26.209','255.255.255.0','172.18.26.254','172.18.26.0','172.18.26.254',0);
/*!40000 ALTER TABLE `networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PASSWD` varchar(255) DEFAULT NULL,
  `ACCESSLVL` int(11) DEFAULT NULL,
  `COMMENTS` text,
  `NEW_ACCESSLVL` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `USER_GROUP` varchar(255) DEFAULT NULL,
  `PASSWORD_VERSION` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES ('admin','admin','admin','$2y$10$rtw1.eJyCRO1NYUnJ6/4UuGaOpPrCq4ugdWPg41sIhcoaRkKHTYz6',1,'Default administrator account','sadmin','','',1);
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` double NOT NULL,
  `licence` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `verminocs` double NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ports`
--

DROP TABLE IF EXISTS `ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ports` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ports`
--

LOCK TABLES `ports` WRITE;
/*!40000 ALTER TABLE `ports` DISABLE KEYS */;
/*!40000 ALTER TABLE `ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printers`
--

DROP TABLE IF EXISTS `printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DRIVER` varchar(255) DEFAULT NULL,
  `PORT` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SERVERNAME` varchar(255) DEFAULT NULL,
  `SHARENAME` varchar(255) DEFAULT NULL,
  `RESOLUTION` varchar(50) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `SHARED` int(11) DEFAULT NULL,
  `NETWORK` int(11) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printers`
--

LOCK TABLES `printers` WRITE;
/*!40000 ALTER TABLE `printers` DISABLE KEYS */;
INSERT INTO `printers` VALUES (1,1,'Microsoft XPS Document Writer','Microsoft XPS Document Writer v4','PORTPROMPT:','','','','600 x 600','',0,0),(2,1,'Microsoft Print to PDF','Microsoft Print To PDF','PORTPROMPT:','','','','600 x 600','',0,0),(3,1,'Fax','Microsoft Shared Fax Driver','SHRFAX:','','','','200 x 200','',0,0),(6,3,'Microsoft XPS Document Writer','Microsoft XPS Document Writer v4','PORTPROMPT:','','','','600 x 600','',0,0),(7,3,'Microsoft Print to PDF','Microsoft Print To PDF','PORTPROMPT:','','','','600 x 600','',0,0),(8,3,'Fax','Microsoft Shared Fax Driver','SHRFAX:','','','','200 x 200','',0,0);
/*!40000 ALTER TABLE `printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prolog_conntrack`
--

DROP TABLE IF EXISTS `prolog_conntrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prolog_conntrack` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICEID` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `DEVICEID` (`DEVICEID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prolog_conntrack`
--

LOCK TABLES `prolog_conntrack` WRITE;
/*!40000 ALTER TABLE `prolog_conntrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `prolog_conntrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regconfig`
--

DROP TABLE IF EXISTS `regconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `REGTREE` int(11) DEFAULT NULL,
  `REGKEY` text,
  `REGVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME` (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regconfig`
--

LOCK TABLES `regconfig` WRITE;
/*!40000 ALTER TABLE `regconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `regconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry`
--

DROP TABLE IF EXISTS `registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REGVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `NAME` (`NAME`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry`
--

LOCK TABLES `registry` WRITE;
/*!40000 ALTER TABLE `registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry_name_cache`
--

DROP TABLE IF EXISTS `registry_name_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry_name_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry_name_cache`
--

LOCK TABLES `registry_name_cache` WRITE;
/*!40000 ALTER TABLE `registry_name_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `registry_name_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry_regvalue_cache`
--

DROP TABLE IF EXISTS `registry_regvalue_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry_regvalue_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REGVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `REGVALUE` (`REGVALUE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry_regvalue_cache`
--

LOCK TABLES `registry_regvalue_cache` WRITE;
/*!40000 ALTER TABLE `registry_regvalue_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `registry_regvalue_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `BASEURL` varchar(255) DEFAULT NULL,
  `EXCLUDE` varchar(255) DEFAULT NULL,
  `EXCLUDED` varchar(255) DEFAULT NULL,
  `EXPIRE` varchar(255) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `MIRRORS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PKGS` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `SIZE` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `UPDATED` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sim`
--

DROP TABLE IF EXISTS `sim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sim` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `OPERATOR` varchar(255) DEFAULT NULL,
  `OPNAME` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `DEVICEID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sim`
--

LOCK TABLES `sim` WRITE;
/*!40000 ALTER TABLE `sim` DISABLE KEYS */;
/*!40000 ALTER TABLE `sim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DESIGNATION` varchar(255) DEFAULT NULL,
  `PURPOSE` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `PSHARE` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp`
--

DROP TABLE IF EXISTS `snmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IPADDR` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) NOT NULL,
  `SNMPDEVICEID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `UPTIME` varchar(255) DEFAULT NULL,
  `DOMAIN` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `CHECKSUM` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp`
--

LOCK TABLES `snmp` WRITE;
/*!40000 ALTER TABLE `snmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_accountinfo`
--

DROP TABLE IF EXISTS `snmp_accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_accountinfo` (
  `SNMP_ID` int(11) NOT NULL,
  `TAG` varchar(255) DEFAULT 'NA',
  PRIMARY KEY (`SNMP_ID`),
  KEY `TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_accountinfo`
--

LOCK TABLES `snmp_accountinfo` WRITE;
/*!40000 ALTER TABLE `snmp_accountinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_blades`
--

DROP TABLE IF EXISTS `snmp_blades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_blades` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SYSTEM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_blades`
--

LOCK TABLES `snmp_blades` WRITE;
/*!40000 ALTER TABLE `snmp_blades` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_blades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_cards`
--

DROP TABLE IF EXISTS `snmp_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_cards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `FIRMWARE` varchar(255) DEFAULT NULL,
  `SOFTWARE` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_cards`
--

LOCK TABLES `snmp_cards` WRITE;
/*!40000 ALTER TABLE `snmp_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_cartridges`
--

DROP TABLE IF EXISTS `snmp_cartridges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_cartridges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `MAXCAPACITY` int(11) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_cartridges`
--

LOCK TABLES `snmp_cartridges` WRITE;
/*!40000 ALTER TABLE `snmp_cartridges` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_cartridges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_communities`
--

DROP TABLE IF EXISTS `snmp_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_communities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(5) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `AUTHKEY` varchar(255) DEFAULT NULL,
  `AUTHPASSWD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_communities`
--

LOCK TABLES `snmp_communities` WRITE;
/*!40000 ALTER TABLE `snmp_communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_computers`
--

DROP TABLE IF EXISTS `snmp_computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_computers` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYSTEM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_computers`
--

LOCK TABLES `snmp_computers` WRITE;
/*!40000 ALTER TABLE `snmp_computers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_cpus`
--

DROP TABLE IF EXISTS `snmp_cpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_cpus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_cpus`
--

LOCK TABLES `snmp_cpus` WRITE;
/*!40000 ALTER TABLE `snmp_cpus` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_cpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_drives`
--

DROP TABLE IF EXISTS `snmp_drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_drives` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `LETTER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `FILESYSTEM` varchar(255) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `FREE` int(11) DEFAULT NULL,
  `NUMFILES` int(11) DEFAULT NULL,
  `VOLUMN` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_drives`
--

LOCK TABLES `snmp_drives` WRITE;
/*!40000 ALTER TABLE `snmp_drives` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_fans`
--

DROP TABLE IF EXISTS `snmp_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_fans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_fans`
--

LOCK TABLES `snmp_fans` WRITE;
/*!40000 ALTER TABLE `snmp_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_firewalls`
--

DROP TABLE IF EXISTS `snmp_firewalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_firewalls` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SYSTEM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_firewalls`
--

LOCK TABLES `snmp_firewalls` WRITE;
/*!40000 ALTER TABLE `snmp_firewalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_firewalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_inputs`
--

DROP TABLE IF EXISTS `snmp_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_inputs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_inputs`
--

LOCK TABLES `snmp_inputs` WRITE;
/*!40000 ALTER TABLE `snmp_inputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_laststate`
--

DROP TABLE IF EXISTS `snmp_laststate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_laststate` (
  `SNMP_ID` int(11) NOT NULL,
  `COMMON` varchar(255) DEFAULT NULL,
  `PRINTERS` varchar(255) DEFAULT NULL,
  `TRAYS` varchar(255) DEFAULT NULL,
  `CARTRIDGES` varchar(255) DEFAULT NULL,
  `NETWORKS` varchar(255) DEFAULT NULL,
  `SWITCHS` varchar(255) DEFAULT NULL,
  `BLADES` varchar(255) DEFAULT NULL,
  `STORAGES` varchar(255) DEFAULT NULL,
  `DRIVES` varchar(255) DEFAULT NULL,
  `POWERSUPPLIES` varchar(255) DEFAULT NULL,
  `FANS` varchar(255) DEFAULT NULL,
  `SWITCHINFOS` varchar(255) DEFAULT NULL,
  `LOADBALANCERS` varchar(255) DEFAULT NULL,
  `CARDS` varchar(255) DEFAULT NULL,
  `COMPUTERS` varchar(255) DEFAULT NULL,
  `SOFTWARES` varchar(255) DEFAULT NULL,
  `MEMORIES` varchar(255) DEFAULT NULL,
  `CPUS` varchar(255) DEFAULT NULL,
  `INPUTS` varchar(255) DEFAULT NULL,
  `PORTS` varchar(255) DEFAULT NULL,
  `SOUNDS` varchar(255) DEFAULT NULL,
  `VIDEOS` varchar(255) DEFAULT NULL,
  `MODEMS` varchar(255) DEFAULT NULL,
  `LOCALPRINTERS` varchar(255) DEFAULT NULL,
  `VIRTUALMACHINES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_laststate`
--

LOCK TABLES `snmp_laststate` WRITE;
/*!40000 ALTER TABLE `snmp_laststate` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_laststate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_loadbalancers`
--

DROP TABLE IF EXISTS `snmp_loadbalancers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_loadbalancers` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SYSTEM` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_loadbalancers`
--

LOCK TABLES `snmp_loadbalancers` WRITE;
/*!40000 ALTER TABLE `snmp_loadbalancers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_loadbalancers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_localprinters`
--

DROP TABLE IF EXISTS `snmp_localprinters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_localprinters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_localprinters`
--

LOCK TABLES `snmp_localprinters` WRITE;
/*!40000 ALTER TABLE `snmp_localprinters` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_localprinters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_memories`
--

DROP TABLE IF EXISTS `snmp_memories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_memories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `CAPACITY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_memories`
--

LOCK TABLES `snmp_memories` WRITE;
/*!40000 ALTER TABLE `snmp_memories` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_memories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_mibs`
--

DROP TABLE IF EXISTS `snmp_mibs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_mibs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VENDOR` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `CHECKSUM` varchar(255) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `PARSER` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_mibs`
--

LOCK TABLES `snmp_mibs` WRITE;
/*!40000 ALTER TABLE `snmp_mibs` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_mibs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_modems`
--

DROP TABLE IF EXISTS `snmp_modems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_modems` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_modems`
--

LOCK TABLES `snmp_modems` WRITE;
/*!40000 ALTER TABLE `snmp_modems` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_modems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_networks`
--

DROP TABLE IF EXISTS `snmp_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_networks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) DEFAULT NULL,
  `DEVICEMACADDR` varchar(255) DEFAULT NULL,
  `SLOT` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `DEVICEADDRESS` varchar(255) DEFAULT NULL,
  `DEVICENAME` varchar(255) DEFAULT NULL,
  `DEVICEPORT` varchar(255) DEFAULT NULL,
  `DEVICETYPE` varchar(255) DEFAULT NULL,
  `TYPEMIB` varchar(255) DEFAULT NULL,
  `IPADDR` varchar(255) DEFAULT NULL,
  `IPMASK` varchar(255) DEFAULT NULL,
  `IPGATEWAY` varchar(255) DEFAULT NULL,
  `IPSUBNET` varchar(255) DEFAULT NULL,
  `IPDHCP` varchar(255) DEFAULT NULL,
  `DRIVER` varchar(255) DEFAULT NULL,
  `VIRTUALDEV` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_networks`
--

LOCK TABLES `snmp_networks` WRITE;
/*!40000 ALTER TABLE `snmp_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_ports`
--

DROP TABLE IF EXISTS `snmp_ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_ports` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_ports`
--

LOCK TABLES `snmp_ports` WRITE;
/*!40000 ALTER TABLE `snmp_ports` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_powersupplies`
--

DROP TABLE IF EXISTS `snmp_powersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_powersupplies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_powersupplies`
--

LOCK TABLES `snmp_powersupplies` WRITE;
/*!40000 ALTER TABLE `snmp_powersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_powersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_printers`
--

DROP TABLE IF EXISTS `snmp_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_printers` (
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `COUNTER` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `ERRORSTATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_printers`
--

LOCK TABLES `snmp_printers` WRITE;
/*!40000 ALTER TABLE `snmp_printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_softwares`
--

DROP TABLE IF EXISTS `snmp_softwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_softwares` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `INSTALLDATE` varchar(255) DEFAULT NULL,
  `COMMENTS` text,
  `VERSION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_softwares`
--

LOCK TABLES `snmp_softwares` WRITE;
/*!40000 ALTER TABLE `snmp_softwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_softwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_sounds`
--

DROP TABLE IF EXISTS `snmp_sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_sounds` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_sounds`
--

LOCK TABLES `snmp_sounds` WRITE;
/*!40000 ALTER TABLE `snmp_sounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_sounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_storages`
--

DROP TABLE IF EXISTS `snmp_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_storages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `DISKSIZE` int(11) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `FIRMWARE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_storages`
--

LOCK TABLES `snmp_storages` WRITE;
/*!40000 ALTER TABLE `snmp_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_switchinfos`
--

DROP TABLE IF EXISTS `snmp_switchinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_switchinfos` (
  `SNMP_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_switchinfos`
--

LOCK TABLES `snmp_switchinfos` WRITE;
/*!40000 ALTER TABLE `snmp_switchinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_switchinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_switchs`
--

DROP TABLE IF EXISTS `snmp_switchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_switchs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SOFTVERSION` varchar(255) DEFAULT NULL,
  `FIRMVERSION` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_switchs`
--

LOCK TABLES `snmp_switchs` WRITE;
/*!40000 ALTER TABLE `snmp_switchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_switchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_trays`
--

DROP TABLE IF EXISTS `snmp_trays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_trays` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LEVEL` varchar(255) DEFAULT NULL,
  `MAXCAPACITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_trays`
--

LOCK TABLES `snmp_trays` WRITE;
/*!40000 ALTER TABLE `snmp_trays` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_trays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_videos`
--

DROP TABLE IF EXISTS `snmp_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_videos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_videos`
--

LOCK TABLES `snmp_videos` WRITE;
/*!40000 ALTER TABLE `snmp_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_virtualmachines`
--

DROP TABLE IF EXISTS `snmp_virtualmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_virtualmachines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `CONFIG_FILE` varchar(255) DEFAULT NULL,
  `CPU` int(11) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OS` varchar(255) DEFAULT NULL,
  `POWER` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_virtualmachines`
--

LOCK TABLES `snmp_virtualmachines` WRITE;
/*!40000 ALTER TABLE `snmp_virtualmachines` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_virtualmachines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_categories`
--

DROP TABLE IF EXISTS `software_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_categories`
--

LOCK TABLES `software_categories` WRITE;
/*!40000 ALTER TABLE `software_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_category_exp`
--

DROP TABLE IF EXISTS `software_category_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_category_exp` (
  `CATEGORY_ID` int(6) NOT NULL,
  `SOFTWARE_EXP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_category_exp`
--

LOCK TABLES `software_category_exp` WRITE;
/*!40000 ALTER TABLE `software_category_exp` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_category_exp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softwares`
--

DROP TABLE IF EXISTS `softwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwares` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `PUBLISHER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  `FOLDER` text,
  `COMMENTS` text,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILESIZE` int(11) DEFAULT '0',
  `SOURCE` int(11) DEFAULT NULL,
  `GUID` varchar(255) DEFAULT NULL,
  `LANGUAGE` varchar(255) DEFAULT NULL,
  `INSTALLDATE` datetime DEFAULT NULL,
  `BITSWIDTH` int(11) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `NAME` (`NAME`),
  KEY `VERSION` (`VERSION`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1590 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwares`
--

LOCK TABLES `softwares` WRITE;
/*!40000 ALTER TABLE `softwares` DISABLE KEYS */;
INSERT INTO `softwares` VALUES (1,1,'AVAST Software','Avast Antivirus Gratuit','18.4.2338','C:/Program Files/AVAST Software/Avast','','',0,1,'Avast Antivirus','','0000-00-00 00:00:00',32,NULL),(2,1,'AVAST Software','Avast Secure Browser','65.2.491.182','C:/Program Files (x86)/AVAST Software/Browser/Application','','',0,1,'Avast Secure Browser','','2018-05-17 00:00:00',32,NULL),(3,1,'Google Inc.','Google Chrome','66.0.3359.181','C:/Program Files (x86)/Google/Chrome/Application','','',0,1,'Google Chrome','','2016-09-06 00:00:00',32,NULL),(4,1,'Microsoft Corporation','Microsoft Help Viewer 2.1','2.1.21005','C:/Program Files (x86)/Microsoft Help Viewer/v2.1/','','',0,1,'Microsoft Help Viewer 2.1','','0000-00-00 00:00:00',32,NULL),(5,1,'Mozilla','Mozilla Firefox 24.6.0 (x86 fr)','24.6.0','C:/Program Files (x86)/Mozilla Firefox','Mozilla Firefox 24.6.0 (x86 fr)','',0,1,'Mozilla Firefox 24.6.0 (x86 fr)','','0000-00-00 00:00:00',32,NULL),(6,1,'Notepad++ Team','Notepad++','6.9.1','','','',0,1,'Notepad++','','0000-00-00 00:00:00',32,NULL),(7,1,'','Nullsoft Install System','2.51','C:/Program Files (x86)/NSIS','','',0,1,'NSIS','','0000-00-00 00:00:00',32,NULL),(8,1,'OCS Inventory NG Team','OCS Inventory NG Agent 2.3.1.2','2.3.1.2','','','',0,1,'OCS Inventory NG Agent','','0000-00-00 00:00:00',32,NULL),(9,1,'OCS Inventory NG','OCS Inventory NG Agent Deployment Tool 2.3.0.0','2.3.0.0','','','',0,1,'OCS Inventory NG Agent Deployment Tool','','0000-00-00 00:00:00',32,NULL),(10,1,'VideoLAN','VLC media player','2.2.6','C:/Program Files (x86)/VideoLAN/VLC','','',0,1,'VLC media player','','0000-00-00 00:00:00',32,NULL),(11,1,'Microsoft Corporation','Microsoft Help Viewer 2.1','2.1.21005','','','',0,1,'{0398BFBC-991B-3275-9463-D2BF91B3C80B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(12,1,'Microsoft Corporation','Microsoft SQL Server 2012 T-SQL Language Service','11.1.3000.0','','','',0,1,'{04DD7AF4-A6D3-4E30-9BB9-3B3670719234}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(13,1,'Microsoft Corporation','Microsoft NuGet - Visual Studio 2013','2.8.60610.756','','','',0,1,'{060E4460-DD09-34A7-A3ED-7267EAA9920C}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(14,1,'Microsoft Corporation','Windows Runtime Intellisense Content - en-us','8.100.25984','','','',0,1,'{0610DFB0-CCEA-6EC0-E3C3-A0160AD7FD98}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(15,1,'Microsoft Corporation','Visual F# 3.1 SDK','12.0.21005','','','',0,1,'{06EEE072-B561-38E5-85D9-485ABCBE8342}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(16,1,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2012','11.1.3366.16','','','',0,1,'{070C38AC-05CE-43DF-9A20-141332F6AB2B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(17,1,'Microsoft Corporation','PowerShellIntegration.Notifications','2.6.0.0','','','',0,1,'{0B48F5AE-6A17-49C1-8C65-81C6F74E6CF2}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(18,1,'Microsoft Corporation','Microsoft Visual C++ x64 Libraries','12.0.21005','','','',0,1,'{0B698858-DAB0-4F9E-A10A-125B274EDA06}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(19,1,'Microsoft Corporation','Blend for Visual Studio SDK for Silverlight 5','3.0.40218.0','C:/Program Files (x86)/Microsoft Visual Studio 11.0/Blend/','','',0,1,'{0C03A66F-1FF0-45F9-8D67-0D806EBFFBA1}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(20,1,'Microsoft Corporation','TypeScript Tools for Microsoft Visual Studio 2013','1.0.5.0','','','',0,1,'{0E4A9B1A-12D2-4827-BE61-44DBD72797FB}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(21,1,'Microsoft Corporation','Visual Studio 2012 Verification SDK - enu','12.0.30501','','','',0,1,'{129CE446-6315-3DB0-AEF2-3EE0CA4C31AE}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(22,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{13A4EE12-23EA-3371-91EE-EFB36DDFFF3E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(23,1,'Microsoft Corporation','Windows Phone 8.1 Emulators - ENU','12.0.31010.0','','','',0,1,'{166a69f6-6512-47ea-a342-17d954fc059a}','','0000-00-00 00:00:00',32,NULL),(24,1,'Microsoft Corporation','Tools for .Net 3.5','3.11.50727','','','',0,1,'{1690CE56-2231-4E59-9006-A0876D949EA8}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(25,1,'Microsoft Corporation','Visual Studio 2013 Update 5 (KB2829760)','12.0.40629','','','',0,1,'{17551f85-1d1c-4142-a83f-bbd18a3522c2}','','0000-00-00 00:00:00',32,NULL),(26,1,'Microsoft','Microsoft Windows Build 15063 Retail Debugging Symbols for x64','17.03.17.1834','','','',0,1,'{18B00F22-95C0-4179-9B1A-76FE3E0FD046}','Anglais (États-Unis)','2017-08-22 00:00:00',32,NULL),(27,1,'Microsoft Corporation','Microsoft Visual C++ 2012 Compilers - ENU Resources','11.0.60610','','','',0,1,'{18F675EA-CB03-462D-A04B-3832DBAB5318}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(28,1,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 SDK','4.5.51641','','','',0,1,'{19A5926D-66E1-46FC-854D-163AA10A52D3}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(29,1,'Microsoft Corporation','Microsoft SQL Server 2012 Data-Tier App Framework','11.1.2902.0','','','',0,1,'{1B876496-B3A2-4D22-9B12-B608A3FD4B8B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(30,1,'Microsoft Corporation','Microsoft Portable Library Multi-Targeting Pack','12.0.30501.00','','','',0,1,'{205A8E25-7ABE-30AB-929E-80A63A7AFBE3}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(31,1,'Microsoft Corporation','Build Tools - x86','12.0.40629','','','',0,1,'{20C6C9E5-B5B0-40A2-8ACD-EF08A9562A5B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(32,1,'Microsoft Corporation','Prerequisites for SSDT','12.0.2000.8','','','',0,1,'{21373064-AD95-48DB-A32E-0D9E08EF7355}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(33,1,'PreEmptive Solutions','Dotfuscator and Analytics Community Edition','5.5.4954.46574','','','',0,1,'{2386192E-D6DB-4AD2-9564-65586A0AE53E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(34,1,'Microsoft Corporation','Microsoft SQL Server 2014 Management Objects','12.0.2000.8','','','',0,1,'{2774595F-BC2A-4B12-A25B-0C37A37049B0}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(35,1,'Microsoft Corporation','Python Tools Redirection Template','1.3','','','',0,1,'{2881CFB4-71F9-40C7-8228-6395117C0EDA}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(36,1,'Microsoft Corporation','Behaviors SDK (Windows) for Visual Studio 2013','12.0.50429.0','','','',0,1,'{28C7344F-E894-4CF5-8D05-EDC7ED71796C}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(37,1,'Microsoft Corporation','Microsoft Visual Studio 2013 XAML UI Designer - ENU','12.0.40629','','','',0,1,'{2A3B9D64-305B-3046-B94C-C6FD97CF9C5F}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(38,1,'Microsoft Corporation','Visual Studio 2012 Verification SDK - ita','12.0.30501','','','',0,1,'{2F1FC167-2D88-3E8A-85AE-2D23DA16DFAF}','Italien (Italie)','2016-04-22 00:00:00',32,NULL),(39,1,'Microsoft Corporation','Build Tools Language Resources - x86','12.0.40629','','','',0,1,'{2F2A7D0D-C28D-4953-A59A-A5EF1171E03F}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(40,1,'Microsoft Corporation','Microsoft SQL Server 2012 Management Objects','11.1.3000.0','','','',0,1,'{2F7DBBE6-8EBC-495C-9041-46A772F4E311}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(41,1,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio Professionald 2013 - ENU','12.0.30723','','','',0,1,'{2F8DE575-AEF9-4E4F-BA30-65B2DFD7A6DA}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(42,1,'Microsoft Corporation','Microsoft Visual C++ 2012 Core Libraries','11.0.51106','','','',0,1,'{2F8F489A-0476-3129-857B-A553F38B192D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(43,1,'Microsoft Corporation','Microsoft Visual C++ x64-arm Cross Compilers','12.0.21005','','','',0,1,'{30F2491C-9410-4DB1-BE66-77B360B1F484}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(44,1,'Microsoft Corporation','Visual Studio 2012 驗證 SDK - cht','12.0.30501','','','',0,1,'{3169A65F-9DA5-331A-ACCE-D970F9020404}','Chinois (traditionnel, Taïwan)','2016-04-22 00:00:00',32,NULL),(45,1,'Microsoft Corporation','Visual Studio 2012 Verification SDK - chs','12.0.30501','','','',0,1,'{31FF5BE9-F816-389E-A95A-7F362878A039}','Chinois (simplifié, Chine)','2016-04-22 00:00:00',32,NULL),(46,1,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030','11.0.61030.0','','','',0,1,'{33d1fd90-4274-48a1-9bc1-97e33d9c2d6f}','','0000-00-00 00:00:00',32,NULL),(47,1,'Microsoft Corporation','Prerequisites for SSDT','11.1.3000.0','','','',0,1,'{35C1D9D6-87C0-46A3-B1B4-EDBCC063221C}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(48,1,'Microsoft Corporation','Windows Software Development Kit for Windows Store Apps','8.100.26936','','','',0,1,'{37464E70-B0B9-9DFF-649A-CBE169BAD657}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(49,1,'Microsoft Corporation','Blend for Visual Studio SDK for .NET 4.5','3.0.40218.0','C:/Program Files (x86)/Microsoft Visual Studio 11.0/Blend/','','',0,1,'{37E53780-3944-4A6A-842F-727128E8616E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(50,1,'Microsoft Corporation','AzureTools.Notifications','2.1.10731.1602','','','',0,1,'{3FBFCF2C-392A-4632-9442-14C305B44D5E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(51,1,'Microsoft Corporation','Memory Profiler','12.0.40629','','','',0,1,'{4522FE06-850C-4106-AB9E-B32C1462DF8B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(52,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501','12.0.30501.0','','','',0,1,'{4549ceb8-695a-42eb-a183-4820d542a15f}','','0000-00-00 00:00:00',32,NULL),(53,1,'Microsoft Corporation','WCF Data Services 5.6.0 Runtime','5.6.61587.0','','','',0,1,'{46910786-E4AC-41E4-A4A0-C086EA85242D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(54,1,'Microsoft Corporation','Microsoft C++ REST SDK for Visual Studio 2013','1.0','','','',0,1,'{4781443E-204D-4D98-8899-18A123C13B1E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(55,1,'Microsoft Corporation','Microsoft SQL Server 2014 T-SQL Language Service','12.0.2000.8','','','',0,1,'{47D08E7A-92A1-489B-B0BF-415516497BCE}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(56,1,'Microsoft Corporation','LocalESPC Dev12','8.100.25984','','','',0,1,'{492498A3-F88C-FE2F-755C-9B1B91724CA5}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(57,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Team Explorer Language Pack - ENU','12.0.21005','','','',0,1,'{492FCC0B-45E1-383A-A2CF-9E7F305AC200}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(58,1,'Microsoft Corporation','Microsoft .NET Framework 4.5 SDK','4.5.50710','','','',0,1,'{4AE57014-05C4-4864-A13D-86517A7E1BA4}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(59,1,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2014','12.0.2000.8','','','',0,1,'{4AEB505C-95E1-4964-9B64-8D27F3186D30}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(60,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Shell (Minimum)','12.0.21005','','','',0,1,'{5411060C-8F8C-393D-8D3B-26AF2C92FABB}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(61,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Microsoft Foundation Class Libraries','12.0.21005','','','',0,1,'{5481F163-B9E5-30A8-8441-4DBBB87D6AA2}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(62,1,'Microsoft Corporation','Windows Software Development Kit for Windows Store Apps DirectX x86 Remote','8.100.26936','','','',0,1,'{56AD3004-0B49-967F-F682-B05650B61A78}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(63,1,'Microsoft Corporation','Microsoft .NET Framework 4.5 Multi-Targeting Pack','4.5.50710','','','',0,1,'{56E962F0-4FB0-3C67-88DB-9EAA6EEFC493}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(64,1,'Microsoft Corporation','Windows Phone 8.1 SDK - ARM','8.1.15116','','','',0,1,'{571A2B56-9F41-4C64-BE77-76925F89B42D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(65,1,'Microsoft Corporation','Memory Profiler','12.0.40629','','','',0,1,'{57960F45-EDBA-4EFA-94D8-0C6FB5CCF11E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(66,1,'LogMeIn, Inc.','LogMeIn','4.1.8976','','','',0,1,'{58DCDE4A-266D-4F20-87BE-DD95873D988B}','Français (France)','2017-07-28 00:00:00',32,NULL),(67,1,'Microsoft Corporation','Behaviors SDK (Windows Phone) for Visual Studio 2013','12.0.50716.0','','','',0,1,'{594DB57D-58D1-4AA3-AE6C-BF99484F52F8}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(68,1,'Microsoft Corporation','WCF RIA Services V1.0 SP2','4.1.62812.0','','','',0,1,'{5D8DD6A8-C4D7-4554-93F9-F1CC28C72600}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(69,1,'Microsoft Corporation','Windows Phone 8.1 SDK - Desktop','8.1.15116','C:/Program Files (x86)/Microsoft XDE/8.1/','','',0,1,'{5F096BF3-CB7C-4805-8706-03ADC7EC4038}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(70,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x86-x64 Compilers','11.0.60610','','','',0,1,'{605FFCBB-EC5A-485C-B27E-189F1C8A96E5}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(71,1,'Microsoft Corporation','TypeScript Power Tool','1.0.5.0','','','',0,1,'{6098D454-CB7B-44C2-8615-D869FD9655C7}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(72,1,'Google Inc.','Google Update Helper','1.3.33.17','','','',0,1,'{60EC980A-BDA2-4CB6-A427-B07A5498B4CA}','Anglais (États-Unis)','2018-05-17 00:00:00',32,NULL),(73,1,'Microsoft Corporation','Visual F# 3.1 VS','12.0.21005','','','',0,1,'{6321F2D4-366B-3AE4-877A-8E539EC3331A}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(74,1,'Microsoft Corporation','Microsoft ASP.NET Web Pages 2 - Visual Studio 2013 - ENU','4.1.21001.0','','','',0,1,'{64297226-2B81-4588-89BD-76440BC0BCFC}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(75,1,'Microsoft Corporation','Microsoft SQL Server Data Tools Build Utilities - enu (12.0.30919.1)','12.0.30919.1','','','',0,1,'{6781FF9B-E87D-4A03-9373-A55A288B83FA}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(76,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x86-x64 Compilers','12.0.21005','','','',0,1,'{678800C0-D94E-4513-89CB-478F2B781A0B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(77,1,'Microsoft Corporation','Microsoft Visual Studio Community 2013 with Update 5','12.0.40629','','','',0,1,'{693b15f4-4a52-402e-a7ea-862b20443883}','','0000-00-00 00:00:00',32,NULL),(78,1,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 Multi-Targeting Pack','4.5.50932','','','',0,1,'{6A0C6700-EA93-372C-8871-DCCF13D160A4}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(79,1,'Microsoft Corporation','Microsoft Advertising SDK for Windows 8.1 - ENU','8.1.30809.0','','','',0,1,'{6AB13C21-C3EC-46E1-8009-6FD5EBEE515B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(80,1,'Microsoft Corporation','Microsoft Advertising SDK for Windows Phone 8.1 XAML - ENU','8.1.40427.0','','','',0,1,'{6AC81125-8485-463D-9352-3F35A2508C11}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(81,1,'Microsoft Corporation','Microsoft Visual C++ 2013 32bit Compilers - ENU Resources','12.0.21005','','','',0,1,'{6C06FEE9-C64E-453F-B8A5-D9E9B79ED040}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(82,1,'Microsoft Corporation','Microsoft Azure Mobile Services Tools for Visual Studio - v1.4','1.4.30408.1601','','','',0,1,'{6CB62149-642D-47E7-97A9-EEA0AE7EAD57}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(83,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Preparation','12.0.40629','','','',0,1,'{6DD96FAE-66DF-463E-BFD0-F938B37B7F64}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(84,1,'Microsoft Corporation','Microsoft Report Viewer Add-On for Visual Studio 2013','11.1.3442.2','','','',0,1,'{73629F80-9DFE-421A-908B-C71FBD243E5A}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(85,1,'Microsoft Corporation','Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.23026','14.0.23026.0','','','',0,1,'{74d0e5db-b326-4dae-a6b2-445b9de1836e}','','0000-00-00 00:00:00',32,NULL),(86,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Profiling Tools','12.0.30723','','','',0,1,'{77A85707-C1BA-44DA-915D-CE68AE058A78}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(87,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Debug Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{77E2D875-FD9E-3DEE-9A84-C34FDECB4ECA}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(88,1,'Microsoft Corporation','Visual Studio Extensions for Windows Library for JavaScript','2.1.30723.00','','','',0,1,'{7AE61976-6FE2-4B65-9E1C-4DE44288772B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(89,1,'Microsoft Corporation','UpdateAssistant','1.10.0.0','','','',0,1,'{7C070E60-8769-4763-BBD8-7537A28A60D4}','Langue neutre','2018-02-07 00:00:00',32,NULL),(90,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Preparation','12.0.40629','','','',0,1,'{7CDF2602-4C77-482C-BFC7-FA3F5615C4E8}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(91,1,'Microsoft Corporation','VS Update core components','12.0.40629','','','',0,1,'{7CE8C6D0-6EA4-34C3-A4ED-8C28A1D67228}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(92,1,'Microsoft Corporation','Microsoft Visual Studio 2013 XAML UI Designer','12.0.40629','','','',0,1,'{81F0D61F-CECB-383B-BA7D-362E5A2066B4}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(93,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Core Libraries','12.0.21005','','','',0,1,'{84D88F57-4130-30FE-A0B6-1E04428FE1F6}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(94,1,'VLD Team','Visual Leak Detector version 2.5','2.5','C:/Program Files (x86)/Visual Leak Detector/','','',0,1,'{851FBFF7-5148-40A2-A654-942BE80F5B90}_is1','','2017-01-02 00:00:00',32,NULL),(95,1,'Microsoft Corporation','Application Insights Tools for Visual Studio 2013','2.5','','','',0,1,'{873F2D30-973B-415E-9BCA-E465AF816CCF}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(96,1,'Microsoft Corporation','Microsoft Silverlight','5.1.20513.0','c:/Program Files (x86)/Microsoft Silverlight/','','',0,1,'{89F4137D-6C26-4A84-BDB8-2E5A4BB71E00}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(97,1,'Microsoft Corporation','Kit SDK de vérification de Visual Studio 2012 - fra','12.0.30501','','','',0,1,'{8A3862F9-F587-3DFA-AAFC-C1F0E116F05C}','Français (France)','2016-04-22 00:00:00',32,NULL),(98,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Diagnostic Tools - x86','12.0.31101','','','',0,1,'{8BD11F34-C26A-4E92-B2A2-4FFF5FC3FE67}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(99,1,'Microsoft Corporation','SDK de comprobación de Visual Studio 2012 - esn','12.0.30501','','','',0,1,'{90EF884E-5253-324C-9C11-63C9DA16BF0C}','Espagnol (International)','2016-04-22 00:00:00',32,NULL),(100,1,'PreEmptive Solutions','PreEmptive Analytics Visual Studio Components','1.2.3197.1','','Visual Studio Add In for PreEmptive Analytics Exception Reporter by PreEmptive Solutions','',0,1,'{943F3FB1-3F9C-4FB7-A4E2-6D53617068C3}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(101,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Add-in for Windows Phone','12.0.40629','','','',0,1,'{95F10366-BEDA-38E2-97C2-2CEE34E90E60}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(102,1,'Microsoft Corporation','Microsoft Visual C++ x64-x86 Cross Compilers - ENU Resources','12.0.21005','','','',0,1,'{96563105-F726-4865-8C32-416753ECA5F1}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(103,1,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack for Windows Store Apps','4.5.21005','','','',0,1,'{976C3D92-0DEC-37A6-A870-FF4FC18CD029}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(104,1,'Microsoft Corporation','Пакет Visual Studio 2012 Verification SDK - rus','12.0.30501','','','',0,1,'{977CABC5-7B4B-3AE4-8E1B-56C673C1D638}','Russe (Russie)','2016-04-22 00:00:00',32,NULL),(105,1,'Microsoft Corporation','Microsoft ASP.NET MVC 4 - Visual Studio 2013 - ENU','4.1.21001.0','','','',0,1,'{979C7495-FB42-484E-92EA-7F2A59DD7718}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(106,1,'Microsoft Corporation','Windows Software Development Kit','8.100.26936','','','',0,1,'{984022F2-9BCA-A41D-6A38-1AE658F01415}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(107,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Shell (Minimum) Resources','12.0.21005','','','',0,1,'{985EF141-95DD-3934-8F23-7C2C4C61E5F7}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(108,1,'Microsoft Corporation','Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17','9.0.30729','','','',0,1,'{9A25302D-30C0-39D9-BD6F-21E6EC160475}','Anglais (États-Unis)','2016-05-18 00:00:00',32,NULL),(109,1,'Microsoft Corporation','Microsoft Expression Blend SDK for .NET 4','2.0.20525.0','C:/Program Files (x86)/Microsoft SDKs/Expression/Blend/','','',0,1,'{9B3A1C97-A361-463E-8817-444F9F88CDFE}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(110,1,'Microsoft Corporation','Microsoft Visual Studio Professional 2013','12.0.21005','','','',0,1,'{9C593464-7F2F-37B3-89F8-7E894E3B09EA}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(111,1,'Microsoft Corporation','Blend for Visual Studio 2013 ENU resources','12.0.41002.1','C:/Program Files (x86)/Microsoft Visual Studio 12.0/Blend/','','',0,1,'{9ED1634C-4E71-4992-A1BA-7C4BE6EE39E1}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(112,1,'Microsoft Corporation','Visual Studio 2012-Verifizierungs-SDK - deu','12.0.30501','','','',0,1,'{9FB31124-1FD5-314B-8B91-E4ECC431E1D7}','Allemand (Allemagne)','2016-04-22 00:00:00',32,NULL),(113,1,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610','11.0.60610.1','','','',0,1,'{a1909659-0a08-4554-8af1-2175904903a1}','','0000-00-00 00:00:00',32,NULL),(114,1,'Microsoft Corporation','Windows Software Development Kit DirectX x86 Remote','8.100.25984','','','',0,1,'{A1CB8286-CFB3-A985-D799-721A0F2A27F3}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(115,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Extended Libraries','12.0.21005','','','',0,1,'{A1D06677-1103-32DE-AA74-6EE44DCF7F81}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(116,1,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack for Windows Store Apps (ENU)','4.5.21005','','','',0,1,'{A223B446-EC3D-3031-828D-5188800AB782}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(117,1,'Microsoft Corporation','Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23026','14.0.23026','','Caution. Removing this product might prevent some applications from running.','',0,1,'{A2563E55-3BEC-3828-8D67-E5E8B9E8B675}','Anglais (États-Unis)','2016-04-29 00:00:00',32,NULL),(118,1,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio 2013 - ENU','12.0.30723','','','',0,1,'{A35D7103-E0AE-4421-98E9-3F5EEEED3B7D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(119,1,'Microsoft Corporation','Microsoft Visual C++ x86 Libraries','12.0.21005','','','',0,1,'{A3B8D9FB-CA7D-4487-8CA2-A6A2C8AD1077}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(120,1,'Microsoft Corporation','Microsoft SQL Server System CLR Types','10.50.1600.1','','','',0,1,'{A47FD1BF-A815-4A76-BE65-53A15BD5D25D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(121,1,'appsolute Gmbh','MAMP & MAMP PRO version 3.2.2','3.2.2','C:/MAMP/','','',0,1,'{A62E77D4-9B74-4CA0-A254-EFE711F7A298}_is1','','2016-08-29 00:00:00',32,NULL),(122,1,'Microsoft Corporation','Microsoft Visual C++ 2012 Compilers','11.0.60610','','','',0,1,'{A7E87388-3512-4D9C-9BBA-284C3577CBE9}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(123,1,'Microsoft Corporation','Microsoft Visual C++ ARM Libraries','12.0.21005','','','',0,1,'{A8229A09-E570-412B-8D18-E78985673E34}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(124,1,'Google Inc.','Google Update Helper','1.3.21.169','','','',0,1,'{A92DAB39-4E2C-4304-9AB6-BC44E68B55E2}','Anglais (États-Unis)','2016-09-06 00:00:00',32,NULL),(125,1,'Adobe Systems Incorporated','Adobe Refresh Manager','1.8.0','C:/Program Files (x86)/Common Files/Adobe/ARM/1.0/','','',0,1,'{AC76BA86-0804-1033-1959-001824265200}','Anglais (États-Unis)','2018-05-16 00:00:00',32,NULL),(126,1,'Adobe Systems Incorporated','Adobe Acrobat Reader DC - Français','18.011.20040','C:/Program Files (x86)/Adobe/Acrobat Reader DC/','','',0,1,'{AC76BA86-7AD7-1036-7B44-AC0F074E4100}','Français (France)','2018-05-16 00:00:00',32,NULL),(127,1,'strawberryperl.com project','Strawberry Perl','5.16.1001','C:/strawberry/','Strawberry Perl version 5.16.1.1','',0,1,'{AC83769C-6BFB-1014-AAC3-6851A6B8C69B}','Anglais (États-Unis)','2016-08-29 00:00:00',32,NULL),(128,1,'Microsoft Corporation','Microsoft SQL Server Data Tools - enu (12.0.41012.0)','12.0.41012.0','','','',0,1,'{AC8E0CF4-42A1-4151-B684-97CF6FD726CF}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(129,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Shell (Minimum) Interop Assemblies','12.0.21005','','','',0,1,'{AE937DBA-FEFD-3BFE-9860-0591C0F91D61}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(130,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030','11.0.61030','','Caution. Removing this product might prevent some applications from running.','',0,1,'{B175520C-86A2-35A7-8619-86DC379688B9}','Anglais (États-Unis)','2016-06-13 00:00:00',32,NULL),(131,1,'Microsoft','LocalESPCui for en-us Dev12','8.100.25984','','','',0,1,'{B1C38F27-D377-8C98-D98D-29B67C0B978D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(132,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501','12.0.30501.0','','','',0,1,'{b3c7f59f-dc40-4be9-829c-77dd292978ea}','','0000-00-00 00:00:00',32,NULL),(133,1,'Microsoft Corporation','Microsoft Visual C++ x64-arm Cross Compilers - ENU Resources','12.0.21005','','','',0,1,'{B3C98C29-A2BE-455F-9285-13B745282271}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(134,1,'Microsoft Corporation','Microsoft Portable Library Multi-Targeting Pack Language Pack - enu','12.0.30501.00','','','',0,1,'{B503082D-B4CD-32E5-A97C-AB10D2E9111A}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(135,1,'Microsoft Corporation','Microsoft ASP.NET Web Pages 2 Runtime','2.0.20716.0','','','',0,1,'{B536762B-1047-4B51-8ECF-46D5686E5416}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(136,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Devenv','12.0.21005','','','',0,1,'{B6A0A174-33E0-3D42-92EA-547D318CB149}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(137,1,'Microsoft Corporation','Microsoft Azure Shared Components for Visual Studio 2013 - v1.4','1.4.30416.1601','','','',0,1,'{BAA645E9-0582-40CA-AE7D-437260448080}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(138,1,'Microsoft Corporation','Microsoft Visual C++ x64 Native Compilers - ENU Resources','12.0.21005','','','',0,1,'{BB0D9EE5-F7B1-4986-AF62-DB3BED9A83BC}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(139,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030','11.0.61030','','Caution. Removing this product might prevent some applications from running.','',0,1,'{BD95A8CD-1D9F-35AD-981A-3E7925026EBB}','Anglais (États-Unis)','2016-06-13 00:00:00',32,NULL),(140,1,'Microsoft Corporation','Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23026','14.0.23026','','Caution. Removing this product might prevent some applications from running.','',0,1,'{BE960C1C-7BAD-3DE6-8B1A-2616FE532845}','Anglais (États-Unis)','2016-04-29 00:00:00',32,NULL),(141,1,'Microsoft Corporation','WCF Data Services Tools for Microsoft Visual Studio 2013','5.6.61587.0','','','',0,1,'{BF3E2194-F89B-44FB-A801-464BF787599F}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(142,1,'Microsoft Corporation','Windows Phone 8.1 SDK - x86','8.1.15116','','','',0,1,'{C11FB9D6-9CC7-4F10-83F4-36BD6C2A5D22}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(143,1,'Microsoft Corporation','Microsoft Visual C++ x64-x86 Cross Compilers','12.0.21005','','','',0,1,'{C1D0E508-ECAF-45AA-A549-1E26B9ECE0FB}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(144,1,'Microsoft Corporation','Microsoft ASP.NET and Web Tools 2013.5 - Visual Studio 2013','12.5.60612.0','','','',0,1,'{C2510400-5588-393F-A27B-A584A0AB7B94}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(145,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Devenv Resources','12.0.21005','','','',0,1,'{C26C1495-8EBE-3F71-BDA1-7DE2010840D8}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(146,1,'Microsoft Corporation','Visual Studio 2012 Verification SDK - jpn','12.0.30501','','','',0,1,'{C47A1D4C-13B1-3E81-A367-83FB8F4FBF8E}','Japonais (Japon)','2016-04-22 00:00:00',32,NULL),(147,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Add-in for Windows Phone - ENU Language Pack','12.0.30723','','','',0,1,'{C629CD13-3E1A-33A2-9515-23F7BF4C5D06}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(148,1,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio Professional 2013','12.0.30723','','','',0,1,'{C7B84BB5-B871-4020-9C0D-CB08D9B77526}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(149,1,'Microsoft Corporation','Team Explorer for Microsoft Visual Studio 2013','12.0.21005','','','',0,1,'{C9E7751E-88ED-36CF-B610-71A1D262E906}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(150,1,'Microsoft','Microsoft Windows Build 15063 Retail Debugging Symbols for X86','17.03.17.1834','','','',0,1,'{CC09B39B-F534-4066-B44F-4E21A7FD8747}','Anglais (États-Unis)','2017-08-22 00:00:00',32,NULL),(151,1,'Microsoft Corporation','Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022','9.0.21022','','','',0,1,'{CC1DB186-550F-3CFE-A2A9-EBA5E5A34BC1}','Français (France)','2016-05-17 00:00:00',32,NULL),(152,1,'Microsoft Corporation','Microsoft .NET Framework 4 Multi-Targeting Pack','4.0.30319','','','',0,1,'{CFEF48A8-BFB8-3EAC-8BA5-DE4F8AA267CE}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(153,1,'Microsoft Corporation','Update for (KB2504637)','1','','This update is for . If you later install a more recent service pack, this update will be uninstalled automatically. For more information, visit http://support.microsoft.com/kb/2504637.','',0,1,'{CFEF48A8-BFB8-3EAC-8BA5-DE4F8AA267CE}.KB2504637','','0000-00-00 00:00:00',32,NULL),(154,1,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 Multi-Targeting Pack (ENU)','4.5.50932','','','',0,1,'{D3517C62-68A5-37CF-92F7-93C029A89681}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(155,1,'Microsoft Corporation','Microsoft Visual C++ 2012 32bit Compilers - ENU Resources','11.0.60610','','','',0,1,'{D3A828A9-FD4A-4463-9CB0-9673C682A0C7}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(156,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Core Libraries','12.0.21005','','','',0,1,'{D42681AA-BC16-3C84-949E-45F05D2AA997}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(157,1,'Microsoft Corporation','Entity Framework 6.1.3 Tools for Visual Studio 2013','12.0.40302.0','','','',0,1,'{D5170452-84D1-4725-AD9C-F9ECFD0A9E9F}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(158,1,'Microsoft Corporation','Assistant Mise à jour de Windows 10','1.4.9200.22391','','','',0,1,'{D5C69738-B486-402E-85AC-2456D98A64E4}','','0000-00-00 00:00:00',32,NULL),(159,1,'Microsoft Corporation','Microsoft C++ Azure Mobile SDK for Visual Studio 2013','1.0','','','',0,1,'{D8DEAAC1-A503-4C97-90F7-EF1E58A3E509}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(160,1,'Microsoft Corporation','Microsoft ASP.NET Web Frameworks and Tools - Visual Studio 2013 - ENU','5.2.30612.0','','','',0,1,'{D99400A2-8198-4832-0863-7DE9D1FF9A43}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(161,1,'Microsoft Corporation','Visual Studio 2012 Verification SDK','12.0.40629','','','',0,1,'{DA0955EE-A78A-3355-B0A2-50DA02DCF8BF}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(162,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Compilers','12.0.21005','','','',0,1,'{DB5600F1-DE83-46DE-B162-5FC4400EAF5B}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(163,1,'LogMeIn, Inc.','LogMeIn Client','1.3.3212','','','',0,1,'{DBECEFDA-F00A-48F8-B507-7E0BE6BBFE58}','Anglais (États-Unis)','2017-07-28 00:00:00',32,NULL),(164,1,'Microsoft Corporation','Windows Phone SDK 8.0 Assemblies','12.0.31101','','','',0,1,'{DC8FA8B0-9EBA-38F2-934D-001BD21EACB6}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(165,1,'Microsoft Corporation','Microsoft Visual C++ x64 Native Compilers','12.0.21005','','','',0,1,'{DE0E8FAF-9758-4BFD-A16E-009DB4B8C912}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(166,1,'Microsoft Corporation','Visual Studio 2012 유효성 검사 SDK - kor','12.0.30501','','','',0,1,'{DEBF18DD-F351-3FC3-9BF4-8B20AC2EF5EF}','Coréen (Corée)','2016-04-22 00:00:00',32,NULL),(167,1,'Microsoft Corporation','Microsoft Silverlight 5 SDK','5.0.61118.0','','','',0,1,'{E1FBB3D4-ADB0-4949-B101-855DA061C735}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(168,1,'Microsoft Corporation','Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.23026','14.0.23026.0','','','',0,1,'{e46eca4f-393b-40df-9f49-076faf788d83}','','0000-00-00 00:00:00',32,NULL),(169,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Debug Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{E5CAE8D2-9F9F-3BEA-AA0F-B5B40611C704}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(170,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Compilers - ENU Resources','12.0.21005','','','',0,1,'{E6F3851E-CEEB-4ECB-A6FA-337C8F662E3D}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(171,1,'Microsoft Corporation','Microsoft Visual Studio Professional 2013 - ENU','12.0.21005','','','',0,1,'{E9674444-9491-3961-873C-017D8912185E}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(172,1,'Microsoft Corporation','Microsoft ASP.NET MVC 4 Runtime','4.0.20716.0','','','',0,1,'{EB25848D-AADC-40D7-914E-CB2E25AB5E59}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(173,1,'Microsoft Corporation','Blend for Visual Studio 2013','12.0.41002.1','C:/Program Files (x86)/Microsoft Visual Studio 12.0/Blend/','','',0,1,'{EBC890A6-DE7C-44B4-AA03-119B6190D3E1}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(174,1,'Microsoft Corporation','Microsoft Advertising Service Extension for Visual Studio','12.0.40402.0','','','',0,1,'{EBD9DB6D-180B-4C59-9622-B75CC4B32C94}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(175,1,'Microsoft Corporation','Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660','12.0.40660.0','','','',0,1,'{ef6b00ec-13e1-4c25-9064-b2f383cb8412}','','0000-00-00 00:00:00',32,NULL),(176,1,'Microsoft Corporation','Microsoft Visual Studio Community 2013','12.0.40629','','','',0,1,'{F065AD88-FDFC-3D3A-BF67-3EA31C8E88F3}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(177,1,'Microsoft Corporation','Microsoft Visual C++ 2010 x86 Redistributable - 10.0.40219','10.0.40219','','Caution. Removing this product might prevent some applications from running.','',0,1,'{F0C3E5D1-1ADE-321E-8167-68EF0DE699A5}','Langue neutre','2016-06-13 00:00:00',32,NULL),(178,1,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio 2013','12.0.40629','','','',0,1,'{F0EF6D5C-76B9-440A-8B7A-02FBEA5849F8}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(179,1,'Microsoft Corporation','Windows XP Targeting with C++','11.0.51106','','','',0,1,'{F361FE04-789E-42F3-BBAB-E7B380AA5E06}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(180,1,'Microsoft Corporation','Windows App Certification Kit x64','8.100.26795','','','',0,1,'{F395FD4F-40E5-7B56-2BCB-B3CF52B3B52C}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(181,1,'Microsoft Corporation','Microsoft Azure Mobile Services SDK','1.0.20908.0','','','',0,1,'{F6E34E18-0C00-407F-BABF-C11AD2FD4C17}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(182,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{F8CFEB22-A2E7-3971-9EDA-4B11EDEFC185}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(183,1,'Microsoft Corporation','Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022','9.0.21022','','','',0,1,'{FF66E9F6-83E7-3A3E-AF14-8DE9A809A6A4}','Anglais (États-Unis)','2016-05-04 00:00:00',32,NULL),(184,1,'Microsoft Corporation','Microsoft Visual C++ 2012 Core Libraries','11.0.51106','','','',0,1,'{FFC6E93A-B9AD-3F20-9B06-EE20E24AAEAF}','Anglais (États-Unis)','2016-04-22 00:00:00',32,NULL),(185,1,'Dominique Ottello aka Otomatic','Wampserver32 3.0.4','3.0.4','c:/wamp/','','',0,1,'{wampserver32}_is1','','2016-08-29 00:00:00',32,NULL),(186,1,'Igor Pavlov','7-Zip 15.14 (x64)','15.14','C:/Program Files/7-Zip/','','',0,1,'7-Zip','','0000-00-00 00:00:00',64,NULL),(187,1,'Mozilla','Mozilla Firefox 56.0 (x64 fr)','56.0','C:/Program Files/Mozilla Firefox','Mozilla Firefox 56.0 (x64 fr)','',0,1,'Mozilla Firefox 56.0 (x64 fr)','','0000-00-00 00:00:00',64,NULL),(188,1,'Mozilla','Mozilla Maintenance Service','54.0.1','','Mozilla Maintenance Service','',0,1,'MozillaMaintenanceService','','0000-00-00 00:00:00',64,NULL),(189,1,'Krzysztof Kowalczyk','SumatraPDF','3.1.2','C:/Program Files/SumatraPDF','','',0,1,'SumatraPDF','','2017-07-28 00:00:00',64,NULL),(190,1,'Microsoft Corporation','Microsoft SQL Server 2014 Transact-SQL ScriptDom','12.0.2000.8','','','',0,1,'{020CDFE0-C127-4047-B571-37C82396B662}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(191,1,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2012 (x64)','11.1.3366.16','','','',0,1,'{05FF8209-C4F1-4C77-BC28-791653156D20}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(192,1,'Microsoft Corporation','Visual Studio 2013 Prerequisites','12.0.21005','','','',0,1,'{0B6BDD27-3097-4FE1-BDE6-1D5EC7399563}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(193,1,'Microsoft Corporation','Microsoft Visual C++ 2015 x64 Minimum Runtime - 14.0.23026','14.0.23026','','Caution. Removing this product might prevent some applications from running.','',0,1,'{0D3E9E15-DE7A-300B-96F1-B4AF12B96488}','Anglais (États-Unis)','2016-04-29 00:00:00',64,NULL),(194,1,'Microsoft Corporation','Visual Studio 2013 Prerequisites - ENU Language Pack','12.0.21005','','','',0,1,'{16222DF7-8513-491E-91F0-F489AB2D3CB0}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(195,1,'Microsoft Corporation','Windows App Certification Kit Native Components','8.100.26629','','','',0,1,'{1D2CEC61-C3F0-C27E-7280-F9D6B10378BE}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(196,1,'Microsoft Corporation','Microsoft SQL Server 2014 Management Objects (x64)','12.0.2000.8','','','',0,1,'{1F9EB3B6-AED7-4AA7-B8F1-8E314B74B2A5}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(197,1,'Igor Pavlov','7-Zip 16.04 (x64 edition)','16.04.00.0','','','',0,1,'{23170F69-40C1-2702-1604-000001000000}','Anglais (États-Unis)','2017-07-28 00:00:00',64,NULL),(198,1,'Microsoft Corporation','Windows Phone 8.1 SDK - x64','8.1.15116','','','',0,1,'{23962731-3F6C-46A8-967B-70791876FB55}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(199,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{2EDC2FA3-1F34-34E5-9085-588C9EFD1CC6}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(200,1,'Microsoft Corporation','Microsoft SQL Server 2012 Management Objects (x64)','11.1.3000.0','','','',0,1,'{43A5C316-9521-49C3-B9B6-FCE5E1005DF0}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(201,1,'Microsoft Corporation','Microsoft SQL Server System CLR Types (x64)','10.50.1600.1','','','',0,1,'{4701DEDE-1888-49E0-BAE5-857875924CA2}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(202,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Performance Collection Tools - ENU','12.0.21005','','','',0,1,'{49055838-1EF5-40BB-89B6-8E3456B3E817}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(203,1,'Microsoft Corporation','Windows Software Development Kit DirectX x64 Remote','8.100.25984','','','',0,1,'{5247E16E-BCF8-95AB-1653-B3F8FBF8B3F1}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(204,1,'Microsoft Corporation','Update for Windows 10 for x64-based Systems (KB4023057)','2.33.0.0','','','',0,1,'{54228DC1-0B27-4215-B2BE-4D07C521F242}','Langue neutre','2018-05-16 00:00:00',64,NULL),(205,1,'Microsoft Corporation','Microsoft SQL Server 2012 Transact-SQL ScriptDom','11.1.3000.0','','','',0,1,'{54C5041B-0E91-4E92-8417-AAA12493C790}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(206,1,'','Windows Setup Remediations (x64) (KB4023057)','','','','',0,1,'{5534e02f-0f5d-40dd-ba92-bea38d22384d}.sdb','','0000-00-00 00:00:00',64,NULL),(207,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40660','12.0.40660','','Caution. Removing this product might prevent some applications from running.','',0,1,'{5740BD44-B58D-321A-AFC0-6D3D4556DD6C}','Anglais (États-Unis)','2017-09-18 00:00:00',64,NULL),(208,1,'Microsoft Corporation','Microsoft SQL Server 2012 Command Line Utilities','11.1.3000.0','','','',0,1,'{58FED865-4F13-408D-A5BF-996019C4B936}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(209,1,'Microsoft Corporation','Microsoft Team Foundation Server 2013 Update 5 Object Model Language Pack (x64) - ENU','12.0.40629','','','',0,1,'{605D8A49-0E5B-31AA-8B93-8C7F5236150B}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(210,1,'Microsoft Corporation','Microsoft Web Deploy 3.5','3.1237.1763','','','',0,1,'{69A998C5-00A9-42CA-AB4E-C31CFFCD9251}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(211,1,'Microsoft Corporation','Microsoft SQL Server 2012 Express LocalDB','11.1.3000.0','','','',0,1,'{6C026A91-640F-4A23-8B68-05D589CC6F18}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(212,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Performance Collection Tools','12.0.21005','','','',0,1,'{6D7131D1-87E5-4677-BD6A-08DCF2529076}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(213,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{764384C5-BCA9-307C-9AAC-FD443662686A}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(214,1,'Microsoft Corporation','Microsoft Visual Studio 2013 Diagnostic Tools - amd64','12.0.31101','','','',0,1,'{7818198F-3A26-442D-B34D-1664D3ABC979}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(215,1,'Microsoft Corporation','Microsoft SQL Server Compact 4.0 SP1 x64 ENU','4.0.8876.1','C:/Program Files/Microsoft SQL Server Compact Edition/','','',0,1,'{78909610-D229-459C-A936-25D92283D3FD}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(216,1,'Microsoft Corporation','IIS 8.0 Express','8.0.1557','','','',0,1,'{7BF61FA9-BDFB-4563-98AD-FCB0DA28CCC7}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(217,1,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2014','12.0.2000.8','','','',0,1,'{8C06D6DB-A391-4686-B050-99CC522A7843}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(218,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Designtime - 12.0.21005','12.0.21005','','','',0,1,'{95176218-0F93-3376-912E-B82DACCEA01B}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(219,1,'Microsoft Corporation','Windows Software Development Kit for Windows Store Apps DirectX x64 Remote','8.100.26936','','','',0,1,'{96F4525A-470D-F15C-796E-58D9988C3E5F}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(220,1,'Microsoft Corporation','Windows XP Targeting with C++','11.0.51106','','','',0,1,'{993F6DDC-63F8-4BCD-9B28-D941971A9CAC}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(221,1,'','IIS Express Application Compatibility Database for x64','','','','',0,1,'{9f4f4a9b-eec5-4906-92fe-d1f43ccf5c8d}.sdb','','0000-00-00 00:00:00',64,NULL),(222,1,'Microsoft Corporation','Microsoft SQL Server 2012 Data-Tier App Framework (x64)','11.1.2902.0','','','',0,1,'{A6BA243E-85A3-4635-A269-32949C98AC7F}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(223,1,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Debug Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{AAFF73AD-3432-3575-ABD1-14E48EF2F4CB}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(224,1,'Microsoft Corporation','Microsoft SQL Server 2014 Express LocalDB','12.0.2000.8','','','',0,1,'{AB8DE9BA-19E1-446A-BCFA-6B3DA9751E21}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(225,1,'Microsoft Corporation','Build Tools Language Resources - amd64','12.0.40629','','','',0,1,'{ACE05087-00E9-480F-A955-1C3D7B977A7D}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(226,1,'Microsoft Corporation','Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.23026','14.0.23026','','Caution. Removing this product might prevent some applications from running.','',0,1,'{BC958BD2-5DAC-3862-BB1A-C1BE0790438D}','Anglais (États-Unis)','2016-04-29 00:00:00',64,NULL),(227,1,'Microsoft Corporation','Microsoft Team Foundation Server 2013 Update 5 Object Model (x64)','12.0.40629','','','',0,1,'{BF5A97FA-DA24-3E6F-855B-603FA30FCE43}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(228,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Debug Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{C596D608-3E74-3232-8CA5-DF1DCB9F10DE}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(229,1,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40660','12.0.40660','','Caution. Removing this product might prevent some applications from running.','',0,1,'{CB0836EC-B072-368D-82B2-D3470BF95707}','Anglais (États-Unis)','2017-09-18 00:00:00',64,NULL),(230,1,'Microsoft Corporation','Microsoft SQL Server 2012 Native Client','11.1.3000.0','','','',0,1,'{D411E9C9-CE62-4DBF-9D92-4CB22B750ED5}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(231,1,'Microsoft Corporation','Build Tools - amd64','12.0.40629','','','',0,1,'{DE293220-4F3A-40C8-B825-E151A231455A}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(232,1,'Microsoft Corporation','Microsoft Visual Studio 2013 VsGraphics Helper Dependencies','12.0.21005','','','',0,1,'{F17662A3-4569-4A61-ABD4-E51B632D3C4D}','Anglais (États-Unis)','2016-04-22 00:00:00',64,NULL),(233,1,'','IIS Express Application Compatibility Database for x86','','','','',0,1,'{fdfba1f3-74ae-4255-9c10-a0f552b4610f}.sdb','','0000-00-00 00:00:00',64,NULL),(234,1,'Microsoft Corporation','Update KB4055237','','','(http://support.microsoft.com/?kbid=4055237)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(235,1,'Microsoft Corporation','Update KB4055994','','','(http://support.microsoft.com/?kbid=4055994)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(236,1,'Microsoft Corporation','Update KB4078408','','','(http://support.microsoft.com/?kbid=4078408)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(237,1,'Microsoft Corporation','Update KB4094276','','','(http://support.microsoft.com/?kbid=4094276)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(238,1,'Microsoft Corporation','Security Update KB4103729','','','(http://support.microsoft.com/?kbid=4103729)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(239,1,'Microsoft Corporation','Update KB4134661','','','(http://support.microsoft.com/?kbid=4134661)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(240,1,'Microsoft Corporation','Security Update KB4103727','','','(http://support.microsoft.com/?kbid=4103727)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(241,1,'Microsoft Corporation','Microsoft Windows 10 Professionnel','10.0.16299','','','',0,1,'','','2018-05-17 00:00:00',64,NULL),(1283,3,'Softanics','Deleaker version 2017.16.0.0','2017.16.0.0','C:/Program Files (x86)/Deleaker/','','',0,1,'Deleaker_is1','','2017-10-24 00:00:00',32,NULL),(1284,3,'Google Inc.','Google Chrome','67.0.3396.87','C:/Program Files (x86)/Google/Chrome/Application','','',0,1,'Google Chrome','','2017-09-26 00:00:00',32,NULL),(1285,3,'Microsoft Corporation','Microsoft Help Viewer 2.1','2.1.21005','C:/Program Files (x86)/Microsoft Help Viewer/v2.1/','','',0,1,'Microsoft Help Viewer 2.1','','0000-00-00 00:00:00',32,NULL),(1286,3,'Mozilla','Mozilla Maintenance Service','52.0','','Mozilla Maintenance Service','',0,1,'MozillaMaintenanceService','','0000-00-00 00:00:00',32,NULL),(1287,3,'Notepad++ Team','Notepad++ (32-bit x86)','7.5.6','','','',0,1,'Notepad++','','0000-00-00 00:00:00',32,NULL),(1288,3,'','Nullsoft Install System','3.02.1','C:/Program Files (x86)/NSIS','','',0,1,'NSIS','','0000-00-00 00:00:00',32,NULL),(1289,3,'OCS Inventory NG Team','OCS Inventory NG Agent 2.3.1.2','2.3.1.2','','','',0,1,'OCS Inventory NG Agent','','0000-00-00 00:00:00',32,NULL),(1290,3,'Martin Prikryl','WinSCP 5.11.1','5.11.1','C:/Program Files (x86)/WinSCP/','','',0,1,'winscp3_is1','','2017-09-29 00:00:00',32,NULL),(1291,3,'Microsoft Corporation','Microsoft Visual C++ 2017 x86 Minimum Runtime - 14.11.25325','14.11.25325','','Caution. Removing this product might prevent some applications from running.','',0,1,'{029DA848-1A80-34D3-BFC1-A6447BFC8E7F}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1292,3,'Microsoft Corporation','vs_tipsmsi','15.0.26621','','','',0,1,'{032E21D1-556F-49D6-9518-CF53202AF63B}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1293,3,'Microsoft Corporation','Microsoft Help Viewer 2.1','2.1.21005','','','',0,1,'{0398BFBC-991B-3275-9463-D2BF91B3C80B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1294,3,'Microsoft Corporation','Microsoft SQL Server 2012 T-SQL Language Service','11.1.3000.0','','','',0,1,'{04DD7AF4-A6D3-4E30-9BB9-3B3670719234}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1295,3,'Microsoft Corporation','Application Insights Tools for Visual Studio 2013','2.4','','','',0,1,'{05F508E8-2DC6-4B12-B6A9-51000536216A}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1296,3,'Microsoft Corporation','Windows Runtime Intellisense Content - en-us','8.100.25984','','','',0,1,'{0610DFB0-CCEA-6EC0-E3C3-A0160AD7FD98}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1297,3,'Microsoft Corporation','Visual F# 3.1 SDK','12.0.21005','','','',0,1,'{06EEE072-B561-38E5-85D9-485ABCBE8342}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1298,3,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2012','11.1.3366.16','','','',0,1,'{070C38AC-05CE-43DF-9A20-141332F6AB2B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1299,3,'Microsoft Corporation','Microsoft Visual C++ 2017 x86 Debug Runtime - 14.11.25325','14.11.25325','','Caution. Removing this product might prevent some applications from running.','',0,1,'{076E598A-2B0E-3BFF-9C28-DE9A876231E2}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1300,3,'Microsoft Corporation','Windows SDK for Windows Store Apps Headers','10.1.16299.15','','','',0,1,'{07C90F9B-3020-AD74-53A2-404D0A77E6A8}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1301,3,'Microsoft Corporation','Microsoft ASP.NET and Web Tools 2013.4 - Visual Studio 2013','12.4.51016.0','','','',0,1,'{093F1701-E0CB-3506-9366-07B69773A78B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1302,3,'Cisco Systems, Inc.','Cisco PEAP Module','1.1.6','C:/Program Files (x86)/Cisco/Cisco PEAP Module','','',0,1,'{0A4EF0E6-A912-4CDE-A7F3-6E56E7C13A2F}','Anglais (États-Unis)','2017-10-27 00:00:00',32,NULL),(1303,3,'Microsoft Corporation','Microsoft Visual C++ x64 Libraries','12.0.21005','','','',0,1,'{0B698858-DAB0-4F9E-A10A-125B274EDA06}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1304,3,'Microsoft Corporation','Blend for Visual Studio SDK for Silverlight 5','3.0.40218.0','C:/Program Files (x86)/Microsoft Visual Studio 11.0/Blend/','','',0,1,'{0C03A66F-1FF0-45F9-8D67-0D806EBFFBA1}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1305,3,'Microsoft Corporation','Windows App Certification Kit x64','10.1.16299.15','','','',0,1,'{0D9BEF83-4D44-5BCA-353F-07BA0A16CA46}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1306,3,'Microsoft Corporation','TypeScript Tools for Microsoft Visual Studio 2013','1.0.5.0','','','',0,1,'{0E4A9B1A-12D2-4827-BE61-44DBD72797FB}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1307,3,'Microsoft Corporation','Microsoft System CLR Types pour SQL Server 2017 CTP2.1','14.0.600.250','','','',0,1,'{123A19AA-2438-45D9-BCF7-F2C55FC7BEB0}','Français (France)','2017-10-20 00:00:00',32,NULL),(1308,3,'Microsoft Corporation','Visual Studio 2012 Verification SDK - enu','12.0.30501','','','',0,1,'{129CE446-6315-3DB0-AEF2-3EE0CA4C31AE}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1309,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{13A4EE12-23EA-3371-91EE-EFB36DDFFF3E}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1310,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Add-in for Windows Phone','12.0.30723','','','',0,1,'{161D2A15-59BD-3B4F-B45F-C54F5D59B6A2}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1311,3,'Microsoft Corporation','Windows Phone 8.1 Emulators - ENU','12.0.31010.0','','','',0,1,'{166a69f6-6512-47ea-a342-17d954fc059a}','','0000-00-00 00:00:00',32,NULL),(1312,3,'Microsoft Corporation','Tools for .Net 3.5','3.11.50727','','','',0,1,'{1690CE56-2231-4E59-9006-A0876D949EA8}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1313,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610','11.0.60610.1','','','',0,1,'{18637763-c8e5-4c49-ba8a-b854367f6b55}','','0000-00-00 00:00:00',32,NULL),(1314,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Compilers - ENU Resources','11.0.60610','','','',0,1,'{18F675EA-CB03-462D-A04B-3832DBAB5318}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1315,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 SDK','4.5.51641','','','',0,1,'{19A5926D-66E1-46FC-854D-163AA10A52D3}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1316,3,'Microsoft Corporation','vs_communitymsires','15.0.26621','','','',0,1,'{1A7B945D-ACF2-447F-AF55-A9351F2A70AB}','Français (France)','2017-10-20 00:00:00',32,NULL),(1317,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610','11.0.60610.1','','','',0,1,'{1af6dc7d-ee8d-4bf8-aea0-07c6969a7170}','','0000-00-00 00:00:00',32,NULL),(1318,3,'Microsoft Corporation','Microsoft SQL Server 2012 Data-Tier App Framework','11.1.2902.0','','','',0,1,'{1B876496-B3A2-4D22-9B12-B608A3FD4B8B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1319,3,'Microsoft Corporation','Windows SDK for Windows Store Apps DirectX x86 Remote','10.1.16299.15','','','',0,1,'{1D42A0CE-494E-EDB0-9613-553487B5953D}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1320,3,'Microsoft Corporation','Microsoft Portable Library Multi-Targeting Pack','12.0.30501.00','','','',0,1,'{205A8E25-7ABE-30AB-929E-80A63A7AFBE3}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1321,3,'Microsoft Corporation','Windows SDK Desktop Headers x64','10.1.16299.15','','','',0,1,'{20630AC0-B423-2229-3399-A0B5285CB325}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1322,3,'Microsoft Corporation','Prerequisites for SSDT','12.0.2000.8','','','',0,1,'{21373064-AD95-48DB-A32E-0D9E08EF7355}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1323,3,'PreEmptive Solutions','Dotfuscator and Analytics Community Edition','5.5.4954.46574','','','',0,1,'{2386192E-D6DB-4AD2-9564-65586A0AE53E}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1324,3,'Microsoft Corporation','vs_filehandler_x86','15.0.26711','','','',0,1,'{2512A3CE-E1E4-46D5-8B40-28DA3AE2261E}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1325,3,'Microsoft Corporation','Microsoft SQL Server 2014 Management Objects','12.0.2000.8','','','',0,1,'{2774595F-BC2A-4B12-A25B-0C37A37049B0}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1326,3,'Microsoft Corporation','Python Tools Redirection Template','1.3','','','',0,1,'{2881CFB4-71F9-40C7-8228-6395117C0EDA}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1327,3,'Microsoft Corporation','Behaviors SDK (Windows) for Visual Studio 2013','12.0.50429.0','','','',0,1,'{28C7344F-E894-4CF5-8D05-EDC7ED71796C}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1328,3,'Microsoft Corporation','Visual Studio 2012 Verification SDK - ita','12.0.30501','','','',0,1,'{2F1FC167-2D88-3E8A-85AE-2D23DA16DFAF}','Italien (Italie)','2018-06-21 00:00:00',32,NULL),(1329,3,'Microsoft Corporation','Microsoft SQL Server 2012 Management Objects','11.1.3000.0','','','',0,1,'{2F7DBBE6-8EBC-495C-9041-46A772F4E311}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1330,3,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio Professionald 2013 - ENU','12.0.30723','','','',0,1,'{2F8DE575-AEF9-4E4F-BA30-65B2DFD7A6DA}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1331,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Core Libraries','11.0.51106','','','',0,1,'{2F8F489A-0476-3129-857B-A553F38B192D}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1332,3,'Microsoft Corporation','Microsoft Visual C++ x64-arm Cross Compilers','12.0.21005','','','',0,1,'{30F2491C-9410-4DB1-BE66-77B360B1F484}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1333,3,'Microsoft Corporation','Visual Studio 2012 驗證 SDK - cht','12.0.30501','','','',0,1,'{3169A65F-9DA5-331A-ACCE-D970F9020404}','Chinois (traditionnel, Taïwan)','2018-06-21 00:00:00',32,NULL),(1334,3,'Microsoft Corporation','Visual Studio 2012 Verification SDK - chs','12.0.30501','','','',0,1,'{31FF5BE9-F816-389E-A95A-7F362878A039}','Chinois (simplifié, Chine)','2018-06-21 00:00:00',32,NULL),(1335,3,'REALTEK Semiconductor Corp.','REALTEK Wireless LAN Driver','1.215.243','C:/Program Files (x86)/REALTEK/SD Wireless LAN','REALTEK SD Wireless LAN Driver','',0,1,'{33AABC60-A52F-41FF-B2B9-17321240CD5}','Français (France)','2017-10-27 00:00:00',32,NULL),(1336,3,'Microsoft Corporation','Windows SDK AddOn','10.1.0.0','','','',0,1,'{350F0ECD-0783-4529-8797-98F0AD33EAC0}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1337,3,'Microsoft Corporation','Prerequisites for SSDT','11.1.3000.0','','','',0,1,'{35C1D9D6-87C0-46A3-B1B4-EDBCC063221C}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1338,3,'Microsoft Corporation','vcpp_crt.redist.clickonce','14.11.25325','','','',0,1,'{36FD213A-CFB4-4C9D-964C-615E249F329A}','Français (France)','2017-10-20 00:00:00',32,NULL),(1339,3,'Microsoft Corporation','Windows Software Development Kit for Windows Store Apps','8.100.26898','','','',0,1,'{37464E70-B0B9-9DFF-649A-CBE169BAD657}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1340,3,'Microsoft Corporation','Microsoft Azure Mobile Services SDK','1.0.21007.0','','','',0,1,'{374E7247-AC4C-4728-8F7E-E7C5BCA93908}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1341,3,'Microsoft Corporation','Blend for Visual Studio SDK for .NET 4.5','3.0.40218.0','C:/Program Files (x86)/Microsoft Visual Studio 11.0/Blend/','','',0,1,'{37E53780-3944-4A6A-842F-727128E8616E}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1342,3,'Microsoft Corporation','Windows SDK Redistributables','10.1.16299.15','','','',0,1,'{380602CD-5F67-486B-8F98-36A5EAD1A89F}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1343,3,'Microsoft Corporation','vs_FileTracker_Singleton','15.0.26621','','','',0,1,'{384F31FB-B99D-48A7-9D72-E1FEBEC2201A}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1344,3,'Microsoft Corporation','WinRT Intellisense Desktop - en-us','10.1.16299.15','','','',0,1,'{385A1387-A488-9E90-3635-086129610034}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1345,3,'Microsoft Corporation','Windows Team Extension SDK','10.1.16299.15','','','',0,1,'{3BFC920A-C3C0-2DFB-7509-03F5EFC95654}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1346,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{3D6AD258-61EA-35F5-812C-B7A02152996E}','Anglais (États-Unis)','2017-09-25 00:00:00',32,NULL),(1347,3,'Microsoft Corporation','Windows SDK Signing Tools','10.1.16299.15','','','',0,1,'{3ED687AC-3F6D-819B-3948-F0CB24111524}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1348,3,'Microsoft Corporation','Microsoft Azure Shared Components for Visual Studio 2013 - v1.3','1.3.21014.1603','','','',0,1,'{3EEBFDAA-9AF3-4119-B76F-E3CC628F8202}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1349,3,'Microsoft Corporation','AzureTools.Notifications','2.1.10731.1602','','','',0,1,'{3FBFCF2C-392A-4632-9442-14C305B44D5E}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1350,3,'Microsoft Corporation','Microsoft Visual C++ 2017 Redistributable (x86) - 14.11.25325','14.11.25325.0','','','',0,1,'{404c9c27-8377-4fd1-b607-7ca635db4e49}','','0000-00-00 00:00:00',32,NULL),(1351,3,'Microsoft Corporation','Windows Desktop Extension SDK Contracts','10.1.16299.15','','','',0,1,'{44B8DFA4-495D-9972-F663-557B1BC0CB71}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1352,3,'Microsoft Corporation','Windows SDK Modern Non-Versioned Developer Tools','10.1.16299.15','','','',0,1,'{454B446B-6DC1-3524-53D5-4439D56358EF}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1353,3,'Microsoft Corporation','Windows SDK for Windows Store Managed Apps Libs','10.1.16299.15','','','',0,1,'{458C3A87-069F-E8E2-AF52-43152BA91548}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1354,3,'Microsoft Corporation','Windows SDK Desktop Headers x86','10.1.16299.15','','','',0,1,'{4616D3B4-B5F0-ECBF-4617-0345C9550649}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1355,3,'Microsoft Corporation','WCF Data Services 5.6.0 Runtime','5.6.61587.0','','','',0,1,'{46910786-E4AC-41E4-A4A0-C086EA85242D}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1356,3,'Microsoft Corporation','Microsoft C++ REST SDK for Visual Studio 2013','1.0','','','',0,1,'{4781443E-204D-4D98-8899-18A123C13B1E}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1357,3,'Microsoft Corporation','Microsoft SQL Server 2014 T-SQL Language Service','12.0.2000.8','','','',0,1,'{47D08E7A-92A1-489B-B0BF-415516497BCE}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1358,3,'Microsoft Corporation','LocalESPC Dev12','8.100.25984','','','',0,1,'{492498A3-F88C-FE2F-755C-9B1B91724CA5}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1359,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Team Explorer Language Pack - ENU','12.0.21005','','','',0,1,'{492FCC0B-45E1-383A-A2CF-9E7F305AC200}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1360,3,'Microsoft Corporation','Microsoft .NET Framework 4.5 SDK','4.5.50710','','','',0,1,'{4AE57014-05C4-4864-A13D-86517A7E1BA4}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1361,3,'Microsoft Corporation','icecap_collectionresourcesx64','15.0.26621','','','',0,1,'{4AEA421A-3BA4-410C-94CC-EB9A40805902}','Français (France)','2017-10-20 00:00:00',32,NULL),(1362,3,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2014','12.0.2000.8','','','',0,1,'{4AEB505C-95E1-4964-9B64-8D27F3186D30}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1363,3,'Microsoft Corporation','Microsoft ASP.NET Web Frameworks and Tools - Visual Studio 2013 - ENU','5.2.21010.0','','','',0,1,'{4E7BB653-2585-4138-95F3-3455FCA04354}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1364,3,'Microsoft Corporation','Windows SDK Desktop Tools x86','10.1.16299.15','','','',0,1,'{5169186A-B6CA-38E6-BC29-54ABFAFD3721}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1365,3,'Microsoft Corporation','vs_communitymsi','15.0.26711','','','',0,1,'{52100697-9C66-44F3-BA20-68F8148CDF9B}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1366,3,'Microsoft Corporation','Visual Studio 2013 Update 4 (KB2829760)','12.0.31101','','','',0,1,'{53d408db-eb91-43fb-9d8f-167681c19763}','','0000-00-00 00:00:00',32,NULL),(1367,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Shell (Minimum)','12.0.21005','','','',0,1,'{5411060C-8F8C-393D-8D3B-26AF2C92FABB}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1368,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Microsoft Foundation Class Libraries','12.0.21005','','','',0,1,'{5481F163-B9E5-30A8-8441-4DBBB87D6AA2}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1369,3,'Microsoft Corporation','Memory Profiler','12.0.31101','','','',0,1,'{54F76D6C-0EC3-43D9-8BCC-73E31AB0BF06}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1370,3,'Microsoft Corporation','Microsoft Visual C++ 2017 x86 Additional Runtime - 14.11.25325','14.11.25325','','Caution. Removing this product might prevent some applications from running.','',0,1,'{568CD07E-0824-3EEB-AEC1-8FD51F3C85CF}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1371,3,'Microsoft Corporation','Windows Software Development Kit for Windows Store Apps DirectX x86 Remote','8.100.26898','','','',0,1,'{56AD3004-0B49-967F-F682-B05650B61A78}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1372,3,'Microsoft Corporation','Microsoft .NET Framework 4.5 Multi-Targeting Pack','4.5.50710','','','',0,1,'{56E962F0-4FB0-3C67-88DB-9EAA6EEFC493}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1373,3,'Microsoft Corporation','Windows SDK for Windows Store Apps Libs','10.1.16299.15','','','',0,1,'{57186CA6-5B4D-1D1E-0AF0-A6F5244BBA36}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1374,3,'Microsoft Corporation','Windows IoT Extension SDK','10.1.16299.15','','','',0,1,'{5899CA05-6772-95EC-4261-A09E5EE0FBF2}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1375,3,'Microsoft Corporation','Windows IoT Extension SDK Contracts','10.1.16299.15','','','',0,1,'{58BC56B7-DCB8-EE66-AA40-2EAE7E2EB0F2}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1376,3,'Microsoft Corporation','Behaviors SDK (Windows Phone) for Visual Studio 2013','12.0.50716.0','','','',0,1,'{594DB57D-58D1-4AA3-AE6C-BF99484F52F8}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1377,3,'Microsoft Corporation','vs_Graphics_Singletonx86','15.0.26621','','','',0,1,'{5A528FAB-6AD3-4F9A-9A1C-566A5C02C3D6}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1378,3,'Microsoft Corporation','WCF RIA Services V1.0 SP2','4.1.62812.0','','','',0,1,'{5D8DD6A8-C4D7-4554-93F9-F1CC28C72600}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1379,3,'Microsoft Corporation','WinRT Intellisense PPI - en-us','10.1.16299.15','','','',0,1,'{5E67F8BE-D8D2-257F-CE19-419A2D5125C7}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1380,3,'Microsoft Corporation','Microsoft Visual Studio Setup Configuration','1.12.134.36697','','','',0,1,'{5E6918DB-B11B-4136-BEB7-F4062A6814CA}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1381,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x86-x64 Compilers','11.0.60610','','','',0,1,'{605FFCBB-EC5A-485C-B27E-189F1C8A96E5}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1382,3,'Microsoft Corporation','TypeScript Power Tool','1.0.5.0','','','',0,1,'{6098D454-CB7B-44C2-8615-D869FD9655C7}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1383,3,'Google Inc.','Google Update Helper','1.3.33.17','','','',0,1,'{60EC980A-BDA2-4CB6-A427-B07A5498B4CA}','Anglais (États-Unis)','2018-05-17 00:00:00',32,NULL),(1384,3,'Microsoft Corporation','Windows Software Development Kit - Windows 10.0.16299.15','10.1.16299.15','','','',0,1,'{6195c203-b53c-4bb7-983a-6070a902e704}','','0000-00-00 00:00:00',32,NULL),(1385,3,'Microsoft Corporation','Visual F# 3.1 VS','12.0.21005','','','',0,1,'{6321F2D4-366B-3AE4-877A-8E539EC3331A}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1386,3,'Microsoft Corporation','Microsoft ASP.NET Web Pages 2 - Visual Studio 2013 - ENU','4.1.21001.0','','','',0,1,'{64297226-2B81-4588-89BD-76440BC0BCFC}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1387,3,'Cisco Systems, Inc.','Cisco EAP-FAST Module','2.2.14','C:/Program Files (x86)/Cisco/Cisco EAP-FAST Module','','',0,1,'{64BF0187-F3D2-498B-99EA-163AF9AE6EC9}','Anglais (États-Unis)','2017-10-27 00:00:00',32,NULL),(1388,3,'Microsoft Corporation','Microsoft Azure Mobile Services Tools for Visual Studio - v1.3','1.3.21014.1602','','','',0,1,'{6621F198-7F26-43F9-81E8-9457797B2CBA}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1389,3,'Microsoft Corporation','vs_minshellmsi','15.0.26906','','','',0,1,'{66555B06-A474-4F98-A9D4-D753E5EBABE8}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1390,3,'Microsoft Corporation','Microsoft Visual Studio 2013 XAML UI Designer - ENU','12.0.31101','','','',0,1,'{66FFC445-6EB0-3D02-95D7-925E3050FFB8}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1391,3,'Microsoft Corporation','Microsoft SQL Server Data Tools Build Utilities - enu (12.0.30919.1)','12.0.30919.1','','','',0,1,'{6781FF9B-E87D-4A03-9373-A55A288B83FA}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1392,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x86-x64 Compilers','12.0.21005','','','',0,1,'{678800C0-D94E-4513-89CB-478F2B781A0B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1393,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 Multi-Targeting Pack','4.5.50932','','','',0,1,'{6A0C6700-EA93-372C-8871-DCCF13D160A4}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1394,3,'Microsoft Corporation','Microsoft Advertising SDK for Windows 8.1 - ENU','8.1.30809.0','','','',0,1,'{6AB13C21-C3EC-46E1-8009-6FD5EBEE515B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1395,3,'Microsoft Corporation','Microsoft Advertising SDK for Windows Phone 8.1 XAML - ENU','8.1.40427.0','','','',0,1,'{6AC81125-8485-463D-9352-3F35A2508C11}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1396,3,'Microsoft Corporation','Windows App Certification Kit SupportedApiList x86','10.1.16299.15','','','',0,1,'{6BC13537-D39F-5BF2-85F3-E073AE3ED446}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1397,3,'Microsoft Corporation','Microsoft Visual C++ 2013 32bit Compilers - ENU Resources','12.0.21005','','','',0,1,'{6C06FEE9-C64E-453F-B8A5-D9E9B79ED040}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1398,3,'Microsoft Corporation','Microsoft Visual C++ 2017 Redistributable (x64) - 14.11.25325','14.11.25325.0','','','',0,1,'{6c6356fe-cbfa-4944-9bed-a9e99f45cb7a}','','0000-00-00 00:00:00',32,NULL),(1399,3,'Microsoft Corporation','WinRT Intellisense IoT - en-us','10.1.16299.15','','','',0,1,'{7336279F-8F8F-5530-A543-3BE963846C0A}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1400,3,'Microsoft Corporation','Microsoft Report Viewer Add-On for Visual Studio 2013','11.1.3442.2','','','',0,1,'{73629F80-9DFE-421A-908B-C71FBD243E5A}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1401,3,'Microsoft Corporation','icecap_collection_neutral','15.0.26621','','','',0,1,'{743913D7-41D9-48C0-977D-FC87743A9BEC}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1402,3,'Microsoft Corporation','Windows SDK for Windows Store Apps Contracts','10.1.16299.15','','','',0,1,'{7736BDAD-A5B6-8BE7-E34B-F53280448C29}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1403,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Profiling Tools','12.0.30723','','','',0,1,'{77A85707-C1BA-44DA-915D-CE68AE058A78}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1404,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Debug Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{77E2D875-FD9E-3DEE-9A84-C34FDECB4ECA}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1405,3,'Microsoft Corporation','Windows SDK Modern Versioned Developer Tools','10.1.16299.15','','','',0,1,'{79513535-6F89-55F0-E50F-5D563C4DEAF7}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1406,3,'Microsoft Corporation','Windows Phone 8.1 SDK - ARM','8.1.14194','','','',0,1,'{7AC97190-67DC-4D68-B743-43F7E1FC393A}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1407,3,'Microsoft Corporation','Visual Studio Extensions for Windows Library for JavaScript','2.1.30723.00','','','',0,1,'{7AE61976-6FE2-4B65-9E1C-4DE44288772B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1408,3,'Microsoft Corporation','WinRT Intellisense UAP - en-us','10.1.16299.15','','','',0,1,'{7D4C7F4A-02A9-E434-6451-C8787DF28C1F}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1409,3,'Microsoft Corporation','Windows SDK Desktop Tools x64','10.1.16299.15','','','',0,1,'{8105E4C5-379E-F713-8A4D-14A2317A7ABE}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1410,3,'Microsoft Corporation','Windows SDK Desktop Libs x86','10.1.16299.15','','','',0,1,'{82BEC2F8-2758-E0A4-F14B-CAAF3234FE00}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1411,3,'Microsoft Corporation','Windows Desktop Extension SDK','10.1.16299.15','','','',0,1,'{8358B2F8-FEE0-7FBA-14E5-AC84A7E61552}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1412,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Core Libraries','12.0.21005','','','',0,1,'{84D88F57-4130-30FE-A0B6-1E04428FE1F6}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1413,3,'Microsoft Corporation','Entity Framework 6.1.1 Tools for Visual Studio 2013','12.0.30610.0','','','',0,1,'{85253F13-EE42-4850-A3A5-79B90E92D7AC}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1414,3,'Microsoft Corporation','vs_minshellmsires','15.0.26621','','','',0,1,'{853FD6F3-0BC9-414A-986B-90EF538DBAA1}','Français (France)','2017-10-20 00:00:00',32,NULL),(1415,3,'Microsoft','Kits Configuration Installer','10.1.16299.15','','','',0,1,'{86E59C8F-61D5-1782-A3CE-60AE7E4D7791}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1416,3,'Microsoft Corporation','Microsoft Silverlight','5.1.20513.0','c:/Program Files (x86)/Microsoft Silverlight/','','',0,1,'{89F4137D-6C26-4A84-BDB8-2E5A4BB71E00}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1417,3,'Microsoft Corporation','Kit SDK de vérification de Visual Studio 2012 - fra','12.0.30501','','','',0,1,'{8A3862F9-F587-3DFA-AAFC-C1F0E116F05C}','Français (France)','2018-06-21 00:00:00',32,NULL),(1418,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Diagnostic Tools - x86','12.0.31101','','','',0,1,'{8BD11F34-C26A-4E92-B2A2-4FFF5FC3FE67}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1419,3,'Microsoft Corporation','Windows IP Over USB','10.1.16299.15','','','',0,1,'{8CBFAC58-3058-B2AD-10E2-9E2A859B554B}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1420,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Preparation','12.0.31101','','','',0,1,'{8F6DB54B-8CB9-4928-896D-312BFE833131}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1421,3,'Microsoft Corporation','icecap_collectionresources','15.0.26621','','','',0,1,'{8F8D6F5C-6FA8-437F-80CC-F9085B57842E}','Français (France)','2017-10-20 00:00:00',32,NULL),(1422,3,'Microsoft Corporation','SDK de comprobación de Visual Studio 2012 - esn','12.0.30501','','','',0,1,'{90EF884E-5253-324C-9C11-63C9DA16BF0C}','Espagnol (International)','2018-06-21 00:00:00',32,NULL),(1423,3,'Microsoft Corporation','Windows SDK','10.1.16299.15','','','',0,1,'{921D9904-2313-037F-31B4-D62B9988E236}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1424,3,'Microsoft Corporation','Windows Mobile Extension SDK','10.1.16299.15','','','',0,1,'{93BEE599-02CB-18E1-744E-D95724E81157}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1425,3,'PreEmptive Solutions','PreEmptive Analytics Visual Studio Components','1.2.3197.1','','Visual Studio Add In for PreEmptive Analytics Exception Reporter by PreEmptive Solutions','',0,1,'{943F3FB1-3F9C-4FB7-A4E2-6D53617068C3}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1426,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610','11.0.60610.1','','','',0,1,'{95716cce-fc71-413f-8ad5-56c2892d4b3a}','','0000-00-00 00:00:00',32,NULL),(1427,3,'Microsoft Corporation','Microsoft Visual C++ x64-x86 Cross Compilers - ENU Resources','12.0.21005','','','',0,1,'{96563105-F726-4865-8C32-416753ECA5F1}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1428,3,'Microsoft Corporation','WinAppDeploy','10.1.16299.15','','','',0,1,'{9690D51C-4435-1C20-7819-66CCAB0F03F9}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1429,3,'Microsoft Corporation','Microsoft Visual Studio Community 2013 with Update 4','12.0.31101','','','',0,1,'{96a8b90c-0a91-4e76-ab34-730c23923d11}','','0000-00-00 00:00:00',32,NULL),(1430,3,'Microsoft Corporation','MSI Development Tools','10.1.16299.15','','','',0,1,'{973CACA2-E018-065B-0580-F2784802E299}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1431,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack for Windows Store Apps','4.5.21005','','','',0,1,'{976C3D92-0DEC-37A6-A870-FF4FC18CD029}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1432,3,'Microsoft Corporation','Пакет Visual Studio 2012 Verification SDK - rus','12.0.30501','','','',0,1,'{977CABC5-7B4B-3AE4-8E1B-56C673C1D638}','Russe (Russie)','2018-06-21 00:00:00',32,NULL),(1433,3,'Microsoft Corporation','Microsoft ASP.NET MVC 4 - Visual Studio 2013 - ENU','4.1.21001.0','','','',0,1,'{979C7495-FB42-484E-92EA-7F2A59DD7718}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1434,3,'Microsoft Corporation','Windows Software Development Kit','8.100.26898','','','',0,1,'{984022F2-9BCA-A41D-6A38-1AE658F01415}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1435,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Shell (Minimum) Resources','12.0.21005','','','',0,1,'{985EF141-95DD-3934-8F23-7C2C4C61E5F7}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1436,3,'Microsoft Corporation','Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17','9.0.30729','','','',0,1,'{9A25302D-30C0-39D9-BD6F-21E6EC160475}','Anglais (États-Unis)','2017-10-23 00:00:00',32,NULL),(1437,3,'Microsoft Corporation','Microsoft Expression Blend SDK for .NET 4','2.0.20525.0','C:/Program Files (x86)/Microsoft SDKs/Expression/Blend/','','',0,1,'{9B3A1C97-A361-463E-8817-444F9F88CDFE}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1438,3,'Microsoft Corporation','Microsoft Visual Studio Professional 2013','12.0.21005','','','',0,1,'{9C593464-7F2F-37B3-89F8-7E894E3B09EA}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1439,3,'Microsoft Corporation','Blend for Visual Studio 2013 ENU resources','12.0.41002.1','C:/Program Files (x86)/Microsoft Visual Studio 12.0/Blend/','','',0,1,'{9ED1634C-4E71-4992-A1BA-7C4BE6EE39E1}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1440,3,'Microsoft Corporation','VS Update core components','12.0.31101','','','',0,1,'{9F7DE660-6BFE-3BA2-A93D-4F13BD13E10B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1441,3,'Microsoft Corporation','Visual Studio 2012-Verifizierungs-SDK - deu','12.0.30501','','','',0,1,'{9FB31124-1FD5-314B-8B91-E4ECC431E1D7}','Allemand (Allemagne)','2018-06-21 00:00:00',32,NULL),(1442,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610','11.0.60610.1','','','',0,1,'{a1909659-0a08-4554-8af1-2175904903a1}','','0000-00-00 00:00:00',32,NULL),(1443,3,'Microsoft Corporation','Windows Software Development Kit DirectX x86 Remote','8.100.25984','','','',0,1,'{A1CB8286-CFB3-A985-D799-721A0F2A27F3}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1444,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Extended Libraries','12.0.21005','','','',0,1,'{A1D06677-1103-32DE-AA74-6EE44DCF7F81}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1445,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack for Windows Store Apps (ENU)','4.5.21005','','','',0,1,'{A223B446-EC3D-3031-828D-5188800AB782}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1446,3,'Microsoft Corporations','Windows SDK EULA','10.1.16299.15','','','',0,1,'{A2528C8D-B98A-D28F-C650-722503516A93}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1447,3,'Microsoft Corporation','WinRT Intellisense PPI - Other Languages','10.1.16299.15','','','',0,1,'{A2AA063E-AF50-A1F5-8925-A06EB1556644}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1448,3,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio 2013 - ENU','12.0.30723','','','',0,1,'{A35D7103-E0AE-4421-98E9-3F5EEEED3B7D}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1449,3,'Microsoft Corporation','Microsoft Visual C++ x86 Libraries','12.0.21005','','','',0,1,'{A3B8D9FB-CA7D-4487-8CA2-A6A2C8AD1077}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1450,3,'Microsoft Corporation','Microsoft SQL Server System CLR Types','10.50.1600.1','','','',0,1,'{A47FD1BF-A815-4A76-BE65-53A15BD5D25D}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1451,3,'Microsoft Corporation','Universal CRT Extension SDK','10.1.16299.15','','','',0,1,'{A5FA2886-1925-133F-0D41-B9A8ECEA0A2D}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1452,3,'Microsoft Corporation','Windows SDK DirectX x86 Remote','10.1.16299.15','','','',0,1,'{A6EFB3CD-C4B4-878E-1DFF-F01FAF9A1A34}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1453,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Compilers','11.0.60610','','','',0,1,'{A7E87388-3512-4D9C-9BBA-284C3577CBE9}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1454,3,'Microsoft Corporation','Microsoft Visual C++ ARM Libraries','12.0.21005','','','',0,1,'{A8229A09-E570-412B-8D18-E78985673E34}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1455,3,'Microsoft Corporation','Memory Profiler','12.0.31101','','','',0,1,'{A88AEB8B-A6C5-41BC-8F71-F704DD1E0D00}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1456,3,'Microsoft Corporation','Universal CRT Redistributable','10.1.16299.15','','','',0,1,'{A9D6F52C-694E-3E41-7AB8-5BEB644742A5}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1457,3,'Microsoft Corporation','Microsoft SQL Server Data Tools - enu (12.0.41012.0)','12.0.41012.0','','','',0,1,'{AC8E0CF4-42A1-4151-B684-97CF6FD726CF}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1458,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Shell (Minimum) Interop Assemblies','12.0.21005','','','',0,1,'{AE937DBA-FEFD-3BFE-9860-0591C0F91D61}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1459,3,'Microsoft Corporation','Windows Phone 8.1 SDK - Desktop','8.1.14194','C:/Program Files (x86)/Microsoft XDE/8.1/','','',0,1,'{AEBB5873-1DF6-4190-98D8-D9FC5144EB3B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1460,3,'Cisco Systems, Inc.','Cisco LEAP Module','1.0.19','C:/Program Files (x86)/Cisco/Cisco LEAP Module','','',0,1,'{AF312B06-5C5C-468E-89B3-BE6DE2645722}','Anglais (États-Unis)','2017-10-27 00:00:00',32,NULL),(1461,3,'Microsoft Corporation','Microsoft NuGet - Visual Studio 2013','2.8.50926.663','','','',0,1,'{AFF89951-EFF1-3543-92CE-BE535855A3A7}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1462,3,'Microsoft Corporation','Windows Team Extension SDK Contracts','10.1.16299.15','','','',0,1,'{B155C75C-1567-ECA5-D71B-86F5CF1DE1ED}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1463,3,'Microsoft','LocalESPCui for en-us Dev12','8.100.25984','','','',0,1,'{B1C38F27-D377-8C98-D98D-29B67C0B978D}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1464,3,'Microsoft Corporation','Build Tools - x86','12.0.31101','','','',0,1,'{B255880F-8C5E-4FAF-8F9C-7DBA635B2615}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1465,3,'Microsoft Corporation','Microsoft Visual C++ x64-arm Cross Compilers - ENU Resources','12.0.21005','','','',0,1,'{B3C98C29-A2BE-455F-9285-13B745282271}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1466,3,'Microsoft Corporation','Microsoft Portable Library Multi-Targeting Pack Language Pack - enu','12.0.30501.00','','','',0,1,'{B503082D-B4CD-32E5-A97C-AB10D2E9111A}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1467,3,'Microsoft Corporation','Microsoft ASP.NET Web Pages 2 Runtime','2.0.20716.0','','','',0,1,'{B536762B-1047-4B51-8ECF-46D5686E5416}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1468,3,'Microsoft Corporation','Windows SDK for Windows Store Apps','10.1.16299.15','','','',0,1,'{B5CEC165-2F1F-4348-37A3-BB31DA90BD68}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1469,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Devenv','12.0.21005','','','',0,1,'{B6A0A174-33E0-3D42-92EA-547D318CB149}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1470,3,'Microsoft Corporation','Universal CRT Headers Libraries and Sources','10.1.16299.15','','','',0,1,'{B739B4C5-EEEC-8E70-0276-38C4779AF398}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1471,3,'Microsoft Corporation','Microsoft Visual Studio 2013 XAML UI Designer','12.0.31101','','','',0,1,'{B90F9678-82C0-32A3-996B-98AA7EA5D8F4}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1472,3,'Microsoft Corporation','Universal CRT Tools x86','10.1.16299.15','','','',0,1,'{B9424F08-0617-C4F6-A798-5A9250C1A738}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1473,3,'Microsoft Corporation','Microsoft Visual C++ x64 Native Compilers - ENU Resources','12.0.21005','','','',0,1,'{BB0D9EE5-F7B1-4986-AF62-DB3BED9A83BC}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1474,3,'Microsoft Corporation','WinRT Intellisense UAP - Other Languages','10.1.16299.15','','','',0,1,'{BC467065-9374-5345-DA3F-FCF073304A25}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1475,3,'Microsoft Corporation','WCF Data Services Tools for Microsoft Visual Studio 2013','5.6.61587.0','','','',0,1,'{BF3E2194-F89B-44FB-A801-464BF787599F}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1476,3,'Microsoft Corporation','vs_devenvmsi','15.0.26621','','','',0,1,'{BFFA2FFB-1095-4ADD-A352-368806D2412B}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1477,3,'Microsoft Corporation','vs_professionalmsi','15.0.26621','','','',0,1,'{C135A30B-7258-4E11-8660-87C5642A4AAE}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1478,3,'Microsoft Corporation','Microsoft Visual C++ x64-x86 Cross Compilers','12.0.21005','','','',0,1,'{C1D0E508-ECAF-45AA-A549-1E26B9ECE0FB}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1479,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Devenv Resources','12.0.21005','','','',0,1,'{C26C1495-8EBE-3F71-BDA1-7DE2010840D8}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1480,3,'Microsoft Corporation','Visual Studio 2012 Verification SDK - jpn','12.0.30501','','','',0,1,'{C47A1D4C-13B1-3E81-A367-83FB8F4FBF8E}','Japonais (Japon)','2018-06-21 00:00:00',32,NULL),(1481,3,'Microsoft Corporation','Visual Studio 2012 Verification SDK','12.0.30723','','','',0,1,'{C4CAE1DE-77C8-32A7-A347-52DB738F0DE1}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1482,3,'Microsoft Corporation','Microsoft Visual Studio Community 2013','12.0.31101','','','',0,1,'{C4DD6A7C-DD73-36C4-BBBF-B699644A37B8}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1483,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Add-in for Windows Phone - ENU Language Pack','12.0.30723','','','',0,1,'{C629CD13-3E1A-33A2-9515-23F7BF4C5D06}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1484,3,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio Professional 2013','12.0.30723','','','',0,1,'{C7B84BB5-B871-4020-9C0D-CB08D9B77526}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1485,3,'Microsoft Corporation','Team Explorer for Microsoft Visual Studio 2013','12.0.21005','','','',0,1,'{C9E7751E-88ED-36CF-B610-71A1D262E906}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1486,3,'Microsoft Corporation','Microsoft ASP.NET Diagnostic Pack for Visual Studio','15.0.30925.0','','','',0,1,'{CA4225F5-F28F-3395-8FB7-92A7E05E8479}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1487,3,'Microsoft Corporation','Windows SDK for Windows Store Apps Tools','10.1.16299.15','','','',0,1,'{CB17BD4C-C6D7-E5D7-5031-F37645D22579}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1488,3,'Microsoft Corporation','WinRT Intellisense Mobile - en-us','10.1.16299.15','','','',0,1,'{CE760B86-975B-F514-5673-0ED4332B801B}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1489,3,'Microsoft Corporation','Microsoft .NET Framework 4 Multi-Targeting Pack','4.0.30319','','','',0,1,'{CFEF48A8-BFB8-3EAC-8BA5-DE4F8AA267CE}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1490,3,'Microsoft Corporation','vs_minshellinteropmsi','15.0.26621','','','',0,1,'{D0772A03-7FC2-4B20-AC1F-B278299AA9C7}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1491,3,'Microsoft Corporation','Universal General MIDI DLS Extension SDK','10.1.16299.15','','','',0,1,'{D261CEA1-AB8D-9CFA-4407-BCEFC78661AC}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1492,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 Multi-Targeting Pack (ENU)','4.5.50932','','','',0,1,'{D3517C62-68A5-37CF-92F7-93C029A89681}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1493,3,'Microsoft Corporation','Windows Phone 8.1 Tools for Visual Studio 2013','12.0.31101','','','',0,1,'{D35B579C-E1ED-437A-96E2-CD81E3C4ADCD}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1494,3,'Microsoft Corporation','Build Tools Language Resources - x86','12.0.31101','','','',0,1,'{D37FDF2F-8766-4BDF-A0E3-A60BDBB630ED}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1495,3,'Microsoft Corporation','Microsoft Visual C++ 2012 32bit Compilers - ENU Resources','11.0.60610','','','',0,1,'{D3A828A9-FD4A-4463-9CB0-9673C682A0C7}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1496,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Core Libraries','12.0.21005','','','',0,1,'{D42681AA-BC16-3C84-949E-45F05D2AA997}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1497,3,'Microsoft Corporation','Assistant Mise à niveau de Windows 10','1.4.9200.22175','','','',0,1,'{D5C69738-B486-402E-85AC-2456D98A64E4}','','0000-00-00 00:00:00',32,NULL),(1498,3,'Microsoft Corporation','Windows Mobile Extension SDK Contracts','10.1.16299.15','','','',0,1,'{D7A6AB64-9E5C-E5E2-5438-655F7D36475D}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1499,3,'Microsoft Corporation','WinRT Intellisense Desktop - Other Languages','10.1.16299.15','','','',0,1,'{D7DD3171-DA58-52A1-95B2-4769640855AF}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1500,3,'Microsoft Corporation','Microsoft C++ Azure Mobile SDK for Visual Studio 2013','1.0','','','',0,1,'{D8DEAAC1-A503-4C97-90F7-EF1E58A3E509}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1501,3,'Microsoft Corporation','Windows SDK Desktop Libs x64','10.1.16299.15','','','',0,1,'{DAE5B0BB-F2BC-98F5-6147-A83B6DF4B2AA}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1502,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Compilers','12.0.21005','','','',0,1,'{DB5600F1-DE83-46DE-B162-5FC4400EAF5B}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1503,3,'Microsoft Corporation','Windows Phone SDK 8.0 Assemblies','12.0.31101','','','',0,1,'{DC8FA8B0-9EBA-38F2-934D-001BD21EACB6}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1504,3,'Microsoft Corporation','vs_filehandler_amd64','15.0.26711','','','',0,1,'{DDEF2BD0-F728-4D04-A085-B5ACC9ADC311}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1505,3,'Microsoft Corporation','Microsoft Visual C++ x64 Native Compilers','12.0.21005','','','',0,1,'{DE0E8FAF-9758-4BFD-A16E-009DB4B8C912}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1506,3,'Microsoft Corporation','Visual Studio 2012 유효성 검사 SDK - kor','12.0.30501','','','',0,1,'{DEBF18DD-F351-3FC3-9BF4-8B20AC2EF5EF}','Coréen (Corée)','2018-06-21 00:00:00',32,NULL),(1507,3,'Microsoft Corporation','Microsoft Silverlight 5 SDK','5.0.61118.0','','','',0,1,'{E1FBB3D4-ADB0-4949-B101-855DA061C735}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1508,3,'Microsoft Corporation','WinRT Intellisense IoT - Other Languages','10.1.16299.15','','','',0,1,'{E414A474-0A87-4F66-C409-A4D9857CFD34}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1509,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Debug Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{E5CAE8D2-9F9F-3BEA-AA0F-B5B40611C704}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1510,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Compilers - ENU Resources','12.0.21005','','','',0,1,'{E6F3851E-CEEB-4ECB-A6FA-337C8F662E3D}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1511,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{E7D4E834-93EB-351F-B8FB-82CDAE623003}','Anglais (États-Unis)','2017-09-25 00:00:00',32,NULL),(1512,3,'Microsoft Corporation','Microsoft Visual Studio Professional 2013 - ENU','12.0.21005','','','',0,1,'{E9674444-9491-3961-873C-017D8912185E}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1513,3,'Microsoft Corporation','Microsoft ASP.NET MVC 4 Runtime','4.0.20716.0','','','',0,1,'{EB25848D-AADC-40D7-914E-CB2E25AB5E59}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1514,3,'Microsoft Corporation','Blend for Visual Studio 2013','12.0.41002.1','C:/Program Files (x86)/Microsoft Visual Studio 12.0/Blend/','','',0,1,'{EBC890A6-DE7C-44B4-AA03-119B6190D3E1}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1515,3,'Microsoft Corporation','Microsoft Advertising Service Extension for Visual Studio','12.0.40402.0','','','',0,1,'{EBD9DB6D-180B-4C59-9622-B75CC4B32C94}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1516,3,'Microsoft Corporation','Windows SDK for Windows Store Apps Metadata','10.1.16299.15','','','',0,1,'{ECA49B9D-E452-169B-F8E2-E9E415F0190D}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1517,3,'Microsoft Corporation','PowreShellIntegration.Notifications','2.5.21003.1603','','','',0,1,'{ED8DFB38-C87B-42B3-A33E-B20DF935C055}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1518,3,'Microsoft Corporation','Windows Phone 8.1 SDK - x86','8.1.14194','','','',0,1,'{EDB1632D-FE4B-4F5B-A234-91DA81B03C41}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1519,3,'Microsoft Corporation','Windows XP Targeting with C++','11.0.51106','','','',0,1,'{F361FE04-789E-42F3-BBAB-E7B380AA5E06}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1520,3,'Microsoft Corporation','Windows SDK Facade Windows WinMD Versioned','10.1.16299.15','','','',0,1,'{F76495AC-2A86-BD70-3F0A-20D33E6A3300}','Anglais (États-Unis)','2017-10-20 00:00:00',32,NULL),(1521,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{F8CFEB22-A2E7-3971-9EDA-4B11EDEFC185}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1522,3,'Micro Focus','Micro Focus DevPartner Studio Professional Edition','11.3.1812.0','','','',0,1,'{FF01D325-051A-475B-B58D-FCA3E01BAF84}','Langue neutre','2017-10-23 00:00:00',32,NULL),(1523,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Core Libraries','11.0.51106','','','',0,1,'{FFC6E93A-B9AD-3F20-9B06-EE20E24AAEAF}','Anglais (États-Unis)','2018-06-21 00:00:00',32,NULL),(1524,3,'Mozilla','Mozilla Firefox 52.0 (x64 fr)','52.0','C:/Program Files/Mozilla Firefox','Mozilla Firefox 52.0 (x64 fr)','',0,1,'Mozilla Firefox 52.0 (x64 fr)','','0000-00-00 00:00:00',64,NULL),(1525,3,'Microsoft Corporation','Microsoft SQL Server 2014 Transact-SQL ScriptDom','12.0.2000.8','','','',0,1,'{020CDFE0-C127-4047-B571-37C82396B662}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1526,3,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2012 (x64)','11.1.3366.16','','','',0,1,'{05FF8209-C4F1-4C77-BC28-791653156D20}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1527,3,'Microsoft Corporation','Windows App Certification Kit Native Components','10.1.16299.15','','','',0,1,'{09215AC7-B15F-A151-B90A-6B432EAD80A8}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1528,3,'Microsoft Corporation','Visual Studio 2013 Prerequisites','12.0.21005','','','',0,1,'{0B6BDD27-3097-4FE1-BDE6-1D5EC7399563}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1529,3,'Microsoft Corporation','Microsoft SQL Server Compact 4.0 SP1 x64 FRA','4.0.8876.1','C:/Program Files/Microsoft SQL Server Compact Edition/','','',0,1,'{0D4447E0-A261-43A4-AEBC-F76E983901F0}','Français (France)','2017-09-25 00:00:00',64,NULL),(1530,3,'Microsoft Corporation','vs_Graphics_Singletonx64','15.0.26621','','','',0,1,'{134E1F55-10CB-4837-9F43-C8145933AA3E}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1531,3,'Microsoft Corporation','Visual Studio 2013 Prerequisites - ENU Language Pack','12.0.21005','','','',0,1,'{16222DF7-8513-491E-91F0-F489AB2D3CB0}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1532,3,'Microsoft Corporation','Microsoft SQL Server 2014 Management Objects (x64)','12.0.2000.8','','','',0,1,'{1F9EB3B6-AED7-4AA7-B8F1-8E314B74B2A5}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1533,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{2EDC2FA3-1F34-34E5-9085-588C9EFD1CC6}','Anglais (États-Unis)','2017-09-25 00:00:00',64,NULL),(1534,3,'Microsoft Corporation','DiagnosticsHub_CollectionService','15.0.26823','','','',0,1,'{311C382C-6FDC-45ED-A04C-629A852D6148}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1535,3,'Microsoft Corporation','Microsoft Team Foundation Server 2013 Update 4 Object Model Language Pack (x64) - ENU','12.0.31101','','','',0,1,'{33B4C199-3463-30E8-B3D2-A0793DAC3607}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1536,3,'Microsoft Corporation','Microsoft SQL Server 2012 Management Objects (x64)','11.1.3000.0','','','',0,1,'{43A5C316-9521-49C3-B9B6-FCE5E1005DF0}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1537,3,'Simon Tatham','PuTTY release 0.70 (64-bit)','0.70.0.0','','','',0,1,'{45B3032F-22CC-40CD-9E97-4DA7095FA5A2}','Anglais (États-Unis)','2017-09-29 00:00:00',64,NULL),(1538,3,'Microsoft Corporation','Windows SDK for Windows Store Apps DirectX x64 Remote','10.1.16299.15','','','',0,1,'{45D32E0E-27C5-82DE-B739-6A9608A2411A}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1539,3,'Microsoft Corporation','Microsoft SQL Server System CLR Types (x64)','10.50.1600.1','','','',0,1,'{4701DEDE-1888-49E0-BAE5-857875924CA2}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1540,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Performance Collection Tools - ENU','12.0.21005','','','',0,1,'{49055838-1EF5-40BB-89B6-8E3456B3E817}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1541,3,'Microsoft Corporation','Windows Software Development Kit DirectX x64 Remote','8.100.25984','','','',0,1,'{5247E16E-BCF8-95AB-1653-B3F8FBF8B3F1}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1542,3,'Microsoft Corporation','Microsoft SQL Server 2012 Transact-SQL ScriptDom','11.1.3000.0','','','',0,1,'{54C5041B-0E91-4E92-8417-AAA12493C790}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1543,3,'Microsoft Corporation','Microsoft SQL Server 2012 Command Line Utilities','11.1.3000.0','','','',0,1,'{58FED865-4F13-408D-A5BF-996019C4B936}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1544,3,'Microsoft Corporation','Microsoft Web Deploy 3.5','3.1237.1763','','','',0,1,'{69A998C5-00A9-42CA-AB4E-C31CFFCD9251}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1545,3,'Microsoft Corporation','icecap_collection_x64','15.0.26621','','','',0,1,'{6BC73140-3CB6-486A-8350-BF35F54EFA19}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1546,3,'Microsoft Corporation','Microsoft SQL Server 2012 Express LocalDB','11.1.3000.0','','','',0,1,'{6C026A91-640F-4A23-8B68-05D589CC6F18}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1547,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Performance Collection Tools','12.0.21005','','','',0,1,'{6D7131D1-87E5-4677-BD6A-08DCF2529076}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1548,3,'Microsoft','Microsoft Visual Studio Team Foundation Server 2017 RC Office Integration (x64)','15.117.26914','','','',0,1,'{6D967DD2-4A1E-31B1-B146-A1E1658C8C2E}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1549,3,'Microsoft Corporation','Microsoft Visual Studio 2017','1.12.111.1002','\"C:/Program Files (x86)/Microsoft Visual Studio/Installer\"','','',0,1,'{6F320B93-EE3C-4826-85E0-ADF79F8D4C61}','','2017-10-20 00:00:00',64,NULL),(1550,3,'Microsoft Corporation','VS JIT Debugger','16.0.71.0','','','',0,1,'{75068E51-7C37-4003-84C2-C67461C8D60A}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1551,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{764384C5-BCA9-307C-9AAC-FD443662686A}','Anglais (États-Unis)','2017-09-25 00:00:00',64,NULL),(1552,3,'Microsoft Corporation','Microsoft System CLR Types pour SQL Server 2017 CTP2.1','14.0.600.250','','','',0,1,'{76F83458-3A84-42A9-8105-F63DEEE61BA9}','Français (France)','2017-10-20 00:00:00',64,NULL),(1553,3,'Microsoft Corporation','Microsoft Visual Studio 2013 Diagnostic Tools - amd64','12.0.31101','','','',0,1,'{7818198F-3A26-442D-B34D-1664D3ABC979}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1554,3,'Microsoft Corporation','Microsoft SQL Server Compact 4.0 SP1 x64 ENU','4.0.8876.1','C:/Program Files/Microsoft SQL Server Compact Edition/','','',0,1,'{78909610-D229-459C-A936-25D92283D3FD}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1555,3,'Microsoft Corporation','IIS 8.0 Express','8.0.1557','','','',0,1,'{7BF61FA9-BDFB-4563-98AD-FCB0DA28CCC7}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1556,3,'Micro Focus','Micro Focus License Manager','100.2.02170','','','',0,1,'{7D4D6AFC-5E39-4D89-928E-65CF93A02921}','Anglais (États-Unis)','2017-10-23 00:00:00',64,NULL),(1557,3,'Microsoft Corporation','Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17','9.0.30729','','','',0,1,'{8220EEFE-38CD-377E-8595-13398D740ACE}','Anglais (États-Unis)','2017-10-23 00:00:00',64,NULL),(1558,3,'Microsoft Corporation','Microsoft System CLR Types for SQL Server 2014','12.0.2000.8','','','',0,1,'{8C06D6DB-A391-4686-B050-99CC522A7843}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1559,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{929FBD26-9020-399B-9A7A-751D61F0B942}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1560,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Designtime - 12.0.21005','12.0.21005','','','',0,1,'{95176218-0F93-3376-912E-B82DACCEA01B}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1561,3,'Microsoft Corporation','Windows Software Development Kit for Windows Store Apps DirectX x64 Remote','8.100.26898','','','',0,1,'{96F4525A-470D-F15C-796E-58D9988C3E5F}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1562,3,'Microsoft Corporation','Windows XP Targeting with C++','11.0.51106','','','',0,1,'{993F6DDC-63F8-4BCD-9B28-D941971A9CAC}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1563,3,'','IIS Express Application Compatibility Database for x64','','','','',0,1,'{9f4f4a9b-eec5-4906-92fe-d1f43ccf5c8d}.sdb','','0000-00-00 00:00:00',64,NULL),(1564,3,'Microsoft Corporation','Windows SDK DirectX x64 Remote','10.1.16299.15','','','',0,1,'{A60760B2-EF83-1EB6-BC8E-B9A7EC91D3D6}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1565,3,'Microsoft Corporation','Microsoft SQL Server 2012 Data-Tier App Framework (x64)','11.1.2902.0','','','',0,1,'{A6BA243E-85A3-4635-A269-32949C98AC7F}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1566,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{A749D8E6-B613-3BE3-8F5F-045C84EBA29B}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1567,3,'Microsoft Corporation','VS Script Debugging Common','16.0.71.0','','','',0,1,'{A9ED1B56-3819-4B14-A929-89DD3E16E216}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1568,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Debug Runtime - 11.0.60610','11.0.60610','','Caution. Removing this product might prevent some applications from running.','',0,1,'{AAFF73AD-3432-3575-ABD1-14E48EF2F4CB}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1569,3,'Microsoft Corporation','Microsoft SQL Server 2014 Express LocalDB','12.0.2000.8','','','',0,1,'{AB8DE9BA-19E1-446A-BCFA-6B3DA9751E21}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1570,3,'Microsoft Corporation','Update for Windows 10 for x64-based Systems (KB4023057)','2.11.0.0','','','',0,1,'{AC0D130B-8809-4125-811F-667893B90644}','Langue neutre','2018-01-26 00:00:00',64,NULL),(1571,3,'Microsoft Corporation','Microsoft Visual C++ 2017 x64 Minimum Runtime - 14.11.25325','14.11.25325','','Caution. Removing this product might prevent some applications from running.','',0,1,'{B0037450-526D-3448-A370-CACBD87769A0}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1572,3,'Microsoft Corporation','Microsoft Visual C++ 2017 x64 Additional Runtime - 14.11.25325','14.11.25325','','Caution. Removing this product might prevent some applications from running.','',0,1,'{B13B3E11-1555-353F-A63A-8933EE104FBD}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1573,3,'Microsoft Corporation','Microsoft Visual C++ 2017 x64 Debug Runtime - 14.11.25325','14.11.25325','','Caution. Removing this product might prevent some applications from running.','',0,1,'{BE990041-4C0C-3A51-BEEE-50E4ABFC9AA6}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1574,3,'Microsoft','Microsoft Visual Studio Team Foundation Server 2017 RC Office Integration Language Pack (x64) - ENU','15.117.26914','','','',0,1,'{C0542F68-1EEE-3828-B451-9576FE58E373}','Français (France)','2017-10-20 00:00:00',64,NULL),(1575,3,'Microsoft Corporation','Microsoft Team Foundation Server 2013 Update 4 Object Model (x64)','12.0.31101','','','',0,1,'{C0DE47ED-AFAF-3B17-8268-D5BFDEC404A8}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1576,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Debug Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{C596D608-3E74-3232-8CA5-DF1DCB9F10DE}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1577,3,'Microsoft Corporation','Build Tools - amd64','12.0.31101','','','',0,1,'{CC1F74DF-058F-406C-BC7D-F14D6E5F7CBD}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1578,3,'Microsoft Corporation','Microsoft SQL Server 2012 Native Client','11.1.3000.0','','','',0,1,'{D411E9C9-CE62-4DBF-9D92-4CB22B750ED5}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1579,3,'Microsoft','Application Verifier x64 External Package','10.1.16299.15','','','',0,1,'{D9908CED-5ABB-FEE9-FC84-743F4D38637C}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1580,3,'Microsoft Corporation','Universal CRT Tools x64','10.1.16299.15','','','',0,1,'{E053089E-7953-3219-814F-F485FC151C54}','Anglais (États-Unis)','2017-10-20 00:00:00',64,NULL),(1581,3,'Microsoft Corporation','Build Tools Language Resources - amd64','12.0.31101','','','',0,1,'{E43BBAEB-4914-44C6-88C0-E7A1DBD20A91}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1582,3,'Microsoft Corporation','Windows Phone 8.1 SDK - x64','8.1.14194','','','',0,1,'{EAB410E5-3618-4C97-8EEA-450A75F865FD}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1583,3,'Microsoft Corporation','Microsoft Visual Studio 2013 VsGraphics Helper Dependencies','12.0.21005','','','',0,1,'{F17662A3-4569-4A61-ABD4-E51B632D3C4D}','Anglais (États-Unis)','2018-06-21 00:00:00',64,NULL),(1584,3,'','IIS Express Application Compatibility Database for x86','','','','',0,1,'{fdfba1f3-74ae-4255-9c10-a0f552b4610f}.sdb','','0000-00-00 00:00:00',64,NULL),(1585,3,'Dominique Ottello aka Otomatic','Wampserver64 3.1.0','3.1.0','c:/wamp64/','','',0,1,'{wampserver64}_is1','','2017-09-26 00:00:00',64,NULL),(1586,3,'Microsoft Corporation','Security Update KB4103729','','','(http://support.microsoft.com/?kbid=4103729)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(1587,3,'Microsoft Corporation','Security Update KB4287903','','','(http://support.microsoft.com/?kbid=4287903)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(1588,3,'Microsoft Corporation','Security Update KB4284835','','','(http://support.microsoft.com/?kbid=4284835)','',0,0,'','','0000-00-00 00:00:00',0,NULL),(1589,3,'Microsoft Corporation','Microsoft Windows 10 Professionnel','10.0.17134','','','',0,1,'','','2018-05-28 00:00:00',64,NULL);
/*!40000 ALTER TABLE `softwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softwares_name_cache`
--

DROP TABLE IF EXISTS `softwares_name_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwares_name_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM AUTO_INCREMENT=1132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwares_name_cache`
--

LOCK TABLES `softwares_name_cache` WRITE;
/*!40000 ALTER TABLE `softwares_name_cache` DISABLE KEYS */;
INSERT INTO `softwares_name_cache` VALUES (686,'7-Zip 15.14 (x64)'),(687,'7-Zip 16.04 (x64 edition)'),(688,'Adobe Acrobat Reader DC - Français'),(689,'Adobe Refresh Manager'),(690,'Application Insights Tools for Visual Studio 2013'),(691,'Application Verifier x64 External Package'),(692,'Assemblys Windows Phone SDK 8.0 - fra'),(693,'Assistant Mise à jour de Windows 10'),(694,'Assistant Mise à niveau de Windows 10'),(695,'Avast Antivirus Gratuit'),(696,'Avast Secure Browser'),(697,'AzureTools.Notifications'),(698,'Behaviors SDK (Windows Phone) for Visual Studio 2013'),(699,'Behaviors SDK (Windows) for Visual Studio 2013'),(700,'Blend for Visual Studio 2013'),(701,'Blend for Visual Studio 2013 ENU resources'),(702,'Blend for Visual Studio 2013 FRA resources'),(703,'Blend for Visual Studio SDK for .NET 4.5'),(704,'Blend for Visual Studio SDK for Silverlight 5'),(705,'Blend for Visual Studio SDK for Windows Phone 8.0'),(706,'Build Tools - amd64'),(707,'Build Tools - x86'),(708,'Build Tools Language Resources - amd64'),(709,'Build Tools Language Resources - x86'),(710,'Cisco EAP-FAST Module'),(711,'Cisco LEAP Module'),(712,'Cisco PEAP Module'),(713,'Composants requis pour SSDT'),(714,'Concepteur d\'\'interface utilisateur XAML Microsoft Visual Studio 2013 - FRA'),(715,'Deleaker version 2017.16.0.0'),(716,'DiagnosticsHub_CollectionService'),(717,'Dotfuscator and Analytics Community Edition'),(718,'Entity Framework 6.1.0 Tools for Visual Studio 2013'),(719,'Entity Framework 6.1.3 Tools for Visual Studio 2013'),(720,'Finaliseur des outils Windows Phone - fra'),(721,'Google Chrome'),(722,'Google Update Helper'),(723,'icecap_collectionresources'),(724,'icecap_collectionresourcesx64'),(725,'icecap_collection_neutral'),(726,'icecap_collection_x64'),(727,'IIS 8.0 Express'),(728,'IIS Express Application Compatibility Database for x64'),(729,'IIS Express Application Compatibility Database for x86'),(730,'Images d\'\'émulation Windows Phone 8.0 - fra'),(731,'Infra. app. couche Données Microsoft SQL Server 2012'),(732,'Kit SDK de vérification de Visual Studio 2012 - fra'),(733,'Kits Configuration Installer'),(734,'LocalESPC'),(735,'LocalESPC Dev12'),(736,'LocalESPCui for en-us Dev12'),(737,'LocalESPCui for fr-fr'),(738,'LocalESPCui for fr-fr Dev12'),(739,'LogMeIn'),(740,'LogMeIn Client'),(741,'MAMP & MAMP PRO version 3.2.2'),(742,'Memory Profiler'),(743,'Micro Focus DevPartner Studio Professional Edition'),(744,'Micro Focus License Manager'),(745,'Microsoft .NET Framework 4 Multi-Targeting Pack'),(746,'Microsoft .NET Framework 4.5 Multi-Targeting Pack'),(747,'Microsoft .NET Framework 4.5 SDK'),(748,'Microsoft .NET Framework 4.5 SDK - Module linguistique FRA'),(749,'Microsoft .NET Framework 4.5.1 Multi-Targeting Pack'),(750,'Microsoft .NET Framework 4.5.1 Multi-Targeting Pack (ENU)'),(751,'Microsoft .NET Framework 4.5.1 Multi-Targeting Pack (Français)'),(752,'Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack for Windows Store Apps'),(753,'Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack for Windows Store Apps (ENU)'),(754,'Microsoft .NET Framework 4.5.1 RC Multi-Targeting Pack pour les applications du Windows Store (Français)'),(755,'Microsoft .NET Framework 4.5.1 SDK'),(756,'Microsoft .NET Framework 4.5.1 SDK (Français)'),(757,'Microsoft Advertising SDK for Windows 8.1 - ENU'),(758,'Microsoft Advertising SDK for Windows Phone - FRA'),(759,'Microsoft Advertising SDK for Windows Phone 8.1 XAML - ENU'),(760,'Microsoft Advertising Service Extension for Visual Studio'),(761,'Microsoft ASP.NET and Web Tools 2013.2 - Visual Studio 2013'),(762,'Microsoft ASP.NET and Web Tools 2013.2 - Visual Studio 2013 - fra'),(763,'Microsoft ASP.NET and Web Tools 2013.5 - Visual Studio 2013'),(764,'Microsoft ASP.NET Diagnostic Pack for Visual Studio'),(765,'Microsoft ASP.NET MVC 4 - Visual Studio 2013 - ENU'),(766,'Microsoft ASP.NET MVC 4 - Visual Studio 2013 - FRA'),(767,'Microsoft ASP.NET MVC 4 Runtime'),(768,'Microsoft ASP.NET MVC 4 Runtime - FRA'),(769,'Microsoft ASP.NET Web Frameworks and Tools - Visual Studio 2013 - ENU'),(770,'Microsoft ASP.NET Web Frameworks and Tools - Visual Studio 2013 - FRA'),(771,'Microsoft ASP.NET Web Pages 2 - Visual Studio 2013 - ENU'),(772,'Microsoft ASP.NET Web Pages 2 - Visual Studio 2013 - FRA'),(773,'Microsoft ASP.NET Web Pages 2 Runtime'),(774,'Microsoft ASP.NET Web Pages 2 Runtime - FRA'),(775,'Microsoft Azure Mobile Services SDK'),(776,'Microsoft Azure Mobile Services Tools for Visual Studio - v1.4'),(777,'Microsoft Azure Shared Components for Visual Studio 2013 - v1.4'),(778,'Microsoft C++ Azure Mobile SDK for Visual Studio 2013'),(779,'Microsoft C++ REST SDK for Visual Studio 2013'),(780,'Microsoft Exchange Web Services Managed API 2.1'),(781,'Microsoft Expression Blend SDK for .NET 4'),(782,'Microsoft Help Viewer 2.1'),(783,'Microsoft Identity Extensions'),(784,'Microsoft LightSwitch for Visual Studio 2013 Core'),(785,'Microsoft LightSwitch for Visual Studio 2013 v4.5 Tools'),(786,'Microsoft LightSwitch for Visual Studio 2013 v4.5 ToolsRes - FRA'),(787,'Microsoft LightSwitch pour Visual Studio 2013 CoreRes - FRA'),(788,'Microsoft LightSwitch v4.5 SDK'),(789,'Microsoft NuGet - Visual Studio 2013'),(790,'Microsoft Office 2013 Developer Tools for Microsoft Visual Studio (x64)'),(791,'Microsoft Office Developer Tools for Visual Studio'),(792,'Microsoft Portable Library Multi-Targeting Pack'),(793,'Microsoft Portable Library Multi-Targeting Pack Language Pack - enu'),(794,'Microsoft Portable Library Multi-Targeting Pack Language Pack - fra'),(795,'Microsoft Report Viewer Add-On for Visual Studio 2013'),(796,'Microsoft SharePoint 2013 Developer Tools for Visual Studio 2012 Nuget Package'),(797,'Microsoft Silverlight'),(798,'Microsoft Silverlight 5 SDK'),(799,'Microsoft Silverlight 5 SDK - FRA'),(800,'Microsoft SQL Server 2012 Command Line Utilities'),(801,'Microsoft SQL Server 2012 Data-Tier App Framework'),(802,'Microsoft SQL Server 2012 Data-Tier App Framework (x64)'),(803,'Microsoft SQL Server 2012 Express LocalDB'),(804,'Microsoft SQL Server 2012 Management Objects'),(805,'Microsoft SQL Server 2012 Management Objects (x64)'),(806,'Microsoft SQL Server 2012 Native Client'),(807,'Microsoft SQL Server 2012 T-SQL Language Service'),(808,'Microsoft SQL Server 2012 Transact-SQL ScriptDom'),(809,'Microsoft SQL Server 2014 Express LocalDB'),(810,'Microsoft SQL Server 2014 Management Objects'),(811,'Microsoft SQL Server 2014 Management Objects (x64)'),(812,'Microsoft SQL Server 2014 T-SQL Language Service'),(813,'Microsoft SQL Server 2014 Transact-SQL ScriptDom'),(814,'Microsoft SQL Server Compact 4.0 SP1 x64 ENU'),(815,'Microsoft SQL Server Compact 4.0 SP1 x64 FRA'),(816,'Microsoft SQL Server Data Tools - enu (12.0.41012.0)'),(817,'Microsoft SQL Server Data Tools - FRA (12.0.30919.1)'),(818,'Microsoft SQL Server Data Tools Build Utilities - enu (12.0.30919.1)'),(819,'Microsoft SQL Server Data Tools Build Utilities - FRA (12.0.30919.1)'),(820,'Microsoft SQL Server System CLR Types'),(821,'Microsoft SQL Server System CLR Types (x64)'),(822,'Microsoft System CLR Types for SQL Server 2012'),(823,'Microsoft System CLR Types for SQL Server 2012 (x64)'),(824,'Microsoft System CLR Types for SQL Server 2014'),(825,'Microsoft System CLR Types pour SQL Server 2012 (x64)'),(826,'Microsoft System CLR Types pour SQL Server 2017 CTP2.1'),(827,'Microsoft Team Foundation Server 2013 Update 2 Object Model (x64)'),(828,'Microsoft Team Foundation Server 2013 Update 5 Object Model (x64)'),(829,'Microsoft Team Foundation Server 2013 Update 5 Object Model Language Pack (x64) - ENU'),(830,'Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17'),(831,'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022'),(832,'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17'),(833,'Microsoft Visual C++ 2010 x86 Redistributable - 10.0.40219'),(834,'Microsoft Visual C++ 2012 32bit Compilers - ENU Resources'),(835,'Microsoft Visual C++ 2012 32bit Compilers - FRA Resources'),(836,'Microsoft Visual C++ 2012 Compilers'),(837,'Microsoft Visual C++ 2012 Compilers - ENU Resources'),(838,'Microsoft Visual C++ 2012 Compilers - FRA Resources'),(839,'Microsoft Visual C++ 2012 Compilers For Windows Phone'),(840,'Microsoft Visual C++ 2012 Compilers For Windows Phone - FRA Resources'),(841,'Microsoft Visual C++ 2012 Core Libraries'),(842,'Microsoft Visual C++ 2012 Core Libraries For Windows Phone'),(843,'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610'),(844,'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610'),(845,'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030'),(846,'Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.60610'),(847,'Microsoft Visual C++ 2012 x64 Debug Runtime - 11.0.60610'),(848,'Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.60610'),(849,'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.60610'),(850,'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030'),(851,'Microsoft Visual C++ 2012 x86 Debug Runtime - 11.0.60610'),(852,'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.60610'),(853,'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030'),(854,'Microsoft Visual C++ 2012 x86-x64 Compilers'),(855,'Microsoft Visual C++ 2013 32bit Compilers - ENU Resources'),(856,'Microsoft Visual C++ 2013 32bit Compilers - FRA Resources'),(857,'Microsoft Visual C++ 2013 Compilers'),(858,'Microsoft Visual C++ 2013 Compilers - ENU Resources'),(859,'Microsoft Visual C++ 2013 Compilers - FRA Resources'),(860,'Microsoft Visual C++ 2013 Core Libraries'),(861,'Microsoft Visual C++ 2013 Extended Libraries'),(862,'Microsoft Visual C++ 2013 Microsoft Foundation Class Libraries'),(863,'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501'),(864,'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660'),(865,'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501'),(866,'Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005'),(867,'Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40660'),(868,'Microsoft Visual C++ 2013 x64 Debug Runtime - 12.0.21005'),(869,'Microsoft Visual C++ 2013 x64 Designtime - 12.0.21005'),(870,'Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005'),(871,'Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40660'),(872,'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005'),(873,'Microsoft Visual C++ 2013 x86 Debug Runtime - 12.0.21005'),(874,'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005'),(875,'Microsoft Visual C++ 2013 x86-x64 Compilers'),(876,'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.23026'),(877,'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.23026'),(878,'Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.23026'),(879,'Microsoft Visual C++ 2015 x64 Minimum Runtime - 14.0.23026'),(880,'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23026'),(881,'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23026'),(882,'Microsoft Visual C++ 2017 Redistributable (x64) - 14.11.25325'),(883,'Microsoft Visual C++ 2017 Redistributable (x86) - 14.11.25325'),(884,'Microsoft Visual C++ 2017 x64 Additional Runtime - 14.11.25325'),(885,'Microsoft Visual C++ 2017 x64 Debug Runtime - 14.11.25325'),(886,'Microsoft Visual C++ 2017 x64 Minimum Runtime - 14.11.25325'),(887,'Microsoft Visual C++ 2017 x86 Additional Runtime - 14.11.25325'),(888,'Microsoft Visual C++ 2017 x86 Debug Runtime - 14.11.25325'),(889,'Microsoft Visual C++ 2017 x86 Minimum Runtime - 14.11.25325'),(890,'Microsoft Visual C++ ARM Libraries'),(891,'Microsoft Visual C++ x64 Libraries'),(892,'Microsoft Visual C++ x64 Native Compilers'),(893,'Microsoft Visual C++ x64 Native Compilers - ENU Resources'),(894,'Microsoft Visual C++ x64 Native Compilers - FRA Resources'),(895,'Microsoft Visual C++ x64-arm Cross Compilers'),(896,'Microsoft Visual C++ x64-arm Cross Compilers - ENU Resources'),(897,'Microsoft Visual C++ x64-arm Cross Compilers - FRA Resources'),(898,'Microsoft Visual C++ x64-x86 Cross Compilers'),(899,'Microsoft Visual C++ x64-x86 Cross Compilers - ENU Resources'),(900,'Microsoft Visual C++ x64-x86 Cross Compilers - FRA Resources'),(901,'Microsoft Visual C++ x86 Libraries'),(902,'Microsoft Visual Studio 2010 Tools for Office Runtime (x64)'),(903,'Microsoft Visual Studio 2010 Tools for Office Runtime (x64) Language Pack - FRA'),(904,'Microsoft Visual Studio 2013 Add-in for Windows Phone'),(905,'Microsoft Visual Studio 2013 Add-in for Windows Phone - ENU Language Pack'),(906,'Microsoft Visual Studio 2013 Devenv'),(907,'Microsoft Visual Studio 2013 Devenv Resources'),(908,'Microsoft Visual Studio 2013 Diagnostic Tools - amd64'),(909,'Microsoft Visual Studio 2013 Diagnostic Tools - x86'),(910,'Microsoft Visual Studio 2013 Performance Collection Tools'),(911,'Microsoft Visual Studio 2013 Performance Collection Tools - ENU'),(912,'Microsoft Visual Studio 2013 Performance Collection Tools - FRA'),(913,'Microsoft Visual Studio 2013 Preparation'),(914,'Microsoft Visual Studio 2013 Profiling Tools'),(915,'Microsoft Visual Studio 2013 Shell (Minimum)'),(916,'Microsoft Visual Studio 2013 Shell (Minimum) Interop Assemblies'),(917,'Microsoft Visual Studio 2013 Shell (Minimum) Resources'),(918,'Microsoft Visual Studio 2013 Team Explorer Language Pack - ENU'),(919,'Microsoft Visual Studio 2013 VsGraphics Helper Dependencies'),(920,'Microsoft Visual Studio 2013 XAML UI Designer'),(921,'Microsoft Visual Studio 2013 XAML UI Designer - ENU'),(922,'Microsoft Visual Studio 2017'),(923,'Microsoft Visual Studio Community 2013'),(924,'Microsoft Visual Studio Community 2013 with Update 5'),(925,'Microsoft Visual Studio Professional 2013'),(926,'Microsoft Visual Studio Professional 2013 - ENU'),(927,'Microsoft Visual Studio Professional 2013'),(928,'Microsoft Visual Studio Setup Configuration'),(929,'Microsoft Visual Studio Team Foundation Server 2017 RC Office Integration (x64)'),(930,'Microsoft Visual Studio Team Foundation Server 2017 RC Office Integration Language Pack (x64) - ENU'),(931,'Microsoft Visual Studio Professional 2013 - FRA'),(932,'Microsoft Web Deploy 3.5'),(933,'Microsoft Windows 10 Professionnel'),(934,'Microsoft Windows Build 15063 Retail Debugging Symbols for x64'),(935,'Microsoft Windows Build 15063 Retail Debugging Symbols for X86'),(936,'Modèle de redirection de Python Tools'),(937,'Module linguistique de Dotfuscator and Analytics Community Edition'),(938,'Module linguistique de la visionneuse d\'\'aide Microsoft 2.1 - FRA'),(939,'Module linguistique des outils de développement Microsoft Office pour Visual Studio - FRA'),(940,'Module linguistique du modèle objet Microsoft Team Foundation Server 2013 Update 2 (x64) - FRA'),(941,'Module linguistique Microsoft Visual Studio 2010 Tools pour Office Runtime (x64) - FRA'),(942,'Module linguistique Team Explorer pour Microsoft Visual Studio 2013 - FRA'),(943,'Module Microsoft Report Viewer pour Visual Studio 2013'),(944,'Mozilla Firefox 24.6.0 (x86 fr)'),(945,'Mozilla Firefox 52.0 (x64 fr)'),(946,'Mozilla Firefox 56.0 (x64 fr)'),(947,'Mozilla Maintenance Service'),(948,'MSI Development Tools'),(949,'Notepad++'),(950,'Notepad++ (32-bit x86)'),(951,'Nullsoft Install System'),(952,'OCS Inventory NG Agent 2.3.1.2'),(953,'OCS Inventory NG Agent Deployment Tool 2.3.0.0'),(954,'Open XML SDK 2.5 for Microsoft Office'),(955,'Outils de développement Microsoft Office 2013 pour Microsoft Visual Studio (x64) - Module linguistique FRA'),(956,'Outils Windows Phone 8.0 pour Visual Studio 2013 - FRA Module linguistique'),(957,'PowerShellIntegration.Notifications'),(958,'PreEmptive Analytics Client French Language Pack'),(959,'PreEmptive Analytics Visual Studio Components'),(960,'Prerequisites for SSDT'),(961,'Programme de configuration de Windows Phone Emulator 8.0 - fra'),(962,'PuTTY release 0.70 (64-bit)'),(963,'Python Tools Redirection Template'),(964,'REALTEK Wireless LAN Driver'),(965,'Ressources de Microsoft Visual Studio 2013 Shell (minimum)'),(966,'Ressources Devenv de Microsoft Visual Studio 2013'),(967,'SDK de comprobación de Visual Studio 2012 - esn'),(968,'Security Update KB4103721'),(969,'Security Update KB4103727'),(970,'Security Update KB4103729'),(971,'Service de langage T-SQL Microsoft SQL Server 2012'),(972,'SharePoint Client Components'),(973,'Strawberry Perl'),(974,'SumatraPDF'),(975,'Team Explorer for Microsoft Visual Studio 2013'),(976,'Tools for .Net 3.5'),(977,'Tools for .Net 3.5 - FRA Lang Pack'),(978,'Types CLR du système Microsoft pour SQL Server 2012'),(979,'TypeScript Power Tool'),(980,'TypeScript Tools for Microsoft Visual Studio 2013'),(981,'Universal CRT Extension SDK'),(982,'Universal CRT Headers Libraries and Sources'),(983,'Universal CRT Redistributable'),(984,'Universal CRT Tools x64'),(985,'Universal CRT Tools x86'),(986,'Universal General MIDI DLS Extension SDK'),(987,'Update for (KB2504637)'),(988,'Update for Windows 10 for x64-based Systems (KB4023057)'),(989,'Update KB4055237'),(990,'Update KB4055994'),(991,'Update KB4078408'),(992,'Update KB4094276'),(993,'Update KB4134661'),(994,'UpdateAssistant'),(995,'Utilitaires ligne de comm. Microsoft SQL Server 2012'),(996,'vcpp_crt.redist.clickonce'),(997,'Visual F# 3.1 SDK'),(998,'Visual F# 3.1 SDK Language Pack - FRA'),(999,'Visual F# 3.1 VS'),(1000,'Visual F# 3.1 VS Language Pack - FRA'),(1001,'Visual Leak Detector version 2.5'),(1002,'Visual Studio 2012 Verification SDK'),(1003,'Visual Studio 2012 Verification SDK - chs'),(1004,'Visual Studio 2012 Verification SDK - enu'),(1005,'Visual Studio 2012 Verification SDK - ita'),(1006,'Visual Studio 2012 Verification SDK - jpn'),(1007,'Visual Studio 2012 驗證 SDK - cht'),(1008,'Visual Studio 2012 유효성 검사 SDK - kor'),(1009,'Visual Studio 2012-Verifizierungs-SDK - deu'),(1010,'Visual Studio 2013 Prerequisites'),(1011,'Visual Studio 2013 Prerequisites - ENU Language Pack'),(1012,'Visual Studio 2013 Prerequisites - FRA Language Pack'),(1013,'Visual Studio 2013 Update 5 (KB2829760)'),(1014,'Visual Studio Extensions for Windows Library for JavaScript'),(1015,'VLC media player'),(1016,'VS JIT Debugger'),(1017,'VS Script Debugging Common'),(1018,'VS Update core components'),(1019,'vs_communitymsi'),(1020,'vs_communitymsires'),(1021,'vs_devenvmsi'),(1022,'vs_filehandler_amd64'),(1023,'vs_filehandler_x86'),(1024,'vs_FileTracker_Singleton'),(1025,'vs_Graphics_Singletonx64'),(1026,'vs_Graphics_Singletonx86'),(1027,'vs_minshellinteropmsi'),(1028,'vs_minshellmsi'),(1029,'vs_minshellmsires'),(1030,'vs_professionalmsi'),(1031,'vs_tipsmsi'),(1032,'Wampserver32 3.0.4'),(1033,'Wampserver64 3.1.0'),(1034,'WCF Data Services 5.6.0 FRA Language Pack'),(1035,'WCF Data Services 5.6.0 Runtime'),(1036,'WCF Data Services Tools for Microsoft Visual Studio 2013'),(1037,'WCF Data Services Tools for Microsoft Visual Studio 2013 FRA Language Pack'),(1038,'WCF RIA Services V1.0 SP2'),(1039,'WinAppDeploy'),(1040,'Windows 8 Development Essentials'),(1041,'Windows App Certification Kit Native Components'),(1042,'Windows App Certification Kit SupportedApiList x86'),(1043,'Windows App Certification Kit x64'),(1044,'Windows Azure Mobile Services SDK'),(1045,'Windows Azure Mobile Services Tools for Visual Studio - v1.1'),(1046,'Windows Azure Shared Components for Microsoft Visual Studio 2013 - v1.1'),(1047,'Windows Azure Tools for LightSwitch for Visual Studio 2013 - v2.1'),(1048,'Windows Azure Tools pour LightSwitch pour Visual Studio 2013 - $(var.OOBPublishVersion) (FRA)'),(1049,'Windows Desktop Extension SDK'),(1050,'Windows Desktop Extension SDK Contracts'),(1051,'Windows IoT Extension SDK'),(1052,'Windows IoT Extension SDK Contracts'),(1053,'Windows IP Over USB'),(1054,'Windows Mobile Extension SDK'),(1055,'Windows Mobile Extension SDK Contracts'),(1056,'Windows Phone 8.0 Emulation Host'),(1057,'Windows Phone 8.0 Managed SDK Profiler (ARM)'),(1058,'Windows Phone 8.0 Managed SDK Profiler (X86)'),(1059,'Windows Phone 8.0 Tools for Visual Studio 2013'),(1060,'Windows Phone 8.1 Emulators - ENU'),(1061,'Windows Phone 8.1 SDK - ARM'),(1062,'Windows Phone 8.1 SDK - Desktop'),(1063,'Windows Phone 8.1 SDK - x64'),(1064,'Windows Phone 8.1 SDK - x86'),(1065,'Windows Phone 8.1 Tools for Visual Studio 2013'),(1066,'Windows Phone 8.1 Tools for Visual Studio 2013 - ENU'),(1067,'Windows Phone 8.1 Tools for Visual Studio Professional 2013'),(1068,'Windows Phone 8.1 Tools for Visual Studio Professionald 2013 - ENU'),(1069,'Windows Phone SDK 8.0 Assemblies'),(1070,'Windows Runtime Intellisense Content - en-us'),(1071,'Windows Runtime Intellisense Content - fr-fr'),(1072,'Windows SDK'),(1073,'Windows SDK AddOn'),(1074,'Windows SDK Desktop Headers x64'),(1075,'Windows SDK Desktop Headers x86'),(1076,'Windows SDK Desktop Libs x64'),(1077,'Windows SDK Desktop Libs x86'),(1078,'Windows SDK Desktop Tools x64'),(1079,'Windows SDK Desktop Tools x86'),(1080,'Windows SDK DirectX x64 Remote'),(1081,'Windows SDK DirectX x86 Remote'),(1082,'Windows SDK EULA'),(1083,'Windows SDK Facade Windows WinMD Versioned'),(1084,'Windows SDK for Windows Store Apps'),(1085,'Windows SDK for Windows Store Apps Contracts'),(1086,'Windows SDK for Windows Store Apps DirectX x64 Remote'),(1087,'Windows SDK for Windows Store Apps DirectX x86 Remote'),(1088,'Windows SDK for Windows Store Apps Headers'),(1089,'Windows SDK for Windows Store Apps Libs'),(1090,'Windows SDK for Windows Store Apps Metadata'),(1091,'Windows SDK for Windows Store Apps Tools'),(1092,'Windows SDK for Windows Store Managed Apps Libs'),(1093,'Windows SDK Modern Non-Versioned Developer Tools'),(1094,'Windows SDK Modern Versioned Developer Tools'),(1095,'Windows SDK Redistributables'),(1096,'Windows SDK Signing Tools'),(1097,'Windows Setup Remediations (x64) (KB4023057)'),(1098,'Windows Software Development Kit'),(1099,'Windows Software Development Kit - Windows 10.0.16299.15'),(1100,'Windows Software Development Kit DirectX x64 Remote'),(1101,'Windows Software Development Kit DirectX x86 Remote'),(1102,'Windows Software Development Kit for Windows Store Apps'),(1103,'Windows Software Development Kit for Windows Store Apps DirectX x64 Remote'),(1104,'Windows Software Development Kit for Windows Store Apps DirectX x86 Remote'),(1105,'Windows Team Extension SDK'),(1106,'Windows Team Extension SDK Contracts'),(1107,'Windows XP Targeting with C++'),(1108,'WinRT Intellisense Desktop - en-us'),(1109,'WinRT Intellisense Desktop - Other Languages'),(1110,'WinRT Intellisense IoT - en-us'),(1111,'WinRT Intellisense IoT - Other Languages'),(1112,'WinRT Intellisense Mobile - en-us'),(1113,'WinRT Intellisense PPI - en-us'),(1114,'WinRT Intellisense PPI - Other Languages'),(1115,'WinRT Intellisense UAP - en-us'),(1116,'WinRT Intellisense UAP - Other Languages'),(1117,'WinSCP 5.11.1'),(1118,'Workflow Manager Client 1.0'),(1119,'Workflow Manager Tools 1.0 for Visual Studio'),(1120,'Пакет Visual Studio 2012 Verification SDK - rus'),(1121,'Security Update KB4287903'),(1122,'Security Update KB4284835'),(1123,'Microsoft ASP.NET and Web Tools 2013.4 - Visual Studio 2013'),(1124,'Microsoft Azure Shared Components for Visual Studio 2013 - v1.3'),(1125,'Visual Studio 2013 Update 4 (KB2829760)'),(1126,'Microsoft Azure Mobile Services Tools for Visual Studio - v1.3'),(1127,'Entity Framework 6.1.1 Tools for Visual Studio 2013'),(1128,'Microsoft Visual Studio Community 2013 with Update 4'),(1129,'PowreShellIntegration.Notifications'),(1130,'Microsoft Team Foundation Server 2013 Update 4 Object Model Language Pack (x64) - ENU'),(1131,'Microsoft Team Foundation Server 2013 Update 4 Object Model (x64)');
/*!40000 ALTER TABLE `softwares_name_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sounds`
--

DROP TABLE IF EXISTS `sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sounds` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sounds`
--

LOCK TABLES `sounds` WRITE;
/*!40000 ALTER TABLE `sounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `sounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssl_store`
--

DROP TABLE IF EXISTS `ssl_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_store` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE` longblob,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_TYPE` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_store`
--

LOCK TABLES `ssl_store` WRITE;
/*!40000 ALTER TABLE `ssl_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssl_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `DISKSIZE` int(11) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `FIRMWARE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (1,1,'(Standard disk drives)','QEMU HARDDISK ATA Device','//./PHYSICALDRIVE0','Disk drive','Fixed hard disk media',94201,'QM00001','2.5+'),(2,1,'(Standard CD-ROM drives)','QEMU QEMU DVD-ROM ATA Device','QEMU QEMU DVD-ROM ATA Device','CD-ROM Drive','UNKNOWN',0,'',''),(5,3,'(Standard disk drives)','QEMU HARDDISK ATA Device','//./PHYSICALDRIVE0','Disk drive','Fixed hard disk media',94201,'QM00001','2.5+'),(6,3,'(Standard CD-ROM drives)','QEMU QEMU DVD-ROM ATA Device','QEMU QEMU DVD-ROM ATA Device','CD-ROM Drive','UNKNOWN',4184,'','');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subnet`
--

DROP TABLE IF EXISTS `subnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subnet` (
  `NETID` varchar(15) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID` varchar(255) DEFAULT NULL,
  `MASK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NETID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subnet`
--

LOCK TABLES `subnet` WRITE;
/*!40000 ALTER TABLE `subnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `subnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `Tag` varchar(100) NOT NULL DEFAULT '',
  `Login` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`Tag`,`Login`),
  KEY `Tag` (`Tag`),
  KEY `Login` (`Login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_files`
--

DROP TABLE IF EXISTS `temp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_files` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(255) DEFAULT NULL,
  `FIELDS_NAME` varchar(255) DEFAULT NULL,
  `file` longblob,
  `COMMENT` longtext,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_TYPE` varchar(255) DEFAULT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `ID_DDE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_files`
--

LOCK TABLES `temp_files` WRITE;
/*!40000 ALTER TABLE `temp_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usbdevices`
--

DROP TABLE IF EXISTS `usbdevices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usbdevices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INTERFACE` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usbdevices`
--

LOCK TABLES `usbdevices` WRITE;
/*!40000 ALTER TABLE `usbdevices` DISABLE KEYS */;
/*!40000 ALTER TABLE `usbdevices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CHIPSET` varchar(255) DEFAULT NULL,
  `MEMORY` varchar(255) DEFAULT NULL,
  `RESOLUTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,1,'Microsoft Basic Display Adapter','SeaBIOS VBE(C) 2011','0','1024 x 768'),(3,3,'Microsoft Basic Display Adapter','SeaBIOS VBE(C) 2011','0','1024 x 768');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualmachines`
--

DROP TABLE IF EXISTS `virtualmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualmachines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SUBSYSTEM` varchar(255) DEFAULT NULL,
  `VMTYPE` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `VCPU` int(11) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualmachines`
--

LOCK TABLES `virtualmachines` WRITE;
/*!40000 ALTER TABLE `virtualmachines` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtualmachines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-27 13:01:13
