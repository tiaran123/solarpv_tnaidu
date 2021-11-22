-- MySQL dump 10.13  Distrib 5.7.24, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: solarpv_backend
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (3,'staffgroup');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,3,29),(2,3,30),(3,3,31),(4,3,32),(5,3,37),(6,3,38),(7,3,39),(8,3,40),(9,3,41),(10,3,42),(11,3,43),(12,3,44),(13,3,49),(14,3,50),(15,3,51),(16,3,52),(17,3,57),(18,3,58),(19,3,59),(20,3,60);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add test sequence',7,'add_testsequence'),(26,'Can change test sequence',7,'change_testsequence'),(27,'Can delete test sequence',7,'delete_testsequence'),(28,'Can view test sequence',7,'view_testsequence'),(29,'Can add client',8,'add_client'),(30,'Can change client',8,'change_client'),(31,'Can delete client',8,'delete_client'),(32,'Can view client',8,'view_client'),(33,'Can add service',9,'add_service'),(34,'Can change service',9,'change_service'),(35,'Can delete service',9,'delete_service'),(36,'Can view service',9,'view_service'),(37,'Can add test standard',10,'add_teststandard'),(38,'Can change test standard',10,'change_teststandard'),(39,'Can delete test standard',10,'delete_teststandard'),(40,'Can view test standard',10,'view_teststandard'),(41,'Can add location',11,'add_location'),(42,'Can change location',11,'change_location'),(43,'Can delete location',11,'delete_location'),(44,'Can view location',11,'view_location'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add product',13,'add_product'),(50,'Can change product',13,'change_product'),(51,'Can delete product',13,'delete_product'),(52,'Can view product',13,'view_product'),(53,'Can add performance data',14,'add_performancedata'),(54,'Can change performance data',14,'change_performancedata'),(55,'Can delete performance data',14,'delete_performancedata'),(56,'Can view performance data',14,'view_performancedata'),(57,'Can add certficate',15,'add_certficate'),(58,'Can change certficate',15,'change_certficate'),(59,'Can delete certficate',15,'delete_certficate'),(60,'Can view certficate',15,'view_certficate');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$260000$gQPupcpHMih7FAgPfm1l4N$cFoD1gOv0WJiVefLo8gp9eYVomzMYXiaHD8a1Gv2RaA=','2021-11-21 19:07:17.342099',1,'tiaranaidu','','','tnaidu@asu.edu',1,1,'2021-11-21 17:08:33.252737'),(9,'pbkdf2_sha256$260000$irG0s8sbncBqRppAnLOlcR$6bldBnScRIDT5k/pGOQjmtOJJu6dXmoDiPwuvhmf9HI=','2021-11-21 19:05:27.793505',0,'test1','','','n@gt.com',1,1,'2021-11-21 19:05:21.686521'),(11,'pbkdf2_sha256$260000$1TgOcD35ex7GstiE6oZUD8$FTPSI9mvE35ppKF8nLojGt7KdFFio/oVoYN5RKjFoyU=',NULL,0,'test2','','','tnaidu@asu.edu',0,1,'2021-11-21 19:06:49.347080');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (2,9,3),(3,11,3);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-21 17:09:59.909155','1','john',3,'',4,2),(2,'2021-11-21 17:10:13.560429','2','client',3,'',3,2),(3,'2021-11-21 17:10:13.563921','1','staff',3,'',3,2),(4,'2021-11-21 17:22:35.860418','2','client object (2)',1,'[{\"added\": {}}]',8,2),(5,'2021-11-21 18:35:48.826538','3','testuser',3,'',4,2),(6,'2021-11-21 18:46:02.330826','4','testuser',3,'',4,2),(7,'2021-11-21 18:46:02.332816','7','user1',3,'',4,2),(8,'2021-11-21 19:03:02.660969','3','staffgroup',1,'[{\"added\": {}}]',3,2),(9,'2021-11-21 19:04:54.394918','8','test1',3,'',4,2),(10,'2021-11-21 19:05:55.459304','2','testStandard object (2)',1,'[{\"added\": {}}]',10,9);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(15,'solarpv','certficate'),(8,'solarpv','client'),(11,'solarpv','location'),(14,'solarpv','performancedata'),(13,'solarpv','product'),(9,'solarpv','service'),(7,'solarpv','testsequence'),(10,'solarpv','teststandard'),(12,'solarpv','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-23 04:15:57.990453'),(2,'auth','0001_initial','2021-10-23 04:15:58.299779'),(3,'admin','0001_initial','2021-10-23 04:15:58.369210'),(4,'admin','0002_logentry_remove_auto_add','2021-10-23 04:15:58.378134'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-23 04:15:58.388182'),(6,'contenttypes','0002_remove_content_type_name','2021-10-23 04:15:58.431012'),(7,'auth','0002_alter_permission_name_max_length','2021-10-23 04:15:58.468139'),(8,'auth','0003_alter_user_email_max_length','2021-10-23 04:15:58.488715'),(9,'auth','0004_alter_user_username_opts','2021-10-23 04:15:58.496311'),(10,'auth','0005_alter_user_last_login_null','2021-10-23 04:15:58.517383'),(11,'auth','0006_require_contenttypes_0002','2021-10-23 04:15:58.518998'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-23 04:15:58.526337'),(13,'auth','0008_alter_user_username_max_length','2021-10-23 04:15:58.549176'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-23 04:15:58.567308'),(15,'auth','0010_alter_group_name_max_length','2021-10-23 04:15:58.581731'),(16,'auth','0011_update_proxy_permissions','2021-10-23 04:15:58.603254'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-23 04:15:58.623406'),(18,'sessions','0001_initial','2021-10-23 04:15:58.648436'),(19,'solarpv','0001_initial','2021-10-23 04:21:56.496294'),(20,'solarpv','0002_user_username','2021-11-21 00:39:59.285343'),(21,'solarpv','0003_alter_user_username','2021-11-21 00:40:52.784709'),(22,'solarpv','0004_alter_user_username','2021-11-21 00:41:42.068192'),(23,'solarpv','0005_alter_user_username','2021-11-21 00:42:24.980963'),(24,'solarpv','0006_alter_certficate_certificateid','2021-11-21 17:36:46.214602'),(25,'solarpv','0007_alter_user_client','2021-11-21 17:41:55.126160');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2m7uyalmbaheys59e4mehnlwd1tn3a5r','.eJxVjDsOwjAQBe_iGllZf7OU9JzBWttrHECOFCcV4u4QKQW0b2beSwTa1hq2zkuYsjgLJU6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WQIbZJUrFauNGsKQ1eECvyGrAwRQwTqEmxjFqE3NxKqKh7Ack9FG8P8u4N0Q:1mosBJ:I0h-ZhkRDu62zhrM3MbZBPqbs1k3TmGxn-zusjiMv2g','2021-12-05 19:07:17.344318');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_certficate`
--

