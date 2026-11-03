/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.28 : Database - payrollmgt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`payrollmgt` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `payrollmgt`;

/*Table structure for table `em_attendance` */

DROP TABLE IF EXISTS `em_attendance`;

CREATE TABLE `em_attendance` (
  `ID` bigint NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `ADATE` datetime DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `em_attendance` */

insert  into `em_attendance`(`ID`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`ADATE`,`EMAIL_ID`,`USER_NAME`,`STATUS`) values 
(1,NULL,NULL,NULL,NULL,'2020-06-01 00:00:00','Hariomukati741@gmail.com','Hariom Mukati','Persent'),
(2,NULL,NULL,NULL,NULL,'2020-06-01 00:00:00','Shubham@gmail.com','alexa kinner','Persent');

/*Table structure for table `em_leave` */

DROP TABLE IF EXISTS `em_leave`;

CREATE TABLE `em_leave` (
  `ID` bigint NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `TO_DATE` datetime DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `em_leave` */

insert  into `em_leave`(`ID`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`DESCRIPTION`,`FROM_DATE`,`USER_NAME`,`TO_DATE`,`Email_ID`) values 
(1,NULL,NULL,NULL,NULL,'ggg','2020-08-01 00:00:00','Hariom Mukati','2020-06-01 00:00:00','Hariomukati741@gmail.com'),
(2,NULL,NULL,NULL,NULL,'fg','2020-08-01 00:00:00','alexa kinner','2020-06-01 00:00:00','Shubham@gmail.com');

/*Table structure for table `em_role` */

DROP TABLE IF EXISTS `em_role`;

CREATE TABLE `em_role` (
  `ID` bigint NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `ROLE_DESCRIPTION` varchar(70) DEFAULT NULL,
  `ROLE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `em_role` */

insert  into `em_role`(`ID`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`ROLE_DESCRIPTION`,`ROLE_NAME`) values 
(1,NULL,NULL,NULL,NULL,'Administarion','Admin'),
(2,NULL,NULL,NULL,NULL,'Employee','Employee');

/*Table structure for table `em_salary` */

DROP TABLE IF EXISTS `em_salary`;

CREATE TABLE `em_salary` (
  `ID` bigint NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `AMOUNT` varchar(50) DEFAULT NULL,
  `MONTH` varchar(50) DEFAULT NULL,
  `SDATE` datetime DEFAULT NULL,
  `USER_ID` bigint DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `em_salary` */

insert  into `em_salary`(`ID`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`AMOUNT`,`MONTH`,`SDATE`,`USER_ID`,`USER_NAME`) values 
(1,NULL,NULL,NULL,NULL,'10000','January','2019-10-01 00:00:00',1,'Hariom Mukati'),
(2,NULL,NULL,NULL,NULL,'10000','February','2019-10-01 00:00:00',3,'Axel Kinney');

/*Table structure for table `em_timesheet` */

DROP TABLE IF EXISTS `em_timesheet`;

CREATE TABLE `em_timesheet` (
  `ID` bigint NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `HOURS` varchar(50) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `tDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `em_timesheet` */

insert  into `em_timesheet`(`ID`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`DESCRIPTION`,`EMAIL_ID`,`HOURS`,`USER_NAME`,`tDATE`) values 
(1,NULL,NULL,NULL,NULL,'DDDD','Hariomukati741@gmail.com','10:00 PM','Hariom Mukati','2019-10-01 00:00:00'),
(2,NULL,NULL,NULL,NULL,'dsfb','Shubham@gmail.com','10:00 PM','alexa kinner','2019-10-01 00:00:00');

/*Table structure for table `em_user` */

DROP TABLE IF EXISTS `em_user`;

CREATE TABLE `em_user` (
  `ID` bigint NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `CURRENT_ADDRESS` varchar(50) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `DOJ` datetime DEFAULT NULL,
  `EDUCATION` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `FATHER_NAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `LANGUAGE` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOGIN` varchar(50) DEFAULT NULL,
  `MATERIAL_STATUS` varchar(50) DEFAULT NULL,
  `MOBILE_NO` varchar(15) DEFAULT NULL,
  `MOTHER_NAME` varchar(50) DEFAULT NULL,
  `P_SKILL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `PERMANENT_ADDRESS` varchar(50) DEFAULT NULL,
  `ROLE_ID` bigint DEFAULT NULL,
  `S_SKILL` varchar(50) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `em_user` */

insert  into `em_user`(`ID`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`CURRENT_ADDRESS`,`DEPARTMENT`,`DESIGNATION`,`DOB`,`DOJ`,`EDUCATION`,`EMAIL_ID`,`FATHER_NAME`,`FIRST_NAME`,`GENDER`,`LANGUAGE`,`LAST_NAME`,`LOGIN`,`MATERIAL_STATUS`,`MOBILE_NO`,`MOTHER_NAME`,`P_SKILL`,`PASSWORD`,`PERMANENT_ADDRESS`,`ROLE_ID`,`S_SKILL`,`fullName`) values 
(1,NULL,NULL,NULL,NULL,NULL,'HHH','FC','1997-06-10 00:00:00','2019-01-10 21:05:59','DD','Hariomukati741@gmail.com','Prem','Hariom','Male','JAVA','Mukati','Hariom@gmail.com','dv','9165415598','KK','cc','Hari@123','vv',1,'ddd',NULL),
(3,NULL,NULL,NULL,NULL,'Ut velit estdo','Dolorem ','Temporibus','1997-10-06 00:00:00','2019-10-01 00:00:00','Aspernatur','Shubham@gmail.com','Katelyn Walters','Axel','Male','Assumenda ','Kinney','Shubham@gmail.com',NULL,'9165415598','Basia Ferguson','Deserunt','Shubh@123',' labore in est',2,'Voluptas',NULL),
(4,NULL,NULL,NULL,NULL,'Ut nulla eaque conse','Eos reprehenderit om','Ullamco reiciendis c',NULL,NULL,'Quo aliquam et conse','lihic@mailinator.com','Indigo Morrison','Priscilla','Female','Molestiae harum qui ','Daugherty','asd123@gmail.com',NULL,'8585858585','Charlotte Garrison','Enim laboriosam ut ','Pa$$w0rd!','Sed voluptates exerc',2,'Aperiam similique ve',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
