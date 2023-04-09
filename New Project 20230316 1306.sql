-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bc02
--

CREATE DATABASE IF NOT EXISTS bc02;
USE bc02;

--
-- Definition of table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` (`id`,`username`,`phoneno`,`email`,`password`) VALUES 
 (1,'Buyer1','98745632101','buyer1@gmail.com','111'),
 (2,'Buyer2','7536984102','buyer2@gmail.com','222'),
 (3,'Buyer 3','359784294','buyer3@gmail.com','333'),
 (4,'surya','887744555','surya@gmail.com','123'),
 (5,'venkat','9756438756','venkat@gmail.com','111');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;


--
-- Definition of table `buyerproduct`
--

DROP TABLE IF EXISTS `buyerproduct`;
CREATE TABLE `buyerproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `croptype` varchar(45) DEFAULT NULL,
  `bagno` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `cropquality` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `card` varchar(45) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `cnumber` varchar(45) DEFAULT NULL,
  `edate` varchar(45) DEFAULT NULL,
  `cvv` varchar(45) DEFAULT NULL,
  `phash` varchar(205) DEFAULT NULL,
  `ahash` varchar(205) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyerproduct`
--

/*!40000 ALTER TABLE `buyerproduct` DISABLE KEYS */;
INSERT INTO `buyerproduct` (`id`,`croptype`,`bagno`,`file`,`cropquality`,`price`,`card`,`cname`,`cnumber`,`edate`,`cvv`,`phash`,`ahash`,`mail`) VALUES 
 (1,NULL,NULL,'first.txt',NULL,'900','dcard','Daney','357','951','957','','66f4ca099a875c5b5a4f44cde52015172f592fc5a037b7d64079160ac0c37771','Admin@gmail.com'),
 (2,NULL,NULL,'fourth.txt',NULL,'456','dcard','Ezhil','35','9511','6794','66f4ca099a875c5b5a4f44cde52015172f592fc5a037b7d64079160ac0c37771','62cb7c379fc0261251c0abbbf2305051a41bb09dc74a906f36a82371369fd044','Admin@gmail.com'),
 (3,NULL,NULL,'fifth.txt',NULL,'3200','ccard','Daney','3549','9843','759','62cb7c379fc0261251c0abbbf2305051a41bb09dc74a906f36a82371369fd044','f6be9954c889a7ff87fbdb3a7bc4e151f48f75eb13b6c3445a875756597ba483','Admin@gmail.com'),
 (4,'Sugar can','3','fourth.txt','Second-quality','456','Debit-card','Victor','3198','25-9-21','3589','f6be9954c889a7ff87fbdb3a7bc4e151f48f75eb13b6c3445a875756597ba483','bbd081ad2ce1241c7dbda46379a40c4da3bb0324c266b7c767e010657296fc27','Admin@gmail.com'),
 (5,'Cereals','3','fifth.txt','Second-quality','3200','Debit-card','Daney','357984519','5-10-22','29','bbd081ad2ce1241c7dbda46379a40c4da3bb0324c266b7c767e010657296fc27','0531d0276b4e292deb124754e80db0f79bdc2981f3cd8af19c0187afe13ac37f','Admin@gmail.com'),
 (6,'Sugar can','7','fourth.txt','Second-quality','657','Credit-card','Victor','34987591259','25-9-21','634','0531d0276b4e292deb124754e80db0f79bdc2981f3cd8af19c0187afe13ac37f','34b4164883304ed3281982f5fa4aedc238ea4a30188cdfe5e496c5549dc477cb','Admin@gmail.com');
/*!40000 ALTER TABLE `buyerproduct` ENABLE KEYS */;


--
-- Definition of table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `id` varchar(150) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cropname` varchar(45) DEFAULT NULL,
  `cagainst` varchar(45) DEFAULT NULL,
  `compfor` varchar(45) DEFAULT NULL,
  `cemment` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` (`id`,`name`,`email`,`cropname`,`cagainst`,`compfor`,`cemment`) VALUES 
 ('0e12011e-123c-468a-b2c0-9130e9155731','niven','former2@gmail.com','potatoes','service','Dealer','fixing high cost'),
 ('9527c254-14dd-4a8b-b0bc-7b713c025663','thala','thala@gmail.com','wheat',NULL,'Dealer','dill'),
 ('9527c254-14dd-4a8b-b0bc-7b713c025663','thala','thala@gmail.com','wheat',NULL,'Dealer','dill');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;


--
-- Definition of table `dealer`
--

DROP TABLE IF EXISTS `dealer`;
CREATE TABLE `dealer` (
  `fname` varchar(45) DEFAULT NULL,
  `femail` varchar(45) DEFAULT NULL,
  `ctype` varchar(45) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `fprice` varchar(45) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `mprice` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `aweight` varchar(45) DEFAULT NULL,
  `kgprice` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `cprice` varchar(45) DEFAULT NULL,
  `cardtype` varchar(45) DEFAULT NULL,
  `cardno` varchar(45) DEFAULT NULL,
  `nameofcard` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `cvv` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ramount` varchar(45) NOT NULL,
  `dealermail` varchar(45) DEFAULT NULL,
  `retailermail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer`