DROP TABLE IF EXISTS `solarpv_certficate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_certficate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `certificateID` varchar(10) NOT NULL,
  `reportNumber` int(11) NOT NULL,
  `issueDate` date NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `modelNumber_id` bigint(20) NOT NULL,
  `standard_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `solarpv_certficate_certificateID_d204866e_uniq` (`certificateID`),
  KEY `solarpv_certficate_location_id_9211e3fc_fk_solarpv_location_id` (`location_id`),
  KEY `solarpv_certficate_modelNumber_id_1bce4ad0_fk_solarpv_product_id` (`modelNumber_id`),
  KEY `solarpv_certficate_standard_id_a726f435_fk_solarpv_t` (`standard_id`),
  KEY `solarpv_certficate_user_id_16a84b18_fk_solarpv_user_id` (`user_id`),
  CONSTRAINT `solarpv_certficate_location_id_9211e3fc_fk_solarpv_location_id` FOREIGN KEY (`location_id`) REFERENCES `solarpv_location` (`id`),
  CONSTRAINT `solarpv_certficate_modelNumber_id_1bce4ad0_fk_solarpv_product_id` FOREIGN KEY (`modelNumber_id`) REFERENCES `solarpv_product` (`id`),
  CONSTRAINT `solarpv_certficate_standard_id_a726f435_fk_solarpv_t` FOREIGN KEY (`standard_id`) REFERENCES `solarpv_teststandard` (`id`),
  CONSTRAINT `solarpv_certficate_user_id_16a84b18_fk_solarpv_user_id` FOREIGN KEY (`user_id`) REFERENCES `solarpv_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_certficate`
