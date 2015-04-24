/*
SQLyog Ultimate v8.4 
MySQL - 5.1.73 : Database - nginx_log_view
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `middle_wap_op_day` */

CREATE TABLE `middle_wap_op_day` (
  `day_str` varchar(8) DEFAULT NULL,
  `iphone_num` bigint(21) NOT NULL DEFAULT '0',
  `andrioid_num` bigint(21) NOT NULL DEFAULT '0',
  `wphone_num` bigint(21) NOT NULL DEFAULT '0',
  `iphone_num/(iphone_num+andrioid_num+wphone_num)` decimal(23,4) DEFAULT NULL,
  `andrioid_num/(iphone_num+andrioid_num+wphone_num)` decimal(23,4) DEFAULT NULL,
  `wphone_num/(iphone_num+andrioid_num+wphone_num)` decimal(23,4) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `middle_wap_op_day` */

insert  into `middle_wap_op_day`(`day_str`,`iphone_num`,`andrioid_num`,`wphone_num`,`iphone_num/(iphone_num+andrioid_num+wphone_num)`,`andrioid_num/(iphone_num+andrioid_num+wphone_num)`,`wphone_num/(iphone_num+andrioid_num+wphone_num)`) values ('20150322',15594,18020,58,'0.4631','0.5352','0.0017');

/*Table structure for table `schema_audit_index` */

CREATE TABLE `schema_audit_index` (
  `index_name_en` varchar(50) DEFAULT NULL,
  `index_name_cn` varchar(50) DEFAULT NULL,
  `is_fullfill` varchar(50) DEFAULT NULL,
  `seq` bigint(21) NOT NULL,
  `sql_str` varchar(50) DEFAULT NULL,
  `sql_concrete` varchar(50) DEFAULT NULL,
  `index_type1` varchar(50) DEFAULT NULL,
  `index_type2` varchar(50) DEFAULT NULL,
  `data_source` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `schema_audit_index` */

/*Table structure for table `www_work_wap_session_id_year_60day` */

DROP TABLE IF EXISTS `www_work_wap_session_id_year_60day`;

/*!50001 CREATE TABLE  `www_work_wap_session_id_year_60day`(
 `session_id_year_www` bigint(20) ,
 `session_id_year_work` bigint(20) ,
 `session_id_year_wap` bigint(20) ,
 `day_date` varchar(8) 
)*/;

/*Table structure for table `www_work_wap_session_id_year_month` */

DROP TABLE IF EXISTS `www_work_wap_session_id_year_month`;

/*!50001 CREATE TABLE  `www_work_wap_session_id_year_month`(
 `session_id_year_www` decimal(23,4) ,
 `session_id_year_work` decimal(23,4) ,
 `session_id_year_wap` decimal(23,4) ,
 `m_str` varchar(6) 
)*/;

/*View structure for view www_work_wap_session_id_year_60day */

/*!50001 DROP TABLE IF EXISTS `www_work_wap_session_id_year_60day` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`log_user`@`%` SQL SECURITY DEFINER VIEW `www_work_wap_session_id_year_60day` AS select `nginx_log`.`www_work_wap_session_id_year`.`session_id_year_www` AS `session_id_year_www`,`nginx_log`.`www_work_wap_session_id_year`.`session_id_year_work` AS `session_id_year_work`,`nginx_log`.`www_work_wap_session_id_year`.`session_id_year_wap` AS `session_id_year_wap`,`nginx_log`.`www_work_wap_session_id_year`.`day_date` AS `day_date` from `nginx_log`.`www_work_wap_session_id_year` order by `nginx_log`.`www_work_wap_session_id_year`.`day_date` desc limit 60 */;

/*View structure for view www_work_wap_session_id_year_month */

/*!50001 DROP TABLE IF EXISTS `www_work_wap_session_id_year_month` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`log_user`@`%` SQL SECURITY DEFINER VIEW `www_work_wap_session_id_year_month` AS select avg(`nginx_log`.`www_work_wap_session_id_year`.`session_id_year_www`) AS `session_id_year_www`,avg(`nginx_log`.`www_work_wap_session_id_year`.`session_id_year_work`) AS `session_id_year_work`,avg(`nginx_log`.`www_work_wap_session_id_year`.`session_id_year_wap`) AS `session_id_year_wap`,date_format(str_to_date(`nginx_log`.`www_work_wap_session_id_year`.`day_date`,'%Y%m%d'),'%Y%m') AS `m_str` from `nginx_log`.`www_work_wap_session_id_year` group by date_format(str_to_date(`nginx_log`.`www_work_wap_session_id_year`.`day_date`,'%Y%m%d'),'%Y%m') order by date_format(str_to_date(`nginx_log`.`www_work_wap_session_id_year`.`day_date`,'%Y%m%d'),'%Y%m') desc */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
