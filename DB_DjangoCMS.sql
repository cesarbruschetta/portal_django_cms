-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: djangoCMS
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

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
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_9af0b65a` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add placeholder',9,'add_placeholder'),(26,'Can change placeholder',9,'change_placeholder'),(27,'Can delete placeholder',9,'delete_placeholder'),(28,'Can add cms plugin',10,'add_cmsplugin'),(29,'Can change cms plugin',10,'change_cmsplugin'),(30,'Can delete cms plugin',10,'delete_cmsplugin'),(31,'Can add page',11,'add_page'),(32,'Can change page',11,'change_page'),(33,'Can delete page',11,'delete_page'),(34,'Can view page',11,'view_page'),(35,'Can add PageModerator',12,'add_pagemoderator'),(36,'Can change PageModerator',12,'change_pagemoderator'),(37,'Can delete PageModerator',12,'delete_pagemoderator'),(38,'Can add Page moderator state',13,'add_pagemoderatorstate'),(39,'Can change Page moderator state',13,'change_pagemoderatorstate'),(40,'Can delete Page moderator state',13,'delete_pagemoderatorstate'),(41,'Can add Page global permission',14,'add_globalpagepermission'),(42,'Can change Page global permission',14,'change_globalpagepermission'),(43,'Can delete Page global permission',14,'delete_globalpagepermission'),(44,'Can add Page permission',15,'add_pagepermission'),(45,'Can change Page permission',15,'change_pagepermission'),(46,'Can delete Page permission',15,'delete_pagepermission'),(47,'Can add User (page)',16,'add_pageuser'),(48,'Can change User (page)',16,'change_pageuser'),(49,'Can delete User (page)',16,'delete_pageuser'),(50,'Can add User group (page)',17,'add_pageusergroup'),(51,'Can change User group (page)',17,'change_pageusergroup'),(52,'Can delete User group (page)',17,'delete_pageusergroup'),(53,'Can add title',18,'add_title'),(54,'Can change title',18,'change_title'),(55,'Can delete title',18,'delete_title'),(56,'Can add cache key',19,'add_cachekey'),(57,'Can change cache key',19,'change_cachekey'),(58,'Can delete cache key',19,'delete_cachekey'),(59,'Can add migration history',20,'add_migrationhistory'),(60,'Can change migration history',20,'change_migrationhistory'),(61,'Can delete migration history',20,'delete_migrationhistory'),(62,'Can add text',21,'add_text'),(63,'Can change text',21,'change_text'),(64,'Can delete text',21,'delete_text'),(65,'Can add picture',22,'add_picture'),(66,'Can change picture',22,'change_picture'),(67,'Can delete picture',22,'delete_picture'),(68,'Can add link',23,'add_link'),(69,'Can change link',23,'change_link'),(70,'Can delete link',23,'delete_link'),(71,'Can add file',24,'add_file'),(72,'Can change file',24,'change_file'),(73,'Can delete file',24,'delete_file'),(74,'Can add Snippet',25,'add_snippet'),(75,'Can change Snippet',25,'change_snippet'),(76,'Can delete Snippet',25,'delete_snippet'),(77,'Can add Snippet',26,'add_snippetptr'),(78,'Can change Snippet',26,'change_snippetptr'),(79,'Can delete Snippet',26,'delete_snippetptr'),(80,'Can add google map',27,'add_googlemap'),(81,'Can change google map',27,'change_googlemap'),(82,'Can delete google map',27,'delete_googlemap'),(83,'Can add flash',28,'add_flash'),(84,'Can change flash',28,'change_flash'),(85,'Can delete flash',28,'delete_flash'),(86,'Can add teaser',29,'add_teaser'),(87,'Can change teaser',29,'change_teaser'),(88,'Can delete teaser',29,'delete_teaser'),(89,'Can add video',30,'add_video'),(90,'Can change video',30,'change_video'),(91,'Can delete video',30,'delete_video'),(92,'Can add twitter recent entries',31,'add_twitterrecententries'),(93,'Can change twitter recent entries',31,'change_twitterrecententries'),(94,'Can delete twitter recent entries',31,'delete_twitterrecententries'),(95,'Can add twitter search',32,'add_twittersearch'),(96,'Can change twitter search',32,'change_twittersearch'),(97,'Can delete twitter search',32,'delete_twittersearch'),(98,'Can add slide',33,'add_slide'),(99,'Can change slide',33,'change_slide'),(100,'Can delete slide',33,'delete_slide');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','cesarbruschetta@hotmail.com','pbkdf2_sha256$10000$y4iaOHqalCzC$Q5G3qhRbLh2t4NdvLTtcHB4wMyccZDgqEn4dB6pHIVo=',1,1,1,'2012-10-13 21:39:36','2012-09-22 20:49:28'),(2,'cesaraugusto','','','','pbkdf2_sha256$10000$Y3qp64wJMruy$v68S3hj6XqAcFifDK2TzQchoFMdawLve2MioU0giE88=',1,1,0,'2012-10-13 21:40:32','2012-10-13 01:31:54');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,13),(2,2,14),(3,2,15),(4,2,25),(5,2,26),(6,2,27),(7,2,28),(8,2,29),(9,2,30),(10,2,31),(11,2,32),(12,2,33),(13,2,34),(14,2,35),(15,2,36),(16,2,37),(17,2,38),(18,2,39),(19,2,40),(20,2,41),(21,2,42),(22,2,43),(23,2,44),(24,2,45),(25,2,46),(26,2,47),(27,2,48),(28,2,49),(29,2,50),(30,2,51),(31,2,52),(32,2,53),(33,2,54),(34,2,55),(35,2,56),(36,2,57),(37,2,58),(38,2,62),(39,2,63),(40,2,64),(41,2,65),(42,2,66),(43,2,67),(44,2,68),(45,2,69),(46,2,70),(47,2,71),(48,2,72),(49,2,73),(50,2,74),(51,2,75),(52,2,76),(53,2,77),(54,2,78),(55,2,79),(56,2,80),(57,2,81),(58,2,82),(59,2,83),(60,2,84),(61,2,85),(62,2,86),(63,2,87),(64,2,88),(65,2,89),(66,2,90),(67,2,91),(68,2,92),(69,2,93),(70,2,94),(71,2,95),(72,2,96),(73,2,97),(74,2,98),(75,2,99),(76,2,100);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeholder_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position` smallint(5) unsigned DEFAULT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_cmsplugin_c1ca2850` (`placeholder_id`),
  KEY `cms_cmsplugin_63f17a16` (`parent_id`),
  KEY `cms_cmsplugin_8a7ac9ab` (`language`),
  KEY `cms_cmsplugin_ad070cd0` (`plugin_type`),
  KEY `cms_cmsplugin_2a8f42e8` (`level`),
  KEY `cms_cmsplugin_42b06ff6` (`lft`),
  KEY `cms_cmsplugin_91543e5a` (`rght`),
  KEY `cms_cmsplugin_efd07f28` (`tree_id`),
  CONSTRAINT `parent_id_refs_id_e0b32a03` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `placeholder_id_refs_id_df6bb944` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (10,1,NULL,0,'pt-BR','TextPlugin','2012-09-23 19:13:06','0000-00-00 00:00:00',0,1,2,1),(12,4,NULL,1,'pt-BR','SnippetPlugin','2012-10-13 21:12:40','2012-10-13 21:15:24',0,1,2,2),(13,4,NULL,0,'pt-BR','TextPlugin','2012-10-13 21:13:19','2012-10-13 21:15:24',0,1,2,3),(14,2,NULL,0,'pt-BR','TextPlugin','2012-10-13 21:15:44','2012-10-13 21:20:25',0,1,8,4),(15,2,14,NULL,'pt-BR','PicturePlugin','2012-10-13 21:16:46','2012-10-13 21:16:46',1,2,3,4),(16,2,14,NULL,'pt-BR','PicturePlugin','2012-10-13 21:16:55','2012-10-13 21:16:55',1,4,5,4),(17,2,14,NULL,'pt-BR','PicturePlugin','2012-10-13 21:21:27','2012-10-13 21:21:27',1,6,7,4),(18,3,NULL,0,'pt-BR','TextPlugin','2012-10-13 21:22:48','2012-10-13 21:32:51',0,1,2,5),(20,5,NULL,0,'pt-BR','TextPlugin','2012-10-13 21:41:47','2012-10-13 21:42:13',0,1,2,6),(22,6,NULL,0,'pt-BR','TextPlugin','2012-10-13 21:43:03','2012-10-13 21:43:51',0,1,2,7),(23,7,NULL,0,'pt-BR','TextPlugin','2012-10-13 21:44:48','2012-10-13 21:45:03',0,1,2,8);
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_moderate` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_fbfc09f1` (`user_id`),
  KEY `cms_globalpagepermission_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_b12278f8` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_f5365069` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `globalpagepermission_id` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermission_sites_f5debdc1` (`globalpagepermission_id`),
  KEY `cms_globalpagepermission_sites_6223029` (`site_id`),
  CONSTRAINT `globalpagepermission_id_refs_id_2c730e06` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `site_id_refs_id_38dfe611` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(70) NOT NULL,
  `changed_by` varchar(70) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publication_end_date` datetime DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `template` varchar(100) NOT NULL,
  `site_id` int(11) NOT NULL,
  `moderator_state` smallint(6) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `publisher_state` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_63f17a16` (`parent_id`),
  KEY `cms_page_ee664462` (`publication_date`),
  KEY `cms_page_a221fe64` (`publication_end_date`),
  KEY `cms_page_3c0ea264` (`in_navigation`),
  KEY `cms_page_baa27763` (`soft_root`),
  KEY `cms_page_b56116b` (`reverse_id`),
  KEY `cms_page_d98c6d14` (`navigation_extenders`),
  KEY `cms_page_6223029` (`site_id`),
  KEY `cms_page_2a8f42e8` (`level`),
  KEY `cms_page_42b06ff6` (`lft`),
  KEY `cms_page_91543e5a` (`rght`),
  KEY `cms_page_efd07f28` (`tree_id`),
  KEY `cms_page_c909672f` (`limit_visibility_in_menu`),
  KEY `cms_page_16d2d3fa` (`publisher_is_draft`),
  KEY `cms_page_a0014f5a` (`publisher_state`),
  CONSTRAINT `parent_id_refs_id_653a773` FOREIGN KEY (`parent_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `publisher_public_id_refs_id_653a773` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `site_id_refs_id_ed70f71a` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'admin','admin',NULL,'2012-09-23 13:25:04','2012-09-23 13:27:04','2012-09-23 13:27:04',NULL,1,0,NULL,'',1,'man_page.html',1,0,0,1,2,1,0,NULL,1,NULL,1),(2,'admin','cesaraugusto',NULL,'2012-09-23 13:28:40','2012-10-13 21:20:33','2012-09-23 13:28:44',NULL,1,0,NULL,'',1,'man_page.html',1,0,0,1,2,2,0,NULL,1,NULL,1),(3,'admin','cesaraugusto',NULL,'2012-09-23 13:29:06','2012-10-13 21:27:51','2012-09-23 13:29:26',NULL,1,0,NULL,'',1,'man_page.html',1,0,0,1,8,3,0,NULL,1,NULL,1),(4,'admin','cesaraugusto',NULL,'2012-09-23 13:29:21','2012-10-13 21:15:26','2012-09-23 13:29:26',NULL,1,0,NULL,'',1,'man_page.html',1,0,0,1,2,6,0,NULL,1,NULL,1),(5,'cesaraugusto','cesaraugusto',3,'2012-10-13 21:36:07','2012-10-13 21:42:15','2012-10-13 21:38:03',NULL,1,0,NULL,'',1,'man_page.html',1,0,1,2,3,3,0,NULL,1,NULL,1),(6,'cesaraugusto','cesaraugusto',3,'2012-10-13 21:37:11','2012-10-13 21:44:10','2012-10-13 21:38:05',NULL,1,0,NULL,'',1,'man_page.html',1,0,1,4,5,3,0,NULL,1,NULL,1),(7,'cesaraugusto','cesaraugusto',3,'2012-10-13 21:37:46','2012-10-13 21:45:45','2012-10-13 21:38:04',NULL,1,0,NULL,'',1,'man_page.html',1,0,1,6,7,3,0,NULL,1,NULL,1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholders_32d04bc7` (`page_id`),
  KEY `cms_page_placeholders_c1ca2850` (`placeholder_id`),
  CONSTRAINT `page_id_refs_id_b22baae5` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `placeholder_id_refs_id_b0df4960` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagemoderator`
--

DROP TABLE IF EXISTS `cms_pagemoderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagemoderator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `moderate_page` tinyint(1) NOT NULL,
  `moderate_children` tinyint(1) NOT NULL,
  `moderate_descendants` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagemoderator_32d04bc7` (`page_id`),
  KEY `cms_pagemoderator_fbfc09f1` (`user_id`),
  CONSTRAINT `page_id_refs_id_92bc8605` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `user_id_refs_id_c574e281` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagemoderator`
--

LOCK TABLES `cms_pagemoderator` WRITE;
/*!40000 ALTER TABLE `cms_pagemoderator` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagemoderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagemoderatorstate`
--

DROP TABLE IF EXISTS `cms_pagemoderatorstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagemoderatorstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `action` varchar(3) DEFAULT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagemoderatorstate_32d04bc7` (`page_id`),
  KEY `cms_pagemoderatorstate_fbfc09f1` (`user_id`),
  CONSTRAINT `page_id_refs_id_f4dc9e9d` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `user_id_refs_id_2808fb19` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagemoderatorstate`
--

LOCK TABLES `cms_pagemoderatorstate` WRITE;
/*!40000 ALTER TABLE `cms_pagemoderatorstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagemoderatorstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_moderate` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_fbfc09f1` (`user_id`),
  KEY `cms_pagepermission_bda51c3c` (`group_id`),
  KEY `cms_pagepermission_32d04bc7` (`page_id`),
  CONSTRAINT `group_id_refs_id_d3639033` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `page_id_refs_id_d31a36ca` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `user_id_refs_id_4f0ab76c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_b5de30be` (`created_by_id`),
  CONSTRAINT `created_by_id_refs_id_16b8b1ea` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `user_ptr_id_refs_id_16b8b1ea` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_b5de30be` (`created_by_id`),
  CONSTRAINT `created_by_id_refs_id_3dc63396` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_ptr_id_refs_id_99e5e357` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(50) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_400badfd` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'main',NULL),(2,'main',NULL),(3,'main',NULL),(4,'main',NULL),(5,'main',NULL),(6,'main',NULL),(7,'main',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `redirect` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language` (`language`,`page_id`),
  KEY `cms_title_8a7ac9ab` (`language`),
  KEY `cms_title_a951d5d6` (`slug`),
  KEY `cms_title_6a8a34e2` (`path`),
  KEY `cms_title_c269b1d2` (`has_url_overwrite`),
  KEY `cms_title_23b1fc68` (`application_urls`),
  KEY `cms_title_32d04bc7` (`page_id`),
  CONSTRAINT `page_id_refs_id_fc98665f` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'pt-BR','Home','','home','',0,'','','','','',1,'2012-09-23 13:25:04'),(2,'pt-BR','Quem Somos','','quem-somos','quem-somos',0,'','','','','',2,'2012-09-23 13:28:40'),(3,'pt-BR','Produtos','','produtos','produtos',0,'','','','','',3,'2012-09-23 13:29:06'),(4,'pt-BR','Contato','','contato','contato',0,'','','','','',4,'2012-09-23 13:29:21'),(5,'pt-BR','Produto 1','','produto-1','produtos/produto-1',0,'','','','','',5,'2012-10-13 21:36:08'),(6,'pt-BR','Produto 2','','produto-2','produtos/produto-2',0,'','','','','',6,'2012-10-13 21:37:11'),(7,'pt-BR','Produto 3','','produto-3','produtos/produto-3',0,'','','','','',7,'2012-10-13 21:37:46');
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_file`
--

DROP TABLE IF EXISTS `cmsplugin_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_c294683f` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_file`
--