--

/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` (`fname`,`femail`,`ctype`,`cname`,`weight`,`fprice`,`picture`,`mprice`,`status`,`aweight`,`kgprice`,`quantity`,`cprice`,`cardtype`,`cardno`,`nameofcard`,`date`,`year`,`cvv`,`status1`,`id`,`Ramount`,`dealermail`,`retailermail`) VALUES 
 ('thala','thala@gmail.com','foodcrops','paddy','30','1000','sequence diagram.jpg','1000','Available','40','1200','','','','','','','','','Dealerapproved',1,'1000',NULL,NULL),
 ('thakla','thala@gmail.com','foodcrops','wheat','30','30','Classdiagram.jpg','50','Paid','35','55','5','275','Debitcard','869489354456','karthi','09','23','678','Dealerapproved',2,'60',NULL,NULL),
 ('thala','thala@gmail.com','foodcrops','thattai','10','400','data flow diagram.jpg','430','Paid','17','20','3','60','Debitcard','78458775855','karthi','03','23','675','Dealerconfirmation',4,'','venkat@gmail.com','retailer mail'),
 ('thala','thala@gmail.com','foodcrops','thattai','10','400','data flow diagram.jpg','425','Paid','17','20','3','60','Debitcard','78458775855','karthi','03','23','675','Dealerapproved',5,'435','venkat@gmail.com','ram@gmail.com');
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;


--
-- Definition of table `former`
--

DROP TABLE IF EXISTS `former`;
CREATE TABLE `former` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `former`
--

/*!40000 ALTER TABLE `former` DISABLE KEYS */;
INSERT INTO `former` (`id`,`username`,`phoneno`,`email`,`password`) VALUES 
 (2,'Former2','98745632101','former2@gmail.com','222'),
 (3,'Former2','36985211470','former2@gmail.com','222'),
 (4,'Former 3','789549314','former3@gmail.com','333'),
 (5,'','','',''),
 (6,'vignesh','996654588','vignesh@gmail.com','123'),
 (7,'thala','9756438756','thala@gmail.com','111'),
 (8,'thala','9756438756','thala@gmail.com','111');
/*!40000 ALTER TABLE `former` ENABLE KEYS */;


--
-- Definition of table `formerproduct`
--

DROP TABLE IF EXISTS `formerproduct`;
CREATE TABLE `formerproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctype` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `spicture` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phash` varchar(300) DEFAULT NULL,
  `ahash` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formerproduct`
--

/*!40000 ALTER TABLE `formerproduct` DISABLE KEYS */;
INSERT INTO `formerproduct` (`id`,`ctype`,`weight`,`cname`,`price`,`spicture`,`email`,`name`,`phash`,`ahash`) VALUES 
 (1,'foodcrops','Rice','10 tons','10 lacs','3.jpg',NULL,NULL,NULL,NULL),
 (2,'foodcrops','potatoes','2 tons','1 lacs','1.jpg',NULL,NULL,NULL,NULL),
 (3,'Vengat','2 tons','foodcrops','potatoes','1.jpg','2 tons','1 lacs',NULL,NULL),
 (4,'Vengat','2 tons','foodcrops','potatoes','1.jpg','2 tons','1 lacs',NULL,NULL),
 (5,'foodcrops','Rice','10 tons','200000','2.jpg','Rice','former3@gmail.com',NULL,NULL),
 (6,'foodcrops','Wheat','5 tons','50 lacs','wheat.jfif','Wheat','former3@gmail.com',NULL,NULL),
 (7,'foodcrops','5 tons','Wheat','10 lacs','wheat.jfif','5 tons','Vengat',NULL,NULL),
 (8,'foodcrops','5 tons','Wheat','10 lacs','wheat.jfif','former3@gmail.com','vengat',NULL,NULL),
 (9,'foodcrops','10000000','potatoes','10 lacs','1.jpg','former3@gmail.com','vengat',NULL,NULL),
 (10,'feedcrops','10 tons','potatoes','200000','2.jpg','former2@gmail.com','niven',NULL,NULL),
 (11,'foodcrops','1000','Rice','200000','2.jpg','former3@gmail.com','paul',NULL,'c313a8aa672bd3ebbbd3d1470310b12595eb5ab9c699cbe49c52c00c17e640f8'),
 (12,'foodcrops','10000','Rice','500000','2.jpg','former3@gmail.com','paul','c313a8aa672bd3ebbbd3d1470310b12595eb5ab9c699cbe49c52c00c17e640f8','128812e87324e61c08a4155e8560ffab4bc6557891db1032f19395aa874be7c2'),
 (13,'foodcrops','100 ','Rice','50000','2.jpg','vignesh@gmail.com','Vignesh','128812e87324e61c08a4155e8560ffab4bc6557891db1032f19395aa874be7c2','8390285b858011f5e3d66563a163c39e693c9f662016df77f066dcbcd436e114'),
 (14,'foodcrops','70','paddy','1000','sequence diagram.jpg','thala@gmail.com','thala','8390285b858011f5e3d66563a163c39e693c9f662016df77f066dcbcd436e114','cc7138508d1826b34772cae4f23abfd635aef8afa18962e0bad289555b93c36a'),
 (15,'foodcrops','70','wheat','30','Classdiagram.jpg','thala@gmail.com','thakla','cc7138508d1826b34772cae4f23abfd635aef8afa18962e0bad289555b93c36a','b2b23b8eb4cb5e2e741ebc144f65decc64dd86c88d6d9ec8baed81b403e937fd'),
 (16,'foodcrops','30','thattai','400','data flow diagram.jpg','thala@gmail.com','thala','b2b23b8eb4cb5e2e741ebc144f65decc64dd86c88d6d9ec8baed81b403e937fd','bbe8f5df15411f064e7a3a7aaf4d0eeecbc96fcc833eb2c59358ce117cd85c99');
/*!40000 ALTER TABLE `formerproduct` ENABLE KEYS */;


--
-- Definition of table `productbuyer`
--

DROP TABLE IF EXISTS `productbuyer`;
CREATE TABLE `productbuyer` (
  `croptype` varchar(45) DEFAULT NULL,
  `bagno` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `cropquality` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `card` varchar(45) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `cnumber` varchar(45) DEFAULT NULL,
  `edate` varchar(45) DEFAULT NULL,
  `cvv` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productbuyer`
