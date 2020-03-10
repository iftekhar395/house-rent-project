-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;

--
-- Definition of table `cost`
--

DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `House_No` varchar(45) NOT NULL,
  `Month` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `Perpous` varchar(500) NOT NULL,
  `Amount` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
INSERT INTO `cost` (`id`,`House_No`,`Month`,`Year`,`Perpous`,`Amount`) VALUES 
 (2,'1','November','2019','Electricity',500),
 (3,'1','October','2019','Garbage',300),
 (4,'1','January','2019','Electicity',500),
 (5,'1','February','2019','Electicity',500),
 (6,'1','March','2019','Electicity',500),
 (7,'1','April','2019','Electicity',500),
 (8,'1','May','2019','Electicity',500),
 (9,'1','June','2019','Electicity',500),
 (10,'1','July','2019','Electicity',500),
 (11,'1','August','2019','Electicity',500),
 (12,'1','September','2019','Electicity',500);
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;


--
-- Definition of table `houseinfo`
--

DROP TABLE IF EXISTS `houseinfo`;
CREATE TABLE `houseinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `House_No` int(10) unsigned NOT NULL,
  `Floor` varchar(45) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  `Details` varchar(245) NOT NULL,
  `Rent` varchar(45) NOT NULL,
  `About` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houseinfo`
--

/*!40000 ALTER TABLE `houseinfo` DISABLE KEYS */;
INSERT INTO `houseinfo` (`id`,`House_No`,`Floor`,`Unit`,`Details`,`Rent`,`About`) VALUES 
 (6,1,'1st','A','Single Room + Single Bath + Single Kitchen','2500','Booked'),
 (7,2,'1st','B','2 Bed + 1 Dinning + 1 Kitchen + 1 Bath','3000','Free'),
 (8,3,'1st','C','2 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','3500','Free'),
 (9,4,'1st','D','3 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','4000','Free'),
 (10,5,'2nd','A','Single Room + Single Bath + Single Kitchen','2500','Free'),
 (11,6,'2nd','B','2 Bed + 1 Dinning + 1 Kitchen + 1 Bath','3000','Free'),
 (12,7,'2nd','C','2 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','3500','Free'),
 (13,8,'2nd','D','3 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','4000','Free'),
 (14,9,'3rd','A','Single Room + Single Bath + Single Kitchen','2500','Free'),
 (15,10,'3rd','B','2 Bed + 1 Dinning + 1 Kitchen + 1 Bath','3000','Free'),
 (16,11,'3rd','C','2 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','3500','Free'),
 (17,12,'3rd','D','3 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','4000','Free'),
 (18,13,'4th','A','Single Room + Single Bath + Single Kitchen','2500','Free'),
 (19,14,'4th','B','2 Bed + 1 Dinning + 1 Kitchen + 1 Bath','3000','Free'),
 (20,15,'4th','C','2 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','3500','Free'),
 (21,16,'4th','D','3 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','4000','Free'),
 (22,17,'5th','D','Single Room + Single Bath + Single Kitchen','2500','Free'),
 (23,18,'5th','C','2 Bed + 1 Dinning + 1 Kitchen + 1 Bath','3000','Free'),
 (24,19,'5th','B','2 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','3500','Free'),
 (25,20,'5th','A','3 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','4000','Free'),
 (26,21,'6th','A','Single Room + Single Bath + Single Kitchen','2500','Free'),
 (27,22,'6th','B','2 Bed + 1 Dinning + 1 Kitchen + 1 Bath','3000','Free'),
 (28,23,'6th','C','2 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','3500','Free'),
 (29,24,'6th','D','3 Bed + 1 Drawing + 1 Dinning + 1 Kitchen + 2 Bath','4000','Free');
/*!40000 ALTER TABLE `houseinfo` ENABLE KEYS */;


--
-- Definition of table `houserent`
--

DROP TABLE IF EXISTS `houserent`;
CREATE TABLE `houserent` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `House_No` int(10) unsigned NOT NULL,
  `Floor` varchar(45) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  `Tenant_Name` varchar(45) NOT NULL,
  `Contact` varchar(45) NOT NULL,
  `N_ID` varchar(45) character set latin1 collate latin1_bin NOT NULL,
  `Family_Member` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Advance` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houserent`
--

/*!40000 ALTER TABLE `houserent` DISABLE KEYS */;
INSERT INTO `houserent` (`id`,`House_No`,`Floor`,`Unit`,`Tenant_Name`,`Contact`,`N_ID`,`Family_Member`,`Date`,`Advance`) VALUES 
 (1,1,'1st','A','Md. Iftekhar Hossain','016000000000',0x31323334353637383930,'4','2019-10-01','5000');
