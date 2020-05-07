# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.23)
# Database: erp
# Generation Time: 2020-04-21 15:47:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-04-07 11:44:38','2020-04-07 11:44:38','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_bill_account_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_bill_account_details`;

CREATE TABLE `wp_erp_acct_bill_account_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_bill_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_bill_details`;

CREATE TABLE `wp_erp_acct_bill_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_no` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_bills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_bills`;

CREATE TABLE `wp_erp_acct_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_cash_at_banks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_cash_at_banks`;

CREATE TABLE `wp_erp_acct_cash_at_banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_chart_of_accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_chart_of_accounts`;

CREATE TABLE `wp_erp_acct_chart_of_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_chart_of_accounts` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_chart_of_accounts` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_chart_of_accounts` (`id`, `name`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'Asset','asset',NULL,NULL,NULL,NULL),
	(2,'Liability','liability',NULL,NULL,NULL,NULL),
	(3,'Equity','equity',NULL,NULL,NULL,NULL),
	(4,'Income','income',NULL,NULL,NULL,NULL),
	(5,'Expense','expense',NULL,NULL,NULL,NULL),
	(6,'Asset & Liability','asset_liability',NULL,NULL,NULL,NULL),
	(7,'Bank','bank',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_chart_of_accounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_currency_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_currency_info`;