--

/*!40000 ALTER TABLE `productbuyer` DISABLE KEYS */;
/*!40000 ALTER TABLE `productbuyer` ENABLE KEYS */;


--
-- Definition of table `redereg`
--

DROP TABLE IF EXISTS `redereg`;
CREATE TABLE `redereg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `redereg`
--

/*!40000 ALTER TABLE `redereg` DISABLE KEYS */;
INSERT INTO `redereg` (`id`,`name`,`email`,`mobile`,`password`,`cpassword`,`image`,`team`,`status`) VALUES 
 (1,'venkat','venkat@gmail.com','8907890789','111','111','er-Page-2.jpg','dealer','Approved'),
 (2,'thalapathi','thalapathy@gmail.com','8907890789','111','111','data flow diagram.jpg','retailer','Deactivate'),
 (3,'ramu','ram@gmail.com','9087908790','111','111','Untitled Diagram-Page-7.drawio.png','retailer','Approved');
/*!40000 ALTER TABLE `redereg` ENABLE KEYS */;


--
-- Definition of table `retailer`
--

DROP TABLE IF EXISTS `retailer`;
CREATE TABLE `retailer` (
  `croptype` varchar(45) DEFAULT NULL,
  `bagno` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `cropquality` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer`
--

/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
INSERT INTO `retailer` (`croptype`,`bagno`,`file`,`cropquality`,`price`) VALUES 
 ('Cereals','5','first.txt','Third-quality','500'),
 ('Rice','7','newfirst.txt','Second-quality','1000'),
 ('Cereals','3','fifth.txt','Second-quality','3200'),
 ('Wheat','5','second.txt','First-quality','5000'),
 ('Rice','7','newfirst.txt','Second-quality','1000'),
 ('Sugar can','3','fourth.txt','Second-quality','456'),
 ('Vegetables','3','first.txt','Second-quality','900'),
 ('Sugar can','7','fourth.txt','Second-quality','657'),
 ('8','foodcrops','5 tons','Wheat','10 lacs');
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