/*!40000 ALTER TABLE `houserent` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`Name`,`Password`) VALUES 
 (1,'iftekhar','5466'),
 (2,'abc','123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `Serial` int(10) unsigned NOT NULL auto_increment,
  `House_No` int(10) unsigned NOT NULL,
  `Floor` varchar(45) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY  USING BTREE (`Serial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`Serial`,`House_No`,`Floor`,`Unit`,`Status`,`Date`) VALUES 
 (1,2,'1st','B','WILL COME.....','2019-12-01');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `rent1`
--

DROP TABLE IF EXISTS `rent1`;
CREATE TABLE `rent1` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `House_No` varchar(45) NOT NULL,
  `Floor` varchar(45) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  `Day` varchar(45) NOT NULL,
  `Month` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `Electricity_Bill` double NOT NULL,
  `Water_Bill` double NOT NULL,
  `Gas_Bill` double NOT NULL,
  `Others` double NOT NULL,
  `Rent` double NOT NULL,
  `Total` double NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Advance` double NOT NULL,
  `Due` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent1`
--

/*!40000 ALTER TABLE `rent1` DISABLE KEYS */;
INSERT INTO `rent1` (`id`,`House_No`,`Floor`,`Unit`,`Day`,`Month`,`Year`,`Electricity_Bill`,`Water_Bill`,`Gas_Bill`,`Others`,`Rent`,`Total`,`Status`,`Advance`,`Due`) VALUES 
 (1,'1','1st','A',' 2019/11/01','October','2019',200,300,1000,100,2500,4100,'Paid',0,0),
 (2,'1','1st','A',' 2019/12/01','January','2019',300,500,1200,500,2500,5000,'Paid',0,0),
 (3,'1','1st','A',' 2019/03/01','February','2019',500,300,1200,500,2500,5000,'Paid',0,0),
 (4,'1','1st','A',' 2019/03/01','March','2019',200,300,1200,500,2500,4700,'Paid',0,0),
 (5,'1','1st','A',' 2019/05/01','April','2019',350,300,1200,500,2500,4850,'Paid',0,0),
 (6,'1','1st','A',' 2019/06/01','May','2019',390,300,1200,500,2500,4890,'Paid',0,0),
 (7,'1','1st','A',' 2019/07/05','June','2019',490,300,1200,500,2500,4990,'Paid',0,0),
 (8,'1','1st','A',' 2019/08/02','July','2019',220,300,1200,500,2500,4720,'Paid',0,0),
 (9,'1','1st','A',' 2019/09/05','August','2019',420,300,1200,500,2500,4920,'Paid',0,0),
 (10,'1','1st','A',' 2019/10/07','September','2019',320,300,1200,500,2500,4820,'Paid',0,0),
 (11,'1','1st','A',' 2019/12/05','November','2019',320,500,1200,500,2500,5020,'Paid',0,0),
 (12,'1','1st','A',' 2019/12/31','December','2019',220,500,1200,500,2500,4920,'Paid',0,0);
/*!40000 ALTER TABLE `rent1` ENABLE KEYS */;


--
-- Definition of table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `House_no` int(10) unsigned NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Contact` varchar(45) NOT NULL,
  `Father` varchar(45) NOT NULL,
  `Mother` varchar(45) NOT NULL,
  `nid` varchar(45) NOT NULL,
  `District` varchar(45) NOT NULL,
  `PO` varchar(45) NOT NULL,
  `PS` varchar(45) NOT NULL,
  `Village` varchar(45) NOT NULL,
  `Floor` varchar(45) NOT NULL,
  `Unit` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` (`id`,`House_no`,`Name`,`Contact`,`Father`,`Mother`,`nid`,`District`,`PO`,`PS`,`Village`,`Floor`,`Unit`) VALUES 
 (2,1,'Md. Iftekhar Hossain','016000000000','Md. Delwar Hossain','Lutfa','1234567890','Gazipur','National University','Gacha','Gacha(East)','1st','A'),
 (3,2,'dfg','2343243','Abdul Kuddus','fgdsfgf','312312323','abc','abc','sdfd','abc','6th',' ');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Sec_Q` varchar(45) NOT NULL,
  `Answer` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`Name`,`Username`,`Sec_Q`,`Answer`,`Password`) VALUES 
 (1,'Md. Iftekhar Hossain','iftekhar','What is your nick name?','limon','5466'),
 (2,'abc','abc','Who is your favourite Person?','abc','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
