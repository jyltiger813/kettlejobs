/*
SQLyog Ultimate v8.4 
MySQL - 5.1.73 : Database - ywg_warehouse
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `dim_shops` */

CREATE TABLE `dim_shops` (
  `SHOP_ID` decimal(20,0) DEFAULT NULL,
  `SUPPLIER_ID` double DEFAULT NULL,
  `USER_ID` varchar(20) DEFAULT NULL,
  `BOOTH_ID` double DEFAULT NULL,
  `SHOP_NAME` varchar(150) DEFAULT NULL,
  `COMPANY_PERSON_TYPE` char(1) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `CREATE_TIME` bigint(20) DEFAULT NULL,
  `MAININDUSTRY` varchar(100) DEFAULT NULL,
  `MARKET_CODE` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex2` (`SHOP_ID`,`CREATE_TIME`),
  KEY `NewIndex1` (`SHOP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dim_users` */

CREATE TABLE `dim_users` (
  `USER_ID` varchar(20) DEFAULT NULL,
  `USER_NAME` varchar(40) DEFAULT NULL,
  `USER_TYPE` char(1) DEFAULT NULL COMMENT '0=个人用户 1=商铺2=第三方服务 3=企业',
  `MOBILE` varchar(13) DEFAULT NULL,
  `REGISTER_TIME` bigint(20) DEFAULT NULL,
  `LOGIN_ID` varchar(102) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `MARKET_CODE` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex2` (`USER_ID`,`USER_TYPE`,`REGISTER_TIME`),
  KEY `NewIndex1` (`USER_ID`,`USER_TYPE`),
  KEY `idx_dim_users_lookup` (`USER_ID`,`USER_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `fact_middle_user_login` */

CREATE TABLE `fact_middle_user_login` (
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `vist_time` datetime,
  UNIQUE KEY `NewIndex1` (`yiwugouid`),
  KEY `NewIndex2` (`yiwugouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_www_index_next_user` */

CREATE TABLE `middle_www_index_next_user` (
  `m_char` varchar(350) DEFAULT NULL,
  KEY `NewIndex1` (`m_char`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_www_index_visit_user` */

CREATE TABLE `middle_www_index_visit_user` (
  `m_char` varchar(350) DEFAULT NULL,
  KEY `NewIndex1` (`m_char`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
