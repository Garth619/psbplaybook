-- MySQL dump 10.13  Distrib 5.7.28, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-09-28 18:57:51','2021-09-28 18:57:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_draft_submissions`
--

DROP TABLE IF EXISTS `wp_gf_draft_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_draft_submissions`
--

LOCK TABLES `wp_gf_draft_submissions` WRITE;
/*!40000 ALTER TABLE `wp_gf_draft_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_draft_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry`
--

DROP TABLE IF EXISTS `wp_gf_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(10) unsigned NOT NULL,
  `post_id` bigint(10) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(10) NOT NULL DEFAULT '0',
  `is_read` tinyint(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(10) DEFAULT NULL,
  `created_by` bigint(10) unsigned DEFAULT NULL,
  `transaction_type` tinyint(10) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `form_id_status` (`form_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry`
--

LOCK TABLES `wp_gf_entry` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry` DISABLE KEYS */;
INSERT INTO `wp_gf_entry` VALUES (1,1,NULL,'2021-10-02 01:47:09','2021-10-02 01:47:09',0,0,'127.0.0.1','http://playbook.local/page-example/?ckcachecontrol=1633139202','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (2,1,NULL,'2021-10-02 01:47:39','2021-10-02 01:47:39',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (3,1,NULL,'2021-10-02 01:52:12','2021-10-02 01:52:12',0,1,'127.0.0.1','http://playbook.local/page-example/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (4,1,NULL,'2021-10-02 01:59:34','2021-10-02 01:59:34',0,1,'127.0.0.1','http://playbook.local/page-example/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (5,1,NULL,'2021-10-02 02:01:45','2021-10-02 02:01:45',0,1,'127.0.0.1','http://playbook.local/page-example/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (6,1,NULL,'2021-10-02 02:03:35','2021-10-02 02:03:35',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (7,1,NULL,'2021-10-02 02:07:44','2021-10-02 02:07:44',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (8,1,NULL,'2021-10-02 02:09:18','2021-10-02 02:09:18',0,0,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (9,1,NULL,'2021-10-02 02:13:42','2021-10-02 02:13:42',0,0,'127.0.0.1','http://playbook.local/page-example/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (10,1,NULL,'2021-10-02 02:17:14','2021-10-02 02:17:14',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (11,1,NULL,'2021-10-02 02:19:39','2021-10-02 02:19:39',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (12,1,NULL,'2021-10-02 02:20:51','2021-10-02 02:20:51',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'active');
INSERT INTO `wp_gf_entry` VALUES (13,1,NULL,'2021-10-02 02:21:34','2021-10-02 02:21:34',0,1,'127.0.0.1','http://playbook.local/thank-you/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'active');
/*!40000 ALTER TABLE `wp_gf_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry_meta`
--

DROP TABLE IF EXISTS `wp_gf_entry_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` bigint(10) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `item_index` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `entry_id` (`entry_id`),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry_meta`
--

LOCK TABLES `wp_gf_entry_meta` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry_meta` DISABLE KEYS */;
INSERT INTO `wp_gf_entry_meta` VALUES (1,1,1,'1','heres a new topic','');
INSERT INTO `wp_gf_entry_meta` VALUES (3,1,2,'1','adsfdsfads','');
INSERT INTO `wp_gf_entry_meta` VALUES (5,1,3,'1','ddf fdsfsdf','');
INSERT INTO `wp_gf_entry_meta` VALUES (6,1,4,'1','dfds fdfd dffads','');
INSERT INTO `wp_gf_entry_meta` VALUES (7,1,5,'1','please work','');
INSERT INTO `wp_gf_entry_meta` VALUES (8,1,6,'1','sdfsdfsadf','');
INSERT INTO `wp_gf_entry_meta` VALUES (9,1,7,'1','dfdsfsdf','');
INSERT INTO `wp_gf_entry_meta` VALUES (10,1,8,'1','dsfsdfsdaf','');
INSERT INTO `wp_gf_entry_meta` VALUES (11,1,9,'1','fhhjfghgf','');
INSERT INTO `wp_gf_entry_meta` VALUES (13,1,10,'1','hfhgf','');
INSERT INTO `wp_gf_entry_meta` VALUES (14,1,11,'1','ghfghf','');
INSERT INTO `wp_gf_entry_meta` VALUES (15,1,11,'2','garrett@1point21interactive.com','');
INSERT INTO `wp_gf_entry_meta` VALUES (16,1,12,'1','hhhh','');
INSERT INTO `wp_gf_entry_meta` VALUES (17,1,12,'2','garrett@1point21interactive.com','');
INSERT INTO `wp_gf_entry_meta` VALUES (18,1,12,'3','1p21.admin1p21.admin','');
INSERT INTO `wp_gf_entry_meta` VALUES (19,1,13,'1','hghgh','');
INSERT INTO `wp_gf_entry_meta` VALUES (20,1,13,'2','garrett@1point21interactive.com','');
INSERT INTO `wp_gf_entry_meta` VALUES (21,1,13,'3','1p21.admin','');
/*!40000 ALTER TABLE `wp_gf_entry_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry_notes`
--

DROP TABLE IF EXISTS `wp_gf_entry_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(10) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `entry_user_key` (`entry_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry_notes`
--

LOCK TABLES `wp_gf_entry_notes` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry_notes` DISABLE KEYS */;
INSERT INTO `wp_gf_entry_notes` VALUES (1,1,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 01:47:10','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (2,2,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 01:47:39','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (3,3,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 01:52:12','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (4,4,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 01:59:34','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (5,5,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:01:45','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (6,6,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:03:35','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (7,7,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:07:44','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (8,8,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:09:18','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (9,9,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:13:42','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (10,10,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:17:15','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (11,11,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:19:39','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (12,12,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:20:52','WordPress was unable to send the notification email.','notification','error');
INSERT INTO `wp_gf_entry_notes` VALUES (13,13,'Admin Notification (ID: 6157b8486bed5)',0,'2021-10-02 02:21:34','WordPress was unable to send the notification email.','notification','error');
/*!40000 ALTER TABLE `wp_gf_entry_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form`
--

DROP TABLE IF EXISTS `wp_gf_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(10) NOT NULL DEFAULT '1',
  `is_trash` tinyint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form`
--

LOCK TABLES `wp_gf_form` WRITE;
/*!40000 ALTER TABLE `wp_gf_form` DISABLE KEYS */;
INSERT INTO `wp_gf_form` VALUES (1,'Suggested Topics','2021-10-02 01:39:20',NULL,1,0);
/*!40000 ALTER TABLE `wp_gf_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_meta`
--

DROP TABLE IF EXISTS `wp_gf_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(10) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_meta`
--

LOCK TABLES `wp_gf_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_meta` DISABLE KEYS */;
INSERT INTO `wp_gf_form_meta` VALUES (1,'{\"title\":\"Suggested Topics\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\",\"conditionalLogic\":null},\"fields\":[{\"type\":\"text\",\"id\":1,\"formId\":1,\"label\":\"Suggest a Topic for PSB Playbook\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Suggest a Topic for PSB Playbook\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"enableAutocomplete\":false,\"autocompleteAttribute\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"layoutGridColumnSpan\":\"\",\"enablePasswordInput\":\"\",\"enableEnhancedUI\":0,\"layoutGroupId\":\"98164014\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"errors\":[],\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"hidden\",\"id\":2,\"formId\":1,\"label\":\"User Email\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"{user:user_email}\",\"enableAutocomplete\":false,\"autocompleteAttribute\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"layoutGridColumnSpan\":\"\",\"enableEnhancedUI\":0,\"layoutGroupId\":\"91cf7af7\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\",\"errors\":[]},{\"type\":\"hidden\",\"id\":3,\"formId\":1,\"label\":\"Username\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"{user:user_login}\",\"enableAutocomplete\":false,\"autocompleteAttribute\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"layoutGridColumnSpan\":\"\",\"enableEnhancedUI\":0,\"layoutGroupId\":\"61e46886\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"errors\":[],\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"}],\"version\":\"2.5.11\",\"id\":1,\"markupVersion\":2,\"nextFieldId\":4,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null,\"subLabelPlacement\":\"below\",\"requiredIndicator\":\"asterisk\",\"customRequiredIndicator\":\"(Required)\",\"cssClass\":\"\",\"buttonType\":\"text\",\"buttonText\":\"Submit\",\"buttonImageURL\":\"\",\"form_button_conditional_logic_object\":\"\",\"form_button_conditional_logic\":\"0\",\"saveButtonText\":\"Save and Continue Later\",\"limitEntries\":false,\"limitEntriesCount\":\"\",\"limitEntriesPeriod\":\"\",\"limitEntriesMessage\":\"\",\"scheduleForm\":false,\"scheduleStart\":\"\",\"scheduleEnd\":\"\",\"schedulePendingMessage\":\"\",\"scheduleMessage\":\"\",\"requireLogin\":false,\"requireLoginMessage\":\"\",\"enableHoneypot\":true,\"validationSummary\":false,\"saveEnabled\":\"\",\"enableAnimation\":false,\"save\":{\"enabled\":false,\"button\":{\"type\":\"link\",\"text\":\"Save and Continue Later\"}},\"scheduleStartHour\":\"\",\"scheduleStartMinute\":\"\",\"scheduleStartAmpm\":\"\",\"scheduleEndHour\":\"\",\"scheduleEndMinute\":\"\",\"scheduleEndAmpm\":\"\"}','a:4:{i:0;s:12:\"date_created\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}','{\"6157b8486c3b6\":{\"id\":\"6157b8486c3b6\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"page\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"97\",\"queryString\":\"\",\"event\":\"\",\"disableAutoformat\":false,\"page\":\"97\",\"conditionalLogic\":[]}}','{\"6157b8486bed5\":{\"id\":\"6157b8486bed5\",\"isActive\":true,\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{Suggest a Topic for PSB Playbook:1}\\r\\n\\r\\n{user:user_login}\\r\\n\\r\\n{user:user_email}\",\"service\":\"wordpress\",\"toEmail\":\"{admin_email}\",\"routing\":[[]],\"fromName\":\"\",\"from\":\"{admin_email}\",\"replyTo\":\"\",\"bcc\":\"\",\"disableAutoformat\":false,\"notification_conditional_logic_object\":\"\",\"notification_conditional_logic\":\"0\",\"conditionalLogic\":null,\"cc\":\"\",\"enableAttachments\":false}}');
/*!40000 ALTER TABLE `wp_gf_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_revisions`
--

DROP TABLE IF EXISTS `wp_gf_form_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_revisions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(10) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_revisions`
--

LOCK TABLES `wp_gf_form_revisions` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_form_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_view`
--

DROP TABLE IF EXISTS `wp_gf_form_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_view` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_view`
--

LOCK TABLES `wp_gf_form_view` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_view` DISABLE KEYS */;
INSERT INTO `wp_gf_form_view` VALUES (1,1,'2021-10-02 01:46:43','',16);
/*!40000 ALTER TABLE `wp_gf_form_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_rest_api_keys`
--

DROP TABLE IF EXISTS `wp_gf_rest_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_rest_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_rest_api_keys`
--

LOCK TABLES `wp_gf_rest_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_gf_rest_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_rest_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=636 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://playbook.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://playbook.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','PSB Playbook','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','garrett@1point21interactive.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:17:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:29:\"gravityforms/gravityforms.php\";i:2;s:28:\"1p21bulkmenubundle/index.php\";i:3;s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";i:4;s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";i:5;s:34:\"advanced-custom-fields-pro/acf.php\";i:6;s:19:\"akismet/akismet.php\";i:7;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:8;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:9;s:39:\"gravityforms-post/gravityforms-post.php\";i:10;s:19:\"mailgun/mailgun.php\";i:11;s:38:\"post-duplicator/m4c-postduplicator.php\";i:12;s:21:\"safe-svg/safe-svg.php\";i:13;s:24:\"simple-history/index.php\";i:14;s:41:\"wordpress-importer/wordpress-importer.php\";i:15;s:24:\"wordpress-seo/wp-seo.php\";i:16;s:39:\"wp-migrate-db-pro/wp-migrate-db-pro.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','psbplaybook','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','psbplaybook','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:50:\"1p21bulkmenubundle/acf-quick-edit-fields/index.php\";a:2:{i:0;s:24:\"ACFQuickEdit\\Core\\Plugin\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','68','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','62','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1648407471','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:21:\"_ilaw_sm_blog_sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:24:\"_ilaw_sm_default_sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:10:{i:1633143472;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633157872;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633201072;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633201077;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633201078;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633201146;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633201147;a:2:{s:29:\"simple_history/maybe_purge_db\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633460346;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1633546672;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1632855969;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (119,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (120,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633142073;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633114174;s:7:\"checked\";a:2:{s:11:\"psbplaybook\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_timeout_browser_c13b7200c84cded4537ab2a9bd2a7ad6','1633460277','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_browser_c13b7200c84cded4537ab2a9bd2a7ad6','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.82\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1633460278','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (139,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (146,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'gf_db_version','2.5.11','no');
INSERT INTO `wp_options` VALUES (154,'rg_form_version','2.5.11','no');
INSERT INTO `wp_options` VALUES (155,'gform_enable_background_updates','1','yes');
INSERT INTO `wp_options` VALUES (156,'_site_transient_t15s-registry-gforms','O:8:\"stdClass\":2:{s:8:\"projects\";a:0:{}s:13:\"_last_checked\";i:1633114172;}','no');
INSERT INTO `wp_options` VALUES (157,'gform_pending_installation','','yes');
INSERT INTO `wp_options` VALUES (158,'mailgun','a:13:{s:6:\"region\";s:2:\"us\";s:6:\"useAPI\";s:1:\"1\";s:6:\"apiKey\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:1:\"1\";s:7:\"sectype\";s:3:\"tls\";s:12:\"track-clicks\";s:0:\"\";s:11:\"track-opens\";s:0:\"\";s:11:\"campaign-id\";s:0:\"\";s:13:\"override-from\";s:1:\"0\";s:3:\"tag\";s:14:\"playbook.local\";}','yes');
INSERT INTO `wp_options` VALUES (159,'yoast_migrations_free','a:1:{s:7:\"version\";s:6:\"17.2.1\";}','yes');
INSERT INTO `wp_options` VALUES (160,'wpseo','a:45:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:7:\"version\";s:6:\"17.2.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1632855546;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:21:\"http://playbook.local\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (161,'wpseo_titles','a:106:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (162,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (164,'wpmdb_settings','a:12:{s:3:\"key\";s:40:\"9XqnO5mkuX4S1PUb4yk1/DG9smBZ9/ubXPmS8mIL\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;}','no');
INSERT INTO `wp_options` VALUES (165,'simple_history_db_version','5','yes');
INSERT INTO `wp_options` VALUES (166,'simple_history_show_as_page','1','yes');
INSERT INTO `wp_options` VALUES (167,'simple_history_show_on_dashboard','1','yes');
INSERT INTO `wp_options` VALUES (168,'simple_history_enable_rss_feed','0','yes');
INSERT INTO `wp_options` VALUES (169,'simple_history_rss_secret','tpffvavnnflxcaaekyqp','yes');
INSERT INTO `wp_options` VALUES (170,'gravityformsaddon_gravityformswebapi_version','1.0','yes');
INSERT INTO `wp_options` VALUES (171,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (172,'widget_gform_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (173,'widget_list_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (178,'acf_version','5.10.2','yes');
INSERT INTO `wp_options` VALUES (179,'acf_duplicate_repeater_version','3.1.1','no');
INSERT INTO `wp_options` VALUES (180,'mtphr_post_duplicator_settings','','yes');
INSERT INTO `wp_options` VALUES (181,'wpmdb_schema_version','2','no');
INSERT INTO `wp_options` VALUES (194,'akismet_strictness','0','yes');
INSERT INTO `wp_options` VALUES (195,'akismet_show_user_comments_approved','0','yes');
INSERT INTO `wp_options` VALUES (196,'akismet_comment_form_privacy_notice','hide','yes');
INSERT INTO `wp_options` VALUES (197,'wordpress_api_key','46c90999075a','yes');
INSERT INTO `wp_options` VALUES (198,'akismet_spam_count','0','yes');
INSERT INTO `wp_options` VALUES (204,'rg_gforms_key','621e21584ab7936611e0d28422299c97','yes');
INSERT INTO `wp_options` VALUES (205,'gf_site_key','71f32dfe-a224-46ec-9165-5d51e1d3fba9','yes');
INSERT INTO `wp_options` VALUES (206,'gf_site_secret','4bd1a872-c309-4e0b-a1cf-5a5ee74df18c','yes');
INSERT INTO `wp_options` VALUES (207,'rg_gforms_enable_akismet','1','yes');
INSERT INTO `wp_options` VALUES (208,'rg_gforms_currency','USD','yes');
INSERT INTO `wp_options` VALUES (209,'gform_enable_toolbar_menu','1','yes');
INSERT INTO `wp_options` VALUES (210,'rg_gforms_enable_html5','1','yes');
INSERT INTO `wp_options` VALUES (221,'acf_pro_license','YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TXpZd01EaDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMExUQTNMVEk0SURJd09qVXlPak0zIjtzOjM6InVybCI7czoyMToiaHR0cDovL3BsYXlib29rLmxvY2FsIjt9','yes');
INSERT INTO `wp_options` VALUES (225,'dd9b23a13775ccc12b5389d301f8ef5d','a:2:{s:7:\"timeout\";i:1633064853;s:5:\"value\";s:13725:\"{\"new_version\":\"2.5.2\",\"stable_version\":\"2.5.2\",\"name\":\"ACF Theme Code Pro\",\"slug\":\"acf_theme_code_pro\",\"url\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/?changelog=1\",\"last_updated\":\"2021-02-19 15:29:30\",\"homepage\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/\",\"package\":\"\",\"download_link\":\"\",\"sections\":{\"description\":\"<p><strong>ACF Theme Code Pro saves you time by automatically generating the code needed to implement ACF PRO field groups and ACF Blocks in your WordPress themes.<\\/strong><\\/p>\\n<p><em>\\u201cWork smarter, not harder! Great work on this ACF plugin!\\u201d<\\/em> - Elliot Condon, Creator of Advanced Custom Fields<\\/p>\\n<p>ACF Theme Code Pro is a premium add-on\\u00a0for the awesome\\u00a0<a href=\\\"https:\\/\\/www.advancedcustomfields.com\\/pro\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Advanced Custom Fields Pro<\\/a>\\u00a0WordPress plugin.<\\/p>\\n<p>The code required to implement your fields is displayed in the <em>Theme Code<\\/em> section at the bottom of your Edit Field Group page.<\\/p>\\n<p><strong>Features<\\/strong><\\/p>\\n<ul>\\n<li>Clipboard icons to easily copy code blocks into your theme<\\/li>\\n<li>Field names and variables are automatically updated<\\/li>\\n<li>Code generated is based on the official ACF documentation and includes escaping<\\/li>\\n<li>Support for field return types and single\\/muliple value options<\\/li>\\n<li>Great for offline ACF documentation<\\/li>\\n<\\/ul>\\n<p><strong>ACF Free, ACF Pro &amp; 3rd party fields <\\/strong><\\/p>\\n<p>Theme Code Pro generates code for all of these fields:<\\/p>\\n<p><strong>ACF Free Fields<\\/strong><\\/p>\\n<ul>\\n<li>Text<\\/li>\\n<li>Text Area<\\/li>\\n<li>Number<\\/li>\\n<li>Range<\\/li>\\n<li>Email<\\/li>\\n<li>URL<\\/li>\\n<li>Password<\\/li>\\n<li>Image<\\/li>\\n<li>File<\\/li>\\n<li>WYSIWYG<\\/li>\\n<li>oEmbed<\\/li>\\n<li>Select<\\/li>\\n<li>Checkbox<\\/li>\\n<li>Radio Button<\\/li>\\n<li>Button Group<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>Link<\\/li>\\n<li>Post Object<\\/li>\\n<li>Page Link<\\/li>\\n<li>Relationship<\\/li>\\n<li>Taxonomy<\\/li>\\n<li>User<\\/li>\\n<li>Google Map<\\/li>\\n<li>Date Picker<\\/li>\\n<li>Date Time Picker<\\/li>\\n<li>Color Picker<\\/li>\\n<li>Group<\\/li>\\n<\\/ul>\\n<p><strong>ACF Pro Fields<\\/strong><\\/p>\\n<ul>\\n<li>Repeater<\\/li>\\n<li>Flexible content<\\/li>\\n<li>Gallery<\\/li>\\n<li>Clone<\\/li>\\n<\\/ul>\\n<p><strong>3rd Party Fields<\\/strong><\\/p>\\n<ul>\\n<li>Font Awesome<\\/li>\\n<li>Gravityforms<\\/li>\\n<li>Ninjaforms<\\/li>\\n<li>Contact Form 7<\\/li>\\n<li>RGBA Colour<\\/li>\\n<li>Color Palette<\\/li>\\n<li>Table<\\/li>\\n<li>TablePress<\\/li>\\n<li>Sidebar Selector<\\/li>\\n<li>Nav Menu<\\/li>\\n<li>Image Aspect Ratio Crop<\\/li>\\n<li>Audio\\/Video Player<\\/li>\\n<li>SVG Icon<\\/li>\\n<li>Icon Selector<\\/li>\\n<li>Code<\\/li>\\n<li>Address<\\/li>\\n<li>Number Slider<\\/li>\\n<li>Star Rating<\\/li>\\n<li>YouTube Picker<\\/li>\\n<li>Post Type Select<\\/li>\\n<li>Smart Button<\\/li>\\n<\\/ul>\\n<p><strong>Location Rule Support<\\/strong><\\/p>\\n<p>ACF Theme Code Pro can generate code for multiple location rules in each field group. This includes more complex locations like <em>Block, Options Page, Widget, Taxonomy, Comment, Attachment, Current User and User Form.<\\/em><\\/p>\\n<p><strong>Create Blocks and Options Pages<\\/strong><\\/p>\\n<p>ACF Theme Code Pro also includes a handy <em>Location Registration Tool<\\/em> that generates the code needed to create new Blocks and Options Pages.<\\/p>\\n<p><strong>Works best with<\\/strong><\\/p>\\n<ul>\\n<li>Advanced Custom Fields Pro v5.9 or higher<\\/li>\\n<li>Advanced Custom Fields Free v5.9 or higher<\\/li>\\n<li>WordPress 5.6 or higher<\\/li>\\n<li>PHP 7.0 or higher<\\/li>\\n<\\/ul>\\n<p><strong>Try our FREE version<\\/strong><\\/p>\\n<p>If you would like to \\u2018try before you buy\\u2019 you can check out our free version <a href=\\\"https:\\/\\/wordpress.org\\/plugins\\/acf-theme-code\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">ACF Theme Code<\\/a> on WordPress.org. This plugin supports all the field types included in free version of Advanced Custom Fields.<\\/p>\\n<p><strong>Hi! We made this<\\/strong><\\/p>\\n<p>The ACF Theme Code Plugin was created by <a href=\\\"http:\\/\\/aaronrutley.com\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">AaronRutley<\\/a> &amp; <a href=\\\"http:\\/\\/benpearson.com.au\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Ben Pearson<\\/a>, two WordPress developers based in Melbourne, Australia.<\\/p>\\n<p><strong>Theme Code Pro makes developers happy!<\\/strong><\\/p>\\n<p><em>\\u201cGreat time saver - No more constantly referring to the ACF documentation for the right ACF code.\\u201d<\\/em> - David McDonald, Freelance Web Developer<\\/p>\\n<p><em>\\u201cAwesome add-on for ACF - It will certainly speed up theme development.\\u201d<\\/em> - Matthew Heyes, Web Developer &amp; WordPress Specialist<\\/p>\\n<p><em>\\u201cI\'m going to use all the free time this plugin gives me to, I don\'t know, catch up on sleep!\\u201d<\\/em> - Joel Eade, Website Designer<\\/p>\\n<p><em>\\u201cI should have dropped the change a long time ago. AWESOME. Massive time saver. Wish I\\u2019d done it sooner.\\u201d<\\/em> - theatereleven, WordPress Developer<\\/p>\\n\",\"changelog\":\"<p><strong>2.5.2<\\/strong><\\/p>\\n<ul>\\n<li>Add support for the following third party fields:<\\/li>\\n<ul>\\n<li>ACF Field For Contact Form 7<\\/li>\\n<li>Advanced Custom Field: Audio\\/Video Player<\\/li>\\n<\\/ul>\\n<li>Improve code rendered for the following third party fields:<\\/li>\\n<ul>\\n<li>Advanced Custom Fields: Gravityforms Add-on (including displaying forms, support for Object and ID return types and Single and Multiple values)<\\/li>\\n<li>Advanced Custom Fields: Ninjaforms Add-on (including displaying forms, support for Object and ID return types and Single and Multiple values)<\\/li>\\n<li>TablePress (including support for ID and HTML return types)<\\/li>\\n<li>Table (including caption support and escaping)<\\/li>\\n<li>ACF Icon Selector Field (including escaping)<\\/li>\\n<li>ACF Smart Button (including escaping)<\\/li>\\n<li>Advanced Custom Fields: RGBA Color Field (including escaping)<\\/li>\\n<\\/ul>\\n<li>Update support for the following third party fields:<\\/li>\\n<ul>\\n<li>Advanced Custom Fields: Font Awesome Field<\\/li>\\n<li>Custom Fields: Nav Menu Field<\\/li>\\n<li>ACF Code Field<\\/li>\\n<li>Advanced Custom Fields: SVG Icon<\\/li>\\n<li>ACF YouTube Picker Field<\\/li>\\n<li>ACF Address Field<\\/li>\\n<li>Post Type Select Field for Advanced Custom Fields<\\/li>\\n<li>Advanced Custom Fields: Number Slider<\\/li>\\n<li>ACF Color Palette Field<\\/li>\\n<li>ACF Color Swatches<\\/li>\\n<\\/ul>\\n<li>Remove support for the following third party fields that no longer support the latest version of WordPress or ACF:<\\/li>\\n<ul>\\n<li>ACF qTranslate<\\/li>\\n<li>Advanced Custom Fields: Image Crop<\\/li>\\n<li>Advanced Custom Fields: Markdown Field<\\/li>\\n<li>Advanced Custom Fields: Link Picker Field<\\/li>\\n<li>ACF: Google Font Selector<\\/li>\\n<li>ACF: Focal Point<\\/li>\\n<\\/ul>\\n<li>Ignore `page` field used by Advanced Forms Pro for ACF for multi step forms<\\/li>\\n<\\/ul>\\n<p><strong>2.5.1<\\/strong><\\/p>\\n<ul>\\n<li>Improve support for WordPress 5.6<\\/li>\\n<li>Fix CSS and JS enqueue bugs<\\/li>\\n<li>Fix code formatting bug in \\\"Register ACF Blocks and Options Pages\\\" Tool<\\/li>\\n<li>Add link to Settings page in plugin description on core Plugins page<\\/li>\\n<li>Improve plugin update message on core Plugins page<\\/li>\\n<li>Add instructions to \\\"Download Failed\\\" error message on core Plugins page<\\/li>\\n<li>Updated licensing framework<\\/li>\\n<li>Improve plugin Settings page:\\n<ul>\\n<li>Improve instructions and validation messages<\\/li>\\n<li>Improve design and responsive styles<\\/li>\\n<li>Convert license key field from text input to password input to protect customer license keys<\\/li>\\n<\\/ul>\\n<\\/li>\\n<\\/ul>\\n<p><strong>2.5.0<\\/strong><\\/p>\\n<ul>\\n<li>Improve support for WordPress 5.4.<\\/li>\\n<li>Improve support for all field types included in ACF PRO 5.8.9 (including all their various settings).<\\/li>\\n<li>Improve codebase by syncing both free and pro foundations to facilitate faster development cycles and future features.<\\/li>\\n<li>Add escaping to code rendered to bring it in line with recent updates to ACF field documentation. See\\u00a0https:\\/\\/twitter.com\\/wp_acf\\/status\\/1181344882775875584.<\\/li>\\n<li>Improve code rendered for Taxonomy location.<\\/li>\\n<li>Add support for Current User, Current User Role, User Role locations.<\\/li>\\n<li>Add various enhancements to code rendered for the following fields and field settings:\\n<ul>\\n<li>Gallery field (return types Array, URL and ID)<\\/li>\\n<li>Image (return types Array, URL and ID)<\\/li>\\n<li>File (return types Array, URL and ID)<\\/li>\\n<li>Select (values Single and Multiple, return types Value, Label and Array)<\\/li>\\n<li>Checkbox (return types Value, Label and Array)<\\/li>\\n<li>Radio Button (return type Array)<\\/li>\\n<li>Button Group (return type Array)<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>Link (return types Array and URL)<\\/li>\\n<li>Post Object (values Single and Multiple, return types Post Object and Post ID)<\\/li>\\n<li>Page Link (values Single and Multiple)<\\/li>\\n<li>Relationship (return types Post Object and Post ID)<\\/li>\\n<li>Taxonomy (appearances Checkbox, Multi Select, Radio Buttons and Select, return types Term Object and Term ID)<\\/li>\\n<li>User (values Single and Multiple, return types User Array, User Object and User ID)<\\/li>\\n<li>Google Map<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Fixed issue with \'Copy All\' fields functionality.<\\/li>\\n<\\/ul>\\n<p><strong>2.4.0<\\/strong><\\/p>\\n<ul>\\n<li>Core: Theme Code Pro generates code to register for ACF Blocks and Options!<\\/li>\\n<li>Core: Theme Code Pro generates code for use within for ACF Blocks!<\\/li>\\n<li>Core: Radio Button field (core): Add support for all return types<\\/li>\\n<li>Core: Refactoring that will allow for the more options for the code generated in the future<\\/li>\\n<li>New Field Supported: ACF Icon Field<\\/li>\\n<li>New Field Supported: ACF Star Rating Field<\\/li>\\n<li>New Field Supported: ACF Color Palette Field<\\/li>\\n<li>New Field Supported: ACF Image Aspect Ratio Crop<\\/li>\\n<li>New Field Supported: ACF Color Swatches<\\/li>\\n<li>New Field Supported: ACF SVG Icon<\\/li>\\n<\\/ul>\\n<p><strong>2.3.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: ACF Ninja Forms add on<\\/li>\\n<li>New Field Supported: ACF Gravity Forms add on<\\/li>\\n<li>New Field Supported: ACF RGBA Colour picker<\\/li>\\n<li>New Field(s) Supported: ACF qTranslate<\\/li>\\n<li>Core: Resolved EDD Conflicts<\\/li>\\n<li>Core: Improved Widget Location Variables<\\/li>\\n<li>Fix: EDD naming conflict<\\/li>\\n<li>Fix: Location error if visual editor is disabled<\\/li>\\n<li>Fix: Select Conflict with Seamless Field Group Option<\\/li>\\n<\\/ul>\\n<p><strong>2.2.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: Button Field found in ACF Pro v5.6.3<\\/li>\\n<li>New Field Supported: Range Field found in ACF Pro v5.6.2<\\/li>\\n<li>Core: Copy All Feature Added<\\/li>\\n<\\/ul>\\n<p><strong>2.1.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: Group Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Link Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Range Field (Third Party)<\\/li>\\n<li>New Field Supported: Focal Point Field (Third Party)<\\/li>\\n<li>Field: Code field improved to escape output by default<\\/li>\\n<li>Field: Google Map field improved to return lat, lng &amp;\\u00a0address<\\/li>\\n<li>Core: resolved an issue with legacy PHP versions<\\/li>\\n<li>Fix: Bug in File field PHP when returned as a URL<\\/li>\\n<\\/ul>\\n<p><strong>2.0.0<\\/strong><\\/p>\\n<ul>\\n<li>Core : Theme Code Pro now generates code based on your location rules!<\\/li>\\n<li>Core : Theme Code Pro now supports all official ACF Add ons!<\\/li>\\n<li>Core : Theme Code Pro now works when ACF Pro is included in a theme!<\\/li>\\n<li>Location Supported : Options Page<\\/li>\\n<li>Location Supported : Widget<\\/li>\\n<li>Location Supported : Comment<\\/li>\\n<li>Location Supported : Taxonomy Term<\\/li>\\n<li>Location Supported : User<\\/li>\\n<li>Location Supported : Attachment<\\/li>\\n<li>Add-on supported : Options Page<\\/li>\\n<li>Add on supported : Repeater Field<\\/li>\\n<li>Add on supported : Gallery Field<\\/li>\\n<li>Add on supported : Flexible Content Field<\\/li>\\n<li>Fix : Minor bug in file field example link markup<\\/li>\\n<li>Fix : Support for Quicklinks feature within locations<\\/li>\\n<\\/ul>\\n<p><strong>1.2.0<\\/strong><\\/p>\\n<ul>\\n<li>Field : Clone - major improvements to the clone field code output<\\/li>\\n<li>New Field Supported : Address Field<\\/li>\\n<li>New Field Supported : Number Slider Field<\\/li>\\n<li>New Field Supported : Post Type Select Field<\\/li>\\n<li>New Field Supported : Code Field<\\/li>\\n<li>New Field Supported : Link Field<\\/li>\\n<li>New Field Supported : Link Picker Field<\\/li>\\n<li>New Field Supported : YouTube Picker Field<\\/li>\\n<li>Core : Special characters now removed from variable names<\\/li>\\n<li>Fix : Compatibility with CPTUI Pro Plugin<\\/li>\\n<\\/ul>\\n<p><strong>1.1.0<\\/strong><\\/p>\\n<ul>\\n<li>Core: Quicklinks feature with anchor links to the relevant theme code block<\\/li>\\n<li>Core: Notice updates &amp; various bug fixes<\\/li>\\n<li>Core: Plugin options screen moved under Settings<\\/li>\\n<\\/ul>\\n<p><strong>1.0.3<\\/strong><\\/p>\\n<ul>\\n<li>Fix: Use the_sub_field method for nested File fields with return format URL<\\/li>\\n<\\/ul>\\n<p><strong>1.0.2<\\/strong><\\/p>\\n<ul>\\n<li>Field: Fix for Post Object when using ACF 4<\\/li>\\n<li>Core: Various internal code improvements<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":\"a:2:{s:2:\\\"1x\\\";s:81:\\\"https:\\/\\/hookturn.io\\/wp-content\\/uploads\\/edd\\/2020\\/05\\/acf-theme-code-pro-128x128.jpg\\\";s:2:\\\"2x\\\";s:81:\\\"https:\\/\\/hookturn.io\\/wp-content\\/uploads\\/edd\\/2020\\/05\\/acf-theme-code-pro-256x256.jpg\\\";}\",\"msg\":\"No license key has been provided.\"}\";}','yes');
INSERT INTO `wp_options` VALUES (227,'simplehistory_AvailableUpdatesLogger_plugin_updates_available','a:4:{s:39:\"wp-migrate-db-pro/wp-migrate-db-pro.php\";a:1:{s:15:\"checked_version\";s:5:\"2.1.2\";}s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";a:1:{s:15:\"checked_version\";s:5:\"2.5.2\";}s:29:\"gravityforms/gravityforms.php\";a:1:{s:15:\"checked_version\";s:6:\"2.5.12\";}s:19:\"akismet/akismet.php\";a:1:{s:15:\"checked_version\";s:5:\"4.2.1\";}}','yes');
INSERT INTO `wp_options` VALUES (228,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (229,'theme_mods_psbplaybook','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (230,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (261,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (271,'options_schema_code','','no');
INSERT INTO `wp_options` VALUES (272,'_options_schema_code','field_5a42e3275aee9','no');
INSERT INTO `wp_options` VALUES (273,'options_review_css','','no');
INSERT INTO `wp_options` VALUES (274,'_options_review_css','field_5ba94c2362b95','no');
INSERT INTO `wp_options` VALUES (275,'options_footer_scripts','','no');
INSERT INTO `wp_options` VALUES (276,'_options_footer_scripts','field_5b9a7e73c93ec','no');
INSERT INTO `wp_options` VALUES (277,'options_not_found_title','','no');
INSERT INTO `wp_options` VALUES (278,'_options_not_found_title','field_5e7400fe2eba9','no');
INSERT INTO `wp_options` VALUES (279,'options_not_found_content','','no');
INSERT INTO `wp_options` VALUES (280,'_options_not_found_content','field_5e74010e2ebab','no');
INSERT INTO `wp_options` VALUES (281,'options_fonts_0_font_url','\'https://fonts.googleapis.com/css2?family=Khand:wght@500;600&family=Open+Sans:wght@400;600;800&display=swap\'','no');
INSERT INTO `wp_options` VALUES (282,'_options_fonts_0_font_url','field_5e992d88c3120','no');
INSERT INTO `wp_options` VALUES (283,'options_fonts','1','no');
INSERT INTO `wp_options` VALUES (284,'_options_fonts','field_5e83ce4c8f954','no');
INSERT INTO `wp_options` VALUES (285,'options_host_google_fonts_locally','','no');
INSERT INTO `wp_options` VALUES (286,'_options_host_google_fonts_locally','field_5ef28270fdabe','no');
INSERT INTO `wp_options` VALUES (294,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (295,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (308,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (313,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":5,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (317,'rewrite_rules','a:100:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (329,'_transient_timeout_acf_plugin_updates','1633116860','no');
INSERT INTO `wp_options` VALUES (330,'_transient_acf_plugin_updates','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:63:\"cURL error 60: SSL certificate problem: certificate has expired\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (343,'_transient_timeout_wpseo_total_unindexed_post_type_archives','1633140453','no');
INSERT INTO `wp_options` VALUES (344,'_transient_wpseo_total_unindexed_post_type_archives','0','no');
INSERT INTO `wp_options` VALUES (345,'_transient_timeout_wpseo_total_unindexed_general_items','1633140600','no');
INSERT INTO `wp_options` VALUES (346,'_transient_wpseo_total_unindexed_general_items','0','no');
INSERT INTO `wp_options` VALUES (347,'_transient_timeout_wpseo_unindexed_post_link_count','1633140453','no');
INSERT INTO `wp_options` VALUES (348,'_transient_wpseo_unindexed_post_link_count','0','no');
INSERT INTO `wp_options` VALUES (349,'_transient_timeout_wpseo_unindexed_term_link_count','1633140453','no');
INSERT INTO `wp_options` VALUES (350,'_transient_wpseo_unindexed_term_link_count','0','no');
INSERT INTO `wp_options` VALUES (357,'gf_previous_db_version','2.5.10','yes');
INSERT INTO `wp_options` VALUES (358,'gf_upgrade_lock','','yes');
INSERT INTO `wp_options` VALUES (359,'gform_sticky_admin_messages','a:1:{s:23:\"gravityforms_update_2_5\";a:5:{s:4:\"type\";s:7:\"success\";s:4:\"text\";s:200:\"Welcome to Gravity Forms 2.5! <a href=\"https://www.gravityforms.com/two-five/\" target=\"_blank\" rel=\"noopener noreferrer\">Learn more</a> about all the new features and updates included in this version.\";s:3:\"key\";s:23:\"gravityforms_update_2_5\";s:12:\"capabilities\";b:0;s:4:\"page\";N;}}','yes');
INSERT INTO `wp_options` VALUES (361,'gf_rest_api_db_version','2.5.11','yes');
INSERT INTO `wp_options` VALUES (364,'_transient_timeout_rg_gforms_license','1633225315','no');
INSERT INTO `wp_options` VALUES (365,'_transient_rg_gforms_license','a:17:{s:15:\"license_key_md5\";s:32:\"621e21584ab7936611e0d28422299c97\";s:12:\"date_created\";s:19:\"2013-10-01 18:48:05\";s:12:\"date_expires\";s:19:\"2021-11-02 16:00:00\";s:9:\"is_active\";s:1:\"1\";s:24:\"is_subscription_canceled\";s:1:\"0\";s:12:\"product_code\";s:5:\"GFDEV\";s:12:\"product_name\";s:31:\"Gravity Forms Developer License\";s:18:\"is_near_expiration\";b:0;s:14:\"days_to_expire\";i:31;s:10:\"is_expired\";b:0;s:8:\"is_valid\";b:1;s:22:\"is_past_renewal_period\";b:0;s:9:\"is_legacy\";b:1;s:9:\"max_sites\";s:9:\"unlimited\";s:12:\"active_sites\";i:433;s:15:\"remaining_seats\";s:9:\"unlimited\";s:20:\"is_multisite_allowed\";b:1;}','no');
INSERT INTO `wp_options` VALUES (386,'disable_gutenberg_options','a:26:{s:14:\"post-type_page\";i:1;s:9:\"templates\";s:32:\"page-templates/template-home.php\";s:8:\"post-ids\";s:0:\"\";s:12:\"whitelist-id\";s:0:\"\";s:14:\"whitelist-slug\";s:0:\"\";s:15:\"whitelist-title\";s:0:\"\";s:11:\"disable-nag\";i:1;s:11:\"disable-all\";i:0;s:15:\"classic-widgets\";i:0;s:13:\"styles-enable\";i:0;s:9:\"whitelist\";i:0;s:9:\"hide-menu\";i:0;s:8:\"hide-gut\";i:0;s:12:\"links-enable\";i:0;s:10:\"acf-enable\";i:0;s:14:\"post-type_post\";i:0;s:21:\"post-type_wp_template\";i:0;s:25:\"post-type_acf-field-group\";i:0;s:19:\"post-type_acf-field\";i:0;s:23:\"user-role_administrator\";i:0;s:16:\"user-role_editor\";i:0;s:16:\"user-role_author\";i:0;s:21:\"user-role_contributor\";i:0;s:20:\"user-role_subscriber\";i:0;s:23:\"user-role_wpseo_manager\";i:0;s:22:\"user-role_wpseo_editor\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (407,'_site_transient_timeout_theme_roots','1633115973','no');
INSERT INTO `wp_options` VALUES (408,'_site_transient_theme_roots','a:2:{s:11:\"psbplaybook\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (412,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633115133;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:19:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/acf-content-analysis-for-yoast-seo\";s:4:\"slug\";s:34:\"acf-content-analysis-for-yoast-seo\";s:6:\"plugin\";s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/acf-content-analysis-for-yoast-seo.3.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-256x256.png?rev=1717503\";s:2:\"1x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-128x128.png?rev=1717503\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-1544x500.png?rev=1717503\";s:2:\"1x\";s:89:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-772x250.png?rev=1717503\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}s:32:\"anual-archive/annual_archive.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/anual-archive\";s:4:\"slug\";s:13:\"anual-archive\";s:6:\"plugin\";s:32:\"anual-archive/annual_archive.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/anual-archive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/anual-archive.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/anual-archive/assets/icon-256x256.png?rev=1256482\";s:2:\"1x\";s:66:\"https://ps.w.org/anual-archive/assets/icon-128x128.png?rev=1256482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/anual-archive/assets/banner-1544x500.jpg?rev=2293326\";s:2:\"1x\";s:68:\"https://ps.w.org/anual-archive/assets/banner-772x250.jpg?rev=2293326\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"bugherd/bugherd.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/bugherd\";s:4:\"slug\";s:7:\"bugherd\";s:6:\"plugin\";s:19:\"bugherd/bugherd.php\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/bugherd/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/bugherd.1.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/bugherd/assets/icon-256x256.jpg?rev=2420524\";s:2:\"1x\";s:60:\"https://ps.w.org/bugherd/assets/icon-128x128.jpg?rev=2420524\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/bugherd/assets/banner-1544-500.jpg?rev=2420524\";s:2:\"1x\";s:62:\"https://ps.w.org/bugherd/assets/banner-772x250.jpg?rev=2420524\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/bugherd/assets/banner-1544-500-rtl.jpg?rev=2420524\";s:2:\"1x\";s:66:\"https://ps.w.org/bugherd/assets/banner-772x250-rtl.jpg?rev=2420524\";}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:66:\"delete-post-revisions-on-single-click/tp-delete-post-revisions.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:51:\"w.org/plugins/delete-post-revisions-on-single-click\";s:4:\"slug\";s:37:\"delete-post-revisions-on-single-click\";s:6:\"plugin\";s:66:\"delete-post-revisions-on-single-click/tp-delete-post-revisions.php\";s:11:\"new_version\";s:3:\"4.6\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/delete-post-revisions-on-single-click/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/delete-post-revisions-on-single-click.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/delete-post-revisions-on-single-click/assets/icon-256x256.PNG?rev=2479610\";s:2:\"1x\";s:90:\"https://ps.w.org/delete-post-revisions-on-single-click/assets/icon-256x256.PNG?rev=2479610\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:92:\"https://ps.w.org/delete-post-revisions-on-single-click/assets/banner-772x250.png?rev=2479611\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.5\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/better-wp-security\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"8.0.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.8.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:70:\"https://ps.w.org/better-wp-security/assets/icon-256x256.jpg?rev=969999\";s:2:\"1x\";s:62:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042\";s:3:\"svg\";s:62:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=2581716\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.4.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:19:\"mailgun/mailgun.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/mailgun\";s:4:\"slug\";s:7:\"mailgun\";s:6:\"plugin\";s:19:\"mailgun/mailgun.php\";s:11:\"new_version\";s:5:\"1.7.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/mailgun/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/mailgun.1.7.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/mailgun/assets/icon-256x256.png?rev=2434524\";s:2:\"1x\";s:60:\"https://ps.w.org/mailgun/assets/icon-128x128.png?rev=2434524\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/mailgun/assets/banner-772x250.png?rev=2498934\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.23\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.7.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.7.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:27:\"redirection/redirection.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/redirection\";s:4:\"slug\";s:11:\"redirection\";s:6:\"plugin\";s:27:\"redirection/redirection.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/redirection/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/redirection.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/redirection/assets/icon-256x256.jpg?rev=983639\";s:2:\"1x\";s:63:\"https://ps.w.org/redirection/assets/icon-128x128.jpg?rev=983640\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/redirection/assets/banner-1544x500.jpg?rev=983641\";s:2:\"1x\";s:65:\"https://ps.w.org/redirection/assets/banner-772x250.jpg?rev=983642\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:24:\"simple-history/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/simple-history\";s:4:\"slug\";s:14:\"simple-history\";s:6:\"plugin\";s:24:\"simple-history/index.php\";s:11:\"new_version\";s:6:\"2.42.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/simple-history/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/simple-history.2.42.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/simple-history/assets/icon.svg?rev=1044051\";s:3:\"svg\";s:59:\"https://ps.w.org/simple-history/assets/icon.svg?rev=1044051\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/simple-history/assets/banner-772x250.png?rev=1045523\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.60.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.60.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"17.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.17.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:29:{s:39:\"gravityforms-post/gravityforms-post.php\";s:3:\"1.0\";s:57:\"1p21-gravity-editor-access/1p21-gravity-editor-access.php\";s:3:\"0.1\";s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:5:\"3.0.1\";s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";s:5:\"1.2.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.10.2\";s:19:\"akismet/akismet.php\";s:3:\"4.2\";s:32:\"anual-archive/annual_archive.php\";s:5:\"1.5.4\";s:19:\"bugherd/bugherd.php\";s:5:\"1.0.4\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.2\";s:66:\"delete-post-revisions-on-single-click/tp-delete-post-revisions.php\";s:3:\"4.6\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"2.5.1\";s:29:\"gravityforms/gravityforms.php\";s:6:\"2.5.11\";s:31:\"1p21-alertbar/1p21-alertbar.php\";s:5:\"1.0.9\";s:44:\"1p21translate-main/1p21-translate-plugin.php\";s:5:\"0.0.2\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"8.0.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:5:\"4.4.2\";s:19:\"mailgun/mailgun.php\";s:5:\"1.7.9\";s:28:\"1p21bulkmenubundle/index.php\";s:5:\"2.1.4\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.23\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.7.1\";s:27:\"redirection/redirection.php\";s:5:\"5.1.3\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.9\";s:24:\"simple-history/index.php\";s:6:\"2.42.0\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.60.2\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:39:\"wp-migrate-db-pro/wp-migrate-db-pro.php\";s:5:\"1.9.8\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.7.4\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"17.2.1\";}}','no');
INSERT INTO `wp_options` VALUES (413,'_site_transient_timeout_wpmdb_upgrade_data','1633158451','no');
INSERT INTO `wp_options` VALUES (414,'_site_transient_wpmdb_upgrade_data','a:5:{s:17:\"wp-migrate-db-pro\";a:4:{s:7:\"version\";s:5:\"2.1.2\";s:6:\"tested\";s:3:\"5.8\";s:8:\"icon_url\";s:60:\"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg\";s:12:\"requires_php\";s:3:\"5.6\";}s:29:\"wp-migrate-db-pro-media-files\";a:4:{s:7:\"version\";s:5:\"2.0.3\";s:6:\"tested\";s:3:\"5.8\";s:8:\"icon_url\";s:60:\"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg\";s:12:\"requires_php\";s:3:\"5.6\";}s:21:\"wp-migrate-db-pro-cli\";a:4:{s:7:\"version\";s:3:\"1.5\";s:6:\"tested\";s:5:\"5.8.1\";s:8:\"icon_url\";s:60:\"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg\";s:12:\"requires_php\";s:3:\"5.6\";}s:33:\"wp-migrate-db-pro-multisite-tools\";a:4:{s:7:\"version\";s:5:\"1.3.1\";s:6:\"tested\";s:5:\"5.8.1\";s:8:\"icon_url\";s:60:\"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg\";s:12:\"requires_php\";s:3:\"5.6\";}s:36:\"wp-migrate-db-pro-theme-plugin-files\";a:4:{s:7:\"version\";s:5:\"1.1.2\";s:6:\"tested\";s:3:\"5.8\";s:8:\"icon_url\";s:60:\"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg\";s:12:\"requires_php\";s:3:\"5.6\";}}','no');
INSERT INTO `wp_options` VALUES (415,'_site_transient_timeout_available_translations','1633126195','no');
INSERT INTO `wp_options` VALUES (416,'_site_transient_available_translations','a:126:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-21 03:49:08\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-30 20:41:33\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.7\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.7/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-17 13:05:11\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-13 14:39:28\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-13 20:12:59\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-06 13:31:37\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-19 22:07:46\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-10 20:59:31\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-10 12:19:50\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-22 10:24:47\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.8.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-22 10:24:20\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-10 20:58:55\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 11:17:46\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-26 10:54:05\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-09 10:29:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-03 20:56:24\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-25 03:05:46\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-03 10:52:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-25 03:09:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-30 20:54:06\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-14 11:45:58\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-30 00:35:05\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-20 17:20:36\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 13:13:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 20:42:17\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 02:19:31\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 02:19:00\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.7\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.7/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.12\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.12/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-14 13:29:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-25 08:50:13\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-31 06:18:44\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 12:40:09\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-17 11:15:06\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-22 00:39:53\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-29 17:13:20\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-05 22:22:24\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.25\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-20 10:01:27\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.7\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-28 10:05:42\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 11:18:08\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-12 12:56:29\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-04 18:12:54\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-09 17:15:10\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-10 15:04:23\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-21 06:43:12\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 18:03:03\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.12\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.12/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-01 16:16:04\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 05:27:21\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-22 18:19:16\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-17 20:04:07\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.7\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-11 11:35:09\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.12\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.12/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-20 10:32:14\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-08 11:07:33\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-01 15:43:06\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-01 12:05:00\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.26\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-08 19:39:30\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-30 09:51:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-15 08:56:03\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-23 21:33:21\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-01 21:02:01\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.7\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.7/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-09 05:24:25\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-01 14:42:23\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-31 06:12:58\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-03 10:59:56\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-16 16:39:11\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.3.9\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.9/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-30 09:11:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-09 09:04:54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-25 07:37:49\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.7\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.7/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-22 14:07:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-19 06:35:00\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-27 10:46:14\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 05:46:40\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}','no');
INSERT INTO `wp_options` VALUES (445,'_transient_timeout_GFCache_50f5f28979b88ec251857ded0d24c6b3','1633142514','no');
INSERT INTO `wp_options` VALUES (446,'_transient_GFCache_50f5f28979b88ec251857ded0d24c6b3','a:60:{s:12:\"gravityforms\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:6:\"2.5.12\";s:14:\"version_latest\";s:6:\"2.5.12\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5qrPfc4nqio8NuMII0m4v%2F3%2Fcr0%3D\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5qrPfc4nqio8NuMII0m4v%2F3%2Fcr0%3D\";}s:21:\"gravityforms2checkout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:5:\"2.0.1\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=u2Z5huumM1G93sm5CVj9LjQWQEI%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_2.0.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2F8T3Z0%2FyEE0%2BKe0%2B4rP25wlONbY%3D\";}s:26:\"gravityformsactivecampaign\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.9\";s:14:\"version_latest\";s:3:\"1.9\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hNFM5vOZLBdfrUuIUBTLJfxSq5k%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hNFM5vOZLBdfrUuIUBTLJfxSq5k%3D\";}s:32:\"gravityformsadvancedpostcreation\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:202:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=LBxwQLF2Xuczf3s5rhrvatwcafQ%3D\";s:10:\"url_latest\";s:202:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MRX02xbtaNvAMtjnBRECMBj2H5w%3D\";}s:20:\"gravityformsagilecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hPd4ceZzPifo18pxrJdHOl7Qng4%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hPd4ceZzPifo18pxrJdHOl7Qng4%3D\";}s:19:\"gravityformsakismet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:3:\"1.0\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/akismet/gravityformsakismet_1.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=qBexNfhcCll0tuz4pv6NLmdKu7g%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/akismet/gravityformsakismet_1.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=qBexNfhcCll0tuz4pv6NLmdKu7g%3D\";}s:24:\"gravityformsauthorizenet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";s:3:\"url\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=0N6eW10K2cDFeyiuRBrDs4SYq3w%3D\";s:10:\"url_latest\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=0N6eW10K2cDFeyiuRBrDs4SYq3w%3D\";}s:18:\"gravityformsaweber\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";s:3:\"url\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=E%2FyKXRKDXRdoAf30QJKeVQxxt%2BA%3D\";s:10:\"url_latest\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=E%2FyKXRKDXRdoAf30QJKeVQxxt%2BA%3D\";}s:21:\"gravityformsbatchbook\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yPc4ran%2FGPI0tDLOjPmmznNZnWk%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yPc4ran%2FGPI0tDLOjPmmznNZnWk%3D\";}s:18:\"gravityformsbreeze\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yXMLRHqR762PNdBoNzVjnZquSvQ%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yXMLRHqR762PNdBoNzVjnZquSvQ%3D\";}s:27:\"gravityformscampaignmonitor\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:3:\"3.9\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2F5VJV2TpHvrofTpand1rTwg5Poo%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2F5VJV2TpHvrofTpand1rTwg5Poo%3D\";}s:20:\"gravityformscampfire\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.2\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ootjJrxz%2FdbEPCSimg%2FNmyXQbQA%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=RG9WifYUIEgxIftX94QzdCobDKI%3D\";}s:22:\"gravityformscapsulecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=8mNIpFYG3D06%2Bxgr3S%2BcTPO3PoI%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=8mNIpFYG3D06%2Bxgr3S%2BcTPO3PoI%3D\";}s:26:\"gravityformschainedselects\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PwhGxVAp3urbqmt3jEgg7XvWTZ8%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PwhGxVAp3urbqmt3jEgg7XvWTZ8%3D\";}s:23:\"gravityformscleverreach\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.7\";s:14:\"version_latest\";s:3:\"1.7\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=g2bkpDBJKNgcAtomDe1%2FxajBYu4%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=g2bkpDBJKNgcAtomDe1%2FxajBYu4%3D\";}s:15:\"gravityformscli\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/cli/gravityformscli_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=NfgeNUxLP5Ldvt%2BRwkVjEgqBlfM%3D\";}s:27:\"gravityformsconstantcontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Mq4Ts3W5GKod%2F2zI2OLW%2FSfY4JM%3D\";s:10:\"url_latest\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Mq4Ts3W5GKod%2F2zI2OLW%2FSfY4JM%3D\";}s:19:\"gravityformscoupons\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.0\";s:14:\"version_latest\";s:3:\"3.0\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zGTiAlqLH6vuVRBt5b%2BUt5jSCvk%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zGTiAlqLH6vuVRBt5b%2BUt5jSCvk%3D\";}s:17:\"gravityformsdebug\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:10:\"1.0.beta12\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PKUH5WXmcUH8tDnnpmshc7A2ok0%3D\";}s:19:\"gravityformsdropbox\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.0\";s:14:\"version_latest\";s:3:\"3.0\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=r9Rz3dk5rt0emUG%2F2PLeGZ6b7jU%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=r9Rz3dk5rt0emUG%2F2PLeGZ6b7jU%3D\";}s:24:\"gravityformsemailoctopus\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/emailoctopus/gravityformsemailoctopus_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zFdi6%2FWehPUQzG8tUHPHAb0jR%2FM%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/emailoctopus/gravityformsemailoctopus_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zFdi6%2FWehPUQzG8tUHPHAb0jR%2FM%3D\";}s:16:\"gravityformsemma\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Cghfa1OAxWU%2B8%2FBJfnNSc9kgeew%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Cghfa1OAxWU%2B8%2FBJfnNSc9kgeew%3D\";}s:22:\"gravityformsfreshbooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:3:\"2.8\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=bNjNwRxwgBKyrlOURtePsDT13vA%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=bNjNwRxwgBKyrlOURtePsDT13vA%3D\";}s:23:\"gravityformsgetresponse\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";s:3:\"url\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dvJ3d%2BUgZU9yjREL4WIm%2FLore0c%3D\";s:10:\"url_latest\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dvJ3d%2BUgZU9yjREL4WIm%2FLore0c%3D\";}s:21:\"gravityformsgutenberg\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-rc-1.4\";s:14:\"version_latest\";s:10:\"1.0-rc-1.5\";s:3:\"url\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=SVT6lGIjABpyVtO1gmAuZ4VjLjw%3D\";s:10:\"url_latest\";s:191:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=XcrFXPan4txS97GLZh1Rl%2B00x%2Fs%3D\";}s:21:\"gravityformshelpscout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zHNPIRwmjFcdoitRbOAzcLNfD7M%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zHNPIRwmjFcdoitRbOAzcLNfD7M%3D\";}s:20:\"gravityformshighrise\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=C0gjwQ2DGb2Pc4KTl2ODp4GCALA%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=C0gjwQ2DGb2Pc4KTl2ODp4GCALA%3D\";}s:19:\"gravityformshipchat\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";}s:19:\"gravityformshubspot\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Wqmo2CiSFvx3qW5fc%2BbLgw2fV44%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.5.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Luck7KfXcVljSPO5wKQ28linFD4%3D\";}s:20:\"gravityformsicontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Rvmqgpui%2Fop%2F8vlUt%2F9DR8kvUA4%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Rvmqgpui%2Fop%2F8vlUt%2F9DR8kvUA4%3D\";}s:19:\"gravityformslogging\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=tsvtcnHwRaFGios5qspMPV6925c%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2FBjBfrq5i5VPO8euy%2FpiNp%2B1vNg%3D\";}s:19:\"gravityformsmadmimi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=wl4h2odsVtYbFC1vVcBjZUkCo74%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=wl4h2odsVtYbFC1vVcBjZUkCo74%3D\";}s:21:\"gravityformsmailchimp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"5.0\";s:14:\"version_latest\";s:3:\"5.0\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_5.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Bz1PUS%2BlVDFbcb4%2Ff6HP1wkNbmU%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_5.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Bz1PUS%2BlVDFbcb4%2Ff6HP1wkNbmU%3D\";}s:19:\"gravityformsmailgun\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5Q6HFlnOe2n73OmsMHaj2Zf%2FDjc%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5Q6HFlnOe2n73OmsMHaj2Zf%2FDjc%3D\";}s:18:\"gravityformsmollie\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mollie/gravityformsmollie_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=S2cgMvdjcXI%2BCLXemWvsyUdpH%2Fc%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mollie/gravityformsmollie_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=S2cgMvdjcXI%2BCLXemWvsyUdpH%2Fc%3D\";}s:26:\"gravityformspartialentries\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:5:\"1.6.1\";s:3:\"url\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=uewqZUZ9gLlB8Tcq1%2BZpqt0Zqww%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.6.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MJLy6Xq%2Fu2VPTzmxXXU5DuSBsFs%3D\";}s:18:\"gravityformspaypal\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.5\";s:14:\"version_latest\";s:3:\"3.5\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=oJs%2BSYunuKjQlTvQKdNJNU3WR%2FE%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=oJs%2BSYunuKjQlTvQKdNJNU3WR%2FE%3D\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:3:\"2.7\";s:3:\"url\";s:198:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=AGRV99mbRIcXcHg9%2F0b4OBKwdrU%3D\";s:10:\"url_latest\";s:198:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=AGRV99mbRIcXcHg9%2F0b4OBKwdrU%3D\";}s:21:\"gravityformspaypalpro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.4\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=vE1KyKLXojqo%2BeB%2FVc1O0d0djPI%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=IIo2tfF2Ps9gduCSRYDIABRe8po%3D\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=3M7yh5EuufI3nJ48YLw2OOwJBBA%3D\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=QWOxrvQl0JLS61G9C16tKgNNoIw%3D\";}s:17:\"gravityformspolls\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:3:\"3.9\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hIlXshvlry5BshdJTRh6HQkiZYk%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hIlXshvlry5BshdJTRh6HQkiZYk%3D\";}s:20:\"gravityformspostmark\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=HdOccnJPm1LJLJx0ql8oXBmU1uA%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=HdOccnJPm1LJLJx0ql8oXBmU1uA%3D\";}s:16:\"gravityformsppcp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.2\";s:14:\"version_latest\";s:3:\"2.2\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/ppcp/gravityformsppcp_2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ZxSr8n%2B%2B6%2FtOVNVn4GSttQfN16I%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/ppcp/gravityformsppcp_2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ZxSr8n%2B%2B6%2FtOVNVn4GSttQfN16I%3D\";}s:16:\"gravityformsquiz\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:5:\"3.7.2\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=2qWpqgMgQuJs6tN%2FD579c0kzHDk%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.7.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=pU%2FQI6zPl%2BTpZmHZBwyRAKrz1Sg%3D\";}s:21:\"gravityformsrecaptcha\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/recaptcha/gravityformsrecaptcha_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=svYUfhRwNyfuP7beS2CnktcTZ%2BU%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/recaptcha/gravityformsrecaptcha_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=svYUfhRwNyfuP7beS2CnktcTZ%2BU%3D\";}s:19:\"gravityformsrestapi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";s:3:\"url\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=CZe181HS10PKpV9XYvvonSfeUBg%3D\";s:10:\"url_latest\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=CZe181HS10PKpV9XYvvonSfeUBg%3D\";}s:20:\"gravityformssendgrid\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=YAf986Oy%2Bkp5vsJ%2FwTaRN70niaM%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=YAf986Oy%2Bkp5vsJ%2FwTaRN70niaM%3D\";}s:21:\"gravityformssignature\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:3:\"4.1\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=WlsE1LLUKOZaDIPUPIlnPDOl5BA%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=WlsE1LLUKOZaDIPUPIlnPDOl5BA%3D\";}s:17:\"gravityformsslack\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MltWWXwncGmIKgalRBIBMXkqUCQ%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MltWWXwncGmIKgalRBIBMXkqUCQ%3D\";}s:18:\"gravityformssquare\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.4\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/square/gravityformssquare_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=2Q93rb8bohJCESWXZyEmEcBVNXk%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/square/gravityformssquare_1.4.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ibxDzD9xq%2BdSlREuNhip%2BDsQGFs%3D\";}s:18:\"gravityformsstripe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:3:\"4.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=tbP4K0rAVtLu%2FjcZ3sBoJnOeIuE%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=tbP4K0rAVtLu%2FjcZ3sBoJnOeIuE%3D\";}s:18:\"gravityformssurvey\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dkYt2fKuN3%2FmIWbn%2FdBA8hKOvM4%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dkYt2fKuN3%2FmIWbn%2FdBA8hKOvM4%3D\";}s:18:\"gravityformstrello\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=w9Gu3%2FEv8eXJSsANHYHYDlSlPJ4%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=w9Gu3%2FEv8eXJSsANHYHYDlSlPJ4%3D\";}s:18:\"gravityformstwilio\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:3:\"2.8\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=cL4LT2h0ovhwoyJJCC5OH0qDGtU%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=cL4LT2h0ovhwoyJJCC5OH0qDGtU%3D\";}s:28:\"gravityformsuserregistration\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.8\";s:14:\"version_latest\";s:5:\"4.8.4\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=kdRuOwHZCpsa1GflOeD9GAwobqM%3D\";s:10:\"url_latest\";s:200:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.8.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=39QnC1gB%2BdUPxUQIdy%2B5NLq33to%3D\";}s:20:\"gravityformswebhooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=6BayM5I%2FstFAOs8l6k2NfhxSUS4%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=6BayM5I%2FstFAOs8l6k2NfhxSUS4%3D\";}s:18:\"gravityformszapier\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:5:\"4.1.1\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=P2VZvI1lb1SrbeQt4fLhc5bNVys%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_4.1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=FftIOgdUHPrfTOzI0TbGvctpdnQ%3D\";}s:19:\"gravityformszohocrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"1.13\";s:14:\"version_latest\";s:6:\"1.13.1\";s:3:\"url\";s:185:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.13.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PxZ%2F4qdPnCfdtE7W9T4e9%2FTMc%2BU%3D\";s:10:\"url_latest\";s:185:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.13.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PxZ%2F4qdPnCfdtE7W9T4e9%2FTMc%2BU%3D\";}}','no');
INSERT INTO `wp_options` VALUES (447,'_transient_timeout_GFCache_5f451b45f3698f45cd85af4fe47d436d','1633142516','no');
INSERT INTO `wp_options` VALUES (448,'_transient_GFCache_5f451b45f3698f45cd85af4fe47d436d','C:59:\"Gravity_Forms\\Gravity_Forms\\License\\GF_License_API_Response\":227:{a:5:{s:4:\"data\";a:0:{}s:6:\"errors\";a:1:{i:0;s:36:\"Error from server: Too Many Requests\";}s:6:\"status\";s:12:\"server_error\";s:4:\"meta\";a:0:{}s:5:\"strat\";O:63:\"Gravity_Forms\\Gravity_Forms\\Transients\\GF_WP_Transient_Strategy\":0:{}}}','no');
INSERT INTO `wp_options` VALUES (469,'_transient_timeout_GFCache_bbe63c5002b94e4fea1ad4fd0ce24563','1633139063','no');
INSERT INTO `wp_options` VALUES (470,'_transient_GFCache_bbe63c5002b94e4fea1ad4fd0ce24563','1','no');
INSERT INTO `wp_options` VALUES (471,'gform_version_info','a:11:{s:12:\"is_valid_key\";b:1;s:6:\"reason\";s:0:\"\";s:7:\"version\";s:6:\"2.5.12\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5qrPfc4nqio8NuMII0m4v%2F3%2Fcr0%3D\";s:15:\"expiration_time\";i:1635868800;s:9:\"offerings\";a:60:{s:12:\"gravityforms\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:6:\"2.5.12\";s:14:\"version_latest\";s:6:\"2.5.12\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5qrPfc4nqio8NuMII0m4v%2F3%2Fcr0%3D\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5qrPfc4nqio8NuMII0m4v%2F3%2Fcr0%3D\";}s:21:\"gravityforms2checkout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:5:\"2.0.1\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=u2Z5huumM1G93sm5CVj9LjQWQEI%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_2.0.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2F8T3Z0%2FyEE0%2BKe0%2B4rP25wlONbY%3D\";}s:26:\"gravityformsactivecampaign\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.9\";s:14:\"version_latest\";s:3:\"1.9\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hNFM5vOZLBdfrUuIUBTLJfxSq5k%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hNFM5vOZLBdfrUuIUBTLJfxSq5k%3D\";}s:32:\"gravityformsadvancedpostcreation\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:202:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=LBxwQLF2Xuczf3s5rhrvatwcafQ%3D\";s:10:\"url_latest\";s:202:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MRX02xbtaNvAMtjnBRECMBj2H5w%3D\";}s:20:\"gravityformsagilecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hPd4ceZzPifo18pxrJdHOl7Qng4%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hPd4ceZzPifo18pxrJdHOl7Qng4%3D\";}s:19:\"gravityformsakismet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:3:\"1.0\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/akismet/gravityformsakismet_1.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=qBexNfhcCll0tuz4pv6NLmdKu7g%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/akismet/gravityformsakismet_1.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=qBexNfhcCll0tuz4pv6NLmdKu7g%3D\";}s:24:\"gravityformsauthorizenet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";s:3:\"url\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=0N6eW10K2cDFeyiuRBrDs4SYq3w%3D\";s:10:\"url_latest\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=0N6eW10K2cDFeyiuRBrDs4SYq3w%3D\";}s:18:\"gravityformsaweber\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";s:3:\"url\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=E%2FyKXRKDXRdoAf30QJKeVQxxt%2BA%3D\";s:10:\"url_latest\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=E%2FyKXRKDXRdoAf30QJKeVQxxt%2BA%3D\";}s:21:\"gravityformsbatchbook\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yPc4ran%2FGPI0tDLOjPmmznNZnWk%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yPc4ran%2FGPI0tDLOjPmmznNZnWk%3D\";}s:18:\"gravityformsbreeze\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yXMLRHqR762PNdBoNzVjnZquSvQ%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=yXMLRHqR762PNdBoNzVjnZquSvQ%3D\";}s:27:\"gravityformscampaignmonitor\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:3:\"3.9\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2F5VJV2TpHvrofTpand1rTwg5Poo%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2F5VJV2TpHvrofTpand1rTwg5Poo%3D\";}s:20:\"gravityformscampfire\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.2\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ootjJrxz%2FdbEPCSimg%2FNmyXQbQA%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=RG9WifYUIEgxIftX94QzdCobDKI%3D\";}s:22:\"gravityformscapsulecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=8mNIpFYG3D06%2Bxgr3S%2BcTPO3PoI%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=8mNIpFYG3D06%2Bxgr3S%2BcTPO3PoI%3D\";}s:26:\"gravityformschainedselects\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PwhGxVAp3urbqmt3jEgg7XvWTZ8%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PwhGxVAp3urbqmt3jEgg7XvWTZ8%3D\";}s:23:\"gravityformscleverreach\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.7\";s:14:\"version_latest\";s:3:\"1.7\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=g2bkpDBJKNgcAtomDe1%2FxajBYu4%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=g2bkpDBJKNgcAtomDe1%2FxajBYu4%3D\";}s:15:\"gravityformscli\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/cli/gravityformscli_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=NfgeNUxLP5Ldvt%2BRwkVjEgqBlfM%3D\";}s:27:\"gravityformsconstantcontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Mq4Ts3W5GKod%2F2zI2OLW%2FSfY4JM%3D\";s:10:\"url_latest\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Mq4Ts3W5GKod%2F2zI2OLW%2FSfY4JM%3D\";}s:19:\"gravityformscoupons\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.0\";s:14:\"version_latest\";s:3:\"3.0\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zGTiAlqLH6vuVRBt5b%2BUt5jSCvk%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zGTiAlqLH6vuVRBt5b%2BUt5jSCvk%3D\";}s:17:\"gravityformsdebug\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:10:\"1.0.beta12\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PKUH5WXmcUH8tDnnpmshc7A2ok0%3D\";}s:19:\"gravityformsdropbox\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.0\";s:14:\"version_latest\";s:3:\"3.0\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=r9Rz3dk5rt0emUG%2F2PLeGZ6b7jU%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_3.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=r9Rz3dk5rt0emUG%2F2PLeGZ6b7jU%3D\";}s:24:\"gravityformsemailoctopus\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/emailoctopus/gravityformsemailoctopus_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zFdi6%2FWehPUQzG8tUHPHAb0jR%2FM%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/emailoctopus/gravityformsemailoctopus_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zFdi6%2FWehPUQzG8tUHPHAb0jR%2FM%3D\";}s:16:\"gravityformsemma\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Cghfa1OAxWU%2B8%2FBJfnNSc9kgeew%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Cghfa1OAxWU%2B8%2FBJfnNSc9kgeew%3D\";}s:22:\"gravityformsfreshbooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:3:\"2.8\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=bNjNwRxwgBKyrlOURtePsDT13vA%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=bNjNwRxwgBKyrlOURtePsDT13vA%3D\";}s:23:\"gravityformsgetresponse\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";s:3:\"url\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dvJ3d%2BUgZU9yjREL4WIm%2FLore0c%3D\";s:10:\"url_latest\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dvJ3d%2BUgZU9yjREL4WIm%2FLore0c%3D\";}s:21:\"gravityformsgutenberg\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-rc-1.4\";s:14:\"version_latest\";s:10:\"1.0-rc-1.5\";s:3:\"url\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=SVT6lGIjABpyVtO1gmAuZ4VjLjw%3D\";s:10:\"url_latest\";s:191:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=XcrFXPan4txS97GLZh1Rl%2B00x%2Fs%3D\";}s:21:\"gravityformshelpscout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zHNPIRwmjFcdoitRbOAzcLNfD7M%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=zHNPIRwmjFcdoitRbOAzcLNfD7M%3D\";}s:20:\"gravityformshighrise\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=C0gjwQ2DGb2Pc4KTl2ODp4GCALA%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=C0gjwQ2DGb2Pc4KTl2ODp4GCALA%3D\";}s:19:\"gravityformshipchat\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";}s:19:\"gravityformshubspot\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Wqmo2CiSFvx3qW5fc%2BbLgw2fV44%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.5.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Luck7KfXcVljSPO5wKQ28linFD4%3D\";}s:20:\"gravityformsicontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Rvmqgpui%2Fop%2F8vlUt%2F9DR8kvUA4%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Rvmqgpui%2Fop%2F8vlUt%2F9DR8kvUA4%3D\";}s:19:\"gravityformslogging\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=tsvtcnHwRaFGios5qspMPV6925c%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=%2FBjBfrq5i5VPO8euy%2FpiNp%2B1vNg%3D\";}s:19:\"gravityformsmadmimi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=wl4h2odsVtYbFC1vVcBjZUkCo74%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=wl4h2odsVtYbFC1vVcBjZUkCo74%3D\";}s:21:\"gravityformsmailchimp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"5.0\";s:14:\"version_latest\";s:3:\"5.0\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_5.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Bz1PUS%2BlVDFbcb4%2Ff6HP1wkNbmU%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_5.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=Bz1PUS%2BlVDFbcb4%2Ff6HP1wkNbmU%3D\";}s:19:\"gravityformsmailgun\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5Q6HFlnOe2n73OmsMHaj2Zf%2FDjc%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5Q6HFlnOe2n73OmsMHaj2Zf%2FDjc%3D\";}s:18:\"gravityformsmollie\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mollie/gravityformsmollie_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=S2cgMvdjcXI%2BCLXemWvsyUdpH%2Fc%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mollie/gravityformsmollie_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=S2cgMvdjcXI%2BCLXemWvsyUdpH%2Fc%3D\";}s:26:\"gravityformspartialentries\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:5:\"1.6.1\";s:3:\"url\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=uewqZUZ9gLlB8Tcq1%2BZpqt0Zqww%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.6.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MJLy6Xq%2Fu2VPTzmxXXU5DuSBsFs%3D\";}s:18:\"gravityformspaypal\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.5\";s:14:\"version_latest\";s:3:\"3.5\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=oJs%2BSYunuKjQlTvQKdNJNU3WR%2FE%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=oJs%2BSYunuKjQlTvQKdNJNU3WR%2FE%3D\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:3:\"2.7\";s:3:\"url\";s:198:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=AGRV99mbRIcXcHg9%2F0b4OBKwdrU%3D\";s:10:\"url_latest\";s:198:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=AGRV99mbRIcXcHg9%2F0b4OBKwdrU%3D\";}s:21:\"gravityformspaypalpro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.4\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=vE1KyKLXojqo%2BeB%2FVc1O0d0djPI%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=IIo2tfF2Ps9gduCSRYDIABRe8po%3D\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=3M7yh5EuufI3nJ48YLw2OOwJBBA%3D\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=QWOxrvQl0JLS61G9C16tKgNNoIw%3D\";}s:17:\"gravityformspolls\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:3:\"3.9\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hIlXshvlry5BshdJTRh6HQkiZYk%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=hIlXshvlry5BshdJTRh6HQkiZYk%3D\";}s:20:\"gravityformspostmark\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=HdOccnJPm1LJLJx0ql8oXBmU1uA%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=HdOccnJPm1LJLJx0ql8oXBmU1uA%3D\";}s:16:\"gravityformsppcp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.2\";s:14:\"version_latest\";s:3:\"2.2\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/ppcp/gravityformsppcp_2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ZxSr8n%2B%2B6%2FtOVNVn4GSttQfN16I%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/ppcp/gravityformsppcp_2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ZxSr8n%2B%2B6%2FtOVNVn4GSttQfN16I%3D\";}s:16:\"gravityformsquiz\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:5:\"3.7.2\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=2qWpqgMgQuJs6tN%2FD579c0kzHDk%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.7.2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=pU%2FQI6zPl%2BTpZmHZBwyRAKrz1Sg%3D\";}s:21:\"gravityformsrecaptcha\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/recaptcha/gravityformsrecaptcha_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=svYUfhRwNyfuP7beS2CnktcTZ%2BU%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/recaptcha/gravityformsrecaptcha_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=svYUfhRwNyfuP7beS2CnktcTZ%2BU%3D\";}s:19:\"gravityformsrestapi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";s:3:\"url\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=CZe181HS10PKpV9XYvvonSfeUBg%3D\";s:10:\"url_latest\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=CZe181HS10PKpV9XYvvonSfeUBg%3D\";}s:20:\"gravityformssendgrid\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=YAf986Oy%2Bkp5vsJ%2FwTaRN70niaM%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=YAf986Oy%2Bkp5vsJ%2FwTaRN70niaM%3D\";}s:21:\"gravityformssignature\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:3:\"4.1\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=WlsE1LLUKOZaDIPUPIlnPDOl5BA%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=WlsE1LLUKOZaDIPUPIlnPDOl5BA%3D\";}s:17:\"gravityformsslack\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MltWWXwncGmIKgalRBIBMXkqUCQ%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=MltWWXwncGmIKgalRBIBMXkqUCQ%3D\";}s:18:\"gravityformssquare\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.4\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/square/gravityformssquare_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=2Q93rb8bohJCESWXZyEmEcBVNXk%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/square/gravityformssquare_1.4.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=ibxDzD9xq%2BdSlREuNhip%2BDsQGFs%3D\";}s:18:\"gravityformsstripe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:3:\"4.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=tbP4K0rAVtLu%2FjcZ3sBoJnOeIuE%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=tbP4K0rAVtLu%2FjcZ3sBoJnOeIuE%3D\";}s:18:\"gravityformssurvey\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dkYt2fKuN3%2FmIWbn%2FdBA8hKOvM4%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=dkYt2fKuN3%2FmIWbn%2FdBA8hKOvM4%3D\";}s:18:\"gravityformstrello\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=w9Gu3%2FEv8eXJSsANHYHYDlSlPJ4%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=w9Gu3%2FEv8eXJSsANHYHYDlSlPJ4%3D\";}s:18:\"gravityformstwilio\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:3:\"2.8\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=cL4LT2h0ovhwoyJJCC5OH0qDGtU%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=cL4LT2h0ovhwoyJJCC5OH0qDGtU%3D\";}s:28:\"gravityformsuserregistration\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.8\";s:14:\"version_latest\";s:5:\"4.8.4\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.8.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=kdRuOwHZCpsa1GflOeD9GAwobqM%3D\";s:10:\"url_latest\";s:200:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.8.4.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=39QnC1gB%2BdUPxUQIdy%2B5NLq33to%3D\";}s:20:\"gravityformswebhooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=6BayM5I%2FstFAOs8l6k2NfhxSUS4%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=6BayM5I%2FstFAOs8l6k2NfhxSUS4%3D\";}s:18:\"gravityformszapier\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:5:\"4.1.1\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=P2VZvI1lb1SrbeQt4fLhc5bNVys%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_4.1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=FftIOgdUHPrfTOzI0TbGvctpdnQ%3D\";}s:19:\"gravityformszohocrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"1.13\";s:14:\"version_latest\";s:6:\"1.13.1\";s:3:\"url\";s:185:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.13.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PxZ%2F4qdPnCfdtE7W9T4e9%2FTMc%2BU%3D\";s:10:\"url_latest\";s:185:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.13.1.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=PxZ%2F4qdPnCfdtE7W9T4e9%2FTMc%2BU%3D\";}}s:9:\"is_active\";s:1:\"1\";s:12:\"product_code\";s:5:\"GFDEV\";s:14:\"version_latest\";s:6:\"2.5.12\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.12.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633311720&Signature=5qrPfc4nqio8NuMII0m4v%2F3%2Fcr0%3D\";s:9:\"timestamp\";i:1633138914;}','no');
INSERT INTO `wp_options` VALUES (472,'rg_gforms_message','<!--GFM-->','yes');
INSERT INTO `wp_options` VALUES (473,'rg_gforms_disable_css','1','yes');
INSERT INTO `wp_options` VALUES (474,'_transient_timeout_GFCache_f52051f983be3894bd471cab8b90fc0a','1633139209','no');
INSERT INTO `wp_options` VALUES (475,'_transient_GFCache_f52051f983be3894bd471cab8b90fc0a','1','no');
INSERT INTO `wp_options` VALUES (482,'_transient_timeout_GFCache_66520da53f530125e3415739268939ef','1633141433','no');
INSERT INTO `wp_options` VALUES (483,'_transient_GFCache_66520da53f530125e3415739268939ef','1','no');
INSERT INTO `wp_options` VALUES (488,'gform_email_count','13','yes');
INSERT INTO `wp_options` VALUES (576,'_transient_timeout_GFCache_6d20af40b8951059c8dba054a7aecf0a','1633140644','no');
INSERT INTO `wp_options` VALUES (577,'_transient_GFCache_6d20af40b8951059c8dba054a7aecf0a','1','no');
INSERT INTO `wp_options` VALUES (598,'_transient_timeout_GFCache_dcff7e2d467df8a3785ca54256efc555','1633141188','no');
INSERT INTO `wp_options` VALUES (599,'_transient_GFCache_dcff7e2d467df8a3785ca54256efc555','1','no');
INSERT INTO `wp_options` VALUES (632,'_transient_timeout_GFCache_fed48dbe645e5b29419d829c78a541d2','1633141336','no');
INSERT INTO `wp_options` VALUES (633,'_transient_GFCache_fed48dbe645e5b29419d829c78a541d2','a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:11:\"entry_count\";s:2:\"13\";}}','no');
INSERT INTO `wp_options` VALUES (634,'_transient_timeout_GFCache_9f79aa63d9ac07ff0ed312db4a3ba488','1633141336','no');
INSERT INTO `wp_options` VALUES (635,'_transient_GFCache_9f79aa63d9ac07ff0ed312db4a3ba488','a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:10:\"view_count\";s:2:\"16\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1633055973:1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_wp_page_template','page-templates/template-home.php');
INSERT INTO `wp_postmeta` VALUES (5,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (6,5,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (7,5,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (8,5,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (9,5,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (10,6,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (11,6,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (12,6,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (13,6,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (14,5,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (15,5,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (18,8,'_edit_lock','1632859815:1');
INSERT INTO `wp_postmeta` VALUES (19,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (26,61,'_wp_attached_file','2021/09/favicon.png');
INSERT INTO `wp_postmeta` VALUES (27,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:515;s:6:\"height\";i:513;s:4:\"file\";s:19:\"2021/09/favicon.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (28,62,'_wp_attached_file','2021/09/cropped-favicon.png');
INSERT INTO `wp_postmeta` VALUES (29,62,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (30,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2021/09/cropped-favicon.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (31,63,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (32,63,'_wp_trash_meta_time','1632861070');
INSERT INTO `wp_postmeta` VALUES (33,64,'_edit_lock','1632936267:1');
INSERT INTO `wp_postmeta` VALUES (34,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (35,64,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (36,64,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (37,64,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (38,64,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (39,65,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (40,65,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (41,65,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (42,65,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (43,64,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (44,64,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (45,66,'_edit_lock','1632936297:1');
INSERT INTO `wp_postmeta` VALUES (46,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (47,66,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (48,66,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (49,66,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (50,66,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (51,67,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (52,67,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (53,67,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (54,67,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (55,66,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (56,66,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (57,68,'_edit_lock','1633115305:1');
INSERT INTO `wp_postmeta` VALUES (58,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,68,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (60,68,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (61,68,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (62,68,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (63,69,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (64,69,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (65,69,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (66,69,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (67,68,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (68,68,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (69,70,'_edit_lock','1632936342:1');
INSERT INTO `wp_postmeta` VALUES (70,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (71,70,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (72,70,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (73,70,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (74,70,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (75,71,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (76,71,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (77,71,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (78,71,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (79,70,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (80,70,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (81,72,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,72,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,72,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (84,72,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,72,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,72,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,72,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,72,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,73,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,73,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,73,'_menu_item_object_id','64');
INSERT INTO `wp_postmeta` VALUES (93,73,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,73,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,73,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,73,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,73,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,75,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (109,75,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (110,75,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (111,75,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (112,75,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,75,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,75,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,75,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,76,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (118,76,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (119,76,'_menu_item_object_id','68');
INSERT INTO `wp_postmeta` VALUES (120,76,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (121,76,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (122,76,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (123,76,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (124,76,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (126,77,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (127,77,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (128,77,'_menu_item_object_id','70');
INSERT INTO `wp_postmeta` VALUES (129,77,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (130,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (131,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (132,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (133,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (215,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (216,87,'_edit_lock','1633115107:1');
INSERT INTO `wp_postmeta` VALUES (217,5,'section_one_wistia_video_id','dsqtgjeu3h');
INSERT INTO `wp_postmeta` VALUES (218,5,'_section_one_wistia_video_id','field_61566d96e8562');
INSERT INTO `wp_postmeta` VALUES (219,90,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (220,90,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (221,90,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (222,90,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (223,90,'section_one_wistia_video_id','dsqtgjeu3h');
INSERT INTO `wp_postmeta` VALUES (224,90,'_section_one_wistia_video_id','field_61566d96e8562');
INSERT INTO `wp_postmeta` VALUES (225,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,93,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (227,93,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (228,93,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (229,93,'disable_sidebar','');
INSERT INTO `wp_postmeta` VALUES (230,93,'_disable_sidebar','field_5ef0f660ad8a4');
INSERT INTO `wp_postmeta` VALUES (231,93,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (232,93,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (233,93,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (234,93,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (235,94,'disable_sidebar','');
INSERT INTO `wp_postmeta` VALUES (236,94,'_disable_sidebar','field_5ef0f660ad8a4');
INSERT INTO `wp_postmeta` VALUES (237,94,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (238,94,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (239,94,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (240,94,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (241,93,'_edit_lock','1633115343:1');
INSERT INTO `wp_postmeta` VALUES (251,72,'_wp_old_date','2021-09-29');
INSERT INTO `wp_postmeta` VALUES (252,73,'_wp_old_date','2021-09-29');
INSERT INTO `wp_postmeta` VALUES (253,75,'_wp_old_date','2021-09-29');
INSERT INTO `wp_postmeta` VALUES (255,76,'_wp_old_date','2021-09-29');
INSERT INTO `wp_postmeta` VALUES (257,77,'_wp_old_date','2021-09-29');
INSERT INTO `wp_postmeta` VALUES (267,72,'_wp_old_date','2021-10-01');
INSERT INTO `wp_postmeta` VALUES (268,73,'_wp_old_date','2021-10-01');
INSERT INTO `wp_postmeta` VALUES (269,75,'_wp_old_date','2021-10-01');
INSERT INTO `wp_postmeta` VALUES (270,76,'_wp_old_date','2021-10-01');
INSERT INTO `wp_postmeta` VALUES (271,77,'_wp_old_date','2021-10-01');
INSERT INTO `wp_postmeta` VALUES (272,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,97,'_edit_lock','1633138877:1');
INSERT INTO `wp_postmeta` VALUES (274,97,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (275,97,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (276,97,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (277,97,'disable_sidebar','');
INSERT INTO `wp_postmeta` VALUES (278,97,'_disable_sidebar','field_5ef0f660ad8a4');
INSERT INTO `wp_postmeta` VALUES (279,97,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (280,97,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (281,97,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (282,97,'_sm_custom_menu','field_5c366a82c27f7');
INSERT INTO `wp_postmeta` VALUES (283,98,'disable_sidebar','');
INSERT INTO `wp_postmeta` VALUES (284,98,'_disable_sidebar','field_5ef0f660ad8a4');
INSERT INTO `wp_postmeta` VALUES (285,98,'sm_custom_title','');
INSERT INTO `wp_postmeta` VALUES (286,98,'_sm_custom_title','field_5c36777f31fd1');
INSERT INTO `wp_postmeta` VALUES (287,98,'sm_custom_menu','');
INSERT INTO `wp_postmeta` VALUES (288,98,'_sm_custom_menu','field_5c366a82c27f7');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-09-28 18:57:51','2021-09-28 18:57:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-09-28 18:57:51','2021-09-28 18:57:51','',0,'http://playbook.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (4,1,'2021-09-28 18:57:58','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-09-28 18:57:58','0000-00-00 00:00:00','',0,'http://playbook.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-09-28 19:07:07','2021-09-28 19:07:07','','Home','','publish','closed','closed','','home','','','2021-10-01 02:12:57','2021-10-01 02:12:57','',0,'http://playbook.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-09-28 19:07:07','2021-09-28 19:07:07','','Home','','inherit','closed','closed','','5-revision-v1','','','2021-09-28 19:07:07','2021-09-28 19:07:07','',5,'http://playbook.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:4:\"tags\";}s:11:\"description\";s:0:\"\";}','Theme Options','theme-options','publish','closed','closed','','group_5ea1d9248c489','','','2021-09-28 19:18:42','2021-09-28 19:18:42','',0,'http://playbook.local/?p=8',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-09-28 19:15:29','2021-09-28 19:15:29','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Header','','publish','closed','closed','','field_5a42e2ef5aee8','','','2021-09-28 19:15:29','2021-09-28 19:15:29','',8,'http://playbook.local/?post_type=acf-field&p=9',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-09-28 19:15:29','2021-09-28 19:15:29','a:14:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:60;s:9:\"new_lines\";s:0:\"\";s:11:\"show_column\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','Schema Code/ Google Analytics and Other Header Scripts','schema_code','publish','closed','closed','','field_5a42e3275aee9','','','2021-09-28 19:16:58','2021-09-28 19:16:58','',8,'http://playbook.local/?post_type=acf-field&#038;p=14',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-09-28 19:15:29','2021-09-28 19:15:29','a:14:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:60;s:9:\"new_lines\";s:0:\"\";s:11:\"show_column\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','Review CSS','review_css','publish','closed','closed','','field_5ba94c2362b95','','','2021-09-28 19:16:58','2021-09-28 19:16:58','',8,'http://playbook.local/?post_type=acf-field&#038;p=15',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-09-28 19:15:29','2021-09-28 19:15:29','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Footer','','publish','closed','closed','','field_5b9a7e4bc93eb','','','2021-09-28 19:16:58','2021-09-28 19:16:58','',8,'http://playbook.local/?post_type=acf-field&#038;p=16',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:14:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:51:\"Scripts that need to go before the closing body tag\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:11:\"show_column\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','Footer Tracking Scripts','footer_scripts','publish','closed','closed','','field_5b9a7e73c93ec','','','2021-09-28 19:18:42','2021-09-28 19:18:42','',8,'http://playbook.local/?post_type=acf-field&#038;p=35',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Not Found','','publish','closed','closed','','field_5e7400f32eba8','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=44',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:15:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','Not Found Title','not_found_title','publish','closed','closed','','field_5e7400fe2eba9','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=45',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Not Found Content','not_found_content','publish','closed','closed','','field_5e74010e2ebab','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=46',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Fonts','','publish','closed','closed','','field_5e83ce338f953','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=47',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:358:\"Set in quotes: i.e. <br/><br/>\r\nRecently discovered that google font url semicolons (after each weight) are being flagged as errors in chrome console. To correct, replace semicolons with %3B below\r\n<br/><br/>\r\n\'https://fonts.googleapis.com/css2?family=Taviraj&family=Work+Sans:wght@400;500;700&display=swap\'\r\n<br/><br/>\r\n\'https://use.typekit.net/fcn7lzy.css\'\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5ef28270fdabe\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Fonts','fonts','publish','closed','closed','','field_5e83ce4c8f954','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=48',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:13:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;}','Font URL','font_url','publish','closed','closed','','field_5e992d88c3120','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',48,'http://playbook.local/?post_type=acf-field&p=49',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:18:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:585:\"Here are some new techniques that can help page speed scores by hosting google fonts locally. I have seen improvements hosting locally vs hosting through google font\'s cdn. If interested refer to this pdf (feb 2020)<br/><br/> \"/wp-content/themes/pq11/fonts/self-hosted-google-fonts-(Feb 2020).pdf\" or visit <a href=\"https://www.tunetheweb.com/blog/should-you-self-host-google-fonts/\" target=\"_blank\">Should you Self Host Google Fonts?</a><br/><br/>Here is a generator thats helpful <a href=\"https://google-webfonts-helper.herokuapp.com/fonts\" target=\"_blank\">Google Webfonts Helper</a>\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"Yes\";s:3:\"Yes\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Host Google Fonts Locally?','host_google_fonts_locally','publish','closed','closed','','field_5ef28270fdabe','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=50',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5ef28270fdabe\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"Yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:8:\"Add Font\";}','Locally Hosted Google Fonts','locally_hosted_google_fonts_repeater','publish','closed','closed','','field_5f0b6dda3af36','','','2021-09-28 19:18:02','2021-09-28 19:18:02','',8,'http://playbook.local/?post_type=acf-field&#038;p=51',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:13:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;}','Font Family','font_family','publish','closed','closed','','field_5f0b6df63af37','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=52',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:13:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:6:\"normal\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;}','Font Style','font_style','publish','closed','closed','','field_5f0b6e123af38','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=53',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:13:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;}','Font Weight','font_weight','publish','closed','closed','','field_5f0b6e243af39','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=54',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:13:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:4:\"swap\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;}','Font Display','font_display','publish','closed','closed','','field_5f0b6e2e3af3a','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=55',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:15:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','src: local','src: local','publish','closed','closed','','field_5f0b6e4f3af3b','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=56',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:13:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;}','Local','local','publish','closed','closed','','field_5f0b6e713af3c','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=57',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-09-28 19:15:30','2021-09-28 19:15:30','a:14:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:5:\"woff2\";s:11:\"show_column\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','Font File (woff2)','font_file_woff2','publish','closed','closed','','field_5f0b6e823af3d','','','2021-09-28 19:15:30','2021-09-28 19:15:30','',51,'http://playbook.local/?post_type=acf-field&p=58',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-09-28 20:30:59','2021-09-28 20:30:59','','favicon','','inherit','open','closed','','favicon','','','2021-09-28 20:30:59','2021-09-28 20:30:59','',0,'http://playbook.local/wp-content/uploads/2021/09/favicon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-09-28 20:31:05','2021-09-28 20:31:05','http://playbook.local/wp-content/uploads/2021/09/cropped-favicon.png','cropped-favicon.png','','inherit','open','closed','','cropped-favicon-png','','','2021-09-28 20:31:05','2021-09-28 20:31:05','',0,'http://playbook.local/wp-content/uploads/2021/09/cropped-favicon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-09-28 20:31:10','2021-09-28 20:31:10','{\n    \"site_icon\": {\n        \"value\": 62,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-28 20:31:10\"\n    }\n}','','','trash','closed','closed','','82cb5f56-6015-4dfe-9982-8e46f19ccda4','','','2021-09-28 20:31:10','2021-09-28 20:31:10','',0,'http://playbook.local/2021/09/28/82cb5f56-6015-4dfe-9982-8e46f19ccda4/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-09-29 17:24:24','2021-09-29 17:24:24','','About','','publish','closed','closed','','about','','','2021-09-29 17:24:25','2021-09-29 17:24:25','',0,'http://playbook.local/?page_id=64',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-09-29 17:24:24','2021-09-29 17:24:24','','About','','inherit','closed','closed','','64-revision-v1','','','2021-09-29 17:24:24','2021-09-29 17:24:24','',64,'http://playbook.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-09-29 17:24:54','2021-09-29 17:24:54','','Featured Speakers','','publish','closed','closed','','featured-speakers','','','2021-09-29 17:24:55','2021-09-29 17:24:55','',0,'http://playbook.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-09-29 17:24:54','2021-09-29 17:24:54','','Featured Speakers','','inherit','closed','closed','','66-revision-v1','','','2021-09-29 17:24:54','2021-09-29 17:24:54','',66,'http://playbook.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-09-29 17:25:22','2021-09-29 17:25:22','','Recent Episodes','','publish','closed','closed','','recent-episodes','','','2021-09-29 17:25:24','2021-09-29 17:25:24','',0,'http://playbook.local/?page_id=68',0,'page','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-09-29 17:25:22','2021-09-29 17:25:22','','Recent Episodes','','inherit','closed','closed','','68-revision-v1','','','2021-09-29 17:25:22','2021-09-29 17:25:22','',68,'http://playbook.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-09-29 17:25:39','2021-09-29 17:25:39','','Contact','','publish','closed','closed','','contact','','','2021-09-29 17:25:40','2021-09-29 17:25:40','',0,'http://playbook.local/?page_id=70',0,'page','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-09-29 17:25:39','2021-09-29 17:25:39','','Contact','','inherit','closed','closed','','70-revision-v1','','','2021-09-29 17:25:39','2021-09-29 17:25:39','',70,'http://playbook.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-10-02 00:17:58','2021-09-29 17:26:23',' ','','','publish','closed','closed','','72','','','2021-10-02 00:17:58','2021-10-02 00:17:58','',0,'http://playbook.local/?p=72',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-10-02 00:17:58','2021-09-29 17:26:23',' ','','','publish','closed','closed','','73','','','2021-10-02 00:17:58','2021-10-02 00:17:58','',0,'http://playbook.local/?p=73',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-10-02 00:17:58','2021-09-29 17:26:23',' ','','','publish','closed','closed','','75','','','2021-10-02 00:17:58','2021-10-02 00:17:58','',0,'http://playbook.local/?p=75',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-10-02 00:17:58','2021-09-29 17:26:23',' ','','','publish','closed','closed','','76','','','2021-10-02 00:17:58','2021-10-02 00:17:58','',0,'http://playbook.local/?p=76',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-10-02 00:17:58','2021-09-29 18:43:38',' ','','','publish','closed','closed','','77','','','2021-10-02 00:17:58','2021-10-02 00:17:58','',0,'http://playbook.local/?p=77',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-10-01 02:09:28','2021-10-01 02:09:28','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:32:\"page-templates/template-home.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:5:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:14:\"featured_image\";i:3;s:10:\"categories\";i:4;s:4:\"tags\";}s:11:\"description\";s:0:\"\";}','Homepage','homepage','publish','closed','closed','','group_61566d79edf31','','','2021-10-01 02:09:28','2021-10-01 02:09:28','',0,'http://playbook.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-10-01 02:09:28','2021-10-01 02:09:28','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Section One','section_one','publish','closed','closed','','field_61566d84e8561','','','2021-10-01 02:09:28','2021-10-01 02:09:28','',87,'http://playbook.local/?post_type=acf-field&p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-10-01 02:09:28','2021-10-01 02:09:28','a:15:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;}','Section One Wistia Video ID','section_one_wistia_video_id','publish','closed','closed','','field_61566d96e8562','','','2021-10-01 02:09:28','2021-10-01 02:09:28','',87,'http://playbook.local/?post_type=acf-field&p=89',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-10-01 02:11:49','2021-10-01 02:11:49','','Home','','inherit','closed','closed','','5-revision-v1','','','2021-10-01 02:11:49','2021-10-01 02:11:49','',5,'http://playbook.local/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-10-01 19:07:42','2021-10-01 19:07:42','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:2:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}i:1;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:2:\"12\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Disable Sidebar','disable-sidebar','publish','closed','closed','','group_5ef0f65948f2f','','','2021-10-01 19:07:42','2021-10-01 19:07:42','',0,'http://playbook.local/?p=91',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-10-01 19:07:42','2021-10-01 19:07:42','a:18:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"Yes\";s:3:\"Yes\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"show_column\";i:0;s:20:\"show_column_sortable\";i:0;s:18:\"show_column_weight\";i:1000;s:15:\"allow_quickedit\";i:0;s:14:\"allow_bulkedit\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Disable Sidebar','disable_sidebar','publish','closed','closed','','field_5ef0f660ad8a4','','','2021-10-01 19:07:42','2021-10-01 19:07:42','',91,'http://playbook.local/?post_type=acf-field&p=92',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-10-01 19:11:18','2021-10-01 19:11:18','','Page Example','','publish','closed','closed','','page-example','','','2021-10-01 19:11:18','2021-10-01 19:11:18','',0,'http://playbook.local/?page_id=93',0,'page','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-10-01 19:11:18','2021-10-01 19:11:18','','Page Example','','inherit','closed','closed','','93-revision-v1','','','2021-10-01 19:11:18','2021-10-01 19:11:18','',93,'http://playbook.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-10-02 01:43:35','2021-10-02 01:43:35','Thank you for your submission, we will contact you shortly.','Thank You','','publish','closed','closed','','thank-you','','','2021-10-02 01:43:35','2021-10-02 01:43:35','',0,'http://playbook.local/?page_id=97',0,'page','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-10-02 01:43:35','2021-10-02 01:43:35','Thank you for your submission, we will contact you shortly.','Thank You','','inherit','closed','closed','','97-revision-v1','','','2021-10-02 01:43:35','2021-10-02 01:43:35','',97,'http://playbook.local/?p=98',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simple_history`
--

DROP TABLE IF EXISTS `wp_simple_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_simple_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `logger` varchar(30) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `occasionsID` varchar(32) DEFAULT NULL,
  `initiator` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `loggerdate` (`logger`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simple_history`
--

LOCK TABLES `wp_simple_history` WRITE;
/*!40000 ALTER TABLE `wp_simple_history` DISABLE KEYS */;
INSERT INTO `wp_simple_history` VALUES (1,'2021-09-28 18:59:07','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','af0988b705153fe2b66eb2199cd604b3','wp_user');
INSERT INTO `wp_simple_history` VALUES (2,'2021-09-28 18:59:07','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','36230ebfed3fb1877c7133784df5defc','wp_user');
INSERT INTO `wp_simple_history` VALUES (3,'2021-09-28 18:59:07','SimpleLogger','info','Because Simple History was only recently installed, this feed does not display many events yet. As long as the plugin remains activated you will soon see detailed information about page edits, plugin updates, users logging in, and much more.','2ad0ab965d6728820180feeaab627fcf','wp');
INSERT INTO `wp_simple_history` VALUES (4,'2021-09-28 18:59:07','SimpleLogger','info','Welcome to Simple History!\n\nThis is the main history feed. It will contain events that this plugin has logged.','0c4babaacbe315745cbb536eaa41278c','wp');
INSERT INTO `wp_simple_history` VALUES (5,'2021-09-28 18:59:08','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','af0988b705153fe2b66eb2199cd604b3','wp');
INSERT INTO `wp_simple_history` VALUES (6,'2021-09-28 18:59:08','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','36230ebfed3fb1877c7133784df5defc','wp');
INSERT INTO `wp_simple_history` VALUES (7,'2021-09-28 19:06:02','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','505f1fec0c78fb3edafe392727788a47','wp');
INSERT INTO `wp_simple_history` VALUES (8,'2021-09-28 19:06:02','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','439e2621279a949309013ecf78554e18','wp');
INSERT INTO `wp_simple_history` VALUES (9,'2021-09-28 19:06:09','SimpleThemeLogger','info','Switched theme to \"{theme_name}\" from \"{prev_theme_name}\"','a093e429410321507dbae70e25d29e5f','wp_user');
INSERT INTO `wp_simple_history` VALUES (10,'2021-09-28 19:07:07','SimplePostLogger','info','Created {post_type} \"{post_title}\"','ed1293919269153d9a86b0c525f8badd','wp_user');
INSERT INTO `wp_simple_history` VALUES (11,'2021-09-28 19:15:12','SimpleMediaLogger','info','Created {post_type} \"{attachment_title}\"','11e9bf7e9856026e4bbc263ec3c270bd','wp_user');
INSERT INTO `wp_simple_history` VALUES (12,'2021-09-28 19:15:29','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','52a44fe6dff4b3a7ec128a6fec3b9061','wp_user');
INSERT INTO `wp_simple_history` VALUES (13,'2021-09-28 19:15:30','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','52a44fe6dff4b3a7ec128a6fec3b9061','wp_user');
INSERT INTO `wp_simple_history` VALUES (14,'2021-09-28 19:16:58','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','52a44fe6dff4b3a7ec128a6fec3b9061','wp_user');
INSERT INTO `wp_simple_history` VALUES (15,'2021-09-28 19:18:02','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','52a44fe6dff4b3a7ec128a6fec3b9061','wp_user');
INSERT INTO `wp_simple_history` VALUES (16,'2021-09-28 19:18:42','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','52a44fe6dff4b3a7ec128a6fec3b9061','wp_user');
INSERT INTO `wp_simple_history` VALUES (17,'2021-09-28 20:28:31','SimpleOptionsLogger','info','Updated option \"{option}\"','212da39e38cf013809e8805ecda8826b','wp_user');
INSERT INTO `wp_simple_history` VALUES (18,'2021-09-28 20:28:31','SimpleOptionsLogger','info','Updated option \"{option}\"','8e9a7a6583c8d763ae92fcdb74e74da3','wp_user');
INSERT INTO `wp_simple_history` VALUES (19,'2021-09-28 20:28:43','SimplePostLogger','info','Moved {post_type} \"{post_title}\" to the trash','f3b88a42d785a60f89d81734db264cea','wp_user');
INSERT INTO `wp_simple_history` VALUES (20,'2021-09-28 20:28:43','SimplePostLogger','info','Moved {post_type} \"{post_title}\" to the trash','e269fbd6ff3952a8470cdf4df99a31fa','wp_user');
INSERT INTO `wp_simple_history` VALUES (21,'2021-09-28 20:28:54','SimplePostLogger','info','Deleted {post_type} \"{post_title}\"','77b4c755e7aecb03f858a360a05d1aa9','wp_user');
INSERT INTO `wp_simple_history` VALUES (22,'2021-09-28 20:28:54','SimplePostLogger','info','Deleted {post_type} \"{post_title}\"','4977525e458ac9848c7bef7f057514df','wp_user');
INSERT INTO `wp_simple_history` VALUES (23,'2021-09-28 20:30:59','SimpleMediaLogger','info','Created {post_type} \"{attachment_title}\"','4232568c12193214a0de155bbb653bc3','wp_user');
INSERT INTO `wp_simple_history` VALUES (24,'2021-09-28 20:31:05','SimpleMediaLogger','info','Created {post_type} \"{attachment_title}\"','73feb48591429168cb8108fbe3375093','wp_user');
INSERT INTO `wp_simple_history` VALUES (25,'2021-09-28 20:31:10','SimpleThemeLogger','info','Customized theme appearance \"{setting_id}\"','a09d10d71998d8dc9defa058924182eb','wp_user');
INSERT INTO `wp_simple_history` VALUES (26,'2021-09-28 20:31:10','SimplePostLogger','info','Moved {post_type} \"{post_title}\" to the trash','3be53f033606372b0c27d53fa716a7d1','wp_user');
INSERT INTO `wp_simple_history` VALUES (27,'2021-09-28 20:31:10','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','e4bc32fe075961597d94d0bc1b740d7b','wp_user');
INSERT INTO `wp_simple_history` VALUES (28,'2021-09-29 17:24:24','SimplePostLogger','info','Created {post_type} \"{post_title}\"','160bcec9edeefb0213f748544cb6936c','wp_user');
INSERT INTO `wp_simple_history` VALUES (29,'2021-09-29 17:24:54','SimplePostLogger','info','Created {post_type} \"{post_title}\"','e43209ba63179216c7e43ddcc5cc71b1','wp_user');
INSERT INTO `wp_simple_history` VALUES (30,'2021-09-29 17:25:22','SimplePostLogger','info','Created {post_type} \"{post_title}\"','f2fe0245fc2c0208521ddaab66a03209','wp_user');
INSERT INTO `wp_simple_history` VALUES (31,'2021-09-29 17:25:39','SimplePostLogger','info','Created {post_type} \"{post_title}\"','4f444dcf11d4a668328b6cec0ff9144f','wp_user');
INSERT INTO `wp_simple_history` VALUES (32,'2021-09-29 17:26:23','SimpleCategoriesLogger','info','Added term \"{term_name}\" in taxonomy \"{term_taxonomy}\"','7758d3f90d6b0a87305dfb06c92cc151','wp_user');
INSERT INTO `wp_simple_history` VALUES (33,'2021-09-29 17:26:23','SimpleMenuLogger','info','Created menu \"{menu_name}\"','6044f1ada107892a3bcb0e3a15e3e2c3','wp_user');
INSERT INTO `wp_simple_history` VALUES (34,'2021-09-29 17:26:29','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','cb18950ed6bedf3e60f8c74c8ee51726','wp_user');
INSERT INTO `wp_simple_history` VALUES (35,'2021-09-29 17:26:29','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (36,'2021-09-29 18:43:38','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','39f46f77a05f85eaa8cb2d2bbea2465d','wp_user');
INSERT INTO `wp_simple_history` VALUES (37,'2021-09-29 18:43:38','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (38,'2021-09-29 18:46:28','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','79b5b44b1e06b68ae1319044ee24c2f0','wp_user');
INSERT INTO `wp_simple_history` VALUES (39,'2021-09-29 18:46:28','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (40,'2021-09-29 18:56:58','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','79b5b44b1e06b68ae1319044ee24c2f0','wp_user');
INSERT INTO `wp_simple_history` VALUES (41,'2021-09-29 18:56:58','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (42,'2021-09-29 19:02:29','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','363af98bde1c2b023bf751dd0624d50c','wp_user');
INSERT INTO `wp_simple_history` VALUES (43,'2021-09-29 19:02:29','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (44,'2021-09-29 19:15:32','SimplePostLogger','info','Deleted {post_type} \"{post_title}\"','9ab09e4ae39f594038519a788c7f1567','wp');
INSERT INTO `wp_simple_history` VALUES (45,'2021-09-30 17:50:29','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','85794bc3a353b025f9dc06b820bdfe5f','wp');
INSERT INTO `wp_simple_history` VALUES (46,'2021-09-30 19:34:20','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','fce7a0dc13bf3d9874aef39ecbc7d2b7','wp');
INSERT INTO `wp_simple_history` VALUES (47,'2021-10-01 02:07:25','SimpleUserLogger','info','Logged in','761493480308beaf7d4b50e5e4e63cd9','wp_user');
INSERT INTO `wp_simple_history` VALUES (48,'2021-10-01 02:07:40','SimplePluginLogger','info','Updated plugin \"{plugin_name}\" to {plugin_version} from {plugin_prev_version}','a6851a447b1d1aa6234a573c42dcbcc5','wp_user');
INSERT INTO `wp_simple_history` VALUES (49,'2021-10-01 02:07:47','SimplePluginLogger','info','Updated plugin \"{plugin_name}\" to {plugin_version} from {plugin_prev_version}','8bf2d75c33c4fbc7c2e1806752151467','wp_user');
INSERT INTO `wp_simple_history` VALUES (50,'2021-10-01 02:09:28','SimplePostLogger','info','Created {post_type} \"{post_title}\"','c0d533ac4d3ee6362a1f72bd2e8a0354','wp_user');
INSERT INTO `wp_simple_history` VALUES (51,'2021-10-01 02:09:59','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','7009d2946057356f08ed9b6e7587453e','wp_user');
INSERT INTO `wp_simple_history` VALUES (52,'2021-10-01 02:11:49','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','a2b47499221729994c0d26a8628ee98c','wp_user');
INSERT INTO `wp_simple_history` VALUES (53,'2021-10-01 02:12:57','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','a2b47499221729994c0d26a8628ee98c','wp_user');
INSERT INTO `wp_simple_history` VALUES (54,'2021-10-01 18:49:32','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','16dfe831467a5cecffdf32f7df999c95','wp');
INSERT INTO `wp_simple_history` VALUES (55,'2021-10-01 18:49:33','AvailableUpdatesLogger','notice','Found an update to plugin \"{plugin_name}\"','7d4fcc9eddf35d245b704aaf63b4610e','wp');
INSERT INTO `wp_simple_history` VALUES (56,'2021-10-01 19:07:42','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','e09ab5cf9024202ddff5605548923e7d','wp_user');
INSERT INTO `wp_simple_history` VALUES (57,'2021-10-01 19:07:42','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','e09ab5cf9024202ddff5605548923e7d','wp_user');
INSERT INTO `wp_simple_history` VALUES (58,'2021-10-01 19:10:10','SimpleOptionsLogger','info','Updated option \"{option}\"','643f9a7b7fb82aa93ddfff7ca011e87c','wp_user');
INSERT INTO `wp_simple_history` VALUES (59,'2021-10-01 19:11:18','SimplePostLogger','info','Created {post_type} \"{post_title}\"','4b8ab12993844ae4d9c7c330d20e2f2f','wp_user');
INSERT INTO `wp_simple_history` VALUES (60,'2021-10-01 19:12:02','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','b5ad3c48ba081c0ebfcd6de32a724fd1','wp_user');
INSERT INTO `wp_simple_history` VALUES (61,'2021-10-01 19:12:02','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (62,'2021-10-01 22:59:43','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','c226868ecbf8234114a4d0eb1ccf7971','wp_user');
INSERT INTO `wp_simple_history` VALUES (63,'2021-10-01 22:59:43','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (64,'2021-10-01 23:00:16','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','cb18950ed6bedf3e60f8c74c8ee51726','wp_user');
INSERT INTO `wp_simple_history` VALUES (65,'2021-10-01 23:00:16','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (66,'2021-10-01 23:00:36','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','cb18950ed6bedf3e60f8c74c8ee51726','wp_user');
INSERT INTO `wp_simple_history` VALUES (67,'2021-10-01 23:00:36','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (68,'2021-10-01 23:05:52','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','79b5b44b1e06b68ae1319044ee24c2f0','wp_user');
INSERT INTO `wp_simple_history` VALUES (69,'2021-10-01 23:05:52','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (70,'2021-10-01 23:07:21','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','d9aa6e1c958bd6dea189f72fbb31cacf','wp_user');
INSERT INTO `wp_simple_history` VALUES (71,'2021-10-01 23:07:21','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (72,'2021-10-02 00:09:03','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','d9aa6e1c958bd6dea189f72fbb31cacf','wp_user');
INSERT INTO `wp_simple_history` VALUES (73,'2021-10-02 00:09:03','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','a8a3e29e40c889dd3aa52279daf5120d','wp_user');
INSERT INTO `wp_simple_history` VALUES (74,'2021-10-02 00:17:58','SimpleMenuLogger','info','Edited menu \"{menu_name}\"','e0b8a8e74955af234c0e9c6ab512d5e4','wp_user');
INSERT INTO `wp_simple_history` VALUES (75,'2021-10-02 00:17:58','SimpleCategoriesLogger','info','Edited term \"{to_term_name}\" in taxonomy \"{to_term_taxonomy}\"','1362b233187d70bfce12bb943e8b0909','wp_user');
INSERT INTO `wp_simple_history` VALUES (76,'2021-10-02 01:43:32','SimplePostLogger','info','Created {post_type} \"{post_title}\"','d80c9515e7f870b781b88965b11ecb9e','wp_user');
INSERT INTO `wp_simple_history` VALUES (77,'2021-10-02 01:43:35','SimplePostLogger','info','Updated {post_type} \"{post_title}\"','f97620ab72e93b002bb9e4e2b0125fe0','wp_user');
/*!40000 ALTER TABLE `wp_simple_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simple_history_contexts`
--

DROP TABLE IF EXISTS `wp_simple_history_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_simple_history_contexts` (
  `context_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `history_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`context_id`),
  KEY `history_id` (`history_id`),
  KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simple_history_contexts`
--

LOCK TABLES `wp_simple_history_contexts` WRITE;
/*!40000 ALTER TABLE `wp_simple_history_contexts` DISABLE KEYS */;
INSERT INTO `wp_simple_history_contexts` VALUES (1,1,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (2,1,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (3,1,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (4,1,'plugin_version','2.42.0');
INSERT INTO `wp_simple_history_contexts` VALUES (5,1,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (6,1,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (7,1,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (8,1,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (9,1,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (10,1,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (11,1,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (12,2,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (13,2,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (14,2,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (15,2,'plugin_version','2.42.0');
INSERT INTO `wp_simple_history_contexts` VALUES (16,2,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (17,2,'plugin_slug','simple-history');
INSERT INTO `wp_simple_history_contexts` VALUES (18,2,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (19,2,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (20,2,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (21,2,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (22,2,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (23,2,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (24,2,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (25,3,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (26,3,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (27,3,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (28,3,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (29,3,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (30,4,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (31,4,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (32,4,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (33,4,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (34,4,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (35,5,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (36,5,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (37,5,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (38,5,'plugin_version','2.42.0');
INSERT INTO `wp_simple_history_contexts` VALUES (39,5,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (40,5,'_message_key','plugin_installed');
INSERT INTO `wp_simple_history_contexts` VALUES (41,5,'_wp_cron_running','true');
INSERT INTO `wp_simple_history_contexts` VALUES (42,5,'_wp_cron_current_filter','simple_history/loggers_loaded');
INSERT INTO `wp_simple_history_contexts` VALUES (43,5,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (44,5,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1632855547.7211890220642089843750');
INSERT INTO `wp_simple_history_contexts` VALUES (45,6,'plugin_name','Simple History');
INSERT INTO `wp_simple_history_contexts` VALUES (46,6,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.');
INSERT INTO `wp_simple_history_contexts` VALUES (47,6,'plugin_url','https://simple-history.com');
INSERT INTO `wp_simple_history_contexts` VALUES (48,6,'plugin_version','2.42.0');
INSERT INTO `wp_simple_history_contexts` VALUES (49,6,'plugin_author','Pär Thernström');
INSERT INTO `wp_simple_history_contexts` VALUES (50,6,'plugin_slug','simple-history');
INSERT INTO `wp_simple_history_contexts` VALUES (51,6,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (52,6,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (53,6,'_wp_cron_running','true');
INSERT INTO `wp_simple_history_contexts` VALUES (54,6,'_wp_cron_current_filter','simple_history/loggers_loaded');
INSERT INTO `wp_simple_history_contexts` VALUES (55,6,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (56,6,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1632855547.7211890220642089843750');
INSERT INTO `wp_simple_history_contexts` VALUES (57,7,'plugin_name','WP Migrate DB Pro');
INSERT INTO `wp_simple_history_contexts` VALUES (58,7,'plugin_current_version','1.9.8');
INSERT INTO `wp_simple_history_contexts` VALUES (59,7,'plugin_new_version','2.1.2');
INSERT INTO `wp_simple_history_contexts` VALUES (60,7,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (61,7,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (62,7,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (63,7,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (64,7,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (65,7,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=acf-field-group&page=acf-settings-updates');
INSERT INTO `wp_simple_history_contexts` VALUES (66,8,'plugin_name','Advanced Custom Fields: Theme Code Pro');
INSERT INTO `wp_simple_history_contexts` VALUES (67,8,'plugin_current_version','1.2.0');
INSERT INTO `wp_simple_history_contexts` VALUES (68,8,'plugin_new_version','2.5.2');
INSERT INTO `wp_simple_history_contexts` VALUES (69,8,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (70,8,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (71,8,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (72,8,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (73,8,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (74,8,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=acf-field-group&page=acf-settings-updates');
INSERT INTO `wp_simple_history_contexts` VALUES (75,9,'theme_name','');
INSERT INTO `wp_simple_history_contexts` VALUES (76,9,'theme_version','');
INSERT INTO `wp_simple_history_contexts` VALUES (77,9,'prev_theme_name','Twenty Twenty-One');
INSERT INTO `wp_simple_history_contexts` VALUES (78,9,'prev_theme_version','1.4');
INSERT INTO `wp_simple_history_contexts` VALUES (79,9,'_message_key','theme_switched');
INSERT INTO `wp_simple_history_contexts` VALUES (80,9,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (81,9,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (82,9,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (83,9,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (84,9,'_server_http_referer','http://playbook.local/wp-admin/themes.php');
INSERT INTO `wp_simple_history_contexts` VALUES (85,10,'post_id','5');
INSERT INTO `wp_simple_history_contexts` VALUES (86,10,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (87,10,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (88,10,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (89,10,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (90,10,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (91,10,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (92,10,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (93,10,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (94,10,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (95,11,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (96,11,'attachment_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (97,11,'attachment_title','acf-export-2021-09-28.json_.txt');
INSERT INTO `wp_simple_history_contexts` VALUES (98,11,'attachment_filename','acf-export-2021-09-28.json_.txt');
INSERT INTO `wp_simple_history_contexts` VALUES (99,11,'attachment_mime','');
INSERT INTO `wp_simple_history_contexts` VALUES (100,11,'attachment_filesize','42460');
INSERT INTO `wp_simple_history_contexts` VALUES (101,11,'_message_key','attachment_created');
INSERT INTO `wp_simple_history_contexts` VALUES (102,11,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (103,11,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (104,11,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (105,11,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (106,11,'_server_http_referer','http://playbook.local/wp-admin/admin.php?import=wordpress');
INSERT INTO `wp_simple_history_contexts` VALUES (107,12,'post_id','8');
INSERT INTO `wp_simple_history_contexts` VALUES (108,12,'post_type','post');
INSERT INTO `wp_simple_history_contexts` VALUES (109,12,'post_title','group_5ea1d9248c489');
INSERT INTO `wp_simple_history_contexts` VALUES (110,12,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (111,12,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (112,12,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (113,12,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (114,12,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (115,12,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=acf-field-group&page=acf-tools');
INSERT INTO `wp_simple_history_contexts` VALUES (116,13,'post_id','8');
INSERT INTO `wp_simple_history_contexts` VALUES (117,13,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (118,13,'post_title','Theme Options');
INSERT INTO `wp_simple_history_contexts` VALUES (119,13,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (120,13,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (121,13,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (122,13,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (123,13,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (124,13,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=acf-field-group&page=acf-tools');
INSERT INTO `wp_simple_history_contexts` VALUES (125,14,'post_id','8');
INSERT INTO `wp_simple_history_contexts` VALUES (126,14,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (127,14,'post_title','Theme Options');
INSERT INTO `wp_simple_history_contexts` VALUES (128,14,'acf_deleted_fields_0_key','field_5e7965c90c086');
INSERT INTO `wp_simple_history_contexts` VALUES (129,14,'acf_deleted_fields_0_name','logo');
INSERT INTO `wp_simple_history_contexts` VALUES (130,14,'acf_deleted_fields_0_label','Logo');
INSERT INTO `wp_simple_history_contexts` VALUES (131,14,'acf_deleted_fields_0_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (132,14,'acf_deleted_fields_1_key','field_614144016e8ca');
INSERT INTO `wp_simple_history_contexts` VALUES (133,14,'acf_deleted_fields_1_name','available_verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (134,14,'acf_deleted_fields_1_label','Available Verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (135,14,'acf_deleted_fields_1_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (136,14,'acf_deleted_fields_2_key','field_614144136e8cb');
INSERT INTO `wp_simple_history_contexts` VALUES (137,14,'acf_deleted_fields_2_name','free_consultation_verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (138,14,'acf_deleted_fields_2_label','Free Consultation Verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (139,14,'acf_deleted_fields_2_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (140,14,'acf_deleted_fields_3_key','field_614144d7d238c');
INSERT INTO `wp_simple_history_contexts` VALUES (141,14,'acf_deleted_fields_3_name','phone');
INSERT INTO `wp_simple_history_contexts` VALUES (142,14,'acf_deleted_fields_3_label','Phone');
INSERT INTO `wp_simple_history_contexts` VALUES (143,14,'acf_deleted_fields_3_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (144,14,'acf_deleted_fields_4_key','field_614146f2a309a');
INSERT INTO `wp_simple_history_contexts` VALUES (145,14,'acf_deleted_fields_4_name','footer_form_title');
INSERT INTO `wp_simple_history_contexts` VALUES (146,14,'acf_deleted_fields_4_label','Footer Form Title');
INSERT INTO `wp_simple_history_contexts` VALUES (147,14,'acf_deleted_fields_4_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (148,14,'acf_deleted_fields_5_key','field_61414706a309b');
INSERT INTO `wp_simple_history_contexts` VALUES (149,14,'acf_deleted_fields_5_name','footer_form_description');
INSERT INTO `wp_simple_history_contexts` VALUES (150,14,'acf_deleted_fields_5_label','Footer Form Description');
INSERT INTO `wp_simple_history_contexts` VALUES (151,14,'acf_deleted_fields_5_type','textarea');
INSERT INTO `wp_simple_history_contexts` VALUES (152,14,'acf_deleted_fields_6_key','field_614147bc4c9c6');
INSERT INTO `wp_simple_history_contexts` VALUES (153,14,'acf_deleted_fields_6_name','footer_title_verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (154,14,'acf_deleted_fields_6_label','Footer Title Verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (155,14,'acf_deleted_fields_6_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (156,14,'acf_deleted_fields_7_key','field_614148337987b');
INSERT INTO `wp_simple_history_contexts` VALUES (157,14,'acf_deleted_fields_7_name','location_title');
INSERT INTO `wp_simple_history_contexts` VALUES (158,14,'acf_deleted_fields_7_label','Location Title');
INSERT INTO `wp_simple_history_contexts` VALUES (159,14,'acf_deleted_fields_7_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (160,14,'acf_deleted_fields_8_key','field_6141484c7987c');
INSERT INTO `wp_simple_history_contexts` VALUES (161,14,'acf_deleted_fields_8_name','address');
INSERT INTO `wp_simple_history_contexts` VALUES (162,14,'acf_deleted_fields_8_label','Address');
INSERT INTO `wp_simple_history_contexts` VALUES (163,14,'acf_deleted_fields_8_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (164,14,'acf_deleted_fields_9_key','field_614148597987d');
INSERT INTO `wp_simple_history_contexts` VALUES (165,14,'acf_deleted_fields_9_name','address_link');
INSERT INTO `wp_simple_history_contexts` VALUES (166,14,'acf_deleted_fields_9_label','Address Link');
INSERT INTO `wp_simple_history_contexts` VALUES (167,14,'acf_deleted_fields_9_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (168,14,'acf_deleted_fields_10_key','field_614148697987e');
INSERT INTO `wp_simple_history_contexts` VALUES (169,14,'acf_deleted_fields_10_name','office_hours_title');
INSERT INTO `wp_simple_history_contexts` VALUES (170,14,'acf_deleted_fields_10_label','Office Hours Title');
INSERT INTO `wp_simple_history_contexts` VALUES (171,14,'acf_deleted_fields_10_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (172,14,'acf_modified_fields_0_ID_prev','14');
INSERT INTO `wp_simple_history_contexts` VALUES (173,14,'acf_modified_fields_0_name_prev','schema_code');
INSERT INTO `wp_simple_history_contexts` VALUES (174,14,'acf_modified_fields_0_label_prev','Schema Code/ Google Analytics and Other Header Scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (175,14,'acf_modified_fields_1_ID_prev','15');
INSERT INTO `wp_simple_history_contexts` VALUES (176,14,'acf_modified_fields_1_name_prev','review_css');
INSERT INTO `wp_simple_history_contexts` VALUES (177,14,'acf_modified_fields_1_label_prev','Review CSS');
INSERT INTO `wp_simple_history_contexts` VALUES (178,14,'acf_modified_fields_2_ID_prev','16');
INSERT INTO `wp_simple_history_contexts` VALUES (179,14,'acf_modified_fields_2_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (180,14,'acf_modified_fields_2_label_prev','Footer');
INSERT INTO `wp_simple_history_contexts` VALUES (181,14,'acf_modified_fields_3_ID_prev','24');
INSERT INTO `wp_simple_history_contexts` VALUES (182,14,'acf_modified_fields_3_name_prev','office_hours');
INSERT INTO `wp_simple_history_contexts` VALUES (183,14,'acf_modified_fields_3_label_prev','Office Hours');
INSERT INTO `wp_simple_history_contexts` VALUES (184,14,'acf_modified_fields_4_ID_prev','25');
INSERT INTO `wp_simple_history_contexts` VALUES (185,14,'acf_modified_fields_4_name_prev','call_today_title');
INSERT INTO `wp_simple_history_contexts` VALUES (186,14,'acf_modified_fields_4_label_prev','Call Today Title');
INSERT INTO `wp_simple_history_contexts` VALUES (187,14,'acf_modified_fields_5_ID_prev','26');
INSERT INTO `wp_simple_history_contexts` VALUES (188,14,'acf_modified_fields_5_name_prev','call_today_content');
INSERT INTO `wp_simple_history_contexts` VALUES (189,14,'acf_modified_fields_5_label_prev','Call Today Content');
INSERT INTO `wp_simple_history_contexts` VALUES (190,14,'acf_modified_fields_6_ID_prev','27');
INSERT INTO `wp_simple_history_contexts` VALUES (191,14,'acf_modified_fields_6_name_prev','social_title');
INSERT INTO `wp_simple_history_contexts` VALUES (192,14,'acf_modified_fields_6_label_prev','Social Title');
INSERT INTO `wp_simple_history_contexts` VALUES (193,14,'acf_modified_fields_7_ID_prev','28');
INSERT INTO `wp_simple_history_contexts` VALUES (194,14,'acf_modified_fields_7_name_prev','facebook_link');
INSERT INTO `wp_simple_history_contexts` VALUES (195,14,'acf_modified_fields_7_label_prev','Facebook Link');
INSERT INTO `wp_simple_history_contexts` VALUES (196,14,'acf_modified_fields_8_ID_prev','29');
INSERT INTO `wp_simple_history_contexts` VALUES (197,14,'acf_modified_fields_8_name_prev','instagram_link');
INSERT INTO `wp_simple_history_contexts` VALUES (198,14,'acf_modified_fields_8_label_prev','Instagram Link');
INSERT INTO `wp_simple_history_contexts` VALUES (199,14,'acf_modified_fields_9_ID_prev','30');
INSERT INTO `wp_simple_history_contexts` VALUES (200,14,'acf_modified_fields_9_name_prev','lawfirm_name');
INSERT INTO `wp_simple_history_contexts` VALUES (201,14,'acf_modified_fields_9_label_prev','Lawfirm Name');
INSERT INTO `wp_simple_history_contexts` VALUES (202,14,'acf_modified_fields_10_ID_prev','31');
INSERT INTO `wp_simple_history_contexts` VALUES (203,14,'acf_modified_fields_10_name_prev','all_rights_reserved');
INSERT INTO `wp_simple_history_contexts` VALUES (204,14,'acf_modified_fields_10_label_prev','All Rights Reserved');
INSERT INTO `wp_simple_history_contexts` VALUES (205,14,'acf_modified_fields_11_ID_prev','32');
INSERT INTO `wp_simple_history_contexts` VALUES (206,14,'acf_modified_fields_11_name_prev','disclaimer_title');
INSERT INTO `wp_simple_history_contexts` VALUES (207,14,'acf_modified_fields_11_label_prev','Disclaimer Title');
INSERT INTO `wp_simple_history_contexts` VALUES (208,14,'acf_modified_fields_12_ID_prev','33');
INSERT INTO `wp_simple_history_contexts` VALUES (209,14,'acf_modified_fields_12_name_prev','disclaimer_link');
INSERT INTO `wp_simple_history_contexts` VALUES (210,14,'acf_modified_fields_12_label_prev','Disclaimer Link');
INSERT INTO `wp_simple_history_contexts` VALUES (211,14,'acf_modified_fields_13_ID_prev','34');
INSERT INTO `wp_simple_history_contexts` VALUES (212,14,'acf_modified_fields_13_name_prev','live_chat');
INSERT INTO `wp_simple_history_contexts` VALUES (213,14,'acf_modified_fields_13_label_prev','Live Chat');
INSERT INTO `wp_simple_history_contexts` VALUES (214,14,'acf_modified_fields_14_ID_prev','35');
INSERT INTO `wp_simple_history_contexts` VALUES (215,14,'acf_modified_fields_14_name_prev','footer_scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (216,14,'acf_modified_fields_14_label_prev','Footer Tracking Scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (217,14,'acf_modified_fields_15_ID_prev','36');
INSERT INTO `wp_simple_history_contexts` VALUES (218,14,'acf_modified_fields_15_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (219,14,'acf_modified_fields_15_label_prev','Global Internal PA Banner');
INSERT INTO `wp_simple_history_contexts` VALUES (220,14,'acf_modified_fields_16_ID_prev','37');
INSERT INTO `wp_simple_history_contexts` VALUES (221,14,'acf_modified_fields_16_name_prev','global_internal_banner_title');
INSERT INTO `wp_simple_history_contexts` VALUES (222,14,'acf_modified_fields_16_label_prev','Global Internal Banner Title');
INSERT INTO `wp_simple_history_contexts` VALUES (223,14,'acf_modified_fields_17_ID_prev','38');
INSERT INTO `wp_simple_history_contexts` VALUES (224,14,'acf_modified_fields_17_name_prev','global_internal_banner_button_verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (225,14,'acf_modified_fields_17_label_prev','Global Internal Banner Button Verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (226,14,'acf_modified_fields_18_ID_prev','39');
INSERT INTO `wp_simple_history_contexts` VALUES (227,14,'acf_modified_fields_18_name_prev','global_internal_banner_image_desktop');
INSERT INTO `wp_simple_history_contexts` VALUES (228,14,'acf_modified_fields_18_label_prev','Global Internal Banner Image Desktop');
INSERT INTO `wp_simple_history_contexts` VALUES (229,14,'acf_modified_fields_19_ID_prev','40');
INSERT INTO `wp_simple_history_contexts` VALUES (230,14,'acf_modified_fields_19_name_prev','global_internal_banner_image_large_laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (231,14,'acf_modified_fields_19_label_prev','Global Internal Banner Image Large Laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (232,14,'acf_modified_fields_20_ID_prev','41');
INSERT INTO `wp_simple_history_contexts` VALUES (233,14,'acf_modified_fields_20_name_prev','global_internal_banner_image_small_laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (234,14,'acf_modified_fields_20_label_prev','Global Internal Banner Image Small Laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (235,14,'acf_modified_fields_21_ID_prev','42');
INSERT INTO `wp_simple_history_contexts` VALUES (236,14,'acf_modified_fields_21_name_prev','global_internal_banner_image_tablet');
INSERT INTO `wp_simple_history_contexts` VALUES (237,14,'acf_modified_fields_21_label_prev','Global Internal Banner Image Tablet');
INSERT INTO `wp_simple_history_contexts` VALUES (238,14,'acf_modified_fields_22_ID_prev','43');
INSERT INTO `wp_simple_history_contexts` VALUES (239,14,'acf_modified_fields_22_name_prev','global_internal_banner_image_mobile');
INSERT INTO `wp_simple_history_contexts` VALUES (240,14,'acf_modified_fields_22_label_prev','Global Internal Banner Image Mobile');
INSERT INTO `wp_simple_history_contexts` VALUES (241,14,'acf_modified_fields_23_ID_prev','44');
INSERT INTO `wp_simple_history_contexts` VALUES (242,14,'acf_modified_fields_23_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (243,14,'acf_modified_fields_23_label_prev','Not Found');
INSERT INTO `wp_simple_history_contexts` VALUES (244,14,'acf_modified_fields_24_ID_prev','45');
INSERT INTO `wp_simple_history_contexts` VALUES (245,14,'acf_modified_fields_24_name_prev','not_found_title');
INSERT INTO `wp_simple_history_contexts` VALUES (246,14,'acf_modified_fields_24_label_prev','Not Found Title');
INSERT INTO `wp_simple_history_contexts` VALUES (247,14,'acf_modified_fields_25_ID_prev','46');
INSERT INTO `wp_simple_history_contexts` VALUES (248,14,'acf_modified_fields_25_name_prev','not_found_content');
INSERT INTO `wp_simple_history_contexts` VALUES (249,14,'acf_modified_fields_25_label_prev','Not Found Content');
INSERT INTO `wp_simple_history_contexts` VALUES (250,14,'acf_modified_fields_26_ID_prev','47');
INSERT INTO `wp_simple_history_contexts` VALUES (251,14,'acf_modified_fields_26_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (252,14,'acf_modified_fields_26_label_prev','Fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (253,14,'acf_modified_fields_27_ID_prev','48');
INSERT INTO `wp_simple_history_contexts` VALUES (254,14,'acf_modified_fields_27_name_prev','fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (255,14,'acf_modified_fields_27_label_prev','Fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (256,14,'acf_modified_fields_28_ID_prev','50');
INSERT INTO `wp_simple_history_contexts` VALUES (257,14,'acf_modified_fields_28_name_prev','host_google_fonts_locally');
INSERT INTO `wp_simple_history_contexts` VALUES (258,14,'acf_modified_fields_28_label_prev','Host Google Fonts Locally?');
INSERT INTO `wp_simple_history_contexts` VALUES (259,14,'acf_modified_fields_29_ID_prev','51');
INSERT INTO `wp_simple_history_contexts` VALUES (260,14,'acf_modified_fields_29_name_prev','locally_hosted_google_fonts_repeater');
INSERT INTO `wp_simple_history_contexts` VALUES (261,14,'acf_modified_fields_29_label_prev','Locally Hosted Google Fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (262,14,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (263,14,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (264,14,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (265,14,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (266,14,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (267,14,'_server_http_referer','http://playbook.local/wp-admin/post.php?post=8&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (268,15,'post_id','8');
INSERT INTO `wp_simple_history_contexts` VALUES (269,15,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (270,15,'post_title','Theme Options');
INSERT INTO `wp_simple_history_contexts` VALUES (271,15,'acf_deleted_fields_0_key','field_614148837987f');
INSERT INTO `wp_simple_history_contexts` VALUES (272,15,'acf_deleted_fields_0_name','office_hours');
INSERT INTO `wp_simple_history_contexts` VALUES (273,15,'acf_deleted_fields_0_label','Office Hours');
INSERT INTO `wp_simple_history_contexts` VALUES (274,15,'acf_deleted_fields_0_type','textarea');
INSERT INTO `wp_simple_history_contexts` VALUES (275,15,'acf_deleted_fields_1_key','field_6141489179880');
INSERT INTO `wp_simple_history_contexts` VALUES (276,15,'acf_deleted_fields_1_name','call_today_title');
INSERT INTO `wp_simple_history_contexts` VALUES (277,15,'acf_deleted_fields_1_label','Call Today Title');
INSERT INTO `wp_simple_history_contexts` VALUES (278,15,'acf_deleted_fields_1_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (279,15,'acf_deleted_fields_2_key','field_614148a279881');
INSERT INTO `wp_simple_history_contexts` VALUES (280,15,'acf_deleted_fields_2_name','call_today_content');
INSERT INTO `wp_simple_history_contexts` VALUES (281,15,'acf_deleted_fields_2_label','Call Today Content');
INSERT INTO `wp_simple_history_contexts` VALUES (282,15,'acf_deleted_fields_2_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (283,15,'acf_deleted_fields_3_key','field_614149908c6e0');
INSERT INTO `wp_simple_history_contexts` VALUES (284,15,'acf_deleted_fields_3_name','social_title');
INSERT INTO `wp_simple_history_contexts` VALUES (285,15,'acf_deleted_fields_3_label','Social Title');
INSERT INTO `wp_simple_history_contexts` VALUES (286,15,'acf_deleted_fields_3_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (287,15,'acf_deleted_fields_4_key','field_61414c10b60d8');
INSERT INTO `wp_simple_history_contexts` VALUES (288,15,'acf_deleted_fields_4_name','facebook_link');
INSERT INTO `wp_simple_history_contexts` VALUES (289,15,'acf_deleted_fields_4_label','Facebook Link');
INSERT INTO `wp_simple_history_contexts` VALUES (290,15,'acf_deleted_fields_4_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (291,15,'acf_deleted_fields_5_key','field_61414c23b60d9');
INSERT INTO `wp_simple_history_contexts` VALUES (292,15,'acf_deleted_fields_5_name','instagram_link');
INSERT INTO `wp_simple_history_contexts` VALUES (293,15,'acf_deleted_fields_5_label','Instagram Link');
INSERT INTO `wp_simple_history_contexts` VALUES (294,15,'acf_deleted_fields_5_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (295,15,'acf_deleted_fields_6_key','field_61414d25c8c4c');
INSERT INTO `wp_simple_history_contexts` VALUES (296,15,'acf_deleted_fields_6_name','lawfirm_name');
INSERT INTO `wp_simple_history_contexts` VALUES (297,15,'acf_deleted_fields_6_label','Lawfirm Name');
INSERT INTO `wp_simple_history_contexts` VALUES (298,15,'acf_deleted_fields_6_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (299,15,'acf_deleted_fields_7_key','field_61414d33c8c4d');
INSERT INTO `wp_simple_history_contexts` VALUES (300,15,'acf_deleted_fields_7_name','all_rights_reserved');
INSERT INTO `wp_simple_history_contexts` VALUES (301,15,'acf_deleted_fields_7_label','All Rights Reserved');
INSERT INTO `wp_simple_history_contexts` VALUES (302,15,'acf_deleted_fields_7_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (303,15,'acf_deleted_fields_8_key','field_61414d44c8c4e');
INSERT INTO `wp_simple_history_contexts` VALUES (304,15,'acf_deleted_fields_8_name','disclaimer_title');
INSERT INTO `wp_simple_history_contexts` VALUES (305,15,'acf_deleted_fields_8_label','Disclaimer Title');
INSERT INTO `wp_simple_history_contexts` VALUES (306,15,'acf_deleted_fields_8_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (307,15,'acf_deleted_fields_9_key','field_61414d52c8c4f');
INSERT INTO `wp_simple_history_contexts` VALUES (308,15,'acf_deleted_fields_9_name','disclaimer_link');
INSERT INTO `wp_simple_history_contexts` VALUES (309,15,'acf_deleted_fields_9_label','Disclaimer Link');
INSERT INTO `wp_simple_history_contexts` VALUES (310,15,'acf_deleted_fields_9_type','page_link');
INSERT INTO `wp_simple_history_contexts` VALUES (311,15,'acf_deleted_fields_10_key','field_5f750b6007075');
INSERT INTO `wp_simple_history_contexts` VALUES (312,15,'acf_deleted_fields_10_name','live_chat');
INSERT INTO `wp_simple_history_contexts` VALUES (313,15,'acf_deleted_fields_10_label','Live Chat');
INSERT INTO `wp_simple_history_contexts` VALUES (314,15,'acf_deleted_fields_10_type','textarea');
INSERT INTO `wp_simple_history_contexts` VALUES (315,15,'acf_deleted_fields_11_key','field_5e7a8290c06e3');
INSERT INTO `wp_simple_history_contexts` VALUES (316,15,'acf_deleted_fields_11_name','');
INSERT INTO `wp_simple_history_contexts` VALUES (317,15,'acf_deleted_fields_11_label','Global Internal PA Banner');
INSERT INTO `wp_simple_history_contexts` VALUES (318,15,'acf_deleted_fields_11_type','tab');
INSERT INTO `wp_simple_history_contexts` VALUES (319,15,'acf_deleted_fields_12_key','field_5f75204b45630');
INSERT INTO `wp_simple_history_contexts` VALUES (320,15,'acf_deleted_fields_12_name','global_internal_banner_title');
INSERT INTO `wp_simple_history_contexts` VALUES (321,15,'acf_deleted_fields_12_label','Global Internal Banner Title');
INSERT INTO `wp_simple_history_contexts` VALUES (322,15,'acf_deleted_fields_12_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (323,15,'acf_deleted_fields_13_key','field_5e7a8790965d4');
INSERT INTO `wp_simple_history_contexts` VALUES (324,15,'acf_deleted_fields_13_name','global_internal_banner_button_verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (325,15,'acf_deleted_fields_13_label','Global Internal Banner Button Verbiage');
INSERT INTO `wp_simple_history_contexts` VALUES (326,15,'acf_deleted_fields_13_type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (327,15,'acf_deleted_fields_14_key','field_5e7a82dec06e5');
INSERT INTO `wp_simple_history_contexts` VALUES (328,15,'acf_deleted_fields_14_name','global_internal_banner_image_desktop');
INSERT INTO `wp_simple_history_contexts` VALUES (329,15,'acf_deleted_fields_14_label','Global Internal Banner Image Desktop');
INSERT INTO `wp_simple_history_contexts` VALUES (330,15,'acf_deleted_fields_14_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (331,15,'acf_deleted_fields_15_key','field_6109cf6e7bbaf');
INSERT INTO `wp_simple_history_contexts` VALUES (332,15,'acf_deleted_fields_15_name','global_internal_banner_image_large_laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (333,15,'acf_deleted_fields_15_label','Global Internal Banner Image Large Laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (334,15,'acf_deleted_fields_15_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (335,15,'acf_deleted_fields_16_key','field_6109cf937bbb0');
INSERT INTO `wp_simple_history_contexts` VALUES (336,15,'acf_deleted_fields_16_name','global_internal_banner_image_small_laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (337,15,'acf_deleted_fields_16_label','Global Internal Banner Image Small Laptop');
INSERT INTO `wp_simple_history_contexts` VALUES (338,15,'acf_deleted_fields_16_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (339,15,'acf_deleted_fields_17_key','field_610adffae4aa5');
INSERT INTO `wp_simple_history_contexts` VALUES (340,15,'acf_deleted_fields_17_name','global_internal_banner_image_tablet');
INSERT INTO `wp_simple_history_contexts` VALUES (341,15,'acf_deleted_fields_17_label','Global Internal Banner Image Tablet');
INSERT INTO `wp_simple_history_contexts` VALUES (342,15,'acf_deleted_fields_17_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (343,15,'acf_deleted_fields_18_key','field_6109cfb07bbb2');
INSERT INTO `wp_simple_history_contexts` VALUES (344,15,'acf_deleted_fields_18_name','global_internal_banner_image_mobile');
INSERT INTO `wp_simple_history_contexts` VALUES (345,15,'acf_deleted_fields_18_label','Global Internal Banner Image Mobile');
INSERT INTO `wp_simple_history_contexts` VALUES (346,15,'acf_deleted_fields_18_type','image');
INSERT INTO `wp_simple_history_contexts` VALUES (347,15,'acf_modified_fields_0_ID_prev','35');
INSERT INTO `wp_simple_history_contexts` VALUES (348,15,'acf_modified_fields_0_name_prev','footer_scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (349,15,'acf_modified_fields_0_label_prev','Footer Tracking Scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (350,15,'acf_modified_fields_1_ID_prev','44');
INSERT INTO `wp_simple_history_contexts` VALUES (351,15,'acf_modified_fields_1_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (352,15,'acf_modified_fields_1_label_prev','Not Found');
INSERT INTO `wp_simple_history_contexts` VALUES (353,15,'acf_modified_fields_2_ID_prev','45');
INSERT INTO `wp_simple_history_contexts` VALUES (354,15,'acf_modified_fields_2_name_prev','not_found_title');
INSERT INTO `wp_simple_history_contexts` VALUES (355,15,'acf_modified_fields_2_label_prev','Not Found Title');
INSERT INTO `wp_simple_history_contexts` VALUES (356,15,'acf_modified_fields_3_ID_prev','46');
INSERT INTO `wp_simple_history_contexts` VALUES (357,15,'acf_modified_fields_3_name_prev','not_found_content');
INSERT INTO `wp_simple_history_contexts` VALUES (358,15,'acf_modified_fields_3_label_prev','Not Found Content');
INSERT INTO `wp_simple_history_contexts` VALUES (359,15,'acf_modified_fields_4_ID_prev','47');
INSERT INTO `wp_simple_history_contexts` VALUES (360,15,'acf_modified_fields_4_name_prev','');
INSERT INTO `wp_simple_history_contexts` VALUES (361,15,'acf_modified_fields_4_label_prev','Fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (362,15,'acf_modified_fields_5_ID_prev','48');
INSERT INTO `wp_simple_history_contexts` VALUES (363,15,'acf_modified_fields_5_name_prev','fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (364,15,'acf_modified_fields_5_label_prev','Fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (365,15,'acf_modified_fields_6_ID_prev','50');
INSERT INTO `wp_simple_history_contexts` VALUES (366,15,'acf_modified_fields_6_name_prev','host_google_fonts_locally');
INSERT INTO `wp_simple_history_contexts` VALUES (367,15,'acf_modified_fields_6_label_prev','Host Google Fonts Locally?');
INSERT INTO `wp_simple_history_contexts` VALUES (368,15,'acf_modified_fields_7_ID_prev','51');
INSERT INTO `wp_simple_history_contexts` VALUES (369,15,'acf_modified_fields_7_name_prev','locally_hosted_google_fonts_repeater');
INSERT INTO `wp_simple_history_contexts` VALUES (370,15,'acf_modified_fields_7_label_prev','Locally Hosted Google Fonts');
INSERT INTO `wp_simple_history_contexts` VALUES (371,15,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (372,15,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (373,15,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (374,15,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (375,15,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (376,15,'_server_http_referer','http://playbook.local/wp-admin/post.php?post=8&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (377,16,'post_id','8');
INSERT INTO `wp_simple_history_contexts` VALUES (378,16,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (379,16,'post_title','Theme Options');
INSERT INTO `wp_simple_history_contexts` VALUES (380,16,'acf_modified_fields_0_ID_prev','35');
INSERT INTO `wp_simple_history_contexts` VALUES (381,16,'acf_modified_fields_0_name_prev','footer_scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (382,16,'acf_modified_fields_0_label_prev','Footer Tracking Scripts');
INSERT INTO `wp_simple_history_contexts` VALUES (383,16,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (384,16,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (385,16,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (386,16,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (387,16,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (388,16,'_server_http_referer','http://playbook.local/wp-admin/post.php?post=8&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (389,17,'option','show_on_front');
INSERT INTO `wp_simple_history_contexts` VALUES (390,17,'old_value','posts');
INSERT INTO `wp_simple_history_contexts` VALUES (391,17,'new_value','page');
INSERT INTO `wp_simple_history_contexts` VALUES (392,17,'option_page','reading');
INSERT INTO `wp_simple_history_contexts` VALUES (393,17,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (394,17,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (395,17,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (396,17,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (397,17,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (398,17,'_server_http_referer','http://playbook.local/wp-admin/options-reading.php');
INSERT INTO `wp_simple_history_contexts` VALUES (399,18,'option','page_on_front');
INSERT INTO `wp_simple_history_contexts` VALUES (400,18,'old_value','0');
INSERT INTO `wp_simple_history_contexts` VALUES (401,18,'new_value','5');
INSERT INTO `wp_simple_history_contexts` VALUES (402,18,'option_page','reading');
INSERT INTO `wp_simple_history_contexts` VALUES (403,18,'new_post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (404,18,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (405,18,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (406,18,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (407,18,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (408,18,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (409,18,'_server_http_referer','http://playbook.local/wp-admin/options-reading.php');
INSERT INTO `wp_simple_history_contexts` VALUES (410,19,'post_id','3');
INSERT INTO `wp_simple_history_contexts` VALUES (411,19,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (412,19,'post_title','Privacy Policy');
INSERT INTO `wp_simple_history_contexts` VALUES (413,19,'_message_key','post_trashed');
INSERT INTO `wp_simple_history_contexts` VALUES (414,19,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (415,19,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (416,19,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (417,19,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (418,19,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (419,20,'post_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (420,20,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (421,20,'post_title','Sample Page');
INSERT INTO `wp_simple_history_contexts` VALUES (422,20,'_message_key','post_trashed');
INSERT INTO `wp_simple_history_contexts` VALUES (423,20,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (424,20,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (425,20,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (426,20,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (427,20,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (428,21,'post_id','3');
INSERT INTO `wp_simple_history_contexts` VALUES (429,21,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (430,21,'post_title','Privacy Policy');
INSERT INTO `wp_simple_history_contexts` VALUES (431,21,'_message_key','post_deleted');
INSERT INTO `wp_simple_history_contexts` VALUES (432,21,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (433,21,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (434,21,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (435,21,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (436,21,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_status=trash&post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (437,22,'post_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (438,22,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (439,22,'post_title','Sample Page');
INSERT INTO `wp_simple_history_contexts` VALUES (440,22,'_message_key','post_deleted');
INSERT INTO `wp_simple_history_contexts` VALUES (441,22,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (442,22,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (443,22,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (444,22,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (445,22,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_status=trash&post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (446,23,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (447,23,'attachment_id','61');
INSERT INTO `wp_simple_history_contexts` VALUES (448,23,'attachment_title','favicon');
INSERT INTO `wp_simple_history_contexts` VALUES (449,23,'attachment_filename','favicon.png');
INSERT INTO `wp_simple_history_contexts` VALUES (450,23,'attachment_mime','image/png');
INSERT INTO `wp_simple_history_contexts` VALUES (451,23,'attachment_filesize','9291');
INSERT INTO `wp_simple_history_contexts` VALUES (452,23,'_message_key','attachment_created');
INSERT INTO `wp_simple_history_contexts` VALUES (453,23,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (454,23,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (455,23,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (456,23,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (457,23,'_server_http_referer','http://playbook.local/wp-admin/customize.php?return=%2Fwp-admin%2Fedit.php%3Fpost_status%3Dtrash%26post_type%3Dpage%26paged%3D1');
INSERT INTO `wp_simple_history_contexts` VALUES (458,24,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (459,24,'attachment_id','62');
INSERT INTO `wp_simple_history_contexts` VALUES (460,24,'attachment_title','cropped-favicon.png');
INSERT INTO `wp_simple_history_contexts` VALUES (461,24,'attachment_filename','cropped-favicon.png');
INSERT INTO `wp_simple_history_contexts` VALUES (462,24,'attachment_mime','image/png');
INSERT INTO `wp_simple_history_contexts` VALUES (463,24,'attachment_filesize','17301');
INSERT INTO `wp_simple_history_contexts` VALUES (464,24,'_message_key','attachment_created');
INSERT INTO `wp_simple_history_contexts` VALUES (465,24,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (466,24,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (467,24,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (468,24,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (469,24,'_server_http_referer','http://playbook.local/wp-admin/customize.php?return=%2Fwp-admin%2Fedit.php%3Fpost_status%3Dtrash%26post_type%3Dpage%26paged%3D1');
INSERT INTO `wp_simple_history_contexts` VALUES (470,25,'setting_id','site_icon');
INSERT INTO `wp_simple_history_contexts` VALUES (471,25,'setting_old_value','0');
INSERT INTO `wp_simple_history_contexts` VALUES (472,25,'setting_new_value','62');
INSERT INTO `wp_simple_history_contexts` VALUES (473,25,'control_id','site_icon');
INSERT INTO `wp_simple_history_contexts` VALUES (474,25,'control_label','Site Icon');
INSERT INTO `wp_simple_history_contexts` VALUES (475,25,'control_type','site_icon');
INSERT INTO `wp_simple_history_contexts` VALUES (476,25,'_message_key','appearance_customized');
INSERT INTO `wp_simple_history_contexts` VALUES (477,25,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (478,25,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (479,25,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (480,25,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (481,25,'_server_http_referer','http://playbook.local/wp-admin/customize.php?return=%2Fwp-admin%2Fedit.php%3Fpost_status%3Dtrash%26post_type%3Dpage%26paged%3D1');
INSERT INTO `wp_simple_history_contexts` VALUES (482,26,'post_id','63');
INSERT INTO `wp_simple_history_contexts` VALUES (483,26,'post_type','customize_changeset');
INSERT INTO `wp_simple_history_contexts` VALUES (484,26,'post_title','');
INSERT INTO `wp_simple_history_contexts` VALUES (485,26,'_message_key','post_trashed');
INSERT INTO `wp_simple_history_contexts` VALUES (486,26,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (487,26,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (488,26,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (489,26,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (490,26,'_server_http_referer','http://playbook.local/wp-admin/customize.php?return=%2Fwp-admin%2Fedit.php%3Fpost_status%3Dtrash%26post_type%3Dpage%26paged%3D1');
INSERT INTO `wp_simple_history_contexts` VALUES (491,27,'post_id','63');
INSERT INTO `wp_simple_history_contexts` VALUES (492,27,'post_type','customize_changeset');
INSERT INTO `wp_simple_history_contexts` VALUES (493,27,'post_title','');
INSERT INTO `wp_simple_history_contexts` VALUES (494,27,'post_meta_added','2');
INSERT INTO `wp_simple_history_contexts` VALUES (495,27,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (496,27,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (497,27,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (498,27,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (499,27,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (500,27,'_server_http_referer','http://playbook.local/wp-admin/customize.php?return=%2Fwp-admin%2Fedit.php%3Fpost_status%3Dtrash%26post_type%3Dpage%26paged%3D1');
INSERT INTO `wp_simple_history_contexts` VALUES (501,28,'post_id','64');
INSERT INTO `wp_simple_history_contexts` VALUES (502,28,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (503,28,'post_title','About');
INSERT INTO `wp_simple_history_contexts` VALUES (504,28,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (505,28,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (506,28,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (507,28,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (508,28,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (509,28,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (510,28,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (511,29,'post_id','66');
INSERT INTO `wp_simple_history_contexts` VALUES (512,29,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (513,29,'post_title','Featured Speakers');
INSERT INTO `wp_simple_history_contexts` VALUES (514,29,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (515,29,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (516,29,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (517,29,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (518,29,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (519,29,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (520,29,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (521,30,'post_id','68');
INSERT INTO `wp_simple_history_contexts` VALUES (522,30,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (523,30,'post_title','Recent Episodes');
INSERT INTO `wp_simple_history_contexts` VALUES (524,30,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (525,30,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (526,30,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (527,30,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (528,30,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (529,30,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (530,30,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (531,31,'post_id','70');
INSERT INTO `wp_simple_history_contexts` VALUES (532,31,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (533,31,'post_title','Contact');
INSERT INTO `wp_simple_history_contexts` VALUES (534,31,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (535,31,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (536,31,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (537,31,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (538,31,'_rest_api_request','true');
INSERT INTO `wp_simple_history_contexts` VALUES (539,31,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (540,31,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (541,32,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (542,32,'term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (543,32,'term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (544,32,'_message_key','created_term');
INSERT INTO `wp_simple_history_contexts` VALUES (545,32,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (546,32,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (547,32,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (548,32,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (549,32,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (550,33,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (551,33,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (552,33,'_message_key','created_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (553,33,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (554,33,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (555,33,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (556,33,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (557,33,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (558,34,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (559,34,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (560,34,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (561,34,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (562,34,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (563,34,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (564,34,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (565,34,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (566,34,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (567,34,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (568,35,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (569,35,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (570,35,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (571,35,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (572,35,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (573,35,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (574,35,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (575,35,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (576,35,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (577,35,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (578,35,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (579,35,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (580,35,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (581,35,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (582,35,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (583,36,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (584,36,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (585,36,'menu_items_added','8');
INSERT INTO `wp_simple_history_contexts` VALUES (586,36,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (587,36,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (588,36,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (589,36,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (590,36,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (591,36,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (592,36,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (593,37,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (594,37,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (595,37,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (596,37,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (597,37,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (598,37,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (599,37,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (600,37,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (601,37,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (602,37,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (603,37,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (604,37,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (605,37,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (606,37,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (607,37,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (608,38,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (609,38,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (610,38,'menu_items_added','1');
INSERT INTO `wp_simple_history_contexts` VALUES (611,38,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (612,38,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (613,38,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (614,38,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (615,38,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (616,38,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (617,38,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (618,39,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (619,39,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (620,39,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (621,39,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (622,39,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (623,39,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (624,39,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (625,39,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (626,39,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (627,39,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (628,39,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (629,39,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (630,39,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (631,39,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (632,39,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (633,40,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (634,40,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (635,40,'menu_items_added','1');
INSERT INTO `wp_simple_history_contexts` VALUES (636,40,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (637,40,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (638,40,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (639,40,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (640,40,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (641,40,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (642,40,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (643,41,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (644,41,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (645,41,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (646,41,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (647,41,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (648,41,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (649,41,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (650,41,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (651,41,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (652,41,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (653,41,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (654,41,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (655,41,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (656,41,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (657,41,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (658,42,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (659,42,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (660,42,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (661,42,'menu_items_removed','5');
INSERT INTO `wp_simple_history_contexts` VALUES (662,42,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (663,42,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (664,42,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (665,42,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (666,42,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (667,42,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (668,43,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (669,43,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (670,43,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (671,43,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (672,43,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (673,43,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (674,43,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (675,43,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (676,43,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (677,43,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (678,43,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (679,43,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (680,43,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (681,43,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (682,43,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php?menu=2');
INSERT INTO `wp_simple_history_contexts` VALUES (683,44,'post_id','7');
INSERT INTO `wp_simple_history_contexts` VALUES (684,44,'post_type','attachment');
INSERT INTO `wp_simple_history_contexts` VALUES (685,44,'post_title','Private: acf-export-2021-09-28.json_.txt');
INSERT INTO `wp_simple_history_contexts` VALUES (686,44,'_message_key','post_deleted');
INSERT INTO `wp_simple_history_contexts` VALUES (687,44,'_wp_cron_running','true');
INSERT INTO `wp_simple_history_contexts` VALUES (688,44,'_wp_cron_current_filter','delete_post');
INSERT INTO `wp_simple_history_contexts` VALUES (689,44,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (690,44,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1632942932.0570120811462402343750');
INSERT INTO `wp_simple_history_contexts` VALUES (691,45,'plugin_name','Gravity Forms');
INSERT INTO `wp_simple_history_contexts` VALUES (692,45,'plugin_current_version','2.5.10');
INSERT INTO `wp_simple_history_contexts` VALUES (693,45,'plugin_new_version','2.5.11');
INSERT INTO `wp_simple_history_contexts` VALUES (694,45,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (695,45,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (696,45,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1633024226.6892309188842773437500');
INSERT INTO `wp_simple_history_contexts` VALUES (697,46,'plugin_name','Akismet Anti-Spam');
INSERT INTO `wp_simple_history_contexts` VALUES (698,46,'plugin_current_version','4.1.12');
INSERT INTO `wp_simple_history_contexts` VALUES (699,46,'plugin_new_version','4.2');
INSERT INTO `wp_simple_history_contexts` VALUES (700,46,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (701,46,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (702,46,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1633030457.4597659111022949218750');
INSERT INTO `wp_simple_history_contexts` VALUES (703,47,'user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (704,47,'user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (705,47,'user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (706,47,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (707,47,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (708,47,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (709,47,'server_http_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36');
INSERT INTO `wp_simple_history_contexts` VALUES (710,47,'_message_key','user_logged_in');
INSERT INTO `wp_simple_history_contexts` VALUES (711,47,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (712,47,'_server_http_referer','http://playbook.local/wp-login.php?redirect_to=http%3A%2F%2Fplaybook.local%2Fwp-admin%2Fnav-menus.php%3Fmenu%3D2&reauth=1');
INSERT INTO `wp_simple_history_contexts` VALUES (713,48,'plugin_slug','akismet');
INSERT INTO `wp_simple_history_contexts` VALUES (714,48,'plugin_name','Akismet Anti-Spam');
INSERT INTO `wp_simple_history_contexts` VALUES (715,48,'plugin_title','<a href=\"https://akismet.com/\">Akismet Anti-Spam</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (716,48,'plugin_description','Used by millions, Akismet is quite possibly the best way in the world to <strong>protect your blog from spam</strong>. It keeps your site protected even while you sleep. To get started: activate the Akismet plugin and then go to your Akismet Settings page to set up your API key. <cite>By <a href=\"https://automattic.com/wordpress-plugins/\">Automattic</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (717,48,'plugin_author','<a href=\"https://automattic.com/wordpress-plugins/\">Automattic</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (718,48,'plugin_version','4.2');
INSERT INTO `wp_simple_history_contexts` VALUES (719,48,'plugin_url','https://akismet.com/');
INSERT INTO `wp_simple_history_contexts` VALUES (720,48,'plugin_prev_version','4.1.12');
INSERT INTO `wp_simple_history_contexts` VALUES (721,48,'_message_key','plugin_bulk_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (722,48,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (723,48,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (724,48,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (725,48,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (726,48,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (727,49,'plugin_slug','gravityforms');
INSERT INTO `wp_simple_history_contexts` VALUES (728,49,'plugin_name','Gravity Forms');
INSERT INTO `wp_simple_history_contexts` VALUES (729,49,'plugin_title','<a href=\"https://gravityforms.com\">Gravity Forms</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (730,49,'plugin_description','Easily create web forms and manage form entries within the WordPress admin. <cite>By <a href=\"https://gravityforms.com\">Gravity Forms</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (731,49,'plugin_author','<a href=\"https://gravityforms.com\">Gravity Forms</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (732,49,'plugin_version','2.5.11');
INSERT INTO `wp_simple_history_contexts` VALUES (733,49,'plugin_url','https://gravityforms.com');
INSERT INTO `wp_simple_history_contexts` VALUES (734,49,'plugin_update_info_plugin','gravityforms/gravityforms.php');
INSERT INTO `wp_simple_history_contexts` VALUES (735,49,'plugin_update_info_package','https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.5.11.zip?AWSAccessKeyId=AKIA5U3GBHC5WDRZA6NK&Expires=1633197032&Signature=uNnfx%2BU%2Bb6cpPoD%2FpNSX6rqpygc%3D');
INSERT INTO `wp_simple_history_contexts` VALUES (736,49,'plugin_prev_version','2.5.10');
INSERT INTO `wp_simple_history_contexts` VALUES (737,49,'_message_key','plugin_bulk_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (738,49,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (739,49,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (740,49,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (741,49,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (742,49,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (743,50,'post_id','87');
INSERT INTO `wp_simple_history_contexts` VALUES (744,50,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (745,50,'post_title','Homepage');
INSERT INTO `wp_simple_history_contexts` VALUES (746,50,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (747,50,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (748,50,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (749,50,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (750,50,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (751,50,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=acf-field-group&wp-post-new-reload=true');
INSERT INTO `wp_simple_history_contexts` VALUES (752,51,'plugin_name','Disable Gutenberg');
INSERT INTO `wp_simple_history_contexts` VALUES (753,51,'plugin_slug','disable-gutenberg');
INSERT INTO `wp_simple_history_contexts` VALUES (754,51,'plugin_title','<a href=\"https://perishablepress.com/disable-gutenberg/\">Disable Gutenberg</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (755,51,'plugin_description','Disables Gutenberg Block Editor and restores the Classic Editor and original Edit Post screen. Provides options to enable on specific post types, user roles, and more. <cite>By <a href=\"https://plugin-planet.com/\">Jeff Starr</a>.</cite>');
INSERT INTO `wp_simple_history_contexts` VALUES (756,51,'plugin_author','<a href=\"https://plugin-planet.com/\">Jeff Starr</a>');
INSERT INTO `wp_simple_history_contexts` VALUES (757,51,'plugin_version','2.5.1');
INSERT INTO `wp_simple_history_contexts` VALUES (758,51,'plugin_url','https://perishablepress.com/disable-gutenberg/');
INSERT INTO `wp_simple_history_contexts` VALUES (759,51,'_message_key','plugin_activated');
INSERT INTO `wp_simple_history_contexts` VALUES (760,51,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (761,51,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (762,51,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (763,51,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (764,51,'_server_http_referer','http://playbook.local/wp-admin/plugins.php');
INSERT INTO `wp_simple_history_contexts` VALUES (765,52,'post_id','5');
INSERT INTO `wp_simple_history_contexts` VALUES (766,52,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (767,52,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (768,52,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (769,52,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (770,52,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (771,52,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (772,52,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (773,52,'_server_http_referer','http://playbook.local/wp-admin/post.php?post=5&action=edit');
INSERT INTO `wp_simple_history_contexts` VALUES (774,52,'acf_field_added_0/slug','section_one_wistia_video_id');
INSERT INTO `wp_simple_history_contexts` VALUES (775,52,'acf_field_added_0/key','field_61566d96e8562');
INSERT INTO `wp_simple_history_contexts` VALUES (776,52,'acf_field_added_0/label','Section One Wistia Video ID');
INSERT INTO `wp_simple_history_contexts` VALUES (777,52,'acf_field_added_0/type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (778,52,'acf_field_added_0/path_0/name','Homepage');
INSERT INTO `wp_simple_history_contexts` VALUES (779,52,'acf_field_added_0/path_0/type','field_group');
INSERT INTO `wp_simple_history_contexts` VALUES (780,53,'post_id','5');
INSERT INTO `wp_simple_history_contexts` VALUES (781,53,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (782,53,'post_title','Home');
INSERT INTO `wp_simple_history_contexts` VALUES (783,53,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (784,53,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (785,53,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (786,53,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (787,53,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (788,53,'_server_http_referer','http://playbook.local/wp-admin/post.php?post=5&action=edit&classic-editor');
INSERT INTO `wp_simple_history_contexts` VALUES (789,54,'plugin_name','Gravity Forms');
INSERT INTO `wp_simple_history_contexts` VALUES (790,54,'plugin_current_version','2.5.11');
INSERT INTO `wp_simple_history_contexts` VALUES (791,54,'plugin_new_version','2.5.12');
INSERT INTO `wp_simple_history_contexts` VALUES (792,54,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (793,54,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (794,54,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1633114168.7856740951538085937500');
INSERT INTO `wp_simple_history_contexts` VALUES (795,55,'plugin_name','Akismet Anti-Spam');
INSERT INTO `wp_simple_history_contexts` VALUES (796,55,'plugin_current_version','4.2');
INSERT INTO `wp_simple_history_contexts` VALUES (797,55,'plugin_new_version','4.2.1');
INSERT INTO `wp_simple_history_contexts` VALUES (798,55,'_message_key','plugin_update_available');
INSERT INTO `wp_simple_history_contexts` VALUES (799,55,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (800,55,'_server_http_referer','http://playbook.local/wp-cron.php?doing_wp_cron=1633114168.7856740951538085937500');
INSERT INTO `wp_simple_history_contexts` VALUES (801,56,'post_id','91');
INSERT INTO `wp_simple_history_contexts` VALUES (802,56,'post_type','post');
INSERT INTO `wp_simple_history_contexts` VALUES (803,56,'post_title','group_5ef0f65948f2f');
INSERT INTO `wp_simple_history_contexts` VALUES (804,56,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (805,56,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (806,56,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (807,56,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (808,56,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (809,56,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=acf-field-group&page=acf-tools');
INSERT INTO `wp_simple_history_contexts` VALUES (810,57,'post_id','91');
INSERT INTO `wp_simple_history_contexts` VALUES (811,57,'post_type','acf-field-group');
INSERT INTO `wp_simple_history_contexts` VALUES (812,57,'post_title','Disable Sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (813,57,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (814,57,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (815,57,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (816,57,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (817,57,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (818,57,'_server_http_referer','http://playbook.local/wp-admin/edit.php?post_type=acf-field-group&page=acf-tools');
INSERT INTO `wp_simple_history_contexts` VALUES (819,58,'option','page_for_posts');
INSERT INTO `wp_simple_history_contexts` VALUES (820,58,'old_value','0');
INSERT INTO `wp_simple_history_contexts` VALUES (821,58,'new_value','68');
INSERT INTO `wp_simple_history_contexts` VALUES (822,58,'option_page','reading');
INSERT INTO `wp_simple_history_contexts` VALUES (823,58,'new_post_title','Recent Episodes');
INSERT INTO `wp_simple_history_contexts` VALUES (824,58,'_message_key','option_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (825,58,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (826,58,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (827,58,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (828,58,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (829,58,'_server_http_referer','http://playbook.local/wp-admin/options-reading.php');
INSERT INTO `wp_simple_history_contexts` VALUES (830,59,'post_id','93');
INSERT INTO `wp_simple_history_contexts` VALUES (831,59,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (832,59,'post_title','Page Example');
INSERT INTO `wp_simple_history_contexts` VALUES (833,59,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (834,59,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (835,59,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (836,59,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (837,59,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (838,59,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page&wp-post-new-reload=true&wp-post-new-reload=true');
INSERT INTO `wp_simple_history_contexts` VALUES (839,59,'acf_field_added_0/slug','disable_sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (840,59,'acf_field_added_0/key','field_5ef0f660ad8a4');
INSERT INTO `wp_simple_history_contexts` VALUES (841,59,'acf_field_added_0/label','Disable Sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (842,59,'acf_field_added_0/type','select');
INSERT INTO `wp_simple_history_contexts` VALUES (843,59,'acf_field_added_0/path_0/name','Disable Sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (844,59,'acf_field_added_0/path_0/type','field_group');
INSERT INTO `wp_simple_history_contexts` VALUES (845,59,'acf_field_added_1/slug','sm_custom_title');
INSERT INTO `wp_simple_history_contexts` VALUES (846,59,'acf_field_added_1/key','field_5c36777f31fd1');
INSERT INTO `wp_simple_history_contexts` VALUES (847,59,'acf_field_added_1/label','Sidebar Title');
INSERT INTO `wp_simple_history_contexts` VALUES (848,59,'acf_field_added_1/type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (849,59,'acf_field_added_2/slug','sm_custom_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (850,59,'acf_field_added_2/key','field_5c366a82c27f7');
INSERT INTO `wp_simple_history_contexts` VALUES (851,59,'acf_field_added_2/label','Sidebar Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (852,59,'acf_field_added_2/type','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (853,60,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (854,60,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (855,60,'menu_items_added','1');
INSERT INTO `wp_simple_history_contexts` VALUES (856,60,'menu_items_removed','3');
INSERT INTO `wp_simple_history_contexts` VALUES (857,60,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (858,60,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (859,60,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (860,60,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (861,60,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (862,60,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (863,61,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (864,61,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (865,61,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (866,61,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (867,61,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (868,61,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (869,61,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (870,61,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (871,61,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (872,61,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (873,61,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (874,61,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (875,61,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (876,61,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (877,61,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (878,62,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (879,62,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (880,62,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (881,62,'menu_items_removed','2');
INSERT INTO `wp_simple_history_contexts` VALUES (882,62,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (883,62,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (884,62,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (885,62,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (886,62,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (887,62,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (888,63,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (889,63,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (890,63,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (891,63,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (892,63,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (893,63,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (894,63,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (895,63,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (896,63,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (897,63,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (898,63,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (899,63,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (900,63,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (901,63,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (902,63,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (903,64,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (904,64,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (905,64,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (906,64,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (907,64,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (908,64,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (909,64,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (910,64,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (911,64,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (912,64,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (913,65,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (914,65,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (915,65,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (916,65,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (917,65,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (918,65,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (919,65,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (920,65,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (921,65,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (922,65,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (923,65,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (924,65,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (925,65,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (926,65,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (927,65,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (928,66,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (929,66,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (930,66,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (931,66,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (932,66,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (933,66,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (934,66,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (935,66,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (936,66,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (937,66,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (938,67,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (939,67,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (940,67,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (941,67,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (942,67,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (943,67,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (944,67,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (945,67,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (946,67,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (947,67,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (948,67,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (949,67,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (950,67,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (951,67,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (952,67,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (953,68,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (954,68,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (955,68,'menu_items_added','1');
INSERT INTO `wp_simple_history_contexts` VALUES (956,68,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (957,68,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (958,68,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (959,68,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (960,68,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (961,68,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (962,68,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (963,69,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (964,69,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (965,69,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (966,69,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (967,69,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (968,69,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (969,69,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (970,69,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (971,69,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (972,69,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (973,69,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (974,69,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (975,69,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (976,69,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (977,69,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (978,70,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (979,70,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (980,70,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (981,70,'menu_items_removed','1');
INSERT INTO `wp_simple_history_contexts` VALUES (982,70,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (983,70,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (984,70,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (985,70,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (986,70,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (987,70,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (988,71,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (989,71,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (990,71,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (991,71,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (992,71,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (993,71,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (994,71,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (995,71,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (996,71,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (997,71,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (998,71,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (999,71,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1000,71,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1001,71,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1002,71,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (1003,72,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (1004,72,'menu_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1005,72,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (1006,72,'menu_items_removed','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1007,72,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1008,72,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1009,72,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1010,72,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1011,72,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1012,72,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (1013,73,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (1014,73,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1015,73,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1016,73,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1017,73,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (1018,73,'to_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1019,73,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1020,73,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (1021,73,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (1022,73,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (1023,73,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1024,73,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1025,73,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1026,73,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1027,73,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (1028,74,'menu_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (1029,74,'menu_name','Main Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1030,74,'menu_items_added','0');
INSERT INTO `wp_simple_history_contexts` VALUES (1031,74,'menu_items_removed','0');
INSERT INTO `wp_simple_history_contexts` VALUES (1032,74,'_message_key','edited_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1033,74,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1034,74,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1035,74,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1036,74,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1037,74,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (1038,75,'term_id','2');
INSERT INTO `wp_simple_history_contexts` VALUES (1039,75,'from_term_name','Top Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1040,75,'from_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1041,75,'from_term_slug','top-menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1042,75,'from_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (1043,75,'to_term_name','Main Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1044,75,'to_term_taxonomy','nav_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1045,75,'to_term_slug','null');
INSERT INTO `wp_simple_history_contexts` VALUES (1046,75,'to_term_description','');
INSERT INTO `wp_simple_history_contexts` VALUES (1047,75,'_message_key','edited_term');
INSERT INTO `wp_simple_history_contexts` VALUES (1048,75,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1049,75,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1050,75,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1051,75,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1052,75,'_server_http_referer','http://playbook.local/wp-admin/nav-menus.php');
INSERT INTO `wp_simple_history_contexts` VALUES (1053,76,'post_id','97');
INSERT INTO `wp_simple_history_contexts` VALUES (1054,76,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (1055,76,'post_title','Thank You');
INSERT INTO `wp_simple_history_contexts` VALUES (1056,76,'_message_key','post_created');
INSERT INTO `wp_simple_history_contexts` VALUES (1057,76,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1058,76,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1059,76,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1060,76,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1061,76,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page');
INSERT INTO `wp_simple_history_contexts` VALUES (1062,77,'post_id','97');
INSERT INTO `wp_simple_history_contexts` VALUES (1063,77,'post_type','page');
INSERT INTO `wp_simple_history_contexts` VALUES (1064,77,'post_title','Thank You');
INSERT INTO `wp_simple_history_contexts` VALUES (1065,77,'post_prev_post_name','');
INSERT INTO `wp_simple_history_contexts` VALUES (1066,77,'post_new_post_name','thank-you');
INSERT INTO `wp_simple_history_contexts` VALUES (1067,77,'post_prev_post_content','');
INSERT INTO `wp_simple_history_contexts` VALUES (1068,77,'post_new_post_content','Thank you for your submission, we will contact you shortly.');
INSERT INTO `wp_simple_history_contexts` VALUES (1069,77,'post_prev_post_status','draft');
INSERT INTO `wp_simple_history_contexts` VALUES (1070,77,'post_new_post_status','publish');
INSERT INTO `wp_simple_history_contexts` VALUES (1071,77,'post_prev_post_date','2021-10-02 01:43:32');
INSERT INTO `wp_simple_history_contexts` VALUES (1072,77,'post_new_post_date','2021-10-02 01:43:35');
INSERT INTO `wp_simple_history_contexts` VALUES (1073,77,'post_prev_post_date_gmt','0000-00-00 00:00:00');
INSERT INTO `wp_simple_history_contexts` VALUES (1074,77,'post_new_post_date_gmt','2021-10-02 01:43:35');
INSERT INTO `wp_simple_history_contexts` VALUES (1075,77,'_message_key','post_updated');
INSERT INTO `wp_simple_history_contexts` VALUES (1076,77,'_user_id','1');
INSERT INTO `wp_simple_history_contexts` VALUES (1077,77,'_user_login','1p21.admin');
INSERT INTO `wp_simple_history_contexts` VALUES (1078,77,'_user_email','garrett@1point21interactive.com');
INSERT INTO `wp_simple_history_contexts` VALUES (1079,77,'_server_remote_addr','127.0.0.0');
INSERT INTO `wp_simple_history_contexts` VALUES (1080,77,'_server_http_referer','http://playbook.local/wp-admin/post-new.php?post_type=page&wp-post-new-reload=true&wp-post-new-reload=true');
INSERT INTO `wp_simple_history_contexts` VALUES (1081,77,'acf_field_added_0/slug','disable_sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (1082,77,'acf_field_added_0/key','field_5ef0f660ad8a4');
INSERT INTO `wp_simple_history_contexts` VALUES (1083,77,'acf_field_added_0/label','Disable Sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (1084,77,'acf_field_added_0/type','select');
INSERT INTO `wp_simple_history_contexts` VALUES (1085,77,'acf_field_added_0/path_0/name','Disable Sidebar');
INSERT INTO `wp_simple_history_contexts` VALUES (1086,77,'acf_field_added_0/path_0/type','field_group');
INSERT INTO `wp_simple_history_contexts` VALUES (1087,77,'acf_field_added_1/slug','sm_custom_title');
INSERT INTO `wp_simple_history_contexts` VALUES (1088,77,'acf_field_added_1/key','field_5c36777f31fd1');
INSERT INTO `wp_simple_history_contexts` VALUES (1089,77,'acf_field_added_1/label','Sidebar Title');
INSERT INTO `wp_simple_history_contexts` VALUES (1090,77,'acf_field_added_1/type','text');
INSERT INTO `wp_simple_history_contexts` VALUES (1091,77,'acf_field_added_2/slug','sm_custom_menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1092,77,'acf_field_added_2/key','field_5c366a82c27f7');
INSERT INTO `wp_simple_history_contexts` VALUES (1093,77,'acf_field_added_2/label','Sidebar Menu');
INSERT INTO `wp_simple_history_contexts` VALUES (1094,77,'acf_field_added_2/type','nav_menu');
/*!40000 ALTER TABLE `wp_simple_history_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (72,2,0);
INSERT INTO `wp_term_relationships` VALUES (73,2,0);
INSERT INTO `wp_term_relationships` VALUES (75,2,0);
INSERT INTO `wp_term_relationships` VALUES (76,2,0);
INSERT INTO `wp_term_relationships` VALUES (77,2,0);
INSERT INTO `wp_term_relationships` VALUES (91,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','1p21.admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"624e605d09c9b00755bdb12c3cb6cf7b7514cee9a4819de98617dc5551dea820\";a:4:{s:10:\"expiration\";i:1633226845;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1633054045;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','hidetb=1&ampeditor=html&amplibraryContent=browse&ampimgsize=medium&ampposts_list_mode=list&ampmfold=o&ampalign=left&editor=html&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1633139945');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:334:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://playbook.local/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:10:\"1p21.admin\";s:9:\"user_pass\";s:34:\"$P$BFZ6EnrznTfL/0NwiEIdVihxDAQSx/1\";s:13:\"user_nicename\";s:10:\"1p21-admin\";s:10:\"user_email\";s:31:\"garrett@1point21interactive.com\";s:8:\"user_url\";s:21:\"http://playbook.local\";s:15:\"user_registered\";s:19:\"2021-09-28 18:57:51\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"1p21.admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
INSERT INTO `wp_usermeta` VALUES (21,1,'_yoast_wpseo_profile_updated','1632855970');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (25,1,'gform_recent_forms','a:1:{i:0;s:1:\"1\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'1p21.admin','$P$BFZ6EnrznTfL/0NwiEIdVihxDAQSx/1','1p21-admin','garrett@1point21interactive.com','http://playbook.local','2021-09-28 18:57:51','',0,'1p21.admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'http://playbook.local/2021/09/28/hello-world/','45:cf105a5573da13193e97d32c57915072',1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 18:59:09','2021-10-01 09:07:34',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (3,'http://playbook.local/category/uncategorized/','45:7188072f49c2f070b65fa1365cb06e68',1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 18:59:09','2021-10-01 09:07:34',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (4,'http://playbook.local/','22:01e350825b99271b068a0df5aa12b1a5',5,'post','page',1,0,NULL,NULL,'Home','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:07:07','2021-10-01 09:12:57',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (5,NULL,NULL,9,'post','acf-field',1,8,NULL,NULL,'Header','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:29','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (10,NULL,NULL,14,'post','acf-field',1,8,NULL,NULL,'Schema Code/ Google Analytics and Other Header Scripts','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:29','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (11,NULL,NULL,15,'post','acf-field',1,8,NULL,NULL,'Review CSS','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:29','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (12,NULL,NULL,16,'post','acf-field',1,8,NULL,NULL,'Footer','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:29','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (31,NULL,NULL,35,'post','acf-field',1,8,NULL,NULL,'Footer Tracking Scripts','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (40,NULL,NULL,44,'post','acf-field',1,8,NULL,NULL,'Not Found','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (41,NULL,NULL,45,'post','acf-field',1,8,NULL,NULL,'Not Found Title','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (42,NULL,NULL,46,'post','acf-field',1,8,NULL,NULL,'Not Found Content','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (43,NULL,NULL,47,'post','acf-field',1,8,NULL,NULL,'Fonts','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (44,NULL,NULL,48,'post','acf-field',1,8,NULL,NULL,'Fonts','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (45,NULL,NULL,49,'post','acf-field',1,48,NULL,NULL,'Font URL','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (46,NULL,NULL,50,'post','acf-field',1,8,NULL,NULL,'Host Google Fonts Locally?','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (47,NULL,NULL,51,'post','acf-field',1,8,NULL,NULL,'Locally Hosted Google Fonts','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (48,NULL,NULL,52,'post','acf-field',1,51,NULL,NULL,'Font Family','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (49,NULL,NULL,53,'post','acf-field',1,51,NULL,NULL,'Font Style','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (50,NULL,NULL,54,'post','acf-field',1,51,NULL,NULL,'Font Weight','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (51,NULL,NULL,55,'post','acf-field',1,51,NULL,NULL,'Font Display','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (52,NULL,NULL,56,'post','acf-field',1,51,NULL,NULL,'src: local','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (53,NULL,NULL,57,'post','acf-field',1,51,NULL,NULL,'Local','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (54,NULL,NULL,58,'post','acf-field',1,51,NULL,NULL,'Font File (woff2)','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-09-29 19:00:55',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (55,'http://playbook.local/?post_type=acf-field-group&p=8','52:c5df06fd23d1401d189d2c6299cff916',8,'post','acf-field-group',1,0,NULL,NULL,'Theme Options','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-28 19:15:30','2021-10-01 09:20:05',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (56,'http://playbook.local/author/1p21-admin/','40:ea240c5e5e6bccfd28b20645eb58e991',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://2.gravatar.com/avatar/b483ee214c7517611314b43d76b2e779?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://2.gravatar.com/avatar/b483ee214c7517611314b43d76b2e779?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2021-09-28 19:16:59','2021-10-02 07:09:03',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (57,'http://playbook.local/about/','28:27489858fe693000e87e3593f22e381b',64,'post','page',1,0,NULL,NULL,'About','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:24:24','2021-09-30 08:40:38',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (58,'http://playbook.local/featured-speakers/','40:e766a221c99a9732fa340bb93b4d119d',66,'post','page',1,0,NULL,NULL,'Featured Speakers','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:24:54','2021-10-01 01:09:26',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (59,'http://playbook.local/recent-episodes/','38:7a7ab6e9e0911bbdf4f7feec58a92d30',68,'post','page',1,0,NULL,NULL,'Recent Episodes','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:25:22','2021-10-01 09:07:34',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (60,'http://playbook.local/contact/','30:2dee91d061d5a3197423b8b295d480cf',70,'post','page',1,0,NULL,NULL,'Contact','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:25:39','2021-10-01 09:07:34',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (61,'http://playbook.local/2021/10/02/72/','36:a62aabd3c5278e3db4f807f0609d97cf',72,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:26:23','2021-10-02 07:17:58',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (62,'http://playbook.local/2021/10/02/73/','36:6189462b2cc0d4b111d475ac2760c4e4',73,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:26:23','2021-10-02 07:17:58',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (63,'http://playbook.local/2021/10/02/75/','36:7bbcf025f8f48f37874249735cc9f5bd',75,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:26:23','2021-10-02 07:17:58',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (64,'http://playbook.local/2021/10/02/76/','36:9b7f5ebb386623c3f10e19fbe3076a8e',76,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 17:26:23','2021-10-02 07:17:58',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (66,'http://playbook.local/2021/10/02/77/','36:148a9a24edb40b451d7269cc12e820bd',77,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-09-29 18:43:38','2021-10-02 07:17:58',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (76,'http://playbook.local/?post_type=acf-field&p=88','47:11ac7d4210c20a462365ccf6bbf2771c',88,'post','acf-field',1,87,NULL,NULL,'Section One','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-01 02:09:28','2021-10-01 09:09:28',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (77,'http://playbook.local/?post_type=acf-field&p=89','47:1f58655581adc51033f801665ad2a941',89,'post','acf-field',1,87,NULL,NULL,'Section One Wistia Video ID','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-01 02:09:28','2021-10-01 09:09:28',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (78,'http://playbook.local/?post_type=acf-field-group&p=87','53:0a74dfb85bf0b10f9e9a63d12a1b11d8',87,'post','acf-field-group',1,0,NULL,NULL,'Homepage','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-01 02:09:28','2021-10-01 09:09:28',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (79,'http://playbook.local/?post_type=acf-field&p=92','47:5e40d7477ec1ee0415bef4d8fb3044e0',92,'post','acf-field',1,91,NULL,NULL,'Disable Sidebar','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-01 19:07:42','2021-10-02 02:07:42',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (80,'http://playbook.local/?post_type=acf-field-group&p=91','53:9b7b558814bdef2046d6f30abd5d2a0a',91,'post','acf-field-group',1,0,NULL,NULL,'Disable Sidebar','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-01 19:07:42','2021-10-02 02:07:42',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (81,'http://playbook.local/page-example/','35:c6e71abd04b78ef4ba567ad699a3c6ef',93,'post','page',1,0,NULL,NULL,'Page Example','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-01 19:11:18','2021-10-02 02:11:18',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (84,'http://playbook.local/thank-you/','32:c27fd4ab62f632fec14f02077e46878b',97,'post','page',1,0,NULL,NULL,'Thank You','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-02 01:43:35','2021-10-02 08:43:35',1,NULL,NULL,NULL,NULL,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (4,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (10,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (11,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (12,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (31,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (40,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (41,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (42,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (43,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (44,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (46,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (47,55,1,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (55,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (56,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (57,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (58,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (59,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (60,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (61,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (62,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (63,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (64,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (66,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (78,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (81,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (84,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'http://playbook.local/wp-admin/',2,NULL,'internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (4,'https://www.tunetheweb.com/blog/should-you-self-host-google-fonts/',50,NULL,'external',46,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (5,'https://google-webfonts-helper.herokuapp.com/fonts',50,NULL,'external',46,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-01 19:34:38