--

LOCK TABLES `solarpv_certficate` WRITE;
/*!40000 ALTER TABLE `solarpv_certficate` DISABLE KEYS */;
INSERT INTO `solarpv_certficate` VALUES (1,'CERT-001',1,'2021-11-06',1,1,1,1),(3,'CERT-002',1,'2021-11-06',1,1,1,1);
/*!40000 ALTER TABLE `solarpv_certficate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_client`
--

DROP TABLE IF EXISTS `solarpv_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(30) NOT NULL,
  `clientType` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_client`
--

LOCK TABLES `solarpv_client` WRITE;
/*!40000 ALTER TABLE `solarpv_client` DISABLE KEYS */;
INSERT INTO `solarpv_client` VALUES (1,'Tiara','Student'),(2,'TestClient','customer');
/*!40000 ALTER TABLE `solarpv_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_location`
--

DROP TABLE IF EXISTS `solarpv_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address1` longtext NOT NULL,
  `address2` longtext NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `postalCode` varchar(5) NOT NULL,
  `country` varchar(30) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `faxNumber` varchar(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solarpv_location_client_id_7add95f0_fk_solarpv_client_id` (`client_id`),
  CONSTRAINT `solarpv_location_client_id_7add95f0_fk_solarpv_client_id` FOREIGN KEY (`client_id`) REFERENCES `solarpv_client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_location`
--

LOCK TABLES `solarpv_location` WRITE;
/*!40000 ALTER TABLE `solarpv_location` DISABLE KEYS */;
INSERT INTO `solarpv_location` VALUES (1,'2341 Nw Larkspur St','Apt 10','Portland','OR','97222','USA','444444444','1231231234',1);
/*!40000 ALTER TABLE `solarpv_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_performancedata`
--

DROP TABLE IF EXISTS `solarpv_performancedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_performancedata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxSystemVoltage` int(11) NOT NULL,
  `voc` double NOT NULL,
  `isc` double NOT NULL,
  `vmp` double NOT NULL,
  `imp` double NOT NULL,
  `pmp` double NOT NULL,
  `ff` double NOT NULL,
  `modelNumber_id` bigint(20) NOT NULL,
  `sequence_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solarpv_performanced_modelNumber_id_c2768d6e_fk_solarpv_p` (`modelNumber_id`),
  KEY `solarpv_performanced_sequence_id_121f7d2b_fk_solarpv_t` (`sequence_id`),
  CONSTRAINT `solarpv_performanced_modelNumber_id_c2768d6e_fk_solarpv_p` FOREIGN KEY (`modelNumber_id`) REFERENCES `solarpv_product` (`id`),
  CONSTRAINT `solarpv_performanced_sequence_id_121f7d2b_fk_solarpv_t` FOREIGN KEY (`sequence_id`) REFERENCES `solarpv_testsequence` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_performancedata`
--

LOCK TABLES `solarpv_performancedata` WRITE;
/*!40000 ALTER TABLE `solarpv_performancedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `solarpv_performancedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_product`
--

DROP TABLE IF EXISTS `solarpv_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  `cellTechnology` varchar(50) NOT NULL,
  `cellManufacturer` varchar(50) NOT NULL,
  `numberOfCells` varchar(50) NOT NULL,
  `series` varchar(50) NOT NULL,
  `seriesString` varchar(50) NOT NULL,
  `diodes` varchar(50) NOT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `superstateType` varchar(50) NOT NULL,
  `superstateManufacturer` varchar(50) NOT NULL,
  `substrateType` varchar(50) NOT NULL,
  `substrateManufacturer` varchar(50) NOT NULL,
  `frameType` varchar(50) NOT NULL,
  `frameAdhesive` varchar(50) NOT NULL,
  `encapsulateType` varchar(50) NOT NULL,
  `encapsulateManufacturer` varchar(50) NOT NULL,
  `junctionBoxType` varchar(50) NOT NULL,
  `junctionBoxManufacturer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_product`
--

LOCK TABLES `solarpv_product` WRITE;
/*!40000 ALTER TABLE `solarpv_product` DISABLE KEYS */;
INSERT INTO `solarpv_product` VALUES (1,'Sun Cell','poly-Si','HK-sun','10','10','20','200',10,20,5,'22','3434','Polymer','3M','Al','super','glass','testGlass','E-cell','E-corp'),(2,'Sun Cell gen2','poly-Si grain','HK-sun','20','10','20','200',10,20,5,'22','3434','Polymer','3M','Al','super','glass','testGlass','E-cell','E-corp');
/*!40000 ALTER TABLE `solarpv_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_service`
--

DROP TABLE IF EXISTS `solarpv_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `isFIRequired` tinyint(1) NOT NULL,
  `FIFrequency` int(11) NOT NULL,
  `standard_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solarpv_service_standard_id_6f615df0_fk_solarpv_teststandard_id` (`standard_id`),
  CONSTRAINT `solarpv_service_standard_id_6f615df0_fk_solarpv_teststandard_id` FOREIGN KEY (`standard_id`) REFERENCES `solarpv_teststandard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_service`
--

LOCK TABLES `solarpv_service` WRITE;
/*!40000 ALTER TABLE `solarpv_service` DISABLE KEYS */;
INSERT INTO `solarpv_service` VALUES (1,'test','this is the test',0,10,1),(2,'test2','this is the test',0,10,1);
/*!40000 ALTER TABLE `solarpv_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_testsequence`
--

DROP TABLE IF EXISTS `solarpv_testsequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_testsequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sequenceName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_testsequence`
--

LOCK TABLES `solarpv_testsequence` WRITE;
/*!40000 ALTER TABLE `solarpv_testsequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `solarpv_testsequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_teststandard`
--

DROP TABLE IF EXISTS `solarpv_teststandard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_teststandard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `standardName` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `publishedDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_teststandard`
--

LOCK TABLES `solarpv_teststandard` WRITE;
/*!40000 ALTER TABLE `solarpv_teststandard` DISABLE KEYS */;
INSERT INTO `solarpv_teststandard` VALUES (1,'Test','Test only','2021-11-06'),(2,'teasff2','dfdsfsdf','2021-11-18');
/*!40000 ALTER TABLE `solarpv_teststandard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solarpv_user`
--

DROP TABLE IF EXISTS `solarpv_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solarpv_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `middleName` varchar(30) NOT NULL,
  `jobTitle` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `officePhone` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `solarpv_user_userName_69266202_uniq` (`userName`),
  KEY `solarpv_user_client_id_3a1ff182_fk_solarpv_client_id` (`client_id`),
  CONSTRAINT `solarpv_user_client_id_3a1ff182_fk_solarpv_client_id` FOREIGN KEY (`client_id`) REFERENCES `solarpv_client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solarpv_user`
--

LOCK TABLES `solarpv_user` WRITE;
/*!40000 ALTER TABLE `solarpv_user` DISABLE KEYS */;
INSERT INTO `solarpv_user` VALUES (1,'Tiara','Naidu','N','student','tnaidu@asu.edu','5555555555','5345345555','Ms',1,'tiaranaidu'),(5,'tet','test','test','testM','n@gt.com','1111111111','1111111','MR',2,'test1'),(6,'dssdf','sdsdffd','dsfsdf','testM','tnaidu@asu.edu','222333','111122','Ms',2,'test2');
/*!40000 ALTER TABLE `solarpv_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-21 17:14:55