LOCK TABLES `cmsplugin_file` WRITE;
/*!40000 ALTER TABLE `cmsplugin_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_flash`
--

DROP TABLE IF EXISTS `cmsplugin_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_flash` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_b6c2bca2` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_flash`
--

LOCK TABLES `cmsplugin_flash` WRITE;
/*!40000 ALTER TABLE `cmsplugin_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_googlemap`
--

DROP TABLE IF EXISTS `cmsplugin_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `city` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `route_planer_title` varchar(150) DEFAULT NULL,
  `route_planer` tinyint(1) NOT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_7f24597b` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_googlemap`
--

LOCK TABLES `cmsplugin_googlemap` WRITE;
/*!40000 ALTER TABLE `cmsplugin_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_link`
--

DROP TABLE IF EXISTS `cmsplugin_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `mailto` varchar(75) DEFAULT NULL,
  `target` varchar(100) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_link_37c07cc5` (`page_link_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_617f46c9` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `page_link_id_refs_id_63526ef3` FOREIGN KEY (`page_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_link`
--

LOCK TABLES `cmsplugin_link` WRITE;
/*!40000 ALTER TABLE `cmsplugin_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_picture`
--

DROP TABLE IF EXISTS `cmsplugin_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `longdesc` varchar(255) DEFAULT NULL,
  `float` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_picture_37c07cc5` (`page_link_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_c0f14a14` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `page_link_id_refs_id_74758dc2` FOREIGN KEY (`page_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_picture`
--

LOCK TABLES `cmsplugin_picture` WRITE;
/*!40000 ALTER TABLE `cmsplugin_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_snippetptr`
--

DROP TABLE IF EXISTS `cmsplugin_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_snippetptr_37e31bc4` (`snippet_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_cb7718ea` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `snippet_id_refs_id_570a9f83` FOREIGN KEY (`snippet_id`) REFERENCES `snippet_snippet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_snippetptr`
--

LOCK TABLES `cmsplugin_snippetptr` WRITE;
/*!40000 ALTER TABLE `cmsplugin_snippetptr` DISABLE KEYS */;
INSERT INTO `cmsplugin_snippetptr` VALUES (12,1);
/*!40000 ALTER TABLE `cmsplugin_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_teaser`
--

DROP TABLE IF EXISTS `cmsplugin_teaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_teaser` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_teaser_37c07cc5` (`page_link_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_d6a15acd` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `page_link_id_refs_id_b9e9ae89` FOREIGN KEY (`page_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_teaser`
--

LOCK TABLES `cmsplugin_teaser` WRITE;
/*!40000 ALTER TABLE `cmsplugin_teaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_teaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_text`
--

DROP TABLE IF EXISTS `cmsplugin_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_175e936e` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_text`
--

LOCK TABLES `cmsplugin_text` WRITE;
/*!40000 ALTER TABLE `cmsplugin_text` DISABLE KEYS */;
INSERT INTO `cmsplugin_text` VALUES (10,'<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae \nerat diam, eget malesuada nunc. Cras non dapibus metus. Sed imperdiet \nlacus in ligula consectetur ac tincidunt sem gravida. Quisque quam \nlacus, malesuada id dignissim vel, iaculis ac diam. Duis iaculis cursus \ntristique. Sed ut nunc convallis sapien mattis varius semper non diam. \nNullam aliquam congue enim venenatis sollicitudin. Integer at commodo \narcu. Fusce ac feugiat nisl.\n</p>\n<p>\nPellentesque erat mi, fringilla at luctus et, ornare sit amet est. Morbi\n scelerisque luctus justo sed sagittis. Praesent lectus metus, \npellentesque ac dignissim convallis, blandit ut arcu. Maecenas ligula \nipsum, tincidunt ac auctor vitae, dictum eu dolor. Aenean et massa \nsapien. Ut id massa quis orci accumsan tincidunt et at justo. Vivamus at\n bibendum sem. Integer non nulla nisi. Vivamus sit amet egestas sapien. \nMorbi dignissim eros ut eros scelerisque in venenatis diam malesuada. \nPraesent pulvinar lacinia neque a consequat. Praesent sapien sem, \ninterdum sit amet mollis at, elementum ac sapien.\n</p>\n<p>\nUt felis ante, consectetur vel congue suscipit, condimentum sed diam. \nSuspendisse potenti. Nunc id justo sed felis lobortis bibendum. Mauris \nposuere euismod erat sit amet vestibulum. Aliquam imperdiet, nibh \ntristique bibendum interdum, dolor mauris tristique felis, vehicula \nvulputate nunc quam in metus. Nunc nibh lectus, mattis non fringilla \nquis, iaculis nec tortor. Aenean lectus urna, lobortis nec venenatis et,\n rhoncus vitae purus. Aliquam viverra urna sed mauris volutpat vitae \nlacinia urna lacinia. Curabitur et leo quam, et interdum erat. Etiam id \naliquam neque. Suspendisse potenti. Sed ullamcorper laoreet nibh, non \ncongue metus ultrices et. Aliquam sagittis adipiscing aliquam. In hac \nhabitasse platea dictumst. Nam eget aliquet tortor.\n</p>'),(13,'<span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Até o momento</span><span>, os designers precisam</span> <span class=\"hps\">mais, não mais</span> <span class=\"hps\">do que</span> <span class=\"hps\">uma página,</span> <span class=\"hps\">mas eu não</span> <span class=\"hps\">bombear os</span> <span class=\"hps\">lagos.</span> <span class=\"hps\">No post</span> <span class=\"hps\">do autor.</span> <span class=\"hps\">Batendo</span> <span class=\"hps\">mais de</span> <span class=\"hps\">conveniência,</span> <span class=\"hps\">e para</span> <span class=\"hps\">mais e mais.</span> <span class=\"hps\">Pesquisar por</span> <span class=\"hps\">produto</span><span>, a minha preocupação</span> <span class=\"hps\">aqui.</span> <span class=\"hps\">Por favor, não</span> <span class=\"hps\">fixa</span><span>-lo nos</span> <span class=\"hps\">Correios.</span> <span class=\"hps\">Sobre</span> <span class=\"hps\">Dor</span> <span class=\"hps\">soft link</span> <span class=\"hps\">abrangente.</span> <span class=\"hps\">Nós dizemos que</span> <span class=\"hps\">é mais</span> <span class=\"hps\">do que apenas</span> <span class=\"hps\">um tanque.</span></span>'),(14,'<span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Mais Mais Mais</span><span>, a imigração</span> <span class=\"hps\">é um portal completo</span><span>, tem sido um</span> <span class=\"hps\">membro.</span> <span class=\"hps\">Contato</span> <span class=\"hps\">página.</span> <span class=\"hps\">Sentimos</span> <span class=\"hps\">compostos</span> <span class=\"hps\">boas</span><span>, nenhuma escola</span> <span class=\"hps\">aqui.</span> <span class=\"hps\">Neste post</span><span>.</span> <span class=\"hps\">Não temos</span> <span class=\"hps\">um deck da piscina</span> <span class=\"hps\">grande.</span> <span class=\"hps\">Sobre</span> <span class=\"hps\">medos.</span> <span class=\"hps\">Inteiros</span> <span class=\"hps\">notas</span> <span class=\"hps\">poucos</span><span>, flechas</span><span>, se sentir bem</span> <span class=\"hps\">no basquete</span><span>, os jogadores</span> <span class=\"hps\">de luto</span> <span class=\"hps\">para a plataforma</span> <span class=\"hps\">muito,</span> <span class=\"hps\">é a China</span> <span class=\"hps\">o maior</span><span>, é</span> <span class=\"hps\">na</span> <span class=\"hps\">frente da cama</span><span>.</span> <span class=\"hps\">* Indica</span> <span class=\"hps\">um campo obrigatório</span> <span class=\"hps\">e</span> <span class=\"hps\">evenpages</span><span>, um rato</span> <span class=\"hps\">ridículo</span> <span class=\"hps\">vai nascer.</span><br><br><span class=\"hps\">Agora agora</span> <span class=\"hps\">perfuração</span><span>, mais investimento</span> <span class=\"hps\">da necessidade</span> <span class=\"hps\">industrial, económico</span> <span class=\"hps\">do leão.</span> <span class=\"hps\">Mas o impacto</span> <span class=\"hps\">de basquete.</span> <span class=\"hps\">Para uma análise mais</span> <span class=\"hps\">abrangente</span> <span class=\"hps\">e agora.</span> <span class=\"hps\">Novos membros,</span> <span class=\"hps\">e</span> <span class=\"hps\">um autor moderno</span><span>, tristeza</span> <span class=\"hps\">medo antes</span> <span class=\"hps\">de bombeamento ou</span> <span class=\"hps\">mais indicadores</span> <span class=\"hps\">da escola</span> <span class=\"hps\">de massa.</span> <span class=\"hps\">Clique para cancelar</span> <span class=\"hps\">agora.</span> <span class=\"hps\">Por favor, contate</span> <span class=\"hps\">o seu</span> <span class=\"hps\">texto palavra</span> <span class=\"hps\">fácil.</span> <span class=\"hps\">Até que um</span> <span class=\"hps\">abrangente e</span><span>, por vezes,</span> <span class=\"hps\">venenosas.</span> <span class=\"hps\">Mesmo</span> <span class=\"hps\">um para temperatura</span><span>, melhorar a</span> <span class=\"hps\">China.</span> <span class=\"hps\">Mais novas atrações</span> <span class=\"hps\">aqui.</span> <span class=\"hps\">Saiba mais</span> <span class=\"hps\">portão</span> <span class=\"hps\">dinâmico.</span> <span class=\"hps\">Leia</span> <span class=\"hps\">na frente</span> <span class=\"hps\">de maconha,</span> <span class=\"hps\">segundo a razão</span> <span class=\"hps\">ea necessidade</span> <span class=\"hps\">dos maxilares</span><span>, curso</span> <span class=\"hps\">econômica pura</span><span>.</span> <span class=\"hps\">Administrador</span> <span class=\"hps\">Row</span> <span class=\"hps\">página</span> <span class=\"hps\">Variações.</span><br><br><span class=\"hps\">Barato</span> <span class=\"hps\">Unidos</span> <span class=\"hps\">leão</span> <span class=\"hps\">DUI.</span> <span class=\"hps\">Nos</span> <span class=\"hps\">membros do</span> <span class=\"hps\">preço do</span> <span class=\"hps\">arco para</span> <span class=\"hps\">a balsa</span><span>.</span> <span class=\"hps\">Doenças</span> <span class=\"hps\">Seção de</span> <span class=\"hps\">produtos ou serviços ou</span> <span class=\"hps\">Pagamentos</span> <span class=\"hps\">do leão.</span> <span class=\"hps\">Mesmo</span> <span class=\"hps\">se a pessoa escolhe</span> <span class=\"hps\">ao estresse.</span> <span class=\"hps\">Mas basta pensar</span> <span class=\"hps\">sobre o planejamento</span> <span class=\"hps\">olímpico.</span> <span class=\"hps\">Nós</span> <span class=\"hps\">disse que às vezes</span> <span class=\"hps\">a cama por</span> <span class=\"hps\">mais de</span> <span class=\"hps\">necessidades</span> <span class=\"hps\">pá.</span> <span class=\"hps\">Mesmo</span> <span class=\"hps\">um grande trabalho</span> <span class=\"hps\">na frente do</span> <span class=\"hps\">portão.</span> <span class=\"hps\">Business Review</span> <span class=\"hps\">página</span> <span class=\"hps\">de esportes</span> <span class=\"hps\">on-line aqui</span><span>.<br></span><span class=\"hps\">Mas isso é</span> <span class=\"hps\">a vida</span> <span class=\"hps\">para</span> <span class=\"hps\">não</span> <span class=\"hps\">saia</span> <span class=\"hps\">de perfuração</span> <span class=\"hps\">grávida não</span><span>.</span> <span class=\"hps\">Os requisitos de nossos</span> <span class=\"hps\">balsa</span><span>, carece de indicadores</span> <span class=\"hps\">de investimento em</span> <span class=\"hps\">pós</span><span>.</span> <span class=\"hps\">Podemos</span> <span class=\"hps\">estar vivo</span> <span class=\"hps\">e Orci</span> <span class=\"hps\">libertar</span><span>, desde o</span> <span class=\"hps\">empregado</span> <span class=\"hps\">escolhe</span><span>.</span> <span class=\"hps\">É</span> <span class=\"hps\">o ódio</span> <span class=\"hps\">eo portão</span> <span class=\"hps\">muito</span> <span class=\"hps\">do hotel,</span> <span class=\"hps\">os meus clientes.</span> <span class=\"hps\">Afiliações</span> <span class=\"hps\">nosso segredo</span> <span class=\"hps\">casamento de</span> <span class=\"hps\">classe para</span> <span class=\"hps\">muito,</span> <span class=\"hps\">muito</span> <span class=\"hps\">himenaeos</span> <span class=\"hps\">iniciantes.</span> <span class=\"hps\">Nenhum item</span><span>.</span> <span class=\"hps\">Sem papel</span><span>,</span> <span class=\"hps\">medos ou</span> <span class=\"hps\">enchimento</span> <span class=\"hps\">viável</span> <span class=\"hps\">é o meu</span> <span class=\"hps\">comentário,</span> <span class=\"hps\">antes que o preço</span> <span class=\"hps\">turnê, mas</span> <span class=\"hps\">mais dor.</span></span>'),(18,'<span id=\"result_box\" lang=\"pt\"><span title=\"Nulla volutpat massa eu enim porta vel hendrerit sapien gravida.\">Escala de massa não mais para o planejamento estratégico ou gravidez. </span><span title=\"Proin sit amet eros nisl.\">Você pode comentar aqui. </span><span title=\"Nulla in lacinia velit.\">Nada no bloco de código. </span><span title=\"Donec vel neque a velit sagittis blandit.\">Até que uma escaramuça ou Publicar. </span><span title=\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\">Afiliações nosso segredo casamento de classe para muito, muito himenaeos iniciantes. </span><span title=\"Sed molestie mattis molestie.\">Mas um monte de aborrecimento. </span><span title=\"Quisque auctor, tellus quis sodales elementum, neque magna congue augue, quis tincidunt mi ante commodo risus.\">Cada autor, elemento membros regionais, nem um novo hotel, uma parada antes do meu melhor sorriso. </span><span title=\"Nunc a magna quis magna adipiscing sodales.\">Agora um grande homem com o armazenamento geológico grande.<br><br></span><span title=\"Integer tempor molestie lorem, sed fermentum quam mollis eget.\">Lor discussão aborrecimento, mas precisa do fermento do que macia. </span><span title=\"Suspendisse venenatis, ligula vitae porttitor consequat, ligula nisi egestas erat, id blandit erat urna ac est.\">Novos produtos, novos indicadores de desenvolvimento da vida, mas o impacto foi a pobreza extrema, e que ela era uma banana. </span><span title=\"In euismod faucibus velit dapibus feugiat.\">Em Steal terá impacto global. </span><span title=\"Vivamus in sapien vitae magna faucibus porttitor.\">Voltar nas garras de uma vida grande sábio viável. </span><span title=\"Nulla vestibulum porta dignissim.\">Nenhuma informação portão de entrada. </span><span title=\"Suspendisse mauris ligula, porta vel pretium imperdiet, adipiscing nec arcu.\">Crianças e Adolescentes, os indicadores de preços portão ou na escola, você não se curvar. </span><span title=\"Integer in dui lectus, eu fermentum erat.\">Por favor, comente no sofá, seu trabalho era. </span><span title=\"Donec vulputate justo sed ante vehicula elementum.\">Até pouco antes do elemento veículos Olímpico.</span><span title=\"In non nunc nunc.\"><br><br><br>Até agora, não agora. </span><span title=\"Nullam varius pretium velit a tempus.\">Por favor, devolva o preço, a partir do momento que ele deseja. </span><span title=\"Sed vitae metus at risus ultricies vehicula ac nec est.\">Mas a vida não é medo, mas os veículos risadas e rápido. </span><span title=\"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\">Afiliações nosso segredo casamento de classe para muito, muito himenaeos iniciantes. </span><span title=\"In malesuada sapien ac sapien vulputate a tempus tortor rhoncus.\">Sapien sapien no aconselhamento e resumida por uma ampla gama de temperatura. </span><span title=\"Cras ornare sem felis, vel molestie nulla.\">Amanhã é sempre os gatos, ou qualquer funcionário. </span><span title=\"Vestibulum tempor purus tempus velit tristique quis facilisis enim euismod.\">Leia mais no momento em que ele deseja para mais uma história triste. </span><span title=\"Morbi laoreet leo et odio rutrum in tristique arcu elementum.\">Consulta à Comunidade e uma pá no elemento ódio tanque de proa. </span><span title=\"Donec interdum viverra vestibulum.\">Até algum tempo atrás varanda.</span><span title=\"Phasellus vel justo orci.\"><br><br><br>Ver ou principal. </span><span title=\"Nam molestie congue vehicula.\">Para veículos de funcionários do hotel. </span><span title=\"Etiam iaculis, velit eget ullamcorper ultrices, dolor ipsum pretium nunc, at rhoncus metus lacus in enim.\">Além disso, ele vai precisar de ajuda para preencher a dor do preço que é agora, mas muito mais no tanque para. </span><span title=\"Cras convallis consectetur dictum.\">Mantenha-se na declaração principal. </span><span title=\"Ut orci turpis, ornare a sollicitudin non, dignissim a neque.\">Isso é feio, não na plataforma, ou uma escova. </span><span title=\"Vestibulum tincidunt elementum lorem tristique suscipit.\">Encabeçando tanque do elemento. </span><span title=\"Donec risus sem, blandit a congue vel, sollicitudin non turpis.\">Controle especial, ou a falta de um hotel, não está disponível aqui. </span><span title=\"Curabitur in orci augue, vel tristique urna.\">Insira seu texto aqui: * Senha: ou pote que tanque. </span><span title=\"Nullam malesuada ipsum eu felis vestibulum eget dignissim sem gravida.\">Ela está grávida Produto pincel muito bom gato.</span><span title=\"Aliquam vitae varius tellus.\">Quem Somos Produto. </span><span title=\"Ut massa eros, semper in accumsan eu, ultrices vel purus.\">A fim de que a massa de eros sempre adicionar a um monte na UE, vingando ou puro. </span><span title=\"Vivamus in laoreet metus.\">Voltar para os alarmes de bomba. </span><span title=\"Quisque volutpat odio sit amet dolor sollicitudin sed eleifend risus pellentesque.\">Mais informações sobre a dor, mas eu odeio o riso e muito mais. </span><span title=\"Pellentesque tortor odio, vehicula eu condimentum eu, consequat vel urna.\">Saiba mais ódio, veículos melhorar UE escala de desenvolvimento ou construção. </span><span title=\"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce velit ante, tristique nec pretium at, mattis quis mauris.\">Antes\n da entrada em si em primeiro lugar na lamentação garganta Orci e \nCuidados vingadores ter definido seu sofá; Todos os direitos antes que \nele deseja, para tornar triste, ou o preço a RokNewsFlash comissão. </span><span title=\"Nam adipiscing pulvinar tortor.\">Leia mais China.</span><span title=\"Vivamus viverra leo dui.\"></span><span title=\"Nulla vulputate, metus vel porttitor consectetur, mauris mi malesuada turpis, eu pretium ante mauris sed dolor.\"></span></span>'),(20,'<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer augue \norci, ultrices sed sollicitudin quis, cursus vel massa. Donec dapibus, \ndui id malesuada ultricies, mi nisi bibendum sem, sit amet mollis odio \npurus vel nunc. Cras molestie orci eget lectus congue vel sodales diam \nvestibulum. Phasellus accumsan mattis urna, quis vestibulum nibh \nfacilisis sit amet. Curabitur auctor diam sed risus auctor sagittis. \nVivamus vitae sapien quis nunc sollicitudin convallis. Duis vitae mi \nleo. Class aptent taciti sociosqu ad litora torquent per conubia nostra,\n per inceptos himenaeos. Sed eu elit nunc, a pulvinar erat. Etiam non \nlectus a massa volutpat posuere. Cras non urna in ligula ullamcorper \ncursus nec vitae felis. Donec non erat accumsan leo sodales egestas id \nid lacus. Morbi risus nisl, dignissim sollicitudin fringilla eu, dictum \nsuscipit diam.\n</p>\n<p>\nVivamus malesuada ipsum ut est auctor quis suscipit enim lobortis. Sed \nac turpis id mauris cursus ultricies et id justo. Maecenas a libero vel \nmi ullamcorper tincidunt. Nunc commodo velit vel augue pellentesque eget\n rutrum magna cursus. Pellentesque volutpat dignissim feugiat. Duis quis\n ornare dui. Etiam vitae ante ante, et malesuada ligula. Quisque vitae \nlacus dolor, vitae dapibus mi. Nullam iaculis euismod velit sit amet \naliquam. Phasellus imperdiet ultricies velit, ac pharetra turpis \nporttitor a.\n</p>\n<p>\nMaecenas in tempus dui. Mauris eu eros vitae lacus condimentum egestas. \nVestibulum id justo vitae ipsum bibendum varius sed eget purus. Integer \ntristique malesuada nibh eget eleifend. Proin faucibus dolor sit amet \nvelit sagittis varius. Vestibulum ante ipsum primis in faucibus orci \nluctus et ultrices posuere cubilia Curae; Curabitur rhoncus neque vitae \nfelis consectetur eu tempor velit rutrum. Vestibulum venenatis mi et \nlibero semper porttitor. Sed id turpis ut dui scelerisque venenatis. \nCras velit tortor, ullamcorper vel dictum vitae, egestas sed purus. \nMauris sapien dolor, cursus in pharetra id, gravida nec dolor.\n</p>'),(22,'<span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Por favor, não</span> <span class=\"hps\">limpá-lo,</span> <span class=\"hps\">é preciso mais.</span> <span class=\"hps\">Sobre o</span> <span class=\"hps\">controle de tráfego,</span> <span class=\"hps\">ou o preço.</span> <span class=\"hps\">Negócio é</span> <span class=\"hps\">OK</span><span>, e alguns</span> <span class=\"hps\">do Japão,</span> <span class=\"hps\">ele</span> <span class=\"hps\">precisa de tempo para</span> <span class=\"hps\">comentar.</span> <span class=\"hps\">Por favor,</span> <span class=\"hps\">por favor, não</span> <span class=\"hps\">teme,</span> <span class=\"hps\">mas mais tempo</span><span>.</span> <span class=\"hps\">Que</span> <span class=\"hps\">há necessidade de</span> <span class=\"hps\">mais</span> <span class=\"hps\">empregado</span> <span class=\"hps\">escola.</span> <span class=\"hps\">Adicionar</span> <span class=\"hps\">um comentário aqui</span><span>, mas é só</span> <span class=\"hps\">um pouco mais.</span> <span class=\"hps\">Adicionar</span> <span class=\"hps\">um</span> <span class=\"hps\">mais que a massa</span> <span class=\"hps\">das principais atrações</span><span>.</span> <span class=\"hps\">Mas</span> <span class=\"hps\">grávida,</span> <span class=\"hps\">e livre de qualquer</span><span>, sopa</span> <span class=\"hps\">de perfuração</span> <span class=\"hps\">de creme macio</span> <span class=\"hps\">dor,</span> <span class=\"hps\">ou de membros do</span> <span class=\"hps\">ódio</span> <span class=\"hps\">feio.</span> <span class=\"hps\">Agora</span><span>, por vezes,</span> <span class=\"hps\">ter</span> <span class=\"hps\">informações</span> <span class=\"hps\">ou viável.</span> <span class=\"hps\">Corpo de</span> <span class=\"hps\">projetos</span><span>, Estados Unidos</span><span>, mas que,</span> <span class=\"hps\">às vezes,</span> <span class=\"hps\">o estresse</span> <span class=\"hps\">que isso.</span> <span class=\"hps\">De banana</span> <span class=\"hps\">mais puro,</span> <span class=\"hps\">e pá</span> <span class=\"hps\">laranja</span> <span class=\"hps\">em artigos</span> <span class=\"hps\">diversos.</span><br><br><span class=\"hps\">Afiliações</span> <span class=\"hps\">nosso segredo</span> <span class=\"hps\">casamento de</span> <span class=\"hps\">classe para</span> <span class=\"hps\">muito,</span> <span class=\"hps\">muito</span> <span class=\"hps\">himenaeos</span> <span class=\"hps\">iniciantes.</span> <span class=\"hps\">Mais informações</span><span>, uma vez que</span> <span class=\"hps\">há mais vida</span> <span class=\"hps\">e atrações.</span> <span class=\"hps\">Bem-vindo</span> <span class=\"hps\">feio</span> <span class=\"hps\">não</span> <span class=\"hps\">vai, mas</span> <span class=\"hps\">sempre, sempre</span><span>.</span> <span class=\"hps\">Investigação sobre a avaliação</span> <span class=\"hps\">do tempo de</span> <span class=\"hps\">vida</span> <span class=\"hps\">para decorar a sua</span> <span class=\"hps\">base aqui.</span> <span class=\"hps\">Modelo para mim</span><span>.</span> <span class=\"hps\">Batendo</span> <span class=\"hps\">Japão,</span> <span class=\"hps\">modelo de pesquisa</span><span>, adicione</span> <span class=\"hps\">um tiro</span><span>, minha vida não</span> <span class=\"hps\">é sempre a</span> <span class=\"hps\">temperatura certa.</span> <span class=\"hps\">Mais e mais designers</span> <span class=\"hps\">realmente engraçado.</span> <span class=\"hps\">Não é preciso</span> <span class=\"hps\">mais nada.</span><br><br><br><span class=\"hps\">Até que ele</span> <span class=\"hps\">recebe</span> <span class=\"hps\">um arco</span> <span class=\"hps\">de um</span> <span class=\"hps\">regime</span> <span class=\"hps\">emocional</span> <span class=\"hps\">de perfuração,</span> <span class=\"hps\">às vezes mais,</span> <span class=\"hps\">nem os membros do</span> <span class=\"hps\">riso</span> <span class=\"hps\">massa</span> <span class=\"hps\">quando.</span> <span class=\"hps\">Procurar</span> <span class=\"hps\">uma escola,</span> <span class=\"hps\">e às vezes</span> <span class=\"hps\">de uma página para</span> <span class=\"hps\">comparar.</span> <span class=\"hps\">Mais Terra</span> <span class=\"hps\">Minha</span><span>, e mais</span> <span class=\"hps\">puro.</span> <span class=\"hps\">Bem-vindo à</span> <span class=\"hps\">sua carreira, ou</span> <span class=\"hps\">em</span> <span class=\"hps\">imóveis e</span><span>, a necessidade de</span> <span class=\"hps\">eu</span> <span class=\"hps\">nunc.</span> <span class=\"hps\">Não há</span> <span class=\"hps\">ou odiá-lo</span><span>, mas as mandíbulas</span> <span class=\"hps\">das necessidades</span> <span class=\"hps\">feugiat</span><span>, não</span> <span class=\"hps\">o autor</span> <span class=\"hps\">ser publicado</span> <span class=\"hps\">à justiça.</span> <span class=\"hps\">Bem-vindo</span> <span class=\"hps\">à vida</span> <span class=\"hps\">a menos que seja</span> <span class=\"hps\">justo, que</span> <span class=\"hps\">voltará em breve.</span> <span class=\"hps\">Leia,</span> <span class=\"hps\">Leia mais sobre</span> <span class=\"hps\">basquete,</span> <span class=\"hps\">gato quer</span> <span class=\"hps\">jogar</span> <span class=\"hps\">puro,</span> <span class=\"hps\">a vida não era</span> <span class=\"hps\">um mar de</span> <span class=\"hps\">medo.</span> <span class=\"hps\">Nenhum item</span><span>.<br></span></span>'),(23,'<p>\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur \nridiculus mus. Maecenas nec justo magna. Nullam suscipit dolor at nibh \nconsectetur eleifend. Duis dignissim ipsum sed sem hendrerit sagittis. \nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere\n cubilia Curae; Nunc ut magna mi. Nam lobortis mauris vel dui \nsollicitudin consequat. Donec elit augue, pretium ut porta sit amet, \ndignissim non lectus. Cum sociis natoque penatibus et magnis dis \nparturient montes, nascetur ridiculus mus. Donec a augue quis massa \nsagittis fringilla. Ut pulvinar feugiat dolor sed condimentum. \nSuspendisse interdum commodo nisi, quis iaculis odio pretium ac. Donec \nodio orci, hendrerit ac iaculis sit amet, rhoncus non eros. Mauris \nscelerisque, sem a pulvinar porttitor, arcu ligula egestas nibh, nec \nblandit diam tellus eu felis. Nunc sollicitudin tortor nec urna porta \neget consequat odio viverra. Praesent ac odio vel turpis egestas \nultricies vitae vel nulla. </p>\n<p>\nCras hendrerit hendrerit cursus. Integer dolor nisi, elementum eget \ncommodo tempor, convallis nec purus. Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Donec id urna justo, a sodales leo. Cras \nneque enim, euismod nec lacinia nec, accumsan at arcu. Sed cursus lacus \nnec erat gravida quis hendrerit dolor blandit. Curabitur quis libero \naccumsan ante suscipit tempus at vitae tellus. Vivamus aliquam ornare \nnibh, non euismod odio fermentum ut. Aliquam blandit orci ornare nibh \nlobortis sed elementum dolor convallis. Curabitur nec ligula justo. Duis\n eget ligula et velit tempor cursus. Suspendisse dolor metus, malesuada \nvel ultrices a, dictum porttitor diam. Phasellus nulla tellus, pharetra \nid varius nec, bibendum a libero. Etiam est ipsum, consequat at \nhendrerit eget, pretium sed est.\n</p>');
/*!40000 ALTER TABLE `cmsplugin_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_twitterrecententries`
--

DROP TABLE IF EXISTS `cmsplugin_twitterrecententries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_twitterrecententries` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `twitter_user` varchar(75) NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  `link_hint` varchar(75) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_56b8859d` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_twitterrecententries`
--

LOCK TABLES `cmsplugin_twitterrecententries` WRITE;
/*!40000 ALTER TABLE `cmsplugin_twitterrecententries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_twitterrecententries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_twittersearch`
--

DROP TABLE IF EXISTS `cmsplugin_twittersearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_twittersearch` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `query` varchar(200) NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_5215cfeb` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_twittersearch`
--

LOCK TABLES `cmsplugin_twittersearch` WRITE;
/*!40000 ALTER TABLE `cmsplugin_twittersearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_twittersearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_video`
--

DROP TABLE IF EXISTS `cmsplugin_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_video` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `movie` varchar(100) DEFAULT NULL,
  `movie_url` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `width` smallint(5) unsigned NOT NULL,
  `height` smallint(5) unsigned NOT NULL,
  `auto_play` tinyint(1) NOT NULL,
  `auto_hide` tinyint(1) NOT NULL,
  `fullscreen` tinyint(1) NOT NULL,
  `loop` tinyint(1) NOT NULL,
  `bgcolor` varchar(6) NOT NULL,
  `textcolor` varchar(6) NOT NULL,
  `seekbarcolor` varchar(6) NOT NULL,
  `seekbarbgcolor` varchar(6) NOT NULL,
  `loadingbarcolor` varchar(6) NOT NULL,
  `buttonoutcolor` varchar(6) NOT NULL,
  `buttonovercolor` varchar(6) NOT NULL,
  `buttonhighlightcolor` varchar(6) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_2ac6d963` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_video`
--

LOCK TABLES `cmsplugin_video` WRITE;
/*!40000 ALTER TABLE `cmsplugin_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-09-23 13:25:05',1,11,'1','Home',1,''),(2,'2012-09-23 13:27:04',1,11,'1','Home',2,'Modificado published, in_navigation e moderator_state.'),(3,'2012-09-23 13:28:05',1,7,'1','djangocms.cabinformatica.com',2,'Modificado domain e name.'),(4,'2012-09-23 13:28:40',1,11,'2','Quem Somos',1,''),(5,'2012-09-23 13:29:06',1,11,'3','Produtos',1,''),(6,'2012-09-23 13:29:21',1,11,'4','Contato',1,''),(7,'2012-10-13 01:31:55',1,3,'2','cesaraugusto',1,''),(8,'2012-10-13 01:33:08',1,3,'2','cesaraugusto',2,'Modificado password, is_staff e user_permissions.'),(9,'2012-10-13 01:39:17',2,33,'1','banner 1, 2012-10-12 22:35:05-03:00',1,''),(10,'2012-10-13 21:05:12',2,33,'1','banner 1, 2012-10-12 22:35:05-03:00',2,'Modificado conteudo e image.'),(11,'2012-10-13 21:05:44',2,33,'2','Banner 2, 2012-10-13 18:05:15-03:00',1,''),(12,'2012-10-13 21:05:54',2,33,'1','Banner 1, 2012-10-12 22:35:05-03:00',2,'Modificado titulo.'),(13,'2012-10-13 21:06:31',2,33,'3','Banner 3, 2012-10-13 18:06:01-03:00',1,''),(14,'2012-10-13 21:13:07',2,25,'1','formulario',1,''),(15,'2012-10-13 21:15:26',2,11,'4','Contato',2,'Modificado language e moderator_state.'),(16,'2012-10-13 21:20:33',2,11,'2','Quem Somos',2,'Modificado language e moderator_state.'),(17,'2012-10-13 21:27:51',2,11,'3','Produtos',2,'Modificado language e moderator_state.'),(18,'2012-10-13 21:35:08',2,25,'1','formulario',2,'Modificado html.'),(19,'2012-10-13 21:36:08',2,11,'5','Produto 1',1,''),(20,'2012-10-13 21:37:12',2,11,'6','Produto 2',1,''),(21,'2012-10-13 21:37:46',2,11,'7','Produto 3',1,''),(22,'2012-10-13 21:42:15',2,11,'5','Produto 1',2,'Modificado language e moderator_state.'),(23,'2012-10-13 21:44:10',2,11,'6','Produto 2',2,'Modificado language e moderator_state.'),(24,'2012-10-13 21:45:07',2,11,'7','Produto 3',2,'Modificado language e moderator_state.'),(25,'2012-10-13 21:45:45',2,11,'7','Produto 3',2,'Modificado language e moderator_state.');
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'placeholder','cms','placeholder'),(10,'cms plugin','cms','cmsplugin'),(11,'page','cms','page'),(12,'PageModerator','cms','pagemoderator'),(13,'Page moderator state','cms','pagemoderatorstate'),(14,'Page global permission','cms','globalpagepermission'),(15,'Page permission','cms','pagepermission'),(16,'User (page)','cms','pageuser'),(17,'User group (page)','cms','pageusergroup'),(18,'title','cms','title'),(19,'cache key','menus','cachekey'),(20,'migration history','south','migrationhistory'),(21,'text','text','text'),(22,'picture','picture','picture'),(23,'link','link','link'),(24,'file','file','file'),(25,'Snippet','snippet','snippet'),(26,'Snippet','snippet','snippetptr'),(27,'google map','googlemap','googlemap'),(28,'flash','flash','flash'),(29,'teaser','teaser','teaser'),(30,'video','video','video'),(31,'twitter recent entries','twitter','twitterrecententries'),(32,'twitter search','twitter','twittersearch'),(33,'slide','portal','slide');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('000638000b1d68322c848dd43bf80464','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-20 15:57:59'),('0590eb4fc9bae6c4ca1e1e5305b187ba','YTM3MDg2YjdlYjc3MTJiMGFlNTQzOGJhMGVkNjA1NzZmMWU5NWIzZDqAAn1xAS4=\n','2012-12-22 15:11:05'),('05b8a12c9124ed2fb204d90e5888309f','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-18 17:52:39'),('0916948ea540929d445eba8891d1f0fc','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-18 22:16:02'),('0a4817be1ebf3e27f8d234e1f90e5b39','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 06:01:55'),('0ab30f8b2427a07f2b4df8f921565e1f','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-10 13:51:41'),('0ab75e5671406af698dcf932be3b69fb','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 11:59:55'),('0d0ed323d83d4a4d25d543c3f8bef774','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-11-28 12:23:03'),('0dbc069019b0c8cf7218c287f645b7e9','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-07 20:15:50'),('0e777a090317114b2bcb6757fa299051','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-29 14:15:45'),('0ec5eb560892630c5caf282944cc64bd','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 16:49:50'),('125100d991905263b05d01a8a1ec709a','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-01 22:13:52'),('12d3a08574899537e643c13915c582a9','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-14 06:04:39'),('13c4c3557c5620163dc4b0a272907d21','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-24 16:00:14'),('15174ce97ab825a56fe5e8f558c40131','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 16:49:50'),('157ff3194f05e5f29548064d41a04236','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-27 19:09:26'),('168e07cf1b15851451ae0aaf88bc7cfa','YTM3MDg2YjdlYjc3MTJiMGFlNTQzOGJhMGVkNjA1NzZmMWU5NWIzZDqAAn1xAS4=\n','2012-10-27 21:40:17'),('171edde49b47a7edc7e28a2bb6d3318b','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-08 11:14:03'),('17408207c9737146f28654860105a1b1','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-29 14:18:06'),('17f14146da6e98d207f8fcf739dea06e','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 21:06:48'),('18bb843a77ad6a7163d9a19f231caa36','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-03 22:24:21'),('19c3ad112a022414728f07ae99657b11','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-28 21:17:19'),('1b758d3ac1d43d42c50f6affe433bd2a','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:17:13'),('1c46280bc614fedcfab48d66c14e828a','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-04 21:41:24'),('21e2a8a22b927a877bb60b587e54d1d0','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-20 12:23:25'),('221820e6a36153f84839cc719c87286a','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-25 20:14:04'),('2272e427fe997a9e41ff743e0b4d07ad','ZmNiYzBiZTFmNGQ3ODY1MjMwODcyMzZiMzQ0YjMwZTM1ZGZkNWMxZDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-09 21:45:55'),('2451b5edd1e40f60e0ed3ccac46e25fe','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-17 21:35:39'),('24938082d1aa2f16a04085c52537228c','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-29 18:37:08'),('25e8a34ecb0645850a63d8c0eadd9f0e','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 10:01:13'),('26330dcdeac152bd15c60a79277c6db9','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-16 13:05:56'),('29b65436ad3cebdd4b3e9663d85c9e69','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-16 14:29:05'),('2a2e03cc33e728a7c4890f1be3a9b37f','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:07:10'),('2a91db0a701c369b55f7b1e22d73dd7a','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-01 22:11:06'),('2adf60facd73660a3f7b0115d456238d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-25 23:38:38'),('2daea48b497bcaa9bcfcf3528d42bd42','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-06 16:23:05'),('32aa4d8a45f34b7221beff4c92042080','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-27 23:32:05'),('34f1150fb62df73c7e0013b42b8cf951','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-18 13:52:14'),('366c665a0576dd5558f28087fb11d572','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-08 09:31:26'),('36af5c27e091c006bc91391900004ea2','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-02 06:04:11'),('36bc29204b2270d99782eb74bdd6ebf6','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 11:59:58'),('36c288df3cea49b9f6e2387220534af6','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-22 10:04:36'),('38986a215725f826720de2e61797e0db','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:07:10'),('393b13a9ebf88d2143e2e6d738e78b9d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-03 16:28:07'),('3948469f750515193602aec530c7fd71','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 09:58:34'),('399c0d90129472f998c299e9804b7a67','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-29 19:35:47'),('3a28cbd1194476a6ba639b0f35adf1d0','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-29 19:35:47'),('3a424f66b9ab3d2e560090c7d989a2b2','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-21 03:04:59'),('3b037f3c45c8b28efcd8d3964fbade4f','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-18 13:52:14'),('410b108b07bd42a8c71f936c2fa317ce','YTM3MDg2YjdlYjc3MTJiMGFlNTQzOGJhMGVkNjA1NzZmMWU5NWIzZDqAAn1xAS4=\n','2012-10-27 21:46:10'),('41bc27de171fff196b48ccb27d32c5c3','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-16 13:07:57'),('41bf1cad449872308d99a6d3cf2ec56b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-31 14:00:13'),('430ab9554685aea2d333c3391dc07af6','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-08 11:29:43'),('477892393fb5fde4d66be3159461b009','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-29 14:50:32'),('47e736f6fa8e85397c267fd793c62a38','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-14 23:04:53'),('47fbdf6c5a536d023f4573cabc761e46','OGQ2M2ZlODkwNDhlNDJlMDUwOGViZDYxNzUwNjA1ZTFhNzMxYWYxNDqAAn1xAShVDmNtc19hZG1p\nbl9zaXRligEBVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2Vu\nZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigEBdS4=\n','2012-10-07 19:07:10'),('49de5e74bd8c14da6ba727e0abc8e4eb','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-26 19:01:31'),('4a27af4ba8e75a0f5d37d96a167d7f55','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 14:29:21'),('4b3451fd5b7e21b2667f9ad7b1df593b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-02 05:05:40'),('4b562c1f4975ca737aa4821a42896fe6','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-27 20:08:51'),('4b9a2e2441d123bd766a2fb05c2927c8','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-27 20:17:28'),('4bdaec83ca04798852366854d96a7970','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-31 21:49:23'),('4d86be7293c7e592f1c5b5bd91f4584b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-16 17:57:00'),('503b62f33e2adb065492e4cb43e427e3','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-02 19:47:53'),('5137e513be5aad7290780f3bd16c664d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-08 11:31:25'),('513e901d321b1e055ef3b10fe975bc13','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-15 18:11:19'),('530c2684a3e18b309a3c91b0fe9c8348','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-14 06:04:37'),('535549de85661ad396de1274159bd576','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 09:44:54'),('54d79628ebc199b6f02dcf9c20ec33b4','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-08 11:31:33'),('559e01992b104fbb4f99373392f80e3d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-08 09:31:24'),('59a2d970a074498459027d2d7c55558d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-01 22:13:49'),('5ad8b319716f78445d4c0c207f9e5cd4','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-21 02:27:05'),('5d4ea8fd1f3ade2c88a2530112a02b83','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:12:13'),('5da7fdea6ff69e854739a316a8827ba3','MDg5ODliMmUxNDZlMWYxZDZjN2U3ZDc4ZWM3YjdhNTcxZmMxOTUwMDqAAn1xAShVDmNtc19hZG1p\nbl9zaXRlcQKKAQFVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdv\nLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmR1Lg==\n','2012-10-14 20:56:30'),('5df5b48e9fee576daa9b39249d2a6130','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-05 06:04:15'),('5e796e19549a52a560f1ad8a635e4d45','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:35:02'),('5f5517f98fefbc3f3bad796082c5446e','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-04 00:48:48'),('5f60c2ae743ba18710af90f45fe0595c','ZmNiYzBiZTFmNGQ3ODY1MjMwODcyMzZiMzQ0YjMwZTM1ZGZkNWMxZDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-11 23:16:02'),('5f9be39dc72ea54f97306a74487876e1','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-31 21:51:45'),('60a19f2e5634330c3a2684adda9a19e5','OGQ2M2ZlODkwNDhlNDJlMDUwOGViZDYxNzUwNjA1ZTFhNzMxYWYxNDqAAn1xAShVDmNtc19hZG1p\nbl9zaXRligEBVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2Vu\nZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigEBdS4=\n','2012-10-07 13:29:21'),('626fa4d171fd96e40be8896f2ca02c7b','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 09:56:03'),('64450abce8b355a5cf2752064f2cd8f5','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-16 06:14:05'),('64be4805aaf9cfa662cb64012935d326','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-17 06:04:42'),('66928e1f180139a1fa5bb60e146d18b0','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-17 06:04:44'),('6aff75156123212dcd42142175a18774','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 12:54:15'),('6ce8dfbc12e389f24402a57b3a5f7649','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-06 15:11:16'),('6d924853b9410b6385f225fef2c1c238','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-11 06:04:33'),('6e0ca5155d448aae076e83fa2a584e67','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-08 01:05:23'),('6f3937f191f0fd4d75273fa27716d5d6','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-21 01:45:18'),('6f873c438f0deb5c6360efa11310da17','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-03 11:44:56'),('71214af08019435ac92cd899aab66506','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-20 20:54:16'),('713370b329967e6e544bd3cfe442972f','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-07 20:14:02'),('72894ede6df381a0c3b601fdc8392b49','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-05 01:51:15'),('776f4d8125568b908e6d27a65fc5e4c5','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-04 21:39:15'),('7a3e7751f33c3f04bfec84624245ff75','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-26 01:42:42'),('7ce4b95f97436c543c88eca3f078568d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-26 13:57:59'),('7e771a22af1e49f2898b99c4b95a310f','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-11-28 13:21:10'),('7fbf171ca9ce02902e65ee91691a46d8','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-03 10:46:54'),('85e99501f0abdc96b2a524a7a72a0cf1','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-02 22:29:48'),('8f8a731145846e81e8de426298feb9d7','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 00:33:22'),('9151c2cfb8cb085f4dc10c2a60d6ed7b','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-11-28 13:45:04'),('92a602a26f6a891dbeea7b1d24b52b2c','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-29 14:50:34'),('93424fd965a687aa7d5579a33e16eeb0','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-04 22:17:52'),('93bd3cbf0ba8d4eab00991fc7ef53162','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 21:05:15'),('93f60d6bcfdcbcc2279ccd7585b31bc7','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-11 06:04:32'),('950fcc01f2820c9c574df6b34df85448','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-21 01:03:30'),('961ae1c38bd1c8a68234c328607f2ed2','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-08 15:53:41'),('9661e86d7e5643c4fe0e82200d7bf42d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-03 16:26:29'),('978d774668b43837a8d0f5351dced218','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-08 06:04:27'),('9f9f2c3062eb812a9c59a4814ee63994','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-25 20:14:04'),('a0c1300eae1fc0600183477b55abb57d','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-10 18:40:11'),('a44980c94894404a4c6649f465b39e46','MjBkOTcxMzgwMTM5OTc3Zjk1NzU2NzQ3OWI0YmM4NDNhMTY0ZjdhMTqAAn1xAS4=\n','2012-10-09 17:59:14'),('a645096e4e1e26ca19233f50f6848b1f','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:21:01'),('a749924f4c3d67e9c0d8d3ddc8aa8377','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-26 07:21:25'),('a8df86404ef2c388dcf137d702452238','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-22 08:01:00'),('b0b6341166b88ef82704566bee6919f5','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-01 22:13:47'),('b2835b2a093f7177d19a2ed0fafbefa4','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-18 17:52:39'),('b369515fe8829d203d04dfdbcda6d202','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-04 22:58:00'),('b3ffd2239d2c8adff4794181715afcdb','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-28 21:15:59'),('b479bc87d5f55af8abe9ceb6aba13b1f','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-11-28 12:49:57'),('b5d3fdb34bc6bb70ecbcba3cc9502c9f','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-28 12:23:01'),('b5d7ca9e39f9b895b9b032a58d19b007','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-10 08:08:57'),('b884a5e38cc461484ece54143523111b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-06 15:56:19'),('bcc9697021be259a7dc284f82d790705','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-10 08:07:21'),('bd0029468dc718674aa1a95caab69d26','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 09:57:19'),('bdeb7c8c87fe923711c1fa2bc1d0793a','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-21 01:03:30'),('c033d479f10339d60e0a4322a0e7c5ac','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-05 21:10:30'),('c0949e39462bd67447b7af7ab0baab34','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-20 15:58:00'),('c118bb2c943a204b00d3da9d9b4bf01c','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-27 20:15:31'),('c13b55f6a7ac986774fc738994d41f13','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-29 15:07:12'),('c1c5b2d3cd3d82f2ebf3438522e66604','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 06:04:08'),('c1f2c1cab1dac26d066cdb3f45e1da23','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-20 05:34:41'),('c2f0cd739d60b2e60e3c93824bebe289','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-02 08:52:18'),('c49253dc5dd5dc32c3f4256e6bc43fa9','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-29 18:30:17'),('c49e5dc0879875a1c627d130a7300553','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-08 15:53:43'),('c62fd654d4850397cd3b093c1b24f5ec','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-08 09:44:55'),('c7780ae2136a52ff4a4a9962e076dd13','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-11 18:12:54'),('c810a8e29658650d1bdbd42041782352','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 10:04:06'),('ca61ddd26ac85e1d1ddf93b60d7d692a','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-08 06:04:22'),('cc1b68a235c2889aeb7e0d27136e45e6','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-03 05:40:24'),('cc84d1ebbfb4439cd48c0ee63d033f67','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-26 19:01:31'),('cd15c3c21aba6a94321630880c8fee01','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-01 06:40:09'),('cedec19df049e540d805f14b85b8c755','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 09:54:48'),('d15b677f1659fd396e4d028643903f60','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-03 22:22:21'),('d55eab557d576d961d1fd5b78980888a','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-20 12:23:24'),('d6027b324cce10907f1905d9b3c36046','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-10 13:51:41'),('d693c34bf7bc8cebc765cada52fbf671','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 09:59:54'),('d6bd578bc4746cff5edac7984946f8ef','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-05 06:04:15'),('d9e29a4369acd2f2aeca98384fba8f76','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-10-30 10:02:31'),('dbabbf00cd0ec579b54742d8b4b3341e','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-30 06:01:57'),('dc149843eae2669b496e5047a28bb5c7','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-06 15:56:19'),('e03fff297dc93dfd1021f6d649f7bc4b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-02 22:27:28'),('e3b8306d401a53dcdf7d4599e84dfdd0','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2012-12-14 01:11:27'),('e3f139dc1841d4feea08f18bdfe64341','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-28 11:57:52'),('e531a78a42c38f5c231d6efdf30753fb','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-10-29 15:07:12'),('e5bb0ea83dea4ef13b149d4891d182f8','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-16 05:09:29'),('e6aee18a3b6f0ee1e2e10773bdecd9a1','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-31 08:23:17'),('ec72cc5ff00932da560d070bfd672770','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-30 00:31:46'),('ed687caeb6c1ec17ab77b7b3b3b07f79','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-17 17:48:18'),('ee0df36e8552522c5f1938bb055dc461','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-12-03 16:28:33'),('ef374be65b4920ff958fdb83fda9be96','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-19 01:05:28'),('f176cbc4849df470bb57eae70479b6b9','Y2Y3OGI2Njc5NmJhMmE5YmFlNTgzZGZiYjNmYTdjNjhiZjBjOWI1NTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYBQAAAHB0LUJScQNzLg==\n','2013-01-21 22:50:12'),('f38710c2ecfbf2d926cb4797e694310b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-03 05:11:01'),('f4d1038684635732f10025e66ba7c015','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-01 22:13:43'),('f948b10edc5a2c15eedb561faf99af2b','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2013-01-18 22:14:09'),('fa222b718cb7838a927b92c55c1d484e','YTM3MDg2YjdlYjc3MTJiMGFlNTQzOGJhMGVkNjA1NzZmMWU5NWIzZDqAAn1xAS4=\n','2012-10-27 01:42:03'),('fbfd07dcfdaa6ba38c23c9f90354348f','OWE0MjYwN2RjMWZjMDUzNzgyNWMwYmRkYjFkMGM2NTg5NmI1OTNmOTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVBXB0LUJScQNzLg==\n','2012-11-02 06:04:12'),('fc8599aea22906ba5f863def99aab802','NDEyNmM3ZWUyMTFiYzk5NDE1Y2M5MDMxNGI0ZjhiNDcxNjJmYmZhMzqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-10-06 21:01:47');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'djangocms.cabinformatica.com','Django CMS');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (10,'pt-br',1,'cms-menu_nodes_pt-br_1_2_user'),(11,'pt-br',1,'cms-menu_nodes_pt-br_1');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_slide`
--

DROP TABLE IF EXISTS `portal_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `conteudo` longtext NOT NULL,
  `publicacao` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_slide`
--

LOCK TABLES `portal_slide` WRITE;
/*!40000 ALTER TABLE `portal_slide` DISABLE KEYS */;
INSERT INTO `portal_slide` VALUES (1,'Banner 1','É claro que a revolução dos costumes apresenta tendências no sentido de aprovar a manutenção de alternativas às soluções ortodoxas.','2012-10-13 01:35:05','photos/2012/10/13/slide-1.png'),(2,'Banner 2','A nível organizacional, a complexidade dos estudos efetuados deve passar por modificações independentemente de todos os recursos funcionais envolvidos.\r\n\r\nÉ claro que a percepção das dificuldades auxilia a preparação e a composição do fluxo de informações.','2012-10-13 21:05:15',''),(3,'Banner 3','Neste sentido, a consolidação das estruturas faz parte de um processo de gerenciamento dos relacionamentos verticais entre as hierarquias.','2012-10-13 21:06:01','photos/2012/10/13/slide-3.png');
/*!40000 ALTER TABLE `portal_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippet_snippet`
--

DROP TABLE IF EXISTS `snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippet_snippet`
--

LOCK TABLES `snippet_snippet` WRITE;
/*!40000 ALTER TABLE `snippet_snippet` DISABLE KEYS */;
INSERT INTO `snippet_snippet` VALUES (1,'formulario','<!-- Do not change code! -->\r\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"margin: 20px auto;\"><tr><td><iframe width=\"400\" height=\"630\" frameborder=\"0\" src=\"http://br.foxyform.com/form.php?id=31057&sec_hash=7d42c82b187\"></iframe></td></tr><tr><td align=\"center\"><a style=\"font:8px Arial;color:#5C5C5C;\" href=\"http://br.foxyform.com\">formulário de contato</a></td></tr></table>\r\n<!-- Do not change code! -->','');
/*!40000 ALTER TABLE `snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'cms','0001_initial','2012-09-22 23:49:45'),(2,'cms','0002_auto_start','2012-09-22 23:49:45'),(3,'cms','0003_remove_placeholder','2012-09-22 23:49:45'),(4,'cms','0004_textobjects','2012-09-22 23:49:45'),(5,'cms','0005_mptt_added_to_plugins','2012-09-22 23:49:45'),(6,'text','0001_initial','2012-09-22 23:49:45'),(7,'text','0002_freeze','2012-09-22 23:49:45'),(8,'cms','0006_apphook','2012-09-22 23:49:45'),(9,'cms','0007_apphook_longer','2012-09-22 23:49:45'),(10,'cms','0008_redirects','2012-09-22 23:49:45'),(11,'cms','0009_added_meta_fields','2012-09-22 23:49:45'),(12,'cms','0010_5char_language','2012-09-22 23:49:45'),(13,'cms','0011_title_overwrites','2012-09-22 23:49:45'),(14,'cms','0012_publisher','2012-09-22 23:49:45'),(15,'text','0003_publisher','2012-09-22 23:49:45'),(16,'snippet','0001_initial','2012-09-22 23:49:45'),(17,'snippet','0002_publisher','2012-09-22 23:49:45'),(18,'picture','0001_initial','2012-09-22 23:49:45'),(19,'picture','0002_link_rename','2012-09-22 23:49:45'),(20,'picture','0003_freeze','2012-09-22 23:49:45'),(21,'picture','0004_publisher','2012-09-22 23:49:45'),(22,'link','0001_initial','2012-09-22 23:49:45'),(23,'link','0002_link_rename','2012-09-22 23:49:45'),(24,'link','0003_page_link','2012-09-22 23:49:45'),(25,'link','0004_larger_link_names','2012-09-22 23:49:45'),(26,'link','0005_publisher','2012-09-22 23:49:45'),(27,'googlemap','0001_initial','2012-09-22 23:49:45'),(28,'flash','0001_initial','2012-09-22 23:49:45'),(29,'flash','0002_freeze','2012-09-22 23:49:45'),(30,'flash','0003_publisher','2012-09-22 23:49:45'),(31,'file','0001_initial','2012-09-22 23:49:45'),(32,'file','0002_freeze','2012-09-22 23:49:45'),(33,'file','0003_publisher','2012-09-22 23:49:45'),(34,'cms','0013_site_copy','2012-09-22 23:49:45'),(35,'cms','0014_sites_removed','2012-09-22 23:49:45'),(36,'cms','0015_modified_by_added','2012-09-22 23:49:45'),(37,'cms','0016_author_copy','2012-09-22 23:49:45'),(38,'cms','0017_author_removed','2012-09-22 23:49:45'),(39,'cms','0018_site_permissions','2012-09-22 23:49:45'),(40,'cms','0019_public_table_renames','2012-09-22 23:49:45'),(41,'text','0004_table_rename','2012-09-22 23:49:45'),(42,'text','0005_publisher2','2012-09-22 23:49:45'),(43,'teaser','0001_initial','2012-09-22 23:49:45'),(44,'teaser','0002_publisher2','2012-09-22 23:49:45'),(45,'snippet','0003_table_rename','2012-09-22 23:49:45'),(46,'snippet','0004_publisher2','2012-09-22 23:49:45'),(47,'picture','0005_table_rename','2012-09-22 23:49:45'),(48,'picture','0006_float_added','2012-09-22 23:49:45'),(49,'picture','0007_publisher2','2012-09-22 23:49:45'),(50,'link','0006_table_rename','2012-09-22 23:49:45'),(51,'link','0007_publisher2','2012-09-22 23:49:45'),(52,'googlemap','0002_table_rename','2012-09-22 23:49:45'),(53,'googlemap','0003_address_unified','2012-09-22 23:49:45'),(54,'googlemap','0004_copy_address','2012-09-22 23:49:45'),(55,'googlemap','0005_delete_street','2012-09-22 23:49:45'),(56,'googlemap','0006_publisher2','2012-09-22 23:49:45'),(57,'flash','0004_table_rename','2012-09-22 23:49:45'),(58,'flash','0005_publisher2','2012-09-22 23:49:45'),(59,'file','0004_table_rename','2012-09-22 23:49:45'),(60,'file','0005_publisher2','2012-09-22 23:49:45'),(61,'cms','0020_advanced_permissions','2012-09-22 23:49:45'),(62,'cms','0021_publisher2','2012-09-22 23:49:45'),(63,'cms','0022_login_required_added','2012-09-22 23:49:45'),(64,'cms','0023_plugin_table_naming_function_changed','2012-09-22 23:49:46'),(65,'cms','0024_added_placeholder_model','2012-09-22 23:49:46'),(66,'cms','0025_placeholder_migration','2012-09-22 23:49:46'),(67,'cms','0026_finish_placeholder_migration','2012-09-22 23:49:46'),(68,'cms','0027_added_width_to_placeholder','2012-09-22 23:49:46'),(69,'cms','0028_limit_visibility_in_menu_step1of3','2012-09-22 23:49:46'),(70,'cms','0029_limit_visibility_in_menu_step2of3_data','2012-09-22 23:49:46'),(71,'cms','0030_limit_visibility_in_menu_step3of3','2012-09-22 23:49:46'),(72,'cms','0031_improved_language_code_support','2012-09-22 23:49:46'),(73,'cms','0032_auto__del_field_cmsplugin_publisher_public__del_field_cmsplugin_publis','2012-09-22 23:49:46'),(74,'cms','0033_auto__del_field_title_publisher_is_draft__del_field_title_publisher_st','2012-09-22 23:49:46'),(75,'cms','0034_auto__chg_field_title_language__chg_field_cmsplugin_language__add_fiel','2012-09-22 23:49:46'),(76,'cms','0035_auto__add_field_globalpagepermission_can_view__add_field_pagepermissio','2012-09-22 23:49:46'),(77,'cms','0036_auto__add_field_cmsplugin_changed_date','2012-09-22 23:49:46'),(78,'menus','0001_initial','2012-09-22 23:49:46'),(79,'text','0006_2_1_4_upgrade','2012-09-22 23:49:46'),(80,'picture','0008_longdesc_added','2012-09-22 23:49:46'),(81,'link','0008_mailto','2012-09-22 23:49:46'),(82,'link','0009_add_target','2012-09-22 23:49:46'),(83,'snippet','0005_template_added','2012-09-22 23:49:46'),(84,'googlemap','0007_latlng','2012-09-22 23:49:46'),(85,'googlemap','0008_routeplaner','2012-09-22 23:49:46'),(86,'googlemap','0009_routeplaner_title','2012-09-22 23:49:46'),(87,'googlemap','0010_auto__chg_field_googlemap_content','2012-09-22 23:49:46'),(88,'googlemap','0011_remove_zoom_null_values','2012-09-22 23:49:46'),(89,'googlemap','0012_auto__add_field_googlemap_width__add_field_googlemap_height__chg_field','2012-09-22 23:49:46'),(90,'video','0001_initial','2012-09-22 23:49:46'),(91,'video','0002_color_mute_controller','2012-09-22 23:49:46'),(92,'video','0003_newplayer_step1','2012-09-22 23:49:46'),(93,'video','0004_newplayer_step2','2012-09-22 23:49:46'),(94,'video','0005_newplayer_step3','2012-09-22 23:49:46'),(95,'video','0006_newplayer_step4','2012-09-22 23:49:46'),(96,'video','0007_newplayer_step5','2012-09-22 23:49:46'),(97,'twitter','0001_initial','2012-09-22 23:49:46'),(98,'twitter','0002_auto__add_twittersearch','2012-09-22 23:49:46');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-16  2:27:18