CREATE TABLE `wp_erp_acct_currency_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_currency_info` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_currency_info` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_currency_info` (`id`, `name`, `sign`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'AED','د.إ',NULL,NULL,NULL,NULL),
	(2,'AFN','؋',NULL,NULL,NULL,NULL),
	(3,'ALL','L',NULL,NULL,NULL,NULL),
	(4,'AMD','AMD',NULL,NULL,NULL,NULL),
	(5,'ANG','ƒ',NULL,NULL,NULL,NULL),
	(6,'AOA','Kz',NULL,NULL,NULL,NULL),
	(7,'ARS','$',NULL,NULL,NULL,NULL),
	(8,'AUD','$',NULL,NULL,NULL,NULL),
	(9,'AWG','ƒ',NULL,NULL,NULL,NULL),
	(10,'AZN','₼',NULL,NULL,NULL,NULL),
	(11,'BAM','KM',NULL,NULL,NULL,NULL),
	(12,'BBD','$',NULL,NULL,NULL,NULL),
	(13,'BDT','৳',NULL,NULL,NULL,NULL),
	(14,'BGN','лв',NULL,NULL,NULL,NULL),
	(15,'BHD','.د.ب',NULL,NULL,NULL,NULL),
	(16,'BIF','Fr',NULL,NULL,NULL,NULL),
	(17,'BMD','$',NULL,NULL,NULL,NULL),
	(18,'BND','$',NULL,NULL,NULL,NULL),
	(19,'BOB','Bs.',NULL,NULL,NULL,NULL),
	(20,'BRL','R$',NULL,NULL,NULL,NULL),
	(21,'BSD','$',NULL,NULL,NULL,NULL),
	(22,'BTN','Nu.',NULL,NULL,NULL,NULL),
	(23,'BWP','P',NULL,NULL,NULL,NULL),
	(24,'BYN','Br',NULL,NULL,NULL,NULL),
	(25,'BYR','Br',NULL,NULL,NULL,NULL),
	(26,'BZD','$',NULL,NULL,NULL,NULL),
	(27,'CAD','$',NULL,NULL,NULL,NULL),
	(28,'CDF','Fr',NULL,NULL,NULL,NULL),
	(29,'CHF','Fr',NULL,NULL,NULL,NULL),
	(30,'CLP','$',NULL,NULL,NULL,NULL),
	(31,'CNY','¥',NULL,NULL,NULL,NULL),
	(32,'COP','$',NULL,NULL,NULL,NULL),
	(33,'CRC','₡',NULL,NULL,NULL,NULL),
	(34,'CUC','$',NULL,NULL,NULL,NULL),
	(35,'CUP','$',NULL,NULL,NULL,NULL),
	(36,'CVE','$',NULL,NULL,NULL,NULL),
	(37,'CZK','Kč',NULL,NULL,NULL,NULL),
	(38,'DJF','Fr',NULL,NULL,NULL,NULL),
	(39,'DKK','kr',NULL,NULL,NULL,NULL),
	(40,'DOP','$',NULL,NULL,NULL,NULL),
	(41,'DZD','د.ج',NULL,NULL,NULL,NULL),
	(42,'EGP','£',NULL,NULL,NULL,NULL),
	(43,'ERN','Nfk',NULL,NULL,NULL,NULL),
	(44,'ETB','Br',NULL,NULL,NULL,NULL),
	(45,'EUR','€',NULL,NULL,NULL,NULL),
	(46,'FJD','$',NULL,NULL,NULL,NULL),
	(47,'FKP','£',NULL,NULL,NULL,NULL),
	(48,'GBP','£',NULL,NULL,NULL,NULL),
	(49,'GEL','GEL',NULL,NULL,NULL,NULL),
	(50,'GGP','£',NULL,NULL,NULL,NULL),
	(51,'GHS','₵',NULL,NULL,NULL,NULL),
	(52,'GIP','£',NULL,NULL,NULL,NULL),
	(53,'GMD','D',NULL,NULL,NULL,NULL),
	(54,'GNF','Fr',NULL,NULL,NULL,NULL),
	(55,'GTQ','Q',NULL,NULL,NULL,NULL),
	(56,'GYD','$',NULL,NULL,NULL,NULL),
	(57,'HKD','$',NULL,NULL,NULL,NULL),
	(58,'HNL','L',NULL,NULL,NULL,NULL),
	(59,'HRK','kn',NULL,NULL,NULL,NULL),
	(60,'HTG','G',NULL,NULL,NULL,NULL),
	(61,'HUF','Ft',NULL,NULL,NULL,NULL),
	(62,'IDR','Rp',NULL,NULL,NULL,NULL),
	(63,'ILS','₪',NULL,NULL,NULL,NULL),
	(64,'IMP','£',NULL,NULL,NULL,NULL),
	(65,'INR','₹',NULL,NULL,NULL,NULL),
	(66,'IQD','ع.د',NULL,NULL,NULL,NULL),
	(67,'IRR','﷼',NULL,NULL,NULL,NULL),
	(68,'ISK','kr',NULL,NULL,NULL,NULL),
	(69,'JEP','£',NULL,NULL,NULL,NULL),
	(70,'JMD','$',NULL,NULL,NULL,NULL),
	(71,'JOD','د.ا',NULL,NULL,NULL,NULL),
	(72,'JPY','¥',NULL,NULL,NULL,NULL),
	(73,'KES','Sh',NULL,NULL,NULL,NULL),
	(74,'KGS','с',NULL,NULL,NULL,NULL),
	(75,'KHR','៛',NULL,NULL,NULL,NULL),
	(76,'KMF','Fr',NULL,NULL,NULL,NULL),
	(77,'KPW','₩',NULL,NULL,NULL,NULL),
	(78,'KRW','₩',NULL,NULL,NULL,NULL),
	(79,'KWD','د.ك',NULL,NULL,NULL,NULL),
	(80,'KYD','$',NULL,NULL,NULL,NULL),
	(81,'KZT','KZT',NULL,NULL,NULL,NULL),
	(82,'LAK','₭',NULL,NULL,NULL,NULL),
	(83,'LBP','ل.ل',NULL,NULL,NULL,NULL),
	(84,'LKR','Rs',NULL,NULL,NULL,NULL),
	(85,'LRD','$',NULL,NULL,NULL,NULL),
	(86,'LSL','L',NULL,NULL,NULL,NULL),
	(87,'LYD','ل.د',NULL,NULL,NULL,NULL),
	(88,'MAD','د.م.',NULL,NULL,NULL,NULL),
	(89,'MDL','L',NULL,NULL,NULL,NULL),
	(90,'MGA','Ar',NULL,NULL,NULL,NULL),
	(91,'MKD','ден',NULL,NULL,NULL,NULL),
	(92,'MMK','Ks',NULL,NULL,NULL,NULL),
	(93,'MNT','₮',NULL,NULL,NULL,NULL),
	(94,'MOP','P',NULL,NULL,NULL,NULL),
	(95,'MRO','UM',NULL,NULL,NULL,NULL),
	(96,'MUR','₨',NULL,NULL,NULL,NULL),
	(97,'MVR','MVR',NULL,NULL,NULL,NULL),
	(98,'MWK','MK',NULL,NULL,NULL,NULL),
	(99,'MXN','$',NULL,NULL,NULL,NULL),
	(100,'MYR','RM',NULL,NULL,NULL,NULL),
	(101,'MZN','MT',NULL,NULL,NULL,NULL),
	(102,'NAD','$',NULL,NULL,NULL,NULL),
	(103,'NGN','₦',NULL,NULL,NULL,NULL),
	(104,'NIO','C$',NULL,NULL,NULL,NULL),
	(105,'NOK','kr',NULL,NULL,NULL,NULL),
	(106,'NPR','₨',NULL,NULL,NULL,NULL),
	(107,'NZD','$',NULL,NULL,NULL,NULL),
	(108,'OMR','ر.ع.',NULL,NULL,NULL,NULL),
	(109,'PAB','B/.',NULL,NULL,NULL,NULL),
	(110,'PEN','S/.',NULL,NULL,NULL,NULL),
	(111,'PGK','K',NULL,NULL,NULL,NULL),
	(112,'PHP','₱',NULL,NULL,NULL,NULL),
	(113,'PKR','₨',NULL,NULL,NULL,NULL),
	(114,'PLN','zł',NULL,NULL,NULL,NULL),
	(115,'PRB','р.',NULL,NULL,NULL,NULL),
	(116,'PYG','₲',NULL,NULL,NULL,NULL),
	(117,'QAR','ر.ق',NULL,NULL,NULL,NULL),
	(118,'RON','lei',NULL,NULL,NULL,NULL),
	(119,'RSD','дин',NULL,NULL,NULL,NULL),
	(120,'RUB','₽',NULL,NULL,NULL,NULL),
	(121,'RWF','Fr',NULL,NULL,NULL,NULL),
	(122,'SAR','ر.س',NULL,NULL,NULL,NULL),
	(123,'SBD','$',NULL,NULL,NULL,NULL),
	(124,'SCR','₨',NULL,NULL,NULL,NULL),
	(125,'SDG','ج.س.',NULL,NULL,NULL,NULL),
	(126,'SEK','kr',NULL,NULL,NULL,NULL),
	(127,'SGD','$',NULL,NULL,NULL,NULL),
	(128,'SHP','£',NULL,NULL,NULL,NULL),
	(129,'SLL','Le',NULL,NULL,NULL,NULL),
	(130,'SOS','Sh',NULL,NULL,NULL,NULL),
	(131,'SRD','$',NULL,NULL,NULL,NULL),
	(132,'SSP','£',NULL,NULL,NULL,NULL),
	(133,'STD','Db',NULL,NULL,NULL,NULL),
	(134,'SYP','£',NULL,NULL,NULL,NULL),
	(135,'SZL','L',NULL,NULL,NULL,NULL),
	(136,'THB','฿',NULL,NULL,NULL,NULL),
	(137,'TJS','ЅМ',NULL,NULL,NULL,NULL),
	(138,'TMT','m',NULL,NULL,NULL,NULL),
	(139,'TND','د.ت',NULL,NULL,NULL,NULL),
	(140,'TOP','T$',NULL,NULL,NULL,NULL),
	(141,'TRY','TRY',NULL,NULL,NULL,NULL),
	(142,'TTD','$',NULL,NULL,NULL,NULL),
	(143,'TVD','$',NULL,NULL,NULL,NULL),
	(144,'TWD','$',NULL,NULL,NULL,NULL),
	(145,'TZS','Sh',NULL,NULL,NULL,NULL),
	(146,'UAH','₴',NULL,NULL,NULL,NULL),
	(147,'UGX','Sh',NULL,NULL,NULL,NULL),
	(148,'USD','$',NULL,NULL,NULL,NULL),
	(149,'UYU','$',NULL,NULL,NULL,NULL),
	(150,'UZS','UZS',NULL,NULL,NULL,NULL),
	(151,'VEF','Bs',NULL,NULL,NULL,NULL),
	(152,'VND','₫',NULL,NULL,NULL,NULL),
	(153,'VUV','Vt',NULL,NULL,NULL,NULL),
	(154,'WST','T',NULL,NULL,NULL,NULL),
	(155,'XAF','Fr',NULL,NULL,NULL,NULL),
	(156,'XCD','$',NULL,NULL,NULL,NULL),
	(157,'XOF','Fr',NULL,NULL,NULL,NULL),
	(158,'XPF','Fr',NULL,NULL,NULL,NULL),
	(159,'YER','﷼',NULL,NULL,NULL,NULL),
	(160,'ZAR','R',NULL,NULL,NULL,NULL),
	(161,'ZMW','ZK',NULL,NULL,NULL,NULL),
	(162,'ZWL','$',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_currency_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_expense_checks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_expense_checks`;

CREATE TABLE `wp_erp_acct_expense_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_no` int(11) DEFAULT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_expense_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_expense_details`;

CREATE TABLE `wp_erp_acct_expense_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_no` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_expenses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_expenses`;

CREATE TABLE `wp_erp_acct_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `people_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `trn_by` int(11) DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_financial_years
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_financial_years`;

CREATE TABLE `wp_erp_acct_financial_years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_financial_years` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_financial_years` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_financial_years` (`id`, `name`, `start_date`, `end_date`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'2020','2020-01-01','2020-12-31',NULL,'2020-04-07','1',NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_financial_years` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_invoice_account_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_invoice_account_details`;

CREATE TABLE `wp_erp_acct_invoice_account_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_invoice_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_invoice_details`;

CREATE TABLE `wp_erp_acct_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_no` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `item_total` decimal(10,2) DEFAULT '0.00',
  `ecommerce_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_invoice_details_tax
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_invoice_details_tax`;

CREATE TABLE `wp_erp_acct_invoice_details_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_invoice_receipts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_invoice_receipts`;

CREATE TABLE `wp_erp_acct_invoice_receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_invoice_receipts_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_invoice_receipts_details`;

CREATE TABLE `wp_erp_acct_invoice_receipts_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_invoices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_invoices`;

CREATE TABLE `wp_erp_acct_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT '0.00',
  `estimate` tinyint(1) DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_journal_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_journal_details`;

CREATE TABLE `wp_erp_acct_journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_no` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_journals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_journals`;

CREATE TABLE `wp_erp_acct_journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_date` date DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `voucher_amount` decimal(10,2) DEFAULT '0.00',
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_ledger_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_ledger_categories`;

CREATE TABLE `wp_erp_acct_ledger_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_ledger_categories` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_ledger_categories` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_ledger_categories` (`id`, `name`, `slug`, `chart_id`, `parent_id`, `system`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'Current Asset',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'Fixed Asset',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'Inventory',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'Non-current Asset',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'Prepayment',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'Bank & Cash',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'Current Liability',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'Liability',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'Non-current Liability',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'Depreciation',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,'Direct Costs',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,'Expense',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'Revenue',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'Sales',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'Other Income',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'Equity',NULL,5,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_ledger_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_ledger_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_ledger_details`;

CREATE TABLE `wp_erp_acct_ledger_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_id` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `trn_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_ledger_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_ledger_settings`;

CREATE TABLE `wp_erp_acct_ledger_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_id` int(11) DEFAULT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_ledgers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_ledgers`;

CREATE TABLE `wp_erp_acct_ledgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chart_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `unused` tinyint(1) DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_ledgers` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_ledgers` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_ledgers` (`id`, `chart_id`, `category_id`, `name`, `slug`, `code`, `unused`, `system`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,1,NULL,'Accounts Receivable','accounts_receivable',120,1,1,NULL,NULL,NULL,NULL),
	(2,1,NULL,'Inventory','inventory',140,NULL,1,NULL,NULL,NULL,NULL),
	(3,1,NULL,'Office Equipment','office_equipment',150,NULL,1,NULL,NULL,NULL,NULL),
	(4,1,NULL,'Less Accumulated Depreciation on Office Equipment','less_accumulated_depreciation_on_office_equipment',151,NULL,1,NULL,NULL,NULL,NULL),
	(5,1,NULL,'Computer Equipment','computer_equipment',160,NULL,1,NULL,NULL,NULL,NULL),
	(6,1,NULL,'Less Accumulated Depreciation on Computer Equipment','less_accumulated_depreciation_on_computer_equipment',161,NULL,1,NULL,NULL,NULL,NULL),
	(7,1,NULL,'Cash','cash',90,NULL,0,NULL,NULL,NULL,NULL),
	(8,2,NULL,'Accounts Payable','accounts_payable',200,1,1,NULL,NULL,NULL,NULL),
	(9,2,NULL,'Accruals','accruals',205,NULL,0,NULL,NULL,NULL,NULL),
	(10,2,NULL,'Unpaid Expense Claims','unpaid_expense_claims',210,NULL,1,NULL,NULL,NULL,NULL),
	(11,2,NULL,'Wages Payable','wages_payable',215,NULL,1,NULL,NULL,NULL,NULL),
	(12,2,NULL,'Wages Payable - Payroll','wages_payable_payroll',216,NULL,0,NULL,NULL,NULL,NULL),
	(13,2,NULL,'Sales Tax','sales_tax',220,NULL,1,NULL,NULL,NULL,NULL),
	(14,2,NULL,'Employee Tax Payable','employee_tax_payable',230,NULL,0,NULL,NULL,NULL,NULL),
	(15,2,NULL,'Employee Benefits Payable','employee_benefits_payable',235,NULL,0,NULL,NULL,NULL,NULL),
	(16,2,NULL,'Employee Deductions payable','employee_deductions_payable',236,NULL,0,NULL,NULL,NULL,NULL),
	(17,2,NULL,'Income Tax Payable','income_tax_payable',240,NULL,0,NULL,NULL,NULL,NULL),
	(18,2,NULL,'Suspense','suspense',250,NULL,0,NULL,NULL,NULL,NULL),
	(19,2,NULL,'Historical Adjustments','historical_adjustments',255,NULL,1,NULL,NULL,NULL,NULL),
	(20,2,NULL,'Rounding','rounding',260,NULL,1,NULL,NULL,NULL,NULL),
	(21,2,NULL,'Revenue Received in Advance','revenue_received_in_advance',835,NULL,0,NULL,NULL,NULL,NULL),
	(22,2,NULL,'Clearing Account','clearing_account',855,NULL,0,NULL,NULL,NULL,NULL),
	(23,2,NULL,'Loan','loan',290,NULL,0,NULL,NULL,NULL,NULL),
	(24,5,NULL,'Costs of Goods Sold','costs_of_goods_sold',500,NULL,1,NULL,NULL,NULL,NULL),
	(25,5,NULL,'Advertising','advertising',600,NULL,0,NULL,NULL,NULL,NULL),
	(26,5,NULL,'Bank Service Charges','bank_service_charges',605,NULL,0,NULL,NULL,NULL,NULL),
	(27,5,NULL,'Janitorial Expenses','janitorial_expenses',610,NULL,0,NULL,NULL,NULL,NULL),
	(28,5,NULL,'Consulting & Accounting','consulting_accounting',615,NULL,0,NULL,NULL,NULL,NULL),
	(29,5,NULL,'Entertainment','entertainment',620,NULL,0,NULL,NULL,NULL,NULL),
	(30,5,NULL,'Postage & Delivary','postage_delivary',624,NULL,0,NULL,NULL,NULL,NULL),
	(31,5,NULL,'General Expenses','general_expenses',628,NULL,0,NULL,NULL,NULL,NULL),
	(32,5,NULL,'Insurance','insurance',632,NULL,0,NULL,NULL,NULL,NULL),
	(33,5,NULL,'Legal Expenses','legal_expenses',636,NULL,0,NULL,NULL,NULL,NULL),
	(34,5,NULL,'Utilities','utilities',640,NULL,1,NULL,NULL,NULL,NULL),
	(35,5,NULL,'Automobile Expenses','automobile_expenses',644,NULL,0,NULL,NULL,NULL,NULL),
	(36,5,NULL,'Office Expenses','office_expenses',648,NULL,1,NULL,NULL,NULL,NULL),
	(37,5,NULL,'Printing & Stationary','printing_stationary',652,NULL,0,NULL,NULL,NULL,NULL),
	(38,5,NULL,'Rent','rent',656,NULL,1,NULL,NULL,NULL,NULL),
	(39,5,NULL,'Repairs & Maintenance','repairs_maintenance',660,NULL,0,NULL,NULL,NULL,NULL),
	(40,5,NULL,'Wages & Salaries','wages_salaries',664,NULL,0,NULL,NULL,NULL,NULL),
	(41,5,NULL,'Payroll Tax Expense','payroll_tax_expense',668,NULL,0,NULL,NULL,NULL,NULL),
	(42,5,NULL,'Dues & Subscriptions','dues_subscriptions',672,NULL,0,NULL,NULL,NULL,NULL),
	(43,5,NULL,'Telephone & Internet','telephone_internet',676,NULL,0,NULL,NULL,NULL,NULL),
	(44,5,NULL,'Travel','travel',680,NULL,0,NULL,NULL,NULL,NULL),
	(45,5,NULL,'Bad Debts','bad_debts',684,NULL,0,NULL,NULL,NULL,NULL),
	(46,5,NULL,'Depreciation','depreciation',700,NULL,1,NULL,NULL,NULL,NULL),
	(47,5,NULL,'Income Tax Expense','income_tax_expense',710,NULL,0,NULL,NULL,NULL,NULL),
	(48,5,NULL,'Employee Benefits Expense','employee_benefits_expense',715,NULL,0,NULL,NULL,NULL,NULL),
	(49,5,NULL,'Interest Expense','interest_expense',800,NULL,0,NULL,NULL,NULL,NULL),
	(50,5,NULL,'Bank Revaluations','bank_revaluations',810,NULL,1,NULL,NULL,NULL,NULL),
	(51,5,NULL,'Unrealized Currency Gains','unrealized_currency_gains',815,NULL,1,NULL,NULL,NULL,NULL),
	(52,5,NULL,'Realized Currency Gains','realized_currency_gains',820,NULL,1,NULL,NULL,NULL,NULL),
	(53,5,NULL,'Sales Discount','sales_discount',825,NULL,1,NULL,NULL,NULL,NULL),
	(54,4,NULL,'Sales','sales',400,NULL,0,NULL,NULL,NULL,NULL),
	(55,4,NULL,'Interest Income','interest_income',460,NULL,0,NULL,NULL,NULL,NULL),
	(56,4,NULL,'Other Revenue','other_revenue',470,NULL,0,NULL,NULL,NULL,NULL),
	(57,4,NULL,'Purchase Discount','purchase_discount',475,NULL,1,NULL,NULL,NULL,NULL),
	(58,3,NULL,'Owners Contribution','owners_contribution',300,NULL,0,NULL,NULL,NULL,NULL),
	(59,3,NULL,'Owners Draw','owners_draw',310,NULL,0,NULL,NULL,NULL,NULL),
	(60,3,NULL,'Retained Earnings','retained_earnings',320,NULL,1,NULL,NULL,NULL,NULL),
	(61,3,NULL,'Common Stock','common_stock',330,NULL,0,NULL,NULL,NULL,NULL),
	(62,1,NULL,'Savings Account','savings_account',92,NULL,0,NULL,NULL,NULL,NULL),
	(63,1,NULL,'Allowance for Doubtful Accounts','allowance_for_doubtful_accounts',1001,NULL,1,NULL,NULL,NULL,NULL),
	(64,1,NULL,'Interest Receivable','interest_receivable',1002,NULL,1,NULL,NULL,NULL,NULL),
	(65,1,NULL,'Supplies','supplies',1003,NULL,1,NULL,NULL,NULL,NULL),
	(66,1,NULL,'Prepaid Insurance','prepaid_insurance',1004,NULL,1,NULL,NULL,NULL,NULL),
	(67,1,NULL,'Prepaid Rent','prepaid_rent',1005,NULL,1,NULL,NULL,NULL,NULL),
	(68,1,NULL,'Prepaid Salary','prepaid_salary',1006,NULL,1,NULL,NULL,NULL,NULL),
	(69,1,NULL,'Land','land',1007,NULL,1,NULL,NULL,NULL,NULL),
	(70,1,NULL,'Furniture & Fixture','furniture_fixture',1008,NULL,1,NULL,NULL,NULL,NULL),
	(71,1,NULL,'Buildings','buildings',1009,NULL,1,NULL,NULL,NULL,NULL),
	(72,1,NULL,'Copyrights','copyrights',1010,NULL,1,NULL,NULL,NULL,NULL),
	(73,1,NULL,'Goodwill','goodwill',1011,NULL,1,NULL,NULL,NULL,NULL),
	(74,1,NULL,'Patents','patents',1012,NULL,1,NULL,NULL,NULL,NULL),
	(75,1,NULL,'Accoumulated Depreciation- Buildings','accoumulated_depreciation_buildings',1013,NULL,1,NULL,NULL,NULL,NULL),
	(76,1,NULL,'Accoumulated Depreciation- Furniture & Fixtures','accoumulated_depreciation_furniture_fixtures',1014,NULL,1,NULL,NULL,NULL,NULL),
	(77,2,NULL,'Notes Payable','notes_payable',1201,NULL,1,NULL,NULL,NULL,NULL),
	(78,2,NULL,'Salaries and Wages Payable','salaries_and_wages_payable',1202,NULL,1,NULL,NULL,NULL,NULL),
	(79,2,NULL,'Unearned Rent Revenue','unearned_rent_revenue',1203,NULL,1,NULL,NULL,NULL,NULL),
	(80,2,NULL,'Interest Payable','interest_payable',1204,NULL,1,NULL,NULL,NULL,NULL),
	(81,2,NULL,'Dividends Payable','dividends_payable',1205,NULL,1,NULL,NULL,NULL,NULL),
	(82,2,NULL,'Bonds Payable','bonds_payable',1206,NULL,1,NULL,NULL,NULL,NULL),
	(83,2,NULL,'Discount on Bonds Payable','discount_on_bonds_payable',1207,NULL,1,NULL,NULL,NULL,NULL),
	(84,2,NULL,'Premium on Bonds Payable','premium_on_bonds_payable',1208,NULL,1,NULL,NULL,NULL,NULL),
	(85,2,NULL,'Mortgage Payable','mortgage_payable',1209,NULL,1,NULL,NULL,NULL,NULL),
	(86,3,NULL,'Owner\'s Equity','owner_s_equity',1301,NULL,1,NULL,NULL,NULL,NULL),
	(87,3,NULL,'Paid-in Capital in Excess of Par- Common Stock','paid_in_capital_in_excess_of_par_common_stock',1302,NULL,1,NULL,NULL,NULL,NULL),
	(88,3,NULL,'Paid-in Capital in Excess of Par- Preferred Stock','paid_in_capital_in_excess_of_par_preferred_stock',1303,NULL,1,NULL,NULL,NULL,NULL),
	(89,3,NULL,'Preferred Stock','preferred_stock',1304,NULL,1,NULL,NULL,NULL,NULL),
	(90,3,NULL,'Treasury Stock','treasury_stock',1305,NULL,1,NULL,NULL,NULL,NULL),
	(91,3,NULL,'Dividends','dividends',1306,NULL,1,NULL,NULL,NULL,NULL),
	(92,3,NULL,'Income Summary','income_summary',1307,NULL,1,NULL,NULL,NULL,NULL),
	(93,4,NULL,'Service Revenue','service_revenue',1401,NULL,1,NULL,NULL,NULL,NULL),
	(94,4,NULL,'Sales Revenue','sales_revenue',1402,NULL,1,NULL,NULL,NULL,NULL),
	(95,5,NULL,'Sales Returns and Allowance','sales_returns_and_allowance',1403,NULL,1,NULL,NULL,NULL,NULL),
	(96,4,NULL,'Gain on Disposal of Plant Assets','gain_on_disposal_of_plant_assets',1404,NULL,1,NULL,NULL,NULL,NULL),
	(97,4,NULL,'Asset Sales','asset_sales',1405,NULL,1,NULL,NULL,NULL,NULL),
	(98,5,NULL,'Amortization Expense','amortization_expense',1501,NULL,1,NULL,NULL,NULL,NULL),
	(99,5,NULL,'Freight-Out','freight_out',1502,NULL,1,NULL,NULL,NULL,NULL),
	(100,5,NULL,'Insurance Expense','insurance_expense',1503,NULL,1,NULL,NULL,NULL,NULL),
	(101,5,NULL,'Loss on Disposal of Plant Assets','loss_on_disposal_of_plant_assets',1504,NULL,1,NULL,NULL,NULL,NULL),
	(102,5,NULL,'Maintenance and Repairs Expense','maintenance_and_repairs_expense',1505,NULL,1,NULL,NULL,NULL,NULL),
	(103,5,NULL,'Purchase','purchase',1506,NULL,1,NULL,NULL,NULL,NULL),
	(104,5,NULL,'Asset Purchase','asset_purchase',1506,NULL,1,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_ledgers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_opening_balances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_opening_balances`;

CREATE TABLE `wp_erp_acct_opening_balances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `financial_year_id` int(11) DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_pay_bill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_pay_bill`;

CREATE TABLE `wp_erp_acct_pay_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_pay_bill_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_pay_bill_details`;

CREATE TABLE `wp_erp_acct_pay_bill_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_pay_purchase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_pay_purchase`;

CREATE TABLE `wp_erp_acct_pay_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_pay_purchase_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_pay_purchase_details`;

CREATE TABLE `wp_erp_acct_pay_purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `purchase_no` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_payment_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_payment_methods`;

CREATE TABLE `wp_erp_acct_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_payment_methods` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_payment_methods` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_payment_methods` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'Cash',NULL,NULL,NULL,NULL),
	(2,'Bank',NULL,NULL,NULL,NULL),
	(3,'Check',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_people_account_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_people_account_details`;

CREATE TABLE `wp_erp_acct_people_account_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_people_trn
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_people_trn`;

CREATE TABLE `wp_erp_acct_people_trn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `trn_date` date DEFAULT NULL,
  `trn_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_people_trn_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_people_trn_details`;

CREATE TABLE `wp_erp_acct_people_trn_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_product_categories`;

CREATE TABLE `wp_erp_acct_product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_product_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_product_details`;

CREATE TABLE `wp_erp_acct_product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `stock_in` int(11) DEFAULT NULL,
  `stock_out` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_product_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_product_types`;

CREATE TABLE `wp_erp_acct_product_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_product_types` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_product_types` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_product_types` (`id`, `name`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'Inventory','inventory',NULL,NULL,NULL,NULL),
	(2,'Service','service',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_product_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_products`;

CREATE TABLE `wp_erp_acct_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tax_cat_id` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT '0.00',
  `sale_price` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_purchase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_purchase`;

CREATE TABLE `wp_erp_acct_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `purchase_order` tinyint(1) DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_purchase_account_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_purchase_account_details`;

CREATE TABLE `wp_erp_acct_purchase_account_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_no` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_purchase_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_purchase_details`;

CREATE TABLE `wp_erp_acct_purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trn_no` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_tax_agencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_tax_agencies`;

CREATE TABLE `wp_erp_acct_tax_agencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecommerce_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_tax_agency_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_tax_agency_details`;

CREATE TABLE `wp_erp_acct_tax_agency_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT '0.00',
  `credit` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_tax_cat_agency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_tax_cat_agency`;

CREATE TABLE `wp_erp_acct_tax_cat_agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_cat_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT '0.00',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_tax_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_tax_categories`;

CREATE TABLE `wp_erp_acct_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_tax_pay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_tax_pay`;

CREATE TABLE `wp_erp_acct_tax_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `voucher_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trn_by` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_taxes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_taxes`;

CREATE TABLE `wp_erp_acct_taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_transfer_voucher
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_transfer_voucher`;

CREATE TABLE `wp_erp_acct_transfer_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `ac_from` int(11) DEFAULT NULL,
  `ac_to` int(11) DEFAULT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_acct_trn_status_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_trn_status_types`;

CREATE TABLE `wp_erp_acct_trn_status_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_acct_trn_status_types` WRITE;
/*!40000 ALTER TABLE `wp_erp_acct_trn_status_types` DISABLE KEYS */;

INSERT INTO `wp_erp_acct_trn_status_types` (`id`, `type_name`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`)
VALUES
	(1,'Draft','draft',NULL,NULL,NULL,NULL),
	(2,'Awaiting Payment','awaiting_payment',NULL,NULL,NULL,NULL),
	(3,'Pending','pending',NULL,NULL,NULL,NULL),
	(4,'Paid','paid',NULL,NULL,NULL,NULL),
	(5,'Partially Paid','partially_paid',NULL,NULL,NULL,NULL),
	(6,'Approved','approved',NULL,NULL,NULL,NULL),
	(7,'Closed','closed',NULL,NULL,NULL,NULL),
	(8,'Void','void',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wp_erp_acct_trn_status_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_acct_voucher_no
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_acct_voucher_no`;

CREATE TABLE `wp_erp_acct_voucher_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editable` tinyint(4) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_audit_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_audit_log`;

CREATE TABLE `wp_erp_audit_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `component` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sub_component` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data_id` bigint(20) DEFAULT NULL,
  `old_value` longtext COLLATE utf8mb4_unicode_ci,
  `new_value` longtext COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `changetype` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component` (`component`),
  KEY `sub_component` (`sub_component`),
  KEY `changetype` (`changetype`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_audit_log` WRITE;
/*!40000 ALTER TABLE `wp_erp_audit_log` DISABLE KEYS */;

INSERT INTO `wp_erp_audit_log` (`id`, `component`, `sub_component`, `data_id`, `old_value`, `new_value`, `message`, `changetype`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,'HRM','employee',NULL,'','','<strong>Daniel</strong> employee has been edited','edit',1,'2020-04-07 11:47:07',NULL),
	(2,'HRM','employee',NULL,'','','<strong>Daniel</strong> employee has been created','add',1,'2020-04-07 11:47:07',NULL),
	(3,'General','Workflow',NULL,'','','<a href=\"http://localhost/erp/wp-admin/admin.php?page=erp-workflow&action=edit&id=1\">new one</a> has been created.','add',1,'2020-04-07 11:47:46',NULL),
	(4,'General','Workflow',NULL,'','','<a href=\"http://localhost/erp/wp-admin/admin.php?page=erp-workflow&action=edit&id=2\">new task</a> has been created.','add',1,'2020-04-07 11:52:56',NULL);

/*!40000 ALTER TABLE `wp_erp_audit_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_company_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_company_locations`;

CREATE TABLE `wp_erp_company_locations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_activities_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_activities_task`;

CREATE TABLE `wp_erp_crm_activities_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_contact_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_contact_group`;

CREATE TABLE `wp_erp_crm_contact_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `private` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_contact_subscriber
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_contact_subscriber`;

CREATE TABLE `wp_erp_crm_contact_subscriber` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_at` datetime DEFAULT NULL,
  `unsubscribe_at` datetime DEFAULT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_group` (`user_id`,`group_id`),
  KEY `status` (`status`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_customer_activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_customer_activities`;

CREATE TABLE `wp_erp_crm_customer_activities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `email_subject` text COLLATE utf8mb4_unicode_ci,
  `log_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci,
  `sent_notification` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`),
  KEY `log_type` (`log_type`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_customer_companies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_customer_companies`;

CREATE TABLE `wp_erp_crm_customer_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_save_email_replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_save_email_replies`;

CREATE TABLE `wp_erp_crm_save_email_replies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `template` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_crm_save_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_crm_save_search`;

CREATE TABLE `wp_erp_crm_save_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global` tinyint(4) DEFAULT '0',
  `search_name` text COLLATE utf8mb4_unicode_ci,
  `search_val` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_holidays_indv
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_holidays_indv`;

CREATE TABLE `wp_erp_holidays_indv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `holiday_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_announcement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_announcement`;

CREATE TABLE `wp_erp_hr_announcement` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_dependents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_dependents`;

CREATE TABLE `wp_erp_hr_dependents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_depts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_depts`;

CREATE TABLE `wp_erp_hr_depts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `lead` int(11) unsigned DEFAULT '0',
  `parent` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_designations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_designations`;

CREATE TABLE `wp_erp_hr_designations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_education
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_education`;

CREATE TABLE `wp_erp_hr_education` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) unsigned DEFAULT NULL,
  `school` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finished` int(4) unsigned DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `interest` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_employee_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_employee_history`;

CREATE TABLE `wp_erp_hr_employee_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_hr_employee_history` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_employee_history` DISABLE KEYS */;

INSERT INTO `wp_erp_hr_employee_history` (`id`, `user_id`, `module`, `category`, `type`, `comment`, `data`, `date`)
VALUES
	(1,2,'employment',NULL,'permanent','',NULL,'2020-04-01 00:00:00'),
	(2,2,'job',NULL,NULL,NULL,'0','2020-04-01 00:00:00');

/*!40000 ALTER TABLE `wp_erp_hr_employee_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_hr_employee_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_employee_notes`;

CREATE TABLE `wp_erp_hr_employee_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_by` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_employee_performance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_employee_performance`;

CREATE TABLE `wp_erp_hr_employee_performance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) unsigned DEFAULT NULL,
  `reporting_to` int(11) unsigned DEFAULT NULL,
  `job_knowledge` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_quality` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dependablity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer` int(11) unsigned DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `completion_date` datetime DEFAULT NULL,
  `goal_description` text COLLATE utf8mb4_unicode_ci,
  `employee_assessment` text COLLATE utf8mb4_unicode_ci,
  `supervisor` int(11) unsigned DEFAULT NULL,
  `supervisor_assessment` text COLLATE utf8mb4_unicode_ci,
  `type` text COLLATE utf8mb4_unicode_ci,
  `performance_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_employees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_employees`;

CREATE TABLE `wp_erp_hr_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` int(11) unsigned NOT NULL DEFAULT '0',
  `department` int(11) unsigned NOT NULL DEFAULT '0',
  `location` int(10) unsigned NOT NULL DEFAULT '0',
  `hiring_source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hiring_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `date_of_birth` date NOT NULL,
  `reporting_to` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pay_rate` int(11) unsigned NOT NULL DEFAULT '0',
  `pay_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `employee_id` (`employee_id`),
  KEY `designation` (`designation`),
  KEY `department` (`department`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_hr_employees` WRITE;
/*!40000 ALTER TABLE `wp_erp_hr_employees` DISABLE KEYS */;

INSERT INTO `wp_erp_hr_employees` (`id`, `user_id`, `employee_id`, `designation`, `department`, `location`, `hiring_source`, `hiring_date`, `termination_date`, `date_of_birth`, `reporting_to`, `pay_rate`, `pay_type`, `type`, `status`, `deleted_at`)
VALUES
	(1,2,'12432432',0,0,0,'-1','2020-04-01','0000-00-00','0000-00-00',0,0,'-1','permanent','active',NULL);

/*!40000 ALTER TABLE `wp_erp_hr_employees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_hr_holiday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_holiday`;

CREATE TABLE `wp_erp_hr_holiday` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `range_status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_leave_entitlements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_leave_entitlements`;

CREATE TABLE `wp_erp_hr_leave_entitlements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `policy_id` int(11) unsigned DEFAULT NULL,
  `days` mediumint(4) DEFAULT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_leave_policies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_leave_policies`;

CREATE TABLE `wp_erp_hr_leave_policies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumint(5) DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` int(11) NOT NULL,
  `designation` int(11) NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(3) NOT NULL,
  `effective_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activate` int(2) NOT NULL,
  `execute_day` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_leave_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_leave_requests`;

CREATE TABLE `wp_erp_hr_leave_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `policy_id` int(11) unsigned NOT NULL,
  `days` tinyint(3) unsigned DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(2) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `last_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `policy_id` (`policy_id`),
  KEY `status` (`status`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_leaves
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_leaves`;

CREATE TABLE `wp_erp_hr_leaves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL,
  `length_hours` decimal(6,2) unsigned NOT NULL,
  `length_days` decimal(6,2) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `duration_type` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_hr_work_exp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_hr_work_exp`;

CREATE TABLE `wp_erp_hr_work_exp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_people_type_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_people_type_relations`;

CREATE TABLE `wp_erp_people_type_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `people_id` bigint(20) unsigned DEFAULT NULL,
  `people_types_id` int(11) unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_id` (`people_id`),
  KEY `people_types_id` (`people_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_people_type_relations` WRITE;
/*!40000 ALTER TABLE `wp_erp_people_type_relations` DISABLE KEYS */;

INSERT INTO `wp_erp_people_type_relations` (`id`, `people_id`, `people_types_id`, `deleted_at`)
VALUES
	(1,1,5,NULL);

/*!40000 ALTER TABLE `wp_erp_people_type_relations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_people_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_people_types`;

CREATE TABLE `wp_erp_people_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_people_types` WRITE;
/*!40000 ALTER TABLE `wp_erp_people_types` DISABLE KEYS */;

INSERT INTO `wp_erp_people_types` (`id`, `name`)
VALUES
	(2,'company'),
	(1,'contact'),
	(3,'customer'),
	(5,'employee'),
	(4,'vendor');

/*!40000 ALTER TABLE `wp_erp_people_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_peoplemeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_peoplemeta`;

CREATE TABLE `wp_erp_peoplemeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `erp_people_id` bigint(20) DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `erp_people_id` (`erp_people_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_peoplemeta` WRITE;
/*!40000 ALTER TABLE `wp_erp_peoplemeta` DISABLE KEYS */;

INSERT INTO `wp_erp_peoplemeta` (`meta_id`, `erp_people_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'life_stage',NULL);

/*!40000 ALTER TABLE `wp_erp_peoplemeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_peoples
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_peoples`;

CREATE TABLE `wp_erp_peoples` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT '0',
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `street_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `life_stage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_owner` bigint(20) DEFAULT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_erp_peoples` WRITE;
/*!40000 ALTER TABLE `wp_erp_peoples` DISABLE KEYS */;

INSERT INTO `wp_erp_peoples` (`id`, `user_id`, `first_name`, `last_name`, `company`, `email`, `phone`, `mobile`, `other`, `website`, `fax`, `notes`, `street_1`, `street_2`, `city`, `state`, `postal_code`, `country`, `currency`, `life_stage`, `contact_owner`, `hash`, `created_by`, `created`)
VALUES
	(1,2,'Daniel','Luka',NULL,'daniel.luka@g.c','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'631b8894dafddd963be678b2c8695e2119a362d6',1,'2020-04-07 11:47:07');

/*!40000 ALTER TABLE `wp_erp_peoples` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_user_leaves
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_user_leaves`;

CREATE TABLE `wp_erp_user_leaves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_erp_workflow_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_workflow_actions`;

CREATE TABLE `wp_erp_workflow_actions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `extra` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `workflow_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_erp_workflow_actions` WRITE;
/*!40000 ALTER TABLE `wp_erp_workflow_actions` DISABLE KEYS */;

INSERT INTO `wp_erp_workflow_actions` (`id`, `name`, `params`, `extra`, `workflow_id`)
VALUES
	(1,'add_user_role','a:1:{s:4:\"role\";s:6:\"editor\";}','',1),
	(2,'update_field','a:2:{s:11:\"field_value\";s:0:\"\";s:10:\"field_name\";s:10:\"first_name\";}','',2);

/*!40000 ALTER TABLE `wp_erp_workflow_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_workflow_conditions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_workflow_conditions`;

CREATE TABLE `wp_erp_workflow_conditions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `condition_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `operator` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `workflow_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_erp_workflow_conditions` WRITE;
/*!40000 ALTER TABLE `wp_erp_workflow_conditions` DISABLE KEYS */;

INSERT INTO `wp_erp_workflow_conditions` (`id`, `condition_name`, `operator`, `value`, `workflow_id`, `parent_id`)
VALUES
	(1,'email','=','',1,0),
	(2,'first_name','=','',2,0);

/*!40000 ALTER TABLE `wp_erp_workflow_conditions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_erp_workflow_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_workflow_logs`;

CREATE TABLE `wp_erp_workflow_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `workflow_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_erp_workflows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_erp_workflows`;

CREATE TABLE `wp_erp_workflows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'auto',
  `object` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `events_group` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `event` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `conditions_group` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'or',
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `delay_time` bigint(20) NOT NULL,
  `delay_period` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `run` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_erp_workflows` WRITE;
/*!40000 ALTER TABLE `wp_erp_workflows` DISABLE KEYS */;

INSERT INTO `wp_erp_workflows` (`id`, `name`, `type`, `object`, `events_group`, `event`, `conditions_group`, `status`, `delay_time`, `delay_period`, `run`, `created_at`, `updated_at`, `deleted_at`, `created_by`)
VALUES
	(1,'new one','auto','','general','created_user','or','active',5,'minute',0,'2020-04-07 11:47:46','2020-04-07 11:47:46',NULL,1),
	(2,'new task','auto','','hrm','created_employee','or','active',5,'minute',0,'2020-04-07 11:52:56','2020-04-07 11:52:56',NULL,1);

/*!40000 ALTER TABLE `wp_erp_workflows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

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



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://localhost/erp','yes'),
	(2,'home','http://localhost/erp','yes'),
	(3,'blogname','WP ERP','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','farazi.test@gmail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:2:{i:0;s:29:\"erp-workflow/erp-workflow.php\";i:1;s:17:\"wp-erp/wp-erp.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','twentytwenty','yes'),
	(41,'stylesheet','twentytwenty','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','47018','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:0:{}','yes'),
	(80,'widget_rss','a:0:{}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','0','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'wp_page_for_privacy_policy','3','yes'),
	(92,'show_comments_cookies_opt_in','1','yes'),
	(93,'admin_email_lifespan','1601811877','yes'),
	(94,'initial_db_version','47018','yes'),
	(95,'wp_user_roles','a:10:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:14:\"erp_hr_manager\";a:2:{s:4:\"name\";s:10:\"HR Manager\";s:12:\"capabilities\";a:43:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:13:\"erp_view_list\";b:1;s:17:\"erp_list_employee\";b:1;s:19:\"erp_create_employee\";b:1;s:17:\"erp_view_employee\";b:1;s:17:\"erp_edit_employee\";b:1;s:19:\"erp_delete_employee\";b:1;s:17:\"erp_create_review\";b:1;s:17:\"erp_delete_review\";b:1;s:17:\"erp_manage_review\";b:1;s:22:\"erp_crate_announcement\";b:1;s:21:\"erp_view_announcement\";b:1;s:23:\"erp_manage_announcement\";b:1;s:18:\"erp_manage_jobinfo\";b:1;s:16:\"erp_view_jobinfo\";b:1;s:21:\"erp_manage_department\";b:1;s:22:\"erp_manage_designation\";b:1;s:24:\"erp_leave_create_request\";b:1;s:16:\"erp_leave_manage\";b:1;s:22:\"erp_manage_hr_settings\";b:1;s:21:\"erp_create_experience\";b:1;s:19:\"erp_edit_experience\";b:1;s:19:\"erp_view_experience\";b:1;s:21:\"erp_delete_experience\";b:1;s:20:\"erp_create_education\";b:1;s:18:\"erp_edit_education\";b:1;s:18:\"erp_view_education\";b:1;s:20:\"erp_delete_education\";b:1;s:17:\"erp_can_terminate\";b:1;s:20:\"erp_create_dependent\";b:1;s:18:\"erp_edit_dependent\";b:1;s:18:\"erp_view_dependent\";b:1;s:20:\"erp_delete_dependent\";b:1;s:19:\"erp_create_document\";b:1;s:17:\"erp_edit_document\";b:1;s:17:\"erp_view_document\";b:1;s:19:\"erp_delete_document\";b:1;s:21:\"erp_create_attendance\";b:1;s:19:\"erp_edit_attendance\";b:1;s:19:\"erp_view_attendance\";b:1;s:21:\"erp_delete_attendance\";b:1;s:28:\"erp_workflow_menu_permission\";b:1;}}s:8:\"employee\";a:2:{s:4:\"name\";s:8:\"Employee\";s:12:\"capabilities\";a:26:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:13:\"erp_view_list\";b:1;s:17:\"erp_list_employee\";b:1;s:17:\"erp_view_employee\";b:1;s:17:\"erp_edit_employee\";b:1;s:16:\"erp_view_jobinfo\";b:1;s:24:\"erp_leave_create_request\";b:1;s:21:\"erp_view_announcement\";b:1;s:21:\"erp_create_experience\";b:1;s:19:\"erp_edit_experience\";b:1;s:19:\"erp_view_experience\";b:1;s:21:\"erp_delete_experience\";b:1;s:20:\"erp_create_education\";b:1;s:18:\"erp_edit_education\";b:1;s:18:\"erp_view_education\";b:1;s:20:\"erp_delete_education\";b:1;s:20:\"erp_create_dependent\";b:1;s:18:\"erp_edit_dependent\";b:1;s:18:\"erp_view_dependent\";b:1;s:20:\"erp_delete_dependent\";b:1;s:19:\"erp_create_document\";b:1;s:17:\"erp_edit_document\";b:1;s:17:\"erp_view_document\";b:1;s:19:\"erp_delete_document\";b:1;s:19:\"erp_view_attendance\";b:1;}}s:14:\"erp_ac_manager\";a:2:{s:4:\"name\";s:18:\"Accounting Manager\";s:12:\"capabilities\";a:44:{s:4:\"read\";b:1;s:21:\"erp_ac_view_dashboard\";b:1;s:20:\"erp_ac_view_customer\";b:1;s:27:\"erp_ac_view_single_customer\";b:1;s:27:\"erp_ac_view_other_customers\";b:1;s:22:\"erp_ac_create_customer\";b:1;s:20:\"erp_ac_edit_customer\";b:1;s:27:\"erp_ac_edit_other_customers\";b:1;s:22:\"erp_ac_delete_customer\";b:1;s:29:\"erp_ac_delete_other_customers\";b:1;s:18:\"erp_ac_view_vendor\";b:1;s:25:\"erp_ac_view_other_vendors\";b:1;s:20:\"erp_ac_create_vendor\";b:1;s:18:\"erp_ac_edit_vendor\";b:1;s:25:\"erp_ac_edit_other_vendors\";b:1;s:20:\"erp_ac_delete_vendor\";b:1;s:27:\"erp_ac_delete_other_vendors\";b:1;s:16:\"erp_ac_view_sale\";b:1;s:25:\"erp_ac_view_single_vendor\";b:1;s:23:\"erp_ac_view_other_sales\";b:1;s:25:\"erp_ac_view_sales_summary\";b:1;s:27:\"erp_ac_create_sales_payment\";b:1;s:28:\"erp_ac_publish_sales_payment\";b:1;s:27:\"erp_ac_create_sales_invoice\";b:1;s:28:\"erp_ac_publish_sales_invoice\";b:1;s:19:\"erp_ac_view_expense\";b:1;s:26:\"erp_ac_view_other_expenses\";b:1;s:28:\"erp_ac_view_expenses_summary\";b:1;s:30:\"erp_ac_create_expenses_voucher\";b:1;s:31:\"erp_ac_publish_expenses_voucher\";b:1;s:29:\"erp_ac_create_expenses_credit\";b:1;s:30:\"erp_ac_publish_expenses_credit\";b:1;s:25:\"erp_ac_view_account_lists\";b:1;s:26:\"erp_ac_view_single_account\";b:1;s:21:\"erp_ac_create_account\";b:1;s:19:\"erp_ac_edit_account\";b:1;s:21:\"erp_ac_delete_account\";b:1;s:25:\"erp_ac_view_bank_accounts\";b:1;s:27:\"erp_ac_create_bank_transfer\";b:1;s:19:\"erp_ac_view_journal\";b:1;s:26:\"erp_ac_view_other_journals\";b:1;s:21:\"erp_ac_create_journal\";b:1;s:19:\"erp_ac_view_reports\";b:1;s:28:\"erp_workflow_menu_permission\";b:1;}}s:15:\"erp_crm_manager\";a:2:{s:4:\"name\";s:11:\"CRM Manager\";s:12:\"capabilities\";a:14:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:20:\"erp_crm_list_contact\";b:1;s:19:\"erp_crm_add_contact\";b:1;s:20:\"erp_crm_edit_contact\";b:1;s:22:\"erp_crm_delete_contact\";b:1;s:24:\"erp_crm_manage_activites\";b:1;s:24:\"erp_crm_manage_dashboard\";b:1;s:24:\"erp_crm_manage_schedules\";b:1;s:21:\"erp_crm_manage_groups\";b:1;s:21:\"erp_crm_create_groups\";b:1;s:19:\"erp_crm_edit_groups\";b:1;s:21:\"erp_crm_delete_groups\";b:1;s:28:\"erp_workflow_menu_permission\";b:1;}}s:13:\"erp_crm_agent\";a:2:{s:4:\"name\";s:9:\"CRM Agent\";s:12:\"capabilities\";a:10:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:20:\"erp_crm_list_contact\";b:1;s:19:\"erp_crm_add_contact\";b:1;s:20:\"erp_crm_edit_contact\";b:1;s:22:\"erp_crm_delete_contact\";b:1;s:24:\"erp_crm_manage_activites\";b:1;s:24:\"erp_crm_manage_dashboard\";b:1;s:24:\"erp_crm_manage_schedules\";b:1;s:21:\"erp_crm_manage_groups\";b:1;}}}','yes'),
	(96,'fresh_site','0','yes'),
	(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(103,'cron','a:11:{i:1587484086;a:1:{s:31:\"erp_per_minute_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"per_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1587487478;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587512678;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587555878;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587555893;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587555895;a:1:{s:26:\"erp_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587570426;a:1:{s:26:\"erp_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588074295;a:1:{s:27:\"erp_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1588088826;a:1:{s:27:\"erp_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1588088835;a:1:{s:25:\"wp-erp_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
	(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(114,'recovery_keys','a:0:{}','yes'),
	(115,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587484010;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}','no'),
	(116,'theme_mods_twentytwenty','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes'),
	(127,'can_compress_scripts','1','no'),
	(134,'recently_activated','a:0:{}','yes'),
	(141,'erp_modules','a:3:{s:3:\"hrm\";a:5:{s:5:\"title\";s:13:\"HR Management\";s:4:\"slug\";s:7:\"erp-hrm\";s:11:\"description\";s:26:\"Human Resource Mnanagement\";s:8:\"callback\";s:30:\"\\WeDevs\\ERP\\HRM\\Human_Resource\";s:7:\"modules\";a:0:{}}s:3:\"crm\";a:5:{s:5:\"title\";s:13:\"CR Management\";s:4:\"slug\";s:7:\"erp-crm\";s:11:\"description\";s:32:\"Customer Relationship Management\";s:8:\"callback\";s:37:\"\\WeDevs\\ERP\\CRM\\Customer_Relationship\";s:7:\"modules\";a:0:{}}s:10:\"accounting\";a:5:{s:5:\"title\";s:21:\"Accounting Management\";s:4:\"slug\";s:14:\"erp-accounting\";s:11:\"description\";s:21:\"Accounting Management\";s:8:\"callback\";s:33:\"\\WeDevs\\ERP\\Accounting\\Accounting\";s:7:\"modules\";a:0:{}}}','yes'),
	(142,'erp_settings_erp-crm_subscription','a:8:{s:10:\"is_enabled\";s:3:\"yes\";s:13:\"email_subject\";s:35:\"Confirm your subscription to WP ERP\";s:13:\"email_content\";s:269:\"Hello!\n\nThanks so much for signing up for our newsletter.\nWe need you to activate your subscription to the list(s): [contact_groups_to_confirm] by clicking the link below: \n\n[activation_link]Click here to confirm your subscription.[/activation_link]\n\nThank you,\n\nWP ERP\";s:7:\"page_id\";i:5;s:18:\"confirm_page_title\";s:23:\"You are now subscribed!\";s:20:\"confirm_page_content\";s:63:\"We\'ve added you to our email list. You\'ll hear from us shortly.\";s:17:\"unsubs_page_title\";s:24:\"You are now unsubscribed\";s:19:\"unsubs_page_content\";s:47:\"You are successfully unsubscribed from list(s):\";}','yes'),
	(143,'erp_acct_new_ledgers','1','yes'),
	(144,'erp_email_settings_employee-welcome','a:3:{s:7:\"subject\";s:37:\"Welcome {full_name} to {company_name}\";s:7:\"heading\";s:29:\"Welcome Onboard {first_name}!\";s:4:\"body\";s:1015:\"Dear {full_name},\n\nWelcome aboard as a <strong>{job_title}</strong> in our <strong>{dept_title}</strong> team at <strong>{company_name}</strong>! I am pleased to have you working with us. You were selected for employment due to the attributes that you displayed that appear to match the qualities I look for in an employee.\n\nI’m looking forward to seeing you grow and develop into an outstanding employee that exhibits a high level of care, concern, and compassion for others. I hope that you will find your work to be rewarding, challenging, and meaningful.\n\nYour <strong>{type}</strong> employment will start from <strong>{joined_date}</strong> and you will be reporting to <strong>{reporting_to}</strong>.\n\nPlease take your time and review our yearly goals so that you can know what is expected and make a positive contribution. Again, I look forward to seeing you grow as a professional while enhancing the lives of the clients entrusted in your care.\n\nSincerely,\nManager Name\nCEO, Company Name\n\n{login_info}\";}','yes'),
	(145,'erp_email_settings_new-leave-request','a:3:{s:7:\"subject\";s:47:\"New leave request received from {employee_name}\";s:7:\"heading\";s:17:\"New Leave Request\";s:4:\"body\";s:316:\"Hello,\n\nA new leave request has been received from {employee_url}.\n\n<strong>Leave type:</strong> {leave_type}\n<strong>Date:</strong> {date_from} to {date_to}\n<strong>Days:</strong> {no_days}\n<strong>Reason:</strong> {reason}\n\nPlease approve/reject this leave application by going following:\n\n{requests_url}\n\nThanks.\";}','yes'),
	(146,'erp_email_settings_approved-leave-request','a:3:{s:7:\"subject\";s:36:\"Your leave request has been approved\";s:7:\"heading\";s:22:\"Leave Request Approved\";s:4:\"body\";s:192:\"Hello {employee_name},\n\nYour <strong>{leave_type}</strong> type leave request for <strong>{no_days} days</strong> from {date_from} to {date_to} has been approved.\n\nRegards\nManager Name\nCompany\";}','yes'),
	(147,'erp_email_settings_rejected-leave-request','a:3:{s:7:\"subject\";s:36:\"Your leave request has been rejected\";s:7:\"heading\";s:22:\"Leave Request Rejected\";s:4:\"body\";s:237:\"Hello {employee_name},\n\nYour <strong>{leave_type}</strong> type leave request for <strong>{no_days} days</strong> from {date_from} to {date_to} has been rejected.\n\nThe reason of rejection is: {reject_reason}\n\nRegards\nManager Name\nCompany\";}','yes'),
	(148,'erp_email_settings_new-task-assigned','a:3:{s:7:\"subject\";s:33:\"New task has been assigned to you\";s:7:\"heading\";s:17:\"New Task Assigned\";s:4:\"body\";s:157:\"Hello {employee_name},\n\nA new task <strong>{task_title}</strong> has been assigned to you by {created_by}.\nDue Date: {due_date}\n\nRegards\nManager Name\nCompany\";}','yes'),
	(149,'erp_email_settings_new-contact-assigned','a:3:{s:7:\"subject\";s:36:\"New contact has been assigned to you\";s:7:\"heading\";s:20:\"New Contact Assigned\";s:4:\"body\";s:141:\"Hello {employee_name},\n\nA new contact <strong>{contact_name}</strong> has been assigned to you by {created_by}.\n\nRegards\nManager Name\nCompany\";}','yes'),
	(150,'erp_email_settings_hiring-anniversary-wish','a:3:{s:7:\"subject\";s:40:\"Congratulation for Your Work Anniversary\";s:7:\"heading\";s:51:\"Congratulation for Passing One More Year With Us :)\";s:4:\"body\";s:512:\"Congratulations {full_name}!\n\nYou have been a model employee for {total_year} years now. You are one of my few original employees and have certainly become an asset to this company. I appreciate the selfless service you\'ve given for so many years. Without the loyalty and hard work of experts like you who helped us get things started, we could never have achieved our present stature. I hope the gift I sent will reflect the high esteem I have for you.\n\nMay you enjoy the fruits of your labors for years to come\";}','yes'),
	(153,'wp_erp_version','1.5.16','yes'),
	(154,'wp_erp_db_version','1.5.16','yes'),
	(155,'wp_erp_install_date','1586259895','yes'),
	(156,'widget_erp-subscription-from-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(158,'erp_setup_wizard_ran','1','yes'),
	(159,'erp_allow_tracking','no','yes'),
	(160,'erp_tracking_notice','hide','yes'),
	(169,'pdf-notice-dismissed','hide','yes'),
	(176,'_transient_health-check-site-status-result','{\"good\":9,\"recommended\":7,\"critical\":1}','yes'),
	(195,'_site_transient_timeout_php_check_cd0d3c01d5de47172fb0980b9e484085','1587709866','no'),
	(196,'_site_transient_php_check_cd0d3c01d5de47172fb0980b9e484085','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
	(216,'_site_transient_timeout_theme_roots','1587485812','no'),
	(217,'_site_transient_theme_roots','a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no'),
	(218,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587484016;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no'),
	(219,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587484018;s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:23:\"email-log/email-log.php\";s:5:\"2.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"wordpress-reset/wordpress-reset.php\";s:5:\"1.4.1\";s:17:\"wp-erp/wp-erp.php\";s:6:\"1.5.16\";s:39:\"erp-field-builder/erp-field-builder.php\";s:5:\"1.3.2\";s:27:\"erp-payroll/erp-payroll.php\";s:5:\"1.4.0\";s:29:\"erp-workflow/erp-workflow.php\";s:5:\"1.2.1\";s:35:\"erp-hr-training/erp-hr-training.php\";s:5:\"1.0.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:23:\"email-log/email-log.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/email-log\";s:4:\"slug\";s:9:\"email-log\";s:6:\"plugin\";s:23:\"email-log/email-log.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/email-log/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/email-log.2.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/email-log/assets/icon-256x256.png?rev=1710920\";s:2:\"1x\";s:62:\"https://ps.w.org/email-log/assets/icon-128x128.png?rev=1710920\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/email-log/assets/banner-1544x500.png?rev=1708230\";s:2:\"1x\";s:64:\"https://ps.w.org/email-log/assets/banner-772x250.png?rev=1708230\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/email-log/assets/banner-1544x500-rtl.png?rev=1708230\";s:2:\"1x\";s:68:\"https://ps.w.org/email-log/assets/banner-772x250-rtl.png?rev=1708230\";}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"wordpress-reset/wordpress-reset.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wordpress-reset\";s:4:\"slug\";s:15:\"wordpress-reset\";s:6:\"plugin\";s:35:\"wordpress-reset/wordpress-reset.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wordpress-reset/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wordpress-reset.1.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/wordpress-reset/assets/icon.svg?rev=1330992\";s:3:\"svg\";s:60:\"https://ps.w.org/wordpress-reset/assets/icon.svg?rev=1330992\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-reset/assets/banner-1544x500.png?rev=1330994\";s:2:\"1x\";s:70:\"https://ps.w.org/wordpress-reset/assets/banner-772x250.png?rev=1330994\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"wp-erp/wp-erp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:17:\"w.org/plugins/erp\";s:4:\"slug\";s:3:\"erp\";s:6:\"plugin\";s:17:\"wp-erp/wp-erp.php\";s:11:\"new_version\";s:6:\"1.5.16\";s:3:\"url\";s:34:\"https://wordpress.org/plugins/erp/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/erp.1.5.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:56:\"https://ps.w.org/erp/assets/icon-256x256.png?rev=1373388\";s:2:\"1x\";s:56:\"https://ps.w.org/erp/assets/icon-128x128.png?rev=1373388\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/erp/assets/banner-1544x500.png?rev=1373388\";s:2:\"1x\";s:58:\"https://ps.w.org/erp/assets/banner-772x250.png?rev=1373388\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),
	(221,'wp-erp_allow_tracking','yes','yes'),
	(222,'wp-erp_tracking_notice','hide','yes'),
	(223,'wp-erp_tracking_last_send','1587484041','yes');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,3,'_wp_page_template','default');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2020-04-07 11:44:38','2020-04-07 11:44:38','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-04-07 11:44:38','2020-04-07 11:44:38','',0,'http://localhost/erp/?p=1',0,'post','',1),
	(2,1,'2020-04-07 11:44:38','2020-04-07 11:44:38','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/erp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-04-07 11:44:38','2020-04-07 11:44:38','',0,'http://localhost/erp/?page_id=2',0,'page','',0),
	(3,1,'2020-04-07 11:44:38','2020-04-07 11:44:38','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/erp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-04-07 11:44:38','2020-04-07 11:44:38','',0,'http://localhost/erp/?page_id=3',0,'page','',0),
	(4,1,'2020-04-07 11:44:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-04-07 11:44:46','0000-00-00 00:00:00','',0,'http://localhost/erp/?p=4',0,'post','',0),
	(5,1,'2020-04-07 11:44:55','2020-04-07 11:44:55','','ERP Subscription','','publish','closed','closed','','erp-subscription','','','2020-04-07 11:44:55','2020-04-07 11:44:55','',0,'http://localhost/erp/erp-subscription/',0,'page','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:4:{s:13:\"administrator\";b:1;s:14:\"erp_hr_manager\";b:1;s:15:\"erp_crm_manager\";b:1;s:14:\"erp_ac_manager\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'default_password_nag',''),
	(16,1,'show_welcome_panel','1'),
	(17,1,'session_tokens','a:1:{s:64:\"740a16eddf83a7fc93d9967e55f7034e92937689579ebc741be19f75cc65806a\";a:4:{s:10:\"expiration\";i:1587656812;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587484012;}}'),
	(18,1,'wp_dashboard_quick_press_last_post_id','4'),
	(19,2,'nickname','daniel.luka@g.c'),
	(20,2,'first_name','Daniel'),
	(21,2,'last_name','Luka'),
	(22,2,'description',''),
	(23,2,'rich_editing','true'),
	(24,2,'syntax_highlighting','true'),
	(25,2,'comment_shortcuts','false'),
	(26,2,'admin_color','fresh'),
	(27,2,'use_ssl','0'),
	(28,2,'show_admin_bar_front','true'),
	(29,2,'locale',''),
	(30,2,'wp_capabilities','a:1:{s:8:\"employee\";b:1;}'),
	(31,2,'wp_user_level','0'),
	(32,2,'dismissed_wp_pointers',''),
	(33,2,'photo_id',''),
	(34,2,'middle_name',''),
	(35,2,'other_email',''),
	(36,2,'phone',''),
	(37,2,'work_phone',''),
	(38,2,'spouse_name',''),
	(39,2,'father_name',''),
	(40,2,'mother_name',''),
	(41,2,'mobile',''),
	(42,2,'address',''),
	(43,2,'driving_license',''),
	(44,2,'hobbies',''),
	(45,2,'user_url',''),
	(46,2,'street_1',NULL),
	(47,2,'street_2',NULL),
	(48,2,'city',NULL),
	(49,2,'postal_code',NULL),
	(50,2,'full_name',''),
	(51,2,'blood_group','-1'),
	(52,2,'nationality','-1'),
	(53,2,'gender','male'),
	(54,2,'marital_status','single'),
	(55,2,'country',NULL),
	(56,2,'state',NULL),
	(57,2,'erp_hr_disable_notification',''),
	(58,2,'company',NULL),
	(59,2,'other',NULL),
	(60,2,'fax',NULL),
	(61,2,'notes',NULL),
	(62,2,'currency',NULL),
	(63,2,'life_stage',NULL);

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$Bpvs8UTz5rROo2Ao2D3sDAeTDbDNs21','admin','farazi.test@gmail.com','http://localhost/erp','2020-04-07 11:44:38','',0,'admin'),
	(2,'daniel.luka@g.c','$P$BBch3RVL90RLxdRdv8oJWRaudHTmhJ.','daniel-lukag-c','daniel.luka@g.c','','2020-04-07 11:47:07','',0,'Daniel Luka');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
