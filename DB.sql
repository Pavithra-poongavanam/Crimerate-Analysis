/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - crimerate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crimerate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crimerate`;

/*Table structure for table `comp` */

DROP TABLE IF EXISTS `comp`;

CREATE TABLE `comp` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `num` varchar(100) DEFAULT NULL,
  `cm` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `tm` varchar(100) DEFAULT NULL,
  `st` varchar(100) DEFAULT 'waiting',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `comp` */

insert  into `comp`(`id`,`name`,`num`,`cm`,`city`,`dt`,`tm`,`st`) values (1,'sharan','987654','kidnape','kerala',NULL,NULL,'done'),(2,'sharan elumalai','7358767063','rape','chennai',NULL,NULL,'done'),(3,'Gajenthiran Chinnaiyan','07358767063','death','Chennai','25 Mar 2022','12:38 PM','waiting');

/*Table structure for table `crime_report` */

DROP TABLE IF EXISTS `crime_report`;

CREATE TABLE `crime_report` (
  `id` int(70) NOT NULL AUTO_INCREMENT,
  `state` varchar(100) DEFAULT NULL,
  `crimes` varchar(100) DEFAULT NULL,
  `2010` varchar(20) DEFAULT NULL,
  `2011` int(20) DEFAULT NULL,
  `2012` int(20) DEFAULT NULL,
  `2013` int(20) DEFAULT NULL,
  `2014` int(20) DEFAULT NULL,
  `2015` int(20) DEFAULT NULL,
  `2016` int(20) DEFAULT NULL,
  `2017` int(20) DEFAULT NULL,
  `2018` int(20) DEFAULT NULL,
  `2019` int(20) DEFAULT NULL,
  `2020` int(20) DEFAULT NULL,
  `2021` int(20) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `crime_report` */

insert  into `crime_report`(`id`,`state`,`crimes`,`2010`,`2011`,`2012`,`2013`,`2014`,`2015`,`2016`,`2017`,`2018`,`2019`,`2020`,`2021`,`status`) values (1,'Andhra Pradesh','rape','871',1002,946,1016,935,1049,1070,1257,1188,1362,1442,1341,'Wait'),(2,'Arunachal Pradesh\r\n','rape','33',38,31,42,35,37,48,42,59,47,42,46,NULL),(3,'Assam\r\n','rape','8170',970,1095,1171,1238,1244,1437,1438,1631,1721,1700,1716,'Wait'),(4,'Bihar\r\n','rape','888',1040,985,1390,1147,1232,1555,1302,929,795,934,927,NULL),(5,'Chhattisgarh\r\n','rape','959',992,898,969,990,995,982,978,976,1012,1053,1034,NULL),(6,'Goa\r\n','rape','12',12,31,37,20,21,20,30,47,36,29,55,NULL),(7,'Gujarat\r\n','rape','286',267,236,339,324,354,316,374,433,408,439,473,NULL),(8,'Haryana\r\n','rape','398',361,353,386,461,608,488,631,603,720,733,668,NULL),(9,'Himachal Pradesh\r\n','rape','124',137,126,153,141,113,159,157,183,160,168,183,NULL),(10,'Jammu & Kashmir\r\n','rape','169',192,211,218,201,250,288,219,237,245,277,303,NULL),(11,'Jharkhand\r\n','rape','567',797,712,797,753,799,855,791,719,773,784,812,NULL),(12,'Karnataka\r\n','rape','293',292,321,291,343,400,436,446,509,586,636,621,NULL),(13,'Kerala\r\n','rape','562',499,394,480,478,601,512,568,568,634,1132,1019,NULL),(14,'Madhya Pradesh\r\n','rape','2851',2891,2738,2875,2921,3555,3010,2937,2998,3135,3406,3425,NULL),(15,'Andhra Pradesh\r\n','KIDNAPPING & ABDUCTION\r\n','765',854,931,1030,995,1329,1564,1396,1526,1531,1612,1403,NULL),(16,'Arunachal Pradesh\r\n','KIDNAPPING & ABDUCTION\r\n','55',38,1351,41,39,51,44,47,28,46,60,58,NULL),(17,'Assam\r\n','KIDNAPPING & ABDUCTION\r\n','10070',1276,674,1552,1456,1544,1471,1789,2092,2767,3192,3360,NULL),(18,'Bihar\r\n','KIDNAPPING & ABDUCTION\r\n','518',744,149,997,929,1084,1260,1789,1986,2569,3050,3789,NULL),(19,'Chhattisgarh\r\n','KIDNAPPING & ABDUCTION\r\n','171',154,13,174,184,178,181,216,229,279,365,350,NULL),(20,'Goa\r\n','KIDNAPPING & ABDUCTION\r\n','6',5,149,10,12,10,7,28,22,18,17,16,NULL),(21,'Andhra Pradesh\r\n','DOWRY DEATH\r\n','420',449,466,512,443,519,613,556,546,588,599,504,NULL),(22,'Andhra Pradesh\r\n','ASSAULT ON WOMEN WITH INTENT TO OUTRAGE HER MODESTY\r\n','3544',3799,4128,3817,3595,4534,4406,4730,5147,4634,4849,4816,NULL),(23,'Andhra Pradesh\r\n','INSULT TO THE MODESTY OF WOMEN\r\n','2271',2024,2323,656,545,788,778,554,454,454,4543,3434,NULL);

/*Table structure for table `dataset` */

DROP TABLE IF EXISTS `dataset`;

CREATE TABLE `dataset` (
  `Medicine_ID` varchar(255) DEFAULT NULL,
  `Medicine_name` varchar(255) DEFAULT NULL,
  `Jan-16` varchar(255) DEFAULT NULL,
  `Feb-16` varchar(255) DEFAULT NULL,
  `Mar-16` varchar(255) DEFAULT NULL,
  `Apr-16` varchar(255) DEFAULT NULL,
  `May-16` varchar(255) DEFAULT NULL,
  `Jun-16` varchar(255) DEFAULT NULL,
  `Jul-16` varchar(255) DEFAULT NULL,
  `Aug-16` varchar(255) DEFAULT NULL,
  `Sep-16` varchar(255) DEFAULT NULL,
  `Oct-16` varchar(255) DEFAULT NULL,
  `Nov-16` varchar(255) DEFAULT NULL,
  `Dec-16` varchar(255) DEFAULT NULL,
  `Jan-17` varchar(255) DEFAULT NULL,
  `Feb-17` varchar(255) DEFAULT NULL,
  `Mar-17` varchar(255) DEFAULT NULL,
  `Apr-17` varchar(255) DEFAULT NULL,
  `May-17` varchar(255) DEFAULT NULL,
  `Jun-17` varchar(255) DEFAULT NULL,
  `Jul-17` varchar(255) DEFAULT NULL,
  `Aug-17` varchar(255) DEFAULT NULL,
  `Sep-17` varchar(255) DEFAULT NULL,
  `Oct-17` varchar(255) DEFAULT NULL,
  `Nov-17` varchar(255) DEFAULT NULL,
  `Dec-17` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `drugs` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `year_2001` varchar(255) DEFAULT NULL,
  `year_2002` varchar(255) DEFAULT NULL,
  `year_2003` varchar(255) DEFAULT NULL,
  `year_2004` varchar(255) DEFAULT NULL,
  `year_2005` varchar(255) DEFAULT NULL,
  `year_2006` varchar(255) DEFAULT NULL,
  `year_2007` varchar(255) DEFAULT NULL,
  `year_2008` varchar(255) DEFAULT NULL,
  `year_2009` varchar(255) DEFAULT NULL,
  `year_2010` varchar(255) DEFAULT NULL,
  `year_2011` varchar(255) DEFAULT NULL,
  `year_2012` varchar(255) DEFAULT NULL,
  `crimes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataset` */

insert  into `dataset`(`Medicine_ID`,`Medicine_name`,`Jan-16`,`Feb-16`,`Mar-16`,`Apr-16`,`May-16`,`Jun-16`,`Jul-16`,`Aug-16`,`Sep-16`,`Oct-16`,`Nov-16`,`Dec-16`,`Jan-17`,`Feb-17`,`Mar-17`,`Apr-17`,`May-17`,`Jun-17`,`Jul-17`,`Aug-17`,`Sep-17`,`Oct-17`,`Nov-17`,`Dec-17`,`id`,`drugs`,`state`,`year_2001`,`year_2002`,`year_2003`,`year_2004`,`year_2005`,`year_2006`,`year_2007`,`year_2008`,`year_2009`,`year_2010`,`year_2011`,`year_2012`,`crimes`) values ('101','Acetyl salicylic acid','22','24','23','15','13','14','15','45','56','15','15','16','20','22','23','19','16','18','20','43','58','18','19','22',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('102','Adrenaline Bitartrate','20','19','22','32','37','30','25','26','52','35','19','12','23','24','22','35','39','35','31','29','55','39','25','20',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('103','Albendazole','26','25','40','30','35','39','32','27','26','26','22','20','25','26','24','36','35','39','35','31','33','35','29','28',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('104','Amlodipine','35','37','32','20','24','26','35','45','49','34','32','28','33','38','35','22','30','37','39','30','33','33','35','30',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('105','Atenolol','75','70','73','65','40','45','48','50','55','53','57','52','65','67','56','62','43','42','45','52','57','55','56','50',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('106','Beclomethasone Dipropionate','65','58','42','42','45','40','50','43','35','52','60','53','61','57','40','43','48','39','47','46','39','50','58','55',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('107','Betamethasone Dipropionate','53','62','55','49','48','43','40','45','50','52','55','58','56','65','58','46','50','43','46','48','52','55','50','54',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('108','Cetrizine','20','22','26','24','35','39','42','33','30','24','22','18','22','24','29','26','37','35','45','34','32','25','25','20',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('109','Chloramphenicol','35','37','52','49','55','48','43','38','35','33','34','36','37','35','54','52','58','50','45','37','33','34','32','38',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('110','Chlorpheniramine Maleate','52','34','33','35','40','36','37','40','50','55','58','60','54','36','31','39','44','38','39','43','54','57','56','63',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('111','Ciprofloxacin Hydrochloride','85','84','88','69','65','68','60','55','59','60','68','76','88','82','85','65','67','70','64','58','54','55','67','73',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('112','Cyanocobalamin','26','28','30','33','35','39','38','45','50','55','57','59','28','30','33','35','37','35','36','42','48','52','55','56',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('113','Dexamethasone','55','53','52','65','68','70','78','74','69','60','63','58','57','55','50','63','65','67','75','73','65','62','65','55',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('114','Diazepam','65','64','63','68','65','62','52','45','45','48','53','57','66','63','65','66','68','64','54','47','43','47','52','55',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('115','Domperidone','87','86','84','80','73','75','70','68','65','64','60','59','85','84','82','81','72','73','68','67','63','62','57','63',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('116','Folic Acid','48','45','54','59','56','60','63','55','56','50','43','47','46','47','56','57','54','58','62','57','58','52','45','45',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('117','Furosemide','20','22','23','29','35','40','39','37','46','45','36','30','24','28','25','27','33','35','37','35','43','45','36','30',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('118','Gentian Violet','36','38','40','45','49','65','64','60','54','50','49','52','38','36','42','44','52','67','66','63','52','54','50','53',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('119','Glibenclamide','71','65','64','69','65','70','73','80','83','85','79','75','77','79','70','75','69','72','75','83','85','87','77','79',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('120','Glyceryl Trinitrate','34','37','40','45','50','52','36','45','54','70','73','72','60','55','45','52','50','46','47','49','52','51','54','47',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('121','Hydrocortisone sodium succinate','50','55','57','50','56','65','45','59','70','75','59','60','55','53','56','53','59','70','52','57','73','77','63','58',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('122','Ibuprofen','90','93','89','85','70','65','71','69','65','63','75','82','88','90','91','84','75','39','75','73','67','68','72','70',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('123','Ipratropium bromide','22','26','27','25','39','42','45','48','52','45','38','32','26','27','29','27','43','45','43','44','50','43','40','35',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('124','Levothyroxine','45','44','43','49','60','65','67','57','50','49','50','49','47','42','45','48','62','61','65','55','50','48','52','50',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('125','Lignocaine Hydrochloride','52','54','60','45','40','35','34','30','27','26','29','35','50','52','57','48','43','38','37','33','30','28','31','35',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('126','Medroxy Progesterone Acetate','70','75','72','69','65','60','54','55','50','57','64','68','73','77','71','67','63','57','52','51','49','54','62','66',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('127','Metformin','45','49','54','52','60','66','70','72','65','63','55','49','44','47','52','50','61','65','69','70','67','60','52','45',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('128','Methyl Ergometrine','60','57','58','49','45','41','35','30','37','39','45','53','58','55','54','47','43','42','34','29','35','40','43','52',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('129','Metronidazole','45','47','49','55','57','54','60','54','48','46','50','47','52','45','43','57','55','53','57','56','57','47','49','45',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('130','Multivitamins ','30','25','21','13','22','27','27','28','14','32','15','34','29','29','20','36','31','25','15','39','28','17','34','24',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('131','Omeprazole','27','15','34','22','21','35','22','28','34','40','40','23','20','12','24','32','34','32','39','33','18','33','20','22',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('132','Oral Rehydration Salts','21','29','15','38','40','22','16','17','36','28','16','11','18','35','13','29','32','38','34','16','22','12','25','15',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('133','Paracetamol','50','33','38','60','62','51','57','34','54','58','41','40','63','38','45','64','34','47','43','49','60','53','61','62',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('134','Pheniramine Maleate','70','82','56','46','28','36','74','37','95','48','63','57','41','44','32','42','94','79','47','45','74','76','27','98',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('135','Polyvalent ','45','44','43','49','60','65','67','57','50','49','50','49','47','42','45','48','62','61','65','55','50','48','52','50',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('136','Povidone Iodine','24','50','37','65','97','66','28','26','67','43','26','86','70','41','91','40','74','94','40','44','47','41','65','66',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('137','Prednisolone','113','53','76','45','74','124','94','145','128','110','22','62','126','63','74','34','139','139','110','47','36','139','116','55',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('138','Promethazine','113','94','38','32','141','30','143','46','57','111','82','133','140','57','59','123','129','99','102','111','123','60','42','111',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('139','Salbutamol sulphate','105','21','111','148','109','105','137','133','136','32','24','149','77','99','48','34','118','60','34','75','80','67','146','50',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('140','Silver Sulphadiazine','24','25','135','64','21','126','133','72','34','113','50','46','79','47','122','109','138','100','80','52','150','59','97','54',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('141','Acyclovir','107','129','119','78','105','99','94','61','23','121','130','116','97','68','131','66','146','119','150','75','56','33','114','55',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('142','Amoxicillin','143','79','135','35','124','96','118','111','47','108','71','51','34','57','100','36','43','131','92','77','32','147','113','148',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('143','Amphotericin B','117','119','134','71','104','125','92','122','28','125','108','75','98','141','127','130','22','67','57','66','36','69','130','146',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('144','Azithromycin','125','101','97','114','55','110','24','64','63','141','126','64','67','39','59','142','137','124','64','114','73','46','116','105',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('145','Cefotaxime','133','87','60','102','147','91','81','131','75','61','82','141','129','95','130','131','28','80','59','129','55','47','120','93',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('146','Codeine phosphate','81','130','24','37','62','100','91','29','79','102','126','33','135','52','118','150','102','119','104','97','31','88','61','52',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('147','Diazepam','96','84','20','114','135','91','139','136','32','138','125','101','108','66','76','53','96','63','108','123','122','134','74','44',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('148','Dopamine Hydrochloride','37','121','42','79','125','35','99','56','125','148','150','67','36','72','23','37','44','130','122','44','123','45','130','37',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('149','Fluconazole','140','36','127','98','83','74','67','84','74','78','33','35','70','107','104','22','77','86','122','77','131','86','57','103',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('150','Iron Dextran','52','92','47','141','24','21','118','124','48','48','86','107','124','77','54','136','29','148','41','35','41','105','58','132',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('151','Losartan Potassium','85','111','79','149','47','134','113','130','79','101','28','51','105','48','60','100','66','128','35','128','95','48','108','127',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('152','Methotrexate','85','140','38','90','126','35','82','64','122','74','76','115','89','76','54','49','82','33','62','143','34','65','70','86',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('153','Methyl Prednisolone','105','105','20','48','85','127','83','53','20','46','132','47','133','47','105','134','114','141','78','102','109','111','150','93',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('154','Morphine Sulphate','29','128','98','72','150','136','85','94','27','114','111','74','57','55','130','133','95','108','123','98','59','123','113','42',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('155','Nifedipine','76','61','132','90','131','86','107','51','59','136','124','99','53','74','88','67','109','112','44','88','127','129','27','117',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('156','Ondansetron','39','94','36','23','89','140','51','106','134','129','135','138','147','99','121','129','53','125','51','95','112','126','117','54',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('157','Permethrin','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('158','Streptokinase','69','138','66','97','74','56','36','137','69','46','101','122','54','107','94','35','106','124','137','120','69','21','149','23',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('159','Tramadol','52','127','86','32','73','112','93','133','37','137','96','112','142','47','126','140','32','46','94','29','64','106','81','37',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('160','Allopurinol','34','55','95','76','37','54','124','61','74','135','53','22','142','106','42','74','70','95','49','97','137','49','130','115',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('161','Alpha Interferon','101','60','61','136','62','65','123','149','60','28','132','116','31','95','25','123','111','110','67','31','30','42','69','103',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('162','Cefixime','42','33','90','110','35','34','111','70','55','56','88','21','79','63','137','38','21','47','149','80','39','41','20','101',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('163','Clopidogrel','137','103','146','135','137','179','80','107','43','179','94','199','30','102','42','124','99','123','45','191','100','47','155','34',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('164','Diclofenac','133','78','124','24','144','172','74','95','184','104','119','57','22','139','149','33','172','30','191','40','29','47','117','127',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('165','Glucagon','83','110','160','171','173','136','132','80','83','114','194','166','57','137','164','195','73','133','71','199','144','107','105','58',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('166','Ciprofloxacin','146','72','111','126','182','172','101','184','144','176','89','151','23','104','154','91','120','36','122','108','184','39','48','143',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('167','Azithromycin','181','136','61','97','93','131','115','115','169','24','36','83','97','93','137','131','125','156','178','175','179','91','139','31',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('168','Ceftriaxone','84','91','101','25','37','87','67','162','88','155','199','121','195','64','102','53','133','119','49','196','112','35','142','159',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('169','tetracycline','65','192','101','114','40','140','27','69','60','170','106','33','122','102','163','122','93','74','188','115','129','148','164','21',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('170','furazolidone','166','43','63','106','183','93','164','60','40','104','145','141','60','155','129','180','87','107','44','131','41','28','143','51',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('171','doxycycline','55','86','48','44','22','50','106','121','159','35','116','165','184','184','200','109','49','122','175','176','115','110','91','178',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('172','analgesics','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('173','antiemetics','199','108','141','147','22','24','189','198','151','94','74','144','77','168','159','48','80','119','110','197','132','78','114','32',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('174','acetaminophen','59','136','147','146','63','99','54','28','81','90','130','196','185','84','58','121','49','45','148','179','153','26','45','148',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('175','Loperamide','194','139','198','106','55','66','146','183','199','167','135','147','174','105','124','72','157','198','180','29','28','29','113','164',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('176','Avomine','127','68','164','111','91','63','163','182','146','27','54','78','198','37','49','77','75','34','182','199','87','137','38','191',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('177','betamethasone','61','169','81','123','50','198','72','96','72','101','120','171','192','112','89','169','138','83','188','88','46','26','54','152',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('178','fluorometholone','43','68','124','32','36','187','91','40','178','38','152','149','71','123','185','68','46','56','53','29','156','150','139','99',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('179','Hydrocortisone','26','144','140','147','125','175','43','93','180','133','158','25','179','90','26','94','68','198','39','84','191','121','174','88',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('180','neomycin','147','151','89','84','128','64','158','131','71','199','57','47','46','197','36','179','73','185','199','162','195','102','98','95',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('181','ibuprofen ','172','166','55','99','137','145','102','117','187','20','24','157','27','122','182','147','88','104','120','124','138','56','142','181',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('182','naproxen','90','166','91','22','140','104','49','178','191','123','73','33','178','75','61','64','179','191','73','131','126','191','184','150',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('183','Atovaquone/Proguanil (Malarone)','188','149','71','94','111','21','98','175','28','86','45','168','175','136','138','169','69','172','64','71','162','108','196','48',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('184','Chloroquine','23','156','115','188','78','40','148','20','24','113','56','108','121','90','43','163','81','199','48','189','186','65','34','63',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('185','Mefloquine (Lariam)','94','95','110','135','165','130','115','181','79','148','59','53','140','99','74','90','146','193','100','84','130','148','97','166',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('186','Calamine lotion ','102','156','78','95','154','117','156','70','42','131','104','75','54','64','163','52','111','47','182','80','137','27','58','62',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('187',' topical steroid creams ','61','75','138','99','107','77','80','192','138','157','85','159','31','113','97','144','158','110','142','47','61','37','72','150',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('188','amoxicillin','66','89','177','40','107','96','144','119','94','115','188','170','173','27','192','81','22','53','33','54','77','32','116','29',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('189','Keflex ','45','46','193','200','116','90','167','84','130','113','39','90','200','172','127','160','190','145','169','137','178','137','71','160',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('190','Augmentin ','124','197','145','44','70','81','179','180','178','142','147','169','192','70','24','150','151','45','78','145','185','175','68','187',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('191','\"ibuprofen (Motrin',' Advil) \"','24','189','47','156','46','149','96','162','124','21','199','166','54','66','165','80','23','85','114','89','193','37','121',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('192','Acetaminophen (Tylenol)','181','164','111','59','166','150','167','56','138','193','184','39','132','113','165','83','160','69','48','25','72','176','198','110',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('193','ketoprofen','159','132','167','152','55','128','183','197','161','73','103','135','73','182','117','24','86','167','138','187','187','78','82','184',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('194','Dextromethorphan','180','34','100','49','151','46','197','171','171','33','179','76','109','161','142','99','149','154','165','171','98','130','103','169',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('195','Decongestants','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('196','Brompheniramine ','185','91','67','30','200','119','141','149','35','174','153','175','50','107','155','177','31','191','160','198','47','200','124','62',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('197','indomethacin','197','154','194','172','96','121','147','136','73','127','189','120','21','125','49','186','146','184','145','191','109','168','73','190',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('198','Chlorpheniramine (Singlet)','167','100','135','26','88','20','67','80','83','35','174','168','67','142','139','149','84','122','82','58','128','31','144','37',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('199','ceftriaxone','92','117','193','95','97','58','108','175','84','54','86','82','101','129','89','94','53','25','124','190','49','160','27','46',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('200','Betadine','29','115','61','148','129','92','144','115','95','191','140','111','36','146','176','61','63','147','112','146','115','184','106','132',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('201','levofloxacin','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('0','Tylenol','42','15','186','295','211','28','81','174','176','153','17','194','85','253','182','257','243','18','29','67','154','281','196','45',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('203','Tamiflu','244','90','238','274','75','31','99','169','54','291','195','18','97','166','62','223','283','259','170','28','44','293','267','32',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('204','Z-Pack','93','22','127','164','256','246','185','146','194','179','300','162','115','264','227','72','250','168','183','203','90','199','52','57',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('205','cefuroxime axetil','29','100','216','70','149','93','67','220','212','51','223','73','19','292','84','138','86','238','234','26','44','14','167','145',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('206','ampicillin','16','141','91','298','300','200','270','284','238','162','12','214','34','79','200','132','110','184','279','218','126','293','283','219',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('207','doxycycline','186','90','269','129','115','166','110','193','252','216','121','177','121','219','31','258','168','196','191','255','161','257','256','182',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `condi` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `drugname` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `pa_review` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `u_review` varchar(255) DEFAULT NULL,
  `uemail` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `crime` varchar(70) DEFAULT NULL,
  `date` varchar(70) DEFAULT NULL,
  `time` varchar(70) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `history` */

insert  into `history`(`id`,`name`,`email`,`crime`,`date`,`time`) values (1,'Karthick','kasrthick@gmail.com','Goa','09 Mar 2020','03:05 PM'),(2,'Karthick','kasrthick@gmail.com','Rape','09 Mar 2020','03:06 PM'),(3,'Karthick','kasrthick@gmail.com','Kerala','09 Mar 2020','03:07 PM'),(4,'Karthick','kasrthick@gmail.com','DOWRY DEATH','09 Mar 2020','03:08 PM'),(5,'Karthick','kasrthick@gmail.com','Rape','09 Mar 2020','03:18 PM'),(6,'Arulnadhan','varulnadhan@gmail.com','KIDNAPPING & ABDUCTION','09 Mar 2020','03:25 PM'),(7,'Arulnadhan','varulnadhan@gmail.com','INSULT TO THE MODESTY OF WOMEN','09 Mar 2020','03:40 PM'),(8,'Karthick','kasrthick@gmail.com','goa','26 Feb 2022','01:00 PM'),(9,'Karthick','kasrthick@gmail.com','tamil nadu','26 Feb 2022','01:00 PM'),(10,'Karthick','kasrthick@gmail.com','andhra','26 Feb 2022','01:00 PM'),(11,'Karthick','kasrthick@gmail.com','andhra','26 Feb 2022','01:02 PM'),(12,'Karthick','kasrthick@gmail.com','null','27 Feb 2022','04:21 PM'),(13,'Karthick','kasrthick@gmail.com','null','27 Feb 2022','04:21 PM'),(14,'Karthick','kasrthick@gmail.com','null','27 Feb 2022','04:21 PM'),(15,'Karthick','kasrthick@gmail.com','null','27 Feb 2022','04:22 PM'),(16,'Karthick','kasrthick@gmail.com','Andhra Pradesh','27 Feb 2022','04:23 PM'),(17,'Karthick','kasrthick@gmail.com','RAPE','27 Feb 2022','04:23 PM'),(18,'Karthick','kasrthick@gmail.com','RAPE','27 Feb 2022','04:30 PM'),(19,'Karthick','kasrthick@gmail.com','rape','27 Feb 2022','04:30 PM'),(20,'Karthick','kasrthick@gmail.com','goa','27 Feb 2022','04:30 PM'),(21,'Arulnadhan','varulnadhan@gmail.com','Andhra Pradesh','23 Mar 2022','09:14 PM'),(22,'null','null','Andhra Pradesh','24 Mar 2022','12:15 AM'),(23,'Karthick','kasrthick@gmail.com','Andhra Pradesh','24 Mar 2022','10:00 PM'),(24,'Karthick','kasrthick@gmail.com','Andhra Pradesh','24 Mar 2022','10:01 PM'),(25,'Karthick','kasrthick@gmail.com','goa','24 Mar 2022','10:24 PM'),(26,'Karthick','kasrthick@gmail.com','Andhra Pradesh','25 Mar 2022','01:12 PM'),(27,'Karthick','kasrthick@gmail.com','Andhra Pradesh','25 Mar 2022','01:12 PM'),(28,'Karthick','kasrthick@gmail.com','Andhra Pradesh','25 Mar 2022','01:13 PM'),(29,'Karthick','kasrthick@gmail.com','New Delhi','25 Mar 2022','01:13 PM'),(30,'Karthick','kasrthick@gmail.com','goa','25 Mar 2022','01:13 PM'),(31,'Pavithra','pavithra@gmail.com','Goa','25 Feb 2024','10:11 PM'),(32,'Pavithra','pavithra@gmail.com','Goa','25 Feb 2024','10:14 PM');

/*Table structure for table `monthly_pre` */

DROP TABLE IF EXISTS `monthly_pre`;

CREATE TABLE `monthly_pre` (
  `Disease_ID` varchar(90) DEFAULT NULL,
  `Disease_Name` varchar(90) DEFAULT NULL,
  `JAN` varchar(60) DEFAULT NULL,
  `FEB` varchar(30) DEFAULT NULL,
  `APRIL` varchar(50) DEFAULT NULL,
  `MAY` varchar(70) DEFAULT NULL,
  `JUNE` varchar(50) DEFAULT NULL,
  `JULY` varchar(70) DEFAULT NULL,
  `tot` int(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `monthly_pre` */

insert  into `monthly_pre`(`Disease_ID`,`Disease_Name`,`JAN`,`FEB`,`APRIL`,`MAY`,`JUNE`,`JULY`,`tot`) values ('1001','Sunburn','11','55','57','53','64','61',301),('1002','Typhoid ','13','28','28','29','30','31',157),('1003','Cholera ','22','25','27','25','22','25',146),('1004','Hepatitis A','18','15','18','16','17','31',115),('1005','Leptospirosis','13','8','9','9','9','14',62),('1006','Diarrhoea ','7','4','8','7','8','15',41),('1007','conjunctivitis','7','6','8','7','8','14',40),('1008','Measles','6','7','8','5','7','7',40),('1009','Dengue ','5','3','4','3','4','5',23),('1010','Malaria','20','7','7','8','7','8',57),('1011','flu','12','7','7','8','8','8',50),('1012','Respiratory infection ','13','15','14','15','15','13',85),('1013','Viral fever','16','17','17','19','17','18',104),('1014','Gastroenteritis ','8','9','8','8','6','7',46),('1015','Pneumonia ','3','4','3','4','5','5',24),('1016','Heat stroke ','2','2','2','4','5','5',20),('1017','Bacterial infection ','6','5','6','7','6','7',37),('1018','Jaundice','4','3','4','7','7','7',32),('1019','Influenza','7','8','8','9','10','5',47),('1020','chikungunya','4','3','5','5','5','10',32);

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `sno` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `timekey` varchar(100) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`sno`,`name`,`password`,`email`,`mobile`,`image`,`status`,`timekey`) values (1,'sharab','1','sharan@gmail.com','987654310','1.png','Accept',NULL);

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(90) NOT NULL AUTO_INCREMENT,
  `Medicine_ID` varchar(90) DEFAULT NULL,
  `Medicine_Name` varchar(90) DEFAULT NULL,
  `status` varchar(90) DEFAULT 'Waiting',
  `uname` varchar(90) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`Medicine_ID`,`Medicine_Name`,`status`,`uname`) values (2,'102','Adrenaline Bitartrate','Waiting','PSALM');

/*Table structure for table `search_history` */

DROP TABLE IF EXISTS `search_history`;

CREATE TABLE `search_history` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `uname` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `Disease_Name` varchar(90) DEFAULT NULL,
  `date` varchar(90) DEFAULT NULL,
  `time` varchar(90) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `search_history` */

insert  into `search_history`(`id`,`uname`,`email`,`Disease_Name`,`date`,`time`) values (1,'PSALM','psalmgajey@gmail.com','Typhoid','12 Mar 2020','11:30 PM'),(2,'PSALM','psalmgajey@gmail.com','Typhoid','12 Mar 2020','11:31 PM'),(3,'PSALM','psalmgajey@gmail.com','Typhoid','12 Mar 2020','11:32 PM'),(4,'PSALM','psalmgajey@gmail.com','Typhoid','12 Mar 2020','11:32 PM'),(5,'PSALM','psalmgajey@gmail.com','Diarrhoea','12 Mar 2020','11:33 PM'),(6,'PSALM','psalmgajey@gmail.com','Diarrhoea','12 Mar 2020','11:33 PM'),(7,'PSALM','psalmgajey@gmail.com','Atenolol','12 Mar 2020','11:45 PM'),(8,'PSALM','psalmgajey@gmail.com','Atenolol','12 Mar 2020','11:50 PM'),(9,'PSALM','psalmgajey@gmail.com','Betamethasone Dipropionate','12 Mar 2020','11:51 PM'),(10,'PSALM','psalmgajey@gmail.com','Betamethasone Dipropionate','12 Mar 2020','11:52 PM'),(11,'PSALM','psalmgajey@gmail.com','levofloxacin','12 Mar 2020','11:53 PM'),(12,'PSALM','psalmgajey@gmail.com','Permethrin','12 Mar 2020','11:55 PM'),(13,'PSALM','psalmgajey@gmail.com','Permethrin','12 Mar 2020','11:59 PM'),(14,'PSALM','psalmgajey@gmail.com','Iron Dextran','13 Mar 2020','12:00 AM'),(15,'PSALM','psalmgajey@gmail.com','Iron Dextran','13 Mar 2020','12:01 AM'),(16,'PSALM','psalmgajey@gmail.com','Iron Dextran','13 Mar 2020','12:01 AM'),(17,'PSALM','psalmgajey@gmail.com','Decongestants','13 Mar 2020','04:24 PM'),(18,'PSALM','psalmgajey@gmail.com','Atenolol','13 Mar 2020','04:25 PM'),(19,'PSALM','psalmgajey@gmail.com','Chloramphenicol','13 Mar 2020','04:59 PM'),(20,'PSALM','psalmgajey@gmail.com','Chloramphenicol','13 Mar 2020','05:00 PM'),(21,'PSALM','psalmgajey@gmail.com','levofloxacin','13 Mar 2020','05:01 PM'),(22,'PSALM','psalmgajey@gmail.com','levofloxacin','13 Mar 2020','05:05 PM'),(23,'PSALM','psalmgajey@gmail.com','levofloxacin','13 Mar 2020','05:05 PM'),(24,'PSALM','psalmgajey@gmail.com','Cyanocobalamin','13 Mar 2020','05:05 PM'),(25,'PSALM','psalmgajey@gmail.com','Permethrin','13 Mar 2020','05:06 PM'),(26,'PSALM','psalmgajey@gmail.com','Permethrin','13 Mar 2020','05:07 PM'),(27,'PSALM','psalmgajey@gmail.com','Methotrexate','13 Mar 2020','05:07 PM'),(28,'PSALM','psalmgajey@gmail.com','levofloxacin','13 Mar 2020','05:25 PM'),(29,'PSALM','psalmgajey@gmail.com','Diarrhoea','13 Mar 2020','05:25 PM'),(30,'PSALM','psalmgajey@gmail.com','Atenolol','13 Mar 2020','05:25 PM'),(31,'PSALM','psalmgajey@gmail.com','Adrenaline Bitartrate','13 Mar 2020','05:38 PM'),(32,'PSALM','psalmgajey@gmail.com','Adrenaline Bitartrate','13 Mar 2020','05:42 PM'),(33,'PSALM','psalmgajey@gmail.com','Adrenaline Bitartrate','13 Mar 2020','05:46 PM'),(34,'carthee','karthialdo27@gmail.com','cold','15 Mar 2020','02:21 PM'),(35,'carthee','karthialdo27@gmail.com','cold fever','15 Mar 2020','02:21 PM'),(36,'carthee','karthialdo27@gmail.com','Medroxy Progesterone Acetate','15 Mar 2020','02:22 PM'),(37,'Carthee','karthialdo27@gmail.com','cold','15 Mar 2020','02:33 PM'),(38,'Carthee','karthialdo27@gmail.com','Medroxy Progesterone Acetate','15 Mar 2020','02:33 PM'),(39,'Carthee','karthialdo27@gmail.com','Medroxy Progesterone Acetate','15 Mar 2020','02:33 PM');

/*Table structure for table `userreg` */

DROP TABLE IF EXISTS `userreg`;

CREATE TABLE `userreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `userreg` */

insert  into `userreg`(`id`,`address`,`email`,`mobile`,`name`,`password`) values (1,'Chennai','pavithra@gmail.com','9876543210','Pavithra','333');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
