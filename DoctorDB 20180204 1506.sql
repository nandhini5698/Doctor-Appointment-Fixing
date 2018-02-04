-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.53-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema doctor
--

CREATE DATABASE IF NOT EXISTS doctor;
USE doctor;

--
-- Definition of table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `username` varchar(5000) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` (`username`,`password`) VALUES 
 ('admin','admin');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;


--
-- Definition of table `tbl_appointment`
--

DROP TABLE IF EXISTS `tbl_appointment`;
CREATE TABLE `tbl_appointment` (
  `appointmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(5000) NOT NULL,
  `doctor` varchar(5000) NOT NULL,
  `appointmentdate` varchar(5000) NOT NULL,
  `timings` varchar(45) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `doctormailid` varchar(5000) NOT NULL,
  PRIMARY KEY (`appointmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointment`
--

/*!40000 ALTER TABLE `tbl_appointment` DISABLE KEYS */;
INSERT INTO `tbl_appointment` (`appointmentid`,`category`,`doctor`,`appointmentdate`,`timings`,`email`,`doctormailid`) VALUES 
 (104,'GeneralPhysician','Priya','2017-12-31','10.00-10.30','priya@gmail.com','');
/*!40000 ALTER TABLE `tbl_appointment` ENABLE KEYS */;


--
-- Definition of table `tbl_clientregistration`
--

DROP TABLE IF EXISTS `tbl_clientregistration`;
CREATE TABLE `tbl_clientregistration` (
  `name` varchar(5000) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `mobile` varchar(5000) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `dob` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clientregistration`
--

/*!40000 ALTER TABLE `tbl_clientregistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clientregistration` ENABLE KEYS */;


--
-- Definition of table `tbl_description`
--

DROP TABLE IF EXISTS `tbl_description`;
CREATE TABLE `tbl_description` (
  `userid` int(10) unsigned NOT NULL,
  `Name` varchar(4500) NOT NULL,
  `Treatmentfor` varchar(5000) NOT NULL,
  `Treatment` varchar(45) NOT NULL,
  `Note` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_description`
--

/*!40000 ALTER TABLE `tbl_description` DISABLE KEYS */;
INSERT INTO `tbl_description` (`userid`,`Name`,`Treatmentfor`,`Treatment`,`Note`) VALUES 
 (1002,'','fever','dolo 650 ,paracetamel','fever 104,morning and night'),
 (10,'','fever','102 ','paracedamal');
/*!40000 ALTER TABLE `tbl_description` ENABLE KEYS */;


--
-- Definition of table `tbl_doctor`
--

DROP TABLE IF EXISTS `tbl_doctor`;
CREATE TABLE `tbl_doctor` (
  `doctorid` int(10) unsigned NOT NULL,
  `doctorname` varchar(500) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `mobileno` varchar(5000) NOT NULL,
  `Email` varchar(5000) NOT NULL,
  `Category` varchar(5000) NOT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_doctor`
--

/*!40000 ALTER TABLE `tbl_doctor` DISABLE KEYS */;
INSERT INTO `tbl_doctor` (`doctorid`,`doctorname`,`address`,`mobileno`,`Email`,`Category`) VALUES 
 (107,'hari','cbe','8754060426','hari@gmail.com','Heart'),
 (1000,'senthil','coimbatore','8754060427','senthil@gmail.com','General Physician'),
 (1002,'kumar','coimbatore','9787332528','kumar@gmail.com','General Physician'),
 (2001,'Shivay','saravanpatti','8987654356','shiv@gmail.com','Bone'),
 (2002,'Praveena','Kovilpalayam','7898765430','praveena@gmail.com','Heart'),
 (2003,'anika','annur','1234567890','anika@gmail.com','Bone'),
 (2004,'Sangeetha','rathinapuri','9363266136','sangee@gmail.com','General Physician'),
 (4098,'Pari','Periyanakanpalayam','7865479965','pari@gmail.com','Cardiologist');
/*!40000 ALTER TABLE `tbl_doctor` ENABLE KEYS */;


--
-- Definition of table `tbl_feedback`
--

DROP TABLE IF EXISTS `tbl_feedback`;
CREATE TABLE `tbl_feedback` (
  `feedback` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feedback`
--

/*!40000 ALTER TABLE `tbl_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_feedback` ENABLE KEYS */;


--
-- Definition of table `tbl_patientregistration`
--

DROP TABLE IF EXISTS `tbl_patientregistration`;
CREATE TABLE `tbl_patientregistration` (
  `name` varchar(5000) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `mobile` varchar(5000) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `dob` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_patientregistration`
--

/*!40000 ALTER TABLE `tbl_patientregistration` DISABLE KEYS */;
INSERT INTO `tbl_patientregistration` (`name`,`email`,`password`,`mobile`,`gender`,`address`,`dob`) VALUES 
 ('nandhini','nandhini@gmail.com','root','8754060427','f','coimbatore','1999-9-2'),
 ('priya','priya@gmail.com','root','9047552092','f','Saravanampatti','1987-12-24'),
 ('shalini','shalini@gmail.com','shalini','8220392676','f','NGGO Colony','1997-11-25'),
 ('Saranya','saran@gmail.com','saran','8526241815','f','Puliyampatty','1997-11-9'),
 ('Seshu','seshu@gmail.com','cute','9847858261','f','Sivananthacolony','1998-5-4'),
 ('siva','siv@gmail.com','siv','9876654789','m','Papanayakanpalyam','1966-5-10');
/*!40000 ALTER TABLE `tbl_patientregistration` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
