/*
SQLyog Ultimate v8.4 
MySQL - 5.1.73 : Database - nginx_log
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `12_month_shop_statistic` */

CREATE TABLE `12_month_shop_statistic` (
  `pv` bigint(21) NOT NULL DEFAULT '0',
  `ip_num` bigint(21) NOT NULL DEFAULT '0',
  `session_num` bigint(21) NOT NULL DEFAULT '0',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `12_month_shop_statistic1` */

CREATE TABLE `12_month_shop_statistic1` (
  `pv` bigint(21) NOT NULL DEFAULT '0',
  `ip_num` bigint(21) NOT NULL DEFAULT '0',
  `session_num` bigint(21) NOT NULL DEFAULT '0',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `AGG_ENGINE_KEYWORDS_HIS` */

CREATE TABLE `AGG_ENGINE_KEYWORDS_HIS` (
  `num` bigint(20) DEFAULT NULL,
  `key_word` varchar(200) DEFAULT NULL,
  `dayStr` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `ANALYSIS_AREAS1_SHOP_SUM` */

CREATE TABLE `ANALYSIS_AREAS1_SHOP_SUM` (
  `USERID` varchar(20) DEFAULT NULL,
  `num` bigint(21) NOT NULL DEFAULT '0',
  `areas1` varchar(150) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT '0',
  `TIME` varchar(8) DEFAULT NULL,
  KEY `index_ANALYSIS_AREAS1_SHOP_SUM_TIME` (`TIME`),
  KEY `index_ANALYSIS_AREAS1_SHOP_SUM_USERID` (`USERID`),
  KEY `index_ANALYSIS_AREAS1_SHOP_SUM_areas1` (`areas1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `ANALYSIS_AREAS1_SHOP_SUM_HJH` */

CREATE TABLE `ANALYSIS_AREAS1_SHOP_SUM_HJH` (
  `USERID` varchar(20) DEFAULT NULL,
  `num` bigint(21) NOT NULL DEFAULT '0',
  `areas1` varchar(150) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT '0',
  `TIME` varchar(8) DEFAULT NULL,
  `MARKET_CODE` varchar(2) DEFAULT NULL,
  KEY `index_ANALYSIS_AREAS1_SHOP_SUM_TIME` (`TIME`),
  KEY `index_ANALYSIS_AREAS1_SHOP_SUM_USERID` (`USERID`),
  KEY `index_ANALYSIS_AREAS1_SHOP_SUM_areas1` (`areas1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `ANALYSIS_MINAREAS_SHOP_SUM` */

CREATE TABLE `ANALYSIS_MINAREAS_SHOP_SUM` (
  `USERID` varchar(20) DEFAULT NULL,
  `num` bigint(21) NOT NULL DEFAULT '0',
  `areas1` varchar(150) DEFAULT NULL,
  `areas2` varchar(150) DEFAULT NULL,
  `areas3` varchar(150) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT '0',
  `TIME` varchar(8) DEFAULT NULL,
  KEY `index_ANALYSIS_MINAREAS_SHOP_SUM_time` (`TIME`),
  KEY `index_ANALYSIS_MINAREAS_SHOP_SUM_USERID` (`USERID`),
  KEY `index_ANALYSIS_MINAREAS_SHOP_SUM_areas1` (`areas1`),
  KEY `index_ANALYSIS_MINAREAS_SHOP_SUM_areas2` (`areas2`),
  KEY `index_ANALYSIS_MINAREAS_SHOP_SUM_areas3` (`areas3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `LOG_ANALYSIS_TONGJI` */

CREATE TABLE `LOG_ANALYSIS_TONGJI` (
  `ID` decimal(20,0) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `TARGET` varchar(32) DEFAULT NULL,
  `COUNT` bigint(20) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `SOURCE` text,
  `KEYWORD` text,
  `ENGINE` varchar(30) DEFAULT NULL,
  `QUERY` text,
  `CREAT_TIME` bigint(20) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `AREAS` varchar(150) DEFAULT NULL,
  `TIME` varchar(8) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT NULL,
  KEY `NewIndex1` (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `NGINX_LOG_ANALYSIS` */

CREATE TABLE `NGINX_LOG_ANALYSIS` (
  `ID` bigint(20) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `TARGET` varchar(32) DEFAULT NULL,
  `COUNT` bigint(10) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `SOURCE` varchar(2024) DEFAULT NULL,
  `KEYWORD` varchar(512) DEFAULT NULL,
  `ENGINE` varchar(30) DEFAULT NULL,
  `QUERY` varchar(1024) DEFAULT NULL,
  `CREAT_TIME` bigint(20) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `AREAS` varchar(150) DEFAULT NULL,
  `TIME` varchar(8) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `NGINX_LOG_ANALYSIS_AREAS` */

CREATE TABLE `NGINX_LOG_ANALYSIS_AREAS` (
  `ID` bigint(20) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `TARGET` varchar(32) DEFAULT NULL,
  `COUNT` bigint(10) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `SOURCE` varchar(2024) DEFAULT NULL,
  `KEYWORD` varchar(512) DEFAULT NULL,
  `ENGINE` varchar(30) DEFAULT NULL,
  `QUERY` varchar(1024) DEFAULT NULL,
  `CREAT_TIME` bigint(20) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `AREAS1` varchar(150) DEFAULT NULL,
  `AREAS2` varchar(150) DEFAULT NULL,
  `AREAS3` varchar(150) DEFAULT NULL,
  `TIME` varchar(8) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT '0',
  UNIQUE KEY `ID` (`ID`),
  KEY `index_AREAS1` (`AREAS1`),
  KEY `index_AREAS2` (`AREAS2`),
  KEY `index_AREAS3` (`AREAS3`),
  KEY `index_TIME` (`TIME`),
  KEY `index_NGINX_LOG_ANALYSIS_AREAS_USERID` (`USERID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `NGINX_LOG_ANALYSIS_AREAS_HJH` */

CREATE TABLE `NGINX_LOG_ANALYSIS_AREAS_HJH` (
  `ID` bigint(20) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `TARGET` varchar(32) DEFAULT NULL,
  `COUNT` bigint(10) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `SOURCE` varchar(2024) DEFAULT NULL,
  `KEYWORD` varchar(512) DEFAULT NULL,
  `ENGINE` varchar(30) DEFAULT NULL,
  `QUERY` varchar(1024) DEFAULT NULL,
  `CREAT_TIME` bigint(20) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `AREAS1` varchar(150) DEFAULT NULL,
  `AREAS2` varchar(150) DEFAULT NULL,
  `AREAS3` varchar(150) DEFAULT NULL,
  `TIME` varchar(8) DEFAULT NULL,
  `SHOWTYPE` varchar(2) DEFAULT '0',
  `MARKET_CODE` varchar(2) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `index_AREAS1` (`AREAS1`),
  KEY `index_AREAS2` (`AREAS2`),
  KEY `index_AREAS3` (`AREAS3`),
  KEY `index_TIME` (`TIME`),
  KEY `index_NGINX_LOG_ANALYSIS_AREAS_USERID` (`USERID`),
  KEY `NewIndex1` (`MARKET_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `NGINX_LOG_ANALYSIS_HJH` */

CREATE TABLE `NGINX_LOG_ANALYSIS_HJH` (
  `ID` decimal(20,0) NOT NULL COMMENT 'ID',
  `TYPE` varchar(2) DEFAULT NULL COMMENT '访问类型 2商铺 3产品',
  `TARGET` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `COUNT` bigint(20) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL COMMENT '商铺ID',
  `IP` varchar(32) DEFAULT NULL COMMENT '访问者IP',
  `SOURCE` text COMMENT '访问来源',
  `KEYWORD` text,
  `ENGINE` varchar(30) DEFAULT NULL,
  `QUERY` text,
  `CREAT_TIME` bigint(20) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL COMMENT '页面标题',
  `AREAS` varchar(150) DEFAULT NULL COMMENT '访问地区',
  `TIME` varchar(8) DEFAULT NULL COMMENT '访问日期',
  `SHOWTYPE` varchar(2) DEFAULT NULL,
  `PAGE_URL` varchar(200) DEFAULT NULL COMMENT '访问页面',
  `MARKET_CODE` varchar(2) DEFAULT NULL COMMENT '市场代码',
  `SESSION_ID` varchar(50) DEFAULT NULL,
  `SUBMARKET` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NewIndex1` (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `agg_app_day` */

CREATE TABLE `agg_app_day` (
  `app_pv_num` bigint(20) DEFAULT NULL,
  `app_ip_num` bigint(20) DEFAULT NULL,
  `android_pv_num` bigint(20) DEFAULT NULL,
  `android_ip_num` bigint(20) DEFAULT NULL,
  `ios_pv_num` bigint(20) DEFAULT NULL,
  `ios_ip_num` bigint(20) DEFAULT NULL,
  `agg_date` datetime DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `agg_date_index` (`agg_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `agg_hot_industry_day_rank_his` */

CREATE TABLE `agg_hot_industry_day_rank_his` (
  `TOTAL_NUM` decimal(41,0) DEFAULT NULL,
  `INDUSTRY_CODE` varchar(32) DEFAULT NULL,
  `DAY_STR` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `agg_industry_day` */

CREATE TABLE `agg_industry_day` (
  `visit_num` bigint(20) DEFAULT NULL,
  `dayStr` varchar(8) DEFAULT NULL,
  `INDUSTRY_URL` varchar(2000) DEFAULT NULL,
  `INDUSTRY_CODE` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `agg_inner_keyword_day_rank_his` */

CREATE TABLE `agg_inner_keyword_day_rank_his` (
  `search_num` bigint(20) DEFAULT NULL,
  `day_str` varchar(10) DEFAULT NULL,
  `key_word` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `apache_log_file` */

CREATE TABLE `apache_log_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(500) DEFAULT NULL COMMENT '文件的全路径',
  `ab` smallint(6) DEFAULT NULL COMMENT 'abTest所属类型\n            a;0\n            b:-1\n            ',
  `isComplete` smallint(6) DEFAULT '0' COMMENT '是否已完成\n            未完成;0\n            已完成:1',
  `servername` varchar(20) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `NewIndex1` (`servername`)
) ENGINE=MyISAM AUTO_INCREMENT=1189 DEFAULT CHARSET=utf8;

/*Table structure for table `buyer_seller_session_id_num` */

CREATE TABLE `buyer_seller_session_id_num` (
  `buyer_session_num` bigint(20) DEFAULT NULL,
  `buyer_id_num` bigint(20) DEFAULT NULL,
  `seller_session_num` bigint(20) DEFAULT NULL,
  `seller_id_num` bigint(20) DEFAULT NULL,
  `day_date` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `decode_access_key_join` */

CREATE TABLE `decode_access_key_join` (
  `domain` varchar(200) DEFAULT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `key_word` varchar(200) DEFAULT NULL,
  `sourceType` varchar(3) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `yiwugouid` varchar(50) DEFAULT NULL,
  `vist_time` datetime DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `visit_url` text,
  `agent` varchar(200) DEFAULT NULL,
  KEY `NewIndex1` (`domain`),
  KEY `NewIndex2` (`subdomain`),
  KEY `NewIndex3` (`key_word`),
  KEY `NewIndex4` (`sourceType`),
  KEY `NewIndex5` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_ali_level1_level2` */

CREATE TABLE `dic_ali_level1_level2` (
  `level2_id` bigint(20) DEFAULT NULL,
  `level2_name` varchar(100) DEFAULT NULL,
  `level1_id` bigint(20) DEFAULT NULL,
  `level1_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_complicate_product_cate` */

CREATE TABLE `dic_complicate_product_cate` (
  `word_str` varchar(100) DEFAULT NULL,
  KEY `word_str` (`word_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_pao_ding` */

CREATE TABLE `dic_pao_ding` (
  `word_str` varchar(100) DEFAULT NULL,
  KEY `NewIndex1` (`word_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_single_word_raw` */

CREATE TABLE `dic_single_word_raw` (
  `word_s` char(5) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_word_ali_freq` */

CREATE TABLE `dic_word_ali_freq` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_word_inner_search` */

CREATE TABLE `dic_word_inner_search` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dic_word_no_uid` */

CREATE TABLE `dic_word_no_uid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NewIndex1` (`wordstr`)
) ENGINE=MyISAM AUTO_INCREMENT=395867 DEFAULT CHARSET=utf8;

/*Table structure for table `dic_word_user_sort` */

CREATE TABLE `dic_word_user_sort` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dim_industry` */

CREATE TABLE `dim_industry` (
  `industry_name` varchar(100) DEFAULT NULL,
  `MARKET_NAME` varchar(22) DEFAULT NULL,
  `INDUSTRY_CODE` varchar(32) DEFAULT NULL,
  KEY `NewIndex1` (`INDUSTRY_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dim_industry_url` */

CREATE TABLE `dim_industry_url` (
  `INDUSTRY_URL` varchar(129) DEFAULT NULL,
  `INDUSTRY_NAME` varchar(100) DEFAULT NULL,
  `MARKET_NAME` varchar(22) DEFAULT NULL,
  `INDUSTRY_CODE` varchar(32) DEFAULT NULL,
  `INDUSTRY_PART_URL` varchar(111) DEFAULT NULL,
  KEY `i_dim_ind_u_url` (`INDUSTRY_URL`),
  KEY `i_dim_ind_u_name` (`INDUSTRY_NAME`),
  KEY `i_dim_ind_u_market` (`MARKET_NAME`),
  KEY `i_dim_ind_u_iducode` (`INDUSTRY_CODE`),
  KEY `i_dim_ind_u_part_url` (`INDUSTRY_PART_URL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `etl_middle_sem_seo_access_detail` */

CREATE TABLE `etl_middle_sem_seo_access_detail` (
  `session_id` varchar(50) DEFAULT NULL,
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `vist_time` datetime NOT NULL,
  `url` varchar(200) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `visit_url` varchar(500) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  KEY `index1` (`session_id`),
  KEY `index2` (`url`),
  KEY `NewIndex1` (`session_id`,`vist_time`,`url`),
  KEY `NewIndex2` (`vist_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `etl_middle_sem_seo_enter_detail` */

CREATE TABLE `etl_middle_sem_seo_enter_detail` (
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `vist_time` datetime NOT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `visit_referer` varchar(500) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  KEY `index1` (`visit_referer`(333)),
  KEY `index2` (`session_id`),
  KEY `index3` (`url`),
  KEY `NewIndex1` (`vist_time`),
  KEY `NewIndex2` (`vist_time`,`session_id`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `etl_middle_sem_seo_sid_unique` */

CREATE TABLE `etl_middle_sem_seo_sid_unique` (
  `session_id` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `exclude_ip_list` */

CREATE TABLE `exclude_ip_list` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `ip` varchar(50) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  KEY `NewIndex1` (`sub_ip`),
  KEY `NewIndex2` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `exclude_ip_list1` */

CREATE TABLE `exclude_ip_list1` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `ip` varchar(25) DEFAULT NULL,
  KEY `NewIndex1` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `exclude_ip_list_not_bot` */

CREATE TABLE `exclude_ip_list_not_bot` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `ip` varchar(25) DEFAULT NULL,
  KEY `NewIndex1` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `exclude_ip_list_not_bot1` */

CREATE TABLE `exclude_ip_list_not_bot1` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `ip` varchar(25) DEFAULT NULL,
  KEY `NewIndex1` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `exclude_ip_list_not_bot2` */

CREATE TABLE `exclude_ip_list_not_bot2` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `ip` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `fact_order` */

CREATE TABLE `fact_order` (
  `ORDER_ID` varchar(18) DEFAULT NULL,
  `BUYER_ID` varchar(20) DEFAULT NULL,
  `SELLER_ID` varchar(20) DEFAULT NULL,
  `SHOP_NAME` varchar(150) DEFAULT NULL,
  `PRODUCT_ID` decimal(20,0) DEFAULT NULL,
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `QUANTITY` decimal(20,0) DEFAULT NULL,
  `CONFER_UNIT_PRICE` bigint(20) DEFAULT NULL,
  `SELL_UNIT_PRICE` bigint(20) DEFAULT NULL,
  `FREIGHT` bigint(20) DEFAULT NULL,
  `HAS_POST_FEE` char(1) DEFAULT NULL,
  `DISCOUNT` bigint(20) DEFAULT NULL,
  `TOTAL_CONFER_FEE` bigint(20) DEFAULT NULL,
  `TOTAL_SELL_FEE` bigint(20) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `CLOSE_FLAG` char(1) DEFAULT NULL,
  `PAY_STATUS` char(1) DEFAULT NULL,
  `PAY_TIME` bigint(20) DEFAULT NULL,
  `TIMEOUT_ACTION_TIME` bigint(20) DEFAULT NULL,
  `REFUND_APPLY_TIME` bigint(20) DEFAULT NULL,
  `REFUND_TIME` bigint(20) DEFAULT NULL,
  `RETURN_FLAG` char(1) DEFAULT NULL,
  `CONFER_REFUND_FEE` bigint(20) DEFAULT NULL,
  `REFUND_FEE` bigint(20) DEFAULT NULL,
  `REFUND_REASON` varchar(200) DEFAULT NULL,
  `REFUND_REMARK` varchar(200) DEFAULT NULL,
  `REFUND_GOOD_STATUS` char(1) DEFAULT NULL,
  `REFUND_STATUS` char(1) DEFAULT NULL,
  `START_TIME` bigint(20) DEFAULT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `CREATE_TIME` bigint(20) DEFAULT NULL,
  `CREATE_USER` varchar(30) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) DEFAULT NULL,
  `UPDATE_USER` varchar(30) DEFAULT NULL,
  `CONFER_FEE` bigint(20) DEFAULT NULL,
  `SELL_FEE` bigint(20) DEFAULT NULL,
  `REMARK_SELL` varchar(255) DEFAULT NULL,
  `REMARK_SERVICE` varchar(255) DEFAULT NULL,
  `SETTLEMENT_FLAG` char(1) DEFAULT NULL,
  `SETTLE_TRADE_NO` varchar(32) DEFAULT NULL,
  `SETTLE_FEE` bigint(20) DEFAULT NULL,
  `PRODUCT_VIRTUAL_FLAG` char(1) DEFAULT NULL,
  `VIRTUAL_CODE` varchar(20) DEFAULT NULL,
  `BUYER_NAME` varchar(40) DEFAULT NULL,
  `BUYER_EMAIL` varchar(100) DEFAULT NULL,
  `PRODUCT_MODE` char(1) DEFAULT NULL,
  `PRODUCT_XY` varchar(30) DEFAULT NULL,
  `RATE_FLAG` char(1) DEFAULT NULL,
  `PRODUCTS_SNAPSHOT_ID` decimal(20,0) DEFAULT NULL,
  `ENORDER_FLAG` char(1) DEFAULT NULL,
  `PRODUCT_PROPERTY` text,
  `MARKET_CODE` int(11) DEFAULT NULL,
  `SHIP_NO` decimal(30,0) DEFAULT NULL,
  `SHIP_COMPANY_NAME` decimal(38,0) DEFAULT NULL,
  KEY `NewIndex1` (`BUYER_ID`),
  KEY `NewIndex2` (`SELLER_ID`),
  KEY `NewIndex3` (`SHOP_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `fact_sem_seo_oneday_decode` */

CREATE TABLE `fact_sem_seo_oneday_decode` (
  `referer` varchar(1000) DEFAULT NULL,
  `visit_url` varchar(450) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `visit_referer` varchar(500) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `key_word` varchar(50) DEFAULT NULL,
  `subdomain` varchar(100) DEFAULT NULL,
  `sourceType` varchar(3) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  KEY `NewIndex1` (`domain`,`key_word`,`subdomain`),
  KEY `NewIndex2` (`domain`),
  KEY `NewIndex3` (`subdomain`),
  KEY `NewIndex4` (`key_word`),
  KEY `NewIndex5` (`visit_url`(333)),
  KEY `NewIndex6` (`sourceType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `hejihua_every_statistics_day` */

CREATE TABLE `hejihua_every_statistics_day` (
  `pv` bigint(21) NOT NULL DEFAULT '0',
  `ip` bigint(21) NOT NULL DEFAULT '0',
  `uv` bigint(21) NOT NULL DEFAULT '0',
  `host_name` varchar(50) NOT NULL,
  `day_date` varchar(8) NOT NULL,
  PRIMARY KEY (`host_name`,`day_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `hejihua_statistic` */

CREATE TABLE `hejihua_statistic` (
  `host_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `hejihua_total_statistic_day` */

CREATE TABLE `hejihua_total_statistic_day` (
  `pv` bigint(21) NOT NULL DEFAULT '0',
  `ip` bigint(21) NOT NULL DEFAULT '0',
  `uv` bigint(21) NOT NULL DEFAULT '0',
  `day_date` varchar(8) NOT NULL,
  PRIMARY KEY (`day_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `inner_search_keyword_day_rank` */

CREATE TABLE `inner_search_keyword_day_rank` (
  `ip` varchar(25) DEFAULT NULL,
  `day_str` varchar(10) DEFAULT NULL,
  `key_word` varchar(2000) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  KEY `index_day_str` (`day_str`),
  KEY `index_key_word` (`key_word`(5))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `inner_search_keyword_day_rank1` */

CREATE TABLE `inner_search_keyword_day_rank1` (
  `ip` varchar(25) DEFAULT NULL,
  `day_str` varchar(10) DEFAULT NULL,
  `key_word` varchar(2000) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_access_log_raw` */

CREATE TABLE `middle_access_log_raw` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `request_time` int(11) DEFAULT NULL COMMENT '全部响应时间，包括网络',
  `upstream_response_time` int(11) DEFAULT NULL COMMENT '后端程序响应时间',
  KEY `index1` (`visit_referer`(333)),
  KEY `index2` (`session_id`),
  KEY `NewIndex1` (`session_id_year`),
  KEY `NewIndex2` (`url`(333)),
  KEY `NewIndex3` (`yiwugouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_both_seller_buyer` */

CREATE TABLE `middle_both_seller_buyer` (
  `session_id_year` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`session_id_year`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_error_page_www` */

CREATE TABLE `middle_error_page_www` (
  `vist_time` datetime NOT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`vist_time`),
  KEY `NewIndex2` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_job_pv_day` */

CREATE TABLE `middle_job_pv_day` (
  `day_str` varchar(8) DEFAULT NULL,
  `job_detail_pv` bigint(20) DEFAULT NULL,
  `job_detail_ip` bigint(20) DEFAULT NULL,
  `job_detail_pv_user` bigint(20) DEFAULT NULL,
  `job_detail_login_user` bigint(20) DEFAULT NULL,
  `job_list_pv` bigint(20) DEFAULT NULL,
  `job_list_ip` bigint(20) DEFAULT NULL,
  `job_list_pv_user` bigint(20) DEFAULT NULL,
  `job_list_login_user` bigint(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_order_confirm_loginuid` */

CREATE TABLE `middle_order_confirm_loginuid` (
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  KEY `NewIndex1` (`yiwugouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_order_confirm_time_yuid` */

CREATE TABLE `middle_order_confirm_time_yuid` (
  `vist_time` datetime,
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  KEY `NewIndex1` (`vist_time`),
  KEY `NewIndex2` (`yiwugouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_wap_detail` */

CREATE TABLE `middle_wap_detail` (
  `agent` varchar(200) DEFAULT NULL,
  `op1` varchar(50) DEFAULT NULL,
  `op2` varchar(50) DEFAULT NULL,
  `op3` varchar(50) DEFAULT NULL,
  `op4` varchar(50) DEFAULT NULL,
  `op5` varchar(50) DEFAULT NULL,
  `op6` varchar(50) DEFAULT NULL,
  `op7` varchar(50) DEFAULT NULL,
  `num` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_yiwugouid_buyer_id` */

CREATE TABLE `middle_yiwugouid_buyer_id` (
  `buyer_id` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  KEY `NewIndex1` (`buyer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_yiwugouid_seller_id` */

CREATE TABLE `middle_yiwugouid_seller_id` (
  `seller_id` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  KEY `NewIndex1` (`seller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `middle_yiwugouid_session_year_id_vtime` */

CREATE TABLE `middle_yiwugouid_session_year_id_vtime` (
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `day_str` varchar(8) NOT NULL DEFAULT '',
  KEY `NewIndex1` (`yiwugouid`),
  KEY `NewIndex2` (`session_id_year`),
  KEY `NewIndex3` (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `nginx_access_log_raw` */

CREATE TABLE `nginx_access_log_raw` (
  `ip` varchar(25) DEFAULT NULL COMMENT '公网IP,多个IP情况下为代理IP',
  `sub_ip` varchar(25) DEFAULT NULL COMMENT '子网IP或真实IP',
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `request_time` int(11) DEFAULT NULL COMMENT '全部响应时间，包括网络',
  `upstream_response_time` int(11) DEFAULT NULL COMMENT '后端程序响应时间',
  `visit_time_ms` varchar(50) DEFAULT NULL COMMENT '访问时间（毫秒）',
  KEY `NewIndex1` (`fileid`),
  KEY `NewIndex2` (`vist_time`),
  KEY `NewIndex3` (`visit_url`(333)),
  KEY `NewIndex4` (`visit_referer`(333)),
  KEY `NewIndex5` (`action_name`),
  KEY `NewIndex6` (`ip`),
  KEY `index_url_layer1` (`url_layer1`),
  KEY `index_url_layer2` (`url_layer2`),
  KEY `index_agent` (`agent`),
  KEY `index_status` (`status`),
  KEY `index_yiwugouid` (`yiwugouid`),
  KEY `index_session_id_year` (`session_id_year`),
  KEY `index_session_id` (`session_id`),
  KEY `index_host_name` (`host_name`),
  KEY `index_server_name` (`server_name`),
  KEY `NewIndex7` (`sub_ip`),
  KEY `NewIndex8` (`request_time`),
  KEY `NewIndex9` (`upstream_response_time`),
  KEY `index_referer` (`visit_referer`(333)),
  KEY `NewIndex10` (`visit_time_ms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (TO_DAYS(vist_time))
(PARTITION p215 VALUES LESS THAN (736023) ENGINE = MyISAM,
 PARTITION p216 VALUES LESS THAN (736024) ENGINE = MyISAM,
 PARTITION p217 VALUES LESS THAN (736025) ENGINE = MyISAM,
 PARTITION p218 VALUES LESS THAN (736026) ENGINE = MyISAM,
 PARTITION p219 VALUES LESS THAN (736027) ENGINE = MyISAM,
 PARTITION p220 VALUES LESS THAN (736028) ENGINE = MyISAM,
 PARTITION p221 VALUES LESS THAN (736029) ENGINE = MyISAM,
 PARTITION p222 VALUES LESS THAN (736030) ENGINE = MyISAM,
 PARTITION p223 VALUES LESS THAN (736031) ENGINE = MyISAM,
 PARTITION p224 VALUES LESS THAN (736032) ENGINE = MyISAM,
 PARTITION p225 VALUES LESS THAN (736033) ENGINE = MyISAM,
 PARTITION p226 VALUES LESS THAN (736034) ENGINE = MyISAM,
 PARTITION p227 VALUES LESS THAN (736035) ENGINE = MyISAM,
 PARTITION p228 VALUES LESS THAN (736036) ENGINE = MyISAM,
 PARTITION p229 VALUES LESS THAN (736037) ENGINE = MyISAM,
 PARTITION p230 VALUES LESS THAN (736038) ENGINE = MyISAM,
 PARTITION p231 VALUES LESS THAN (736039) ENGINE = MyISAM,
 PARTITION p232 VALUES LESS THAN (736040) ENGINE = MyISAM,
 PARTITION p233 VALUES LESS THAN (736041) ENGINE = MyISAM,
 PARTITION p234 VALUES LESS THAN (736042) ENGINE = MyISAM,
 PARTITION p235 VALUES LESS THAN (736043) ENGINE = MyISAM,
 PARTITION p236 VALUES LESS THAN (736044) ENGINE = MyISAM,
 PARTITION p237 VALUES LESS THAN (736045) ENGINE = MyISAM,
 PARTITION p238 VALUES LESS THAN (736046) ENGINE = MyISAM,
 PARTITION p239 VALUES LESS THAN (736047) ENGINE = MyISAM,
 PARTITION p240 VALUES LESS THAN (736048) ENGINE = MyISAM,
 PARTITION p241 VALUES LESS THAN (736049) ENGINE = MyISAM,
 PARTITION p242 VALUES LESS THAN (736050) ENGINE = MyISAM,
 PARTITION p243 VALUES LESS THAN (736051) ENGINE = MyISAM,
 PARTITION p244 VALUES LESS THAN (736052) ENGINE = MyISAM,
 PARTITION p245 VALUES LESS THAN (736053) ENGINE = MyISAM,
 PARTITION p246 VALUES LESS THAN (736054) ENGINE = MyISAM,
 PARTITION p247 VALUES LESS THAN (736055) ENGINE = MyISAM,
 PARTITION p248 VALUES LESS THAN (736056) ENGINE = MyISAM,
 PARTITION p249 VALUES LESS THAN (736057) ENGINE = MyISAM,
 PARTITION p250 VALUES LESS THAN (736058) ENGINE = MyISAM,
 PARTITION p251 VALUES LESS THAN (736059) ENGINE = MyISAM,
 PARTITION p252 VALUES LESS THAN (736060) ENGINE = MyISAM,
 PARTITION p253 VALUES LESS THAN (736061) ENGINE = MyISAM,
 PARTITION p254 VALUES LESS THAN (736062) ENGINE = MyISAM,
 PARTITION p255 VALUES LESS THAN (736063) ENGINE = MyISAM,
 PARTITION p256 VALUES LESS THAN (736064) ENGINE = MyISAM,
 PARTITION p257 VALUES LESS THAN (736065) ENGINE = MyISAM,
 PARTITION p258 VALUES LESS THAN (736066) ENGINE = MyISAM,
 PARTITION p259 VALUES LESS THAN (736067) ENGINE = MyISAM,
 PARTITION p260 VALUES LESS THAN (736068) ENGINE = MyISAM,
 PARTITION p261 VALUES LESS THAN (736069) ENGINE = MyISAM,
 PARTITION p262 VALUES LESS THAN (736070) ENGINE = MyISAM,
 PARTITION p263 VALUES LESS THAN (736071) ENGINE = MyISAM,
 PARTITION p264 VALUES LESS THAN (736072) ENGINE = MyISAM,
 PARTITION p265 VALUES LESS THAN (736073) ENGINE = MyISAM,
 PARTITION p266 VALUES LESS THAN (736074) ENGINE = MyISAM,
 PARTITION p267 VALUES LESS THAN (736075) ENGINE = MyISAM,
 PARTITION p268 VALUES LESS THAN (736076) ENGINE = MyISAM,
 PARTITION p269 VALUES LESS THAN (736077) ENGINE = MyISAM,
 PARTITION p270 VALUES LESS THAN (736078) ENGINE = MyISAM,
 PARTITION p271 VALUES LESS THAN (736079) ENGINE = MyISAM,
 PARTITION p272 VALUES LESS THAN (736080) ENGINE = MyISAM,
 PARTITION p273 VALUES LESS THAN (736081) ENGINE = MyISAM,
 PARTITION p274 VALUES LESS THAN (736082) ENGINE = MyISAM,
 PARTITION p275 VALUES LESS THAN (736083) ENGINE = MyISAM,
 PARTITION p276 VALUES LESS THAN (736084) ENGINE = MyISAM,
 PARTITION p277 VALUES LESS THAN (736085) ENGINE = MyISAM,
 PARTITION p278 VALUES LESS THAN (736086) ENGINE = MyISAM,
 PARTITION p279 VALUES LESS THAN (736087) ENGINE = MyISAM,
 PARTITION p280 VALUES LESS THAN (736088) ENGINE = MyISAM,
 PARTITION p281 VALUES LESS THAN (736089) ENGINE = MyISAM,
 PARTITION p282 VALUES LESS THAN (736090) ENGINE = MyISAM,
 PARTITION p283 VALUES LESS THAN (736091) ENGINE = MyISAM,
 PARTITION p284 VALUES LESS THAN (736092) ENGINE = MyISAM,
 PARTITION p285 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*Table structure for table `nginx_access_log_raw1` */

CREATE TABLE `nginx_access_log_raw1` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime NOT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `nginx_access_log_raw2` */

CREATE TABLE `nginx_access_log_raw2` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime NOT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `nginx_access_log_raw_disclude_ip` */

CREATE TABLE `nginx_access_log_raw_disclude_ip` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `request_time` int(11) DEFAULT NULL COMMENT '全部响应时间，包括网络',
  `upstream_response_time` int(11) DEFAULT NULL COMMENT '后端程序响应时间',
  `visit_time_ms` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`fileid`),
  KEY `NewIndex2` (`vist_time`),
  KEY `NewIndex3` (`visit_url`(333)),
  KEY `NewIndex4` (`visit_referer`(333)),
  KEY `NewIndex5` (`action_name`),
  KEY `NewIndex6` (`ip`),
  KEY `index_url_layer1` (`url_layer1`),
  KEY `index_url_layer2` (`url_layer2`),
  KEY `index_agent` (`agent`),
  KEY `index_status` (`status`),
  KEY `index_yiwugouid` (`yiwugouid`),
  KEY `index_session_id_year` (`session_id_year`),
  KEY `index_session_id` (`session_id`),
  KEY `index_host_name` (`host_name`),
  KEY `index_server_name` (`server_name`),
  KEY `NewIndex7` (`sub_ip`),
  KEY `NewIndex8` (`request_time`),
  KEY `NewIndex9` (`upstream_response_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `nginx_access_log_raw_init` */

CREATE TABLE `nginx_access_log_raw_init` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`fileid`),
  KEY `NewIndex2` (`vist_time`),
  KEY `NewIndex3` (`visit_url`(333)),
  KEY `NewIndex4` (`visit_referer`(333)),
  KEY `NewIndex5` (`action_name`),
  KEY `NewIndex6` (`ip`),
  KEY `index_url_layer1` (`url_layer1`),
  KEY `index_url_layer2` (`url_layer2`),
  KEY `index_agent` (`agent`),
  KEY `index_status` (`status`),
  KEY `index_yiwugouid` (`yiwugouid`),
  KEY `index_session_id_year` (`session_id_year`),
  KEY `index_session_id` (`session_id`),
  KEY `index_host_name` (`host_name`),
  KEY `index_server_name` (`server_name`),
  KEY `NewIndex7` (`sub_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (TO_DAYS(vist_time))
(PARTITION p62 VALUES LESS THAN (735870) ENGINE = MyISAM,
 PARTITION p63 VALUES LESS THAN (735871) ENGINE = MyISAM,
 PARTITION p64 VALUES LESS THAN (735872) ENGINE = MyISAM,
 PARTITION p65 VALUES LESS THAN (735873) ENGINE = MyISAM,
 PARTITION p66 VALUES LESS THAN (735874) ENGINE = MyISAM,
 PARTITION p67 VALUES LESS THAN (735875) ENGINE = MyISAM,
 PARTITION p68 VALUES LESS THAN (735876) ENGINE = MyISAM,
 PARTITION p69 VALUES LESS THAN (735877) ENGINE = MyISAM,
 PARTITION p70 VALUES LESS THAN (735878) ENGINE = MyISAM,
 PARTITION p71 VALUES LESS THAN (735879) ENGINE = MyISAM,
 PARTITION p72 VALUES LESS THAN (735880) ENGINE = MyISAM,
 PARTITION p73 VALUES LESS THAN (735881) ENGINE = MyISAM,
 PARTITION p74 VALUES LESS THAN (735882) ENGINE = MyISAM,
 PARTITION p75 VALUES LESS THAN (735883) ENGINE = MyISAM,
 PARTITION p76 VALUES LESS THAN (735884) ENGINE = MyISAM,
 PARTITION p77 VALUES LESS THAN (735885) ENGINE = MyISAM,
 PARTITION p78 VALUES LESS THAN (735886) ENGINE = MyISAM,
 PARTITION p79 VALUES LESS THAN (735887) ENGINE = MyISAM,
 PARTITION p80 VALUES LESS THAN (735888) ENGINE = MyISAM,
 PARTITION p81 VALUES LESS THAN (735889) ENGINE = MyISAM,
 PARTITION p82 VALUES LESS THAN (735890) ENGINE = MyISAM,
 PARTITION p83 VALUES LESS THAN (735891) ENGINE = MyISAM,
 PARTITION p84 VALUES LESS THAN (735892) ENGINE = MyISAM,
 PARTITION p85 VALUES LESS THAN (735893) ENGINE = MyISAM,
 PARTITION p86 VALUES LESS THAN (735894) ENGINE = MyISAM,
 PARTITION p87 VALUES LESS THAN (735895) ENGINE = MyISAM,
 PARTITION p88 VALUES LESS THAN (735896) ENGINE = MyISAM,
 PARTITION p89 VALUES LESS THAN (735897) ENGINE = MyISAM,
 PARTITION p90 VALUES LESS THAN (735898) ENGINE = MyISAM,
 PARTITION p91 VALUES LESS THAN (735899) ENGINE = MyISAM,
 PARTITION p92 VALUES LESS THAN (735900) ENGINE = MyISAM,
 PARTITION p93 VALUES LESS THAN (735901) ENGINE = MyISAM,
 PARTITION p94 VALUES LESS THAN (735902) ENGINE = MyISAM,
 PARTITION p95 VALUES LESS THAN (735903) ENGINE = MyISAM,
 PARTITION p96 VALUES LESS THAN (735904) ENGINE = MyISAM,
 PARTITION p97 VALUES LESS THAN (735905) ENGINE = MyISAM,
 PARTITION p98 VALUES LESS THAN (735906) ENGINE = MyISAM,
 PARTITION p99 VALUES LESS THAN (735907) ENGINE = MyISAM,
 PARTITION p100 VALUES LESS THAN (735908) ENGINE = MyISAM,
 PARTITION p101 VALUES LESS THAN (735909) ENGINE = MyISAM,
 PARTITION p102 VALUES LESS THAN (735910) ENGINE = MyISAM,
 PARTITION p103 VALUES LESS THAN (735911) ENGINE = MyISAM,
 PARTITION p104 VALUES LESS THAN (735912) ENGINE = MyISAM,
 PARTITION p105 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*Table structure for table `nginx_access_log_raw_oneday` */

CREATE TABLE `nginx_access_log_raw_oneday` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`fileid`),
  KEY `NewIndex2` (`vist_time`),
  KEY `NewIndex3` (`visit_url`(333)),
  KEY `NewIndex4` (`visit_referer`(333)),
  KEY `NewIndex5` (`action_name`),
  KEY `NewIndex6` (`ip`),
  KEY `index_url_layer1` (`url_layer1`),
  KEY `index_url_layer2` (`url_layer2`),
  KEY `index_agent` (`agent`),
  KEY `index_status` (`status`),
  KEY `index_yiwugouid` (`yiwugouid`),
  KEY `index_session_id_year` (`session_id_year`),
  KEY `index_session_id` (`session_id`),
  KEY `index_host_name` (`host_name`),
  KEY `index_server_name` (`server_name`),
  KEY `NewIndex7` (`sub_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (TO_DAYS(vist_time))
(PARTITION p62 VALUES LESS THAN (735870) ENGINE = MyISAM,
 PARTITION p63 VALUES LESS THAN (735871) ENGINE = MyISAM,
 PARTITION p64 VALUES LESS THAN (735872) ENGINE = MyISAM,
 PARTITION p65 VALUES LESS THAN (735873) ENGINE = MyISAM,
 PARTITION p66 VALUES LESS THAN (735874) ENGINE = MyISAM,
 PARTITION p67 VALUES LESS THAN (735875) ENGINE = MyISAM,
 PARTITION p68 VALUES LESS THAN (735876) ENGINE = MyISAM,
 PARTITION p69 VALUES LESS THAN (735877) ENGINE = MyISAM,
 PARTITION p70 VALUES LESS THAN (735878) ENGINE = MyISAM,
 PARTITION p71 VALUES LESS THAN (735879) ENGINE = MyISAM,
 PARTITION p72 VALUES LESS THAN (735880) ENGINE = MyISAM,
 PARTITION p73 VALUES LESS THAN (735881) ENGINE = MyISAM,
 PARTITION p74 VALUES LESS THAN (735882) ENGINE = MyISAM,
 PARTITION p75 VALUES LESS THAN (735883) ENGINE = MyISAM,
 PARTITION p76 VALUES LESS THAN (735884) ENGINE = MyISAM,
 PARTITION p77 VALUES LESS THAN (735885) ENGINE = MyISAM,
 PARTITION p78 VALUES LESS THAN (735886) ENGINE = MyISAM,
 PARTITION p79 VALUES LESS THAN (735887) ENGINE = MyISAM,
 PARTITION p80 VALUES LESS THAN (735888) ENGINE = MyISAM,
 PARTITION p81 VALUES LESS THAN (735889) ENGINE = MyISAM,
 PARTITION p82 VALUES LESS THAN (735890) ENGINE = MyISAM,
 PARTITION p83 VALUES LESS THAN (735891) ENGINE = MyISAM,
 PARTITION p84 VALUES LESS THAN (735892) ENGINE = MyISAM,
 PARTITION p85 VALUES LESS THAN (735893) ENGINE = MyISAM,
 PARTITION p86 VALUES LESS THAN (735894) ENGINE = MyISAM,
 PARTITION p87 VALUES LESS THAN (735895) ENGINE = MyISAM,
 PARTITION p88 VALUES LESS THAN (735896) ENGINE = MyISAM,
 PARTITION p89 VALUES LESS THAN (735897) ENGINE = MyISAM,
 PARTITION p90 VALUES LESS THAN (735898) ENGINE = MyISAM,
 PARTITION p91 VALUES LESS THAN (735899) ENGINE = MyISAM,
 PARTITION p92 VALUES LESS THAN (735900) ENGINE = MyISAM,
 PARTITION p93 VALUES LESS THAN (735901) ENGINE = MyISAM,
 PARTITION p94 VALUES LESS THAN (735902) ENGINE = MyISAM,
 PARTITION p95 VALUES LESS THAN (735903) ENGINE = MyISAM,
 PARTITION p96 VALUES LESS THAN (735904) ENGINE = MyISAM,
 PARTITION p97 VALUES LESS THAN (735905) ENGINE = MyISAM,
 PARTITION p98 VALUES LESS THAN (735906) ENGINE = MyISAM,
 PARTITION p99 VALUES LESS THAN (735907) ENGINE = MyISAM,
 PARTITION p100 VALUES LESS THAN (735908) ENGINE = MyISAM,
 PARTITION p101 VALUES LESS THAN (735909) ENGINE = MyISAM,
 PARTITION p102 VALUES LESS THAN (735910) ENGINE = MyISAM,
 PARTITION p103 VALUES LESS THAN (735911) ENGINE = MyISAM,
 PARTITION p104 VALUES LESS THAN (735912) ENGINE = MyISAM,
 PARTITION p105 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*Table structure for table `nginx_access_log_raw_real_time` */

CREATE TABLE `nginx_access_log_raw_real_time` (
  `ip` varchar(25) DEFAULT NULL COMMENT '公网IP,多个IP情况下为代理IP',
  `sub_ip` varchar(25) DEFAULT NULL COMMENT '子网IP或真实IP',
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `request_time` int(11) DEFAULT NULL COMMENT '全部响应时间，包括网络',
  `upstream_response_time` int(11) DEFAULT NULL COMMENT '后端程序响应时间',
  KEY `NewIndex1` (`fileid`),
  KEY `NewIndex2` (`vist_time`),
  KEY `NewIndex3` (`visit_url`(333)),
  KEY `NewIndex4` (`visit_referer`(333)),
  KEY `NewIndex5` (`action_name`),
  KEY `NewIndex6` (`ip`),
  KEY `index_url_layer1` (`url_layer1`),
  KEY `index_url_layer2` (`url_layer2`),
  KEY `index_agent` (`agent`),
  KEY `index_status` (`status`),
  KEY `index_yiwugouid` (`yiwugouid`),
  KEY `index_session_id_year` (`session_id_year`),
  KEY `index_session_id` (`session_id`),
  KEY `index_host_name` (`host_name`),
  KEY `index_server_name` (`server_name`),
  KEY `NewIndex7` (`sub_ip`),
  KEY `NewIndex8` (`request_time`),
  KEY `NewIndex9` (`upstream_response_time`),
  KEY `index_referer` (`visit_referer`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (TO_DAYS(vist_time))
(PARTITION p129 VALUES LESS THAN (735937) ENGINE = MyISAM,
 PARTITION p130 VALUES LESS THAN (735938) ENGINE = MyISAM,
 PARTITION p131 VALUES LESS THAN (735939) ENGINE = MyISAM,
 PARTITION p132 VALUES LESS THAN (735940) ENGINE = MyISAM,
 PARTITION p133 VALUES LESS THAN (735941) ENGINE = MyISAM,
 PARTITION p134 VALUES LESS THAN (735942) ENGINE = MyISAM,
 PARTITION p135 VALUES LESS THAN (735943) ENGINE = MyISAM,
 PARTITION p136 VALUES LESS THAN (735944) ENGINE = MyISAM,
 PARTITION p137 VALUES LESS THAN (735945) ENGINE = MyISAM,
 PARTITION p138 VALUES LESS THAN (735946) ENGINE = MyISAM,
 PARTITION p139 VALUES LESS THAN (735947) ENGINE = MyISAM,
 PARTITION p140 VALUES LESS THAN (735948) ENGINE = MyISAM,
 PARTITION p141 VALUES LESS THAN (735949) ENGINE = MyISAM,
 PARTITION p142 VALUES LESS THAN (735950) ENGINE = MyISAM,
 PARTITION p143 VALUES LESS THAN (735951) ENGINE = MyISAM,
 PARTITION p144 VALUES LESS THAN (735952) ENGINE = MyISAM,
 PARTITION p145 VALUES LESS THAN (735953) ENGINE = MyISAM,
 PARTITION p146 VALUES LESS THAN (735954) ENGINE = MyISAM,
 PARTITION p147 VALUES LESS THAN (735955) ENGINE = MyISAM,
 PARTITION p148 VALUES LESS THAN (735956) ENGINE = MyISAM,
 PARTITION p149 VALUES LESS THAN (735957) ENGINE = MyISAM,
 PARTITION p150 VALUES LESS THAN (735958) ENGINE = MyISAM,
 PARTITION p151 VALUES LESS THAN (735959) ENGINE = MyISAM,
 PARTITION p152 VALUES LESS THAN (735960) ENGINE = MyISAM,
 PARTITION p153 VALUES LESS THAN (735961) ENGINE = MyISAM,
 PARTITION p154 VALUES LESS THAN (735962) ENGINE = MyISAM,
 PARTITION p155 VALUES LESS THAN (735963) ENGINE = MyISAM,
 PARTITION p156 VALUES LESS THAN (735964) ENGINE = MyISAM,
 PARTITION p157 VALUES LESS THAN (735965) ENGINE = MyISAM,
 PARTITION p158 VALUES LESS THAN (735966) ENGINE = MyISAM,
 PARTITION p159 VALUES LESS THAN (735967) ENGINE = MyISAM,
 PARTITION p160 VALUES LESS THAN (735968) ENGINE = MyISAM,
 PARTITION p161 VALUES LESS THAN (735969) ENGINE = MyISAM,
 PARTITION p162 VALUES LESS THAN (735970) ENGINE = MyISAM,
 PARTITION p163 VALUES LESS THAN (735971) ENGINE = MyISAM,
 PARTITION p164 VALUES LESS THAN (735972) ENGINE = MyISAM,
 PARTITION p165 VALUES LESS THAN (735973) ENGINE = MyISAM,
 PARTITION p166 VALUES LESS THAN (735974) ENGINE = MyISAM,
 PARTITION p167 VALUES LESS THAN (735975) ENGINE = MyISAM,
 PARTITION p168 VALUES LESS THAN (735976) ENGINE = MyISAM,
 PARTITION p169 VALUES LESS THAN (735977) ENGINE = MyISAM,
 PARTITION p170 VALUES LESS THAN (735978) ENGINE = MyISAM,
 PARTITION p171 VALUES LESS THAN (735979) ENGINE = MyISAM,
 PARTITION p172 VALUES LESS THAN (735980) ENGINE = MyISAM,
 PARTITION p173 VALUES LESS THAN (735981) ENGINE = MyISAM,
 PARTITION p174 VALUES LESS THAN (735982) ENGINE = MyISAM,
 PARTITION p175 VALUES LESS THAN (735983) ENGINE = MyISAM,
 PARTITION p176 VALUES LESS THAN (735984) ENGINE = MyISAM,
 PARTITION p177 VALUES LESS THAN (735985) ENGINE = MyISAM,
 PARTITION p178 VALUES LESS THAN (735986) ENGINE = MyISAM,
 PARTITION p179 VALUES LESS THAN (735987) ENGINE = MyISAM,
 PARTITION p180 VALUES LESS THAN (735988) ENGINE = MyISAM,
 PARTITION p181 VALUES LESS THAN (735989) ENGINE = MyISAM,
 PARTITION p182 VALUES LESS THAN (735990) ENGINE = MyISAM,
 PARTITION p183 VALUES LESS THAN (735991) ENGINE = MyISAM,
 PARTITION p184 VALUES LESS THAN (735992) ENGINE = MyISAM,
 PARTITION p185 VALUES LESS THAN (735993) ENGINE = MyISAM,
 PARTITION p186 VALUES LESS THAN (735994) ENGINE = MyISAM,
 PARTITION p187 VALUES LESS THAN (735995) ENGINE = MyISAM,
 PARTITION p188 VALUES LESS THAN (735996) ENGINE = MyISAM,
 PARTITION p189 VALUES LESS THAN (735997) ENGINE = MyISAM,
 PARTITION p190 VALUES LESS THAN (735998) ENGINE = MyISAM,
 PARTITION p191 VALUES LESS THAN (735999) ENGINE = MyISAM,
 PARTITION p192 VALUES LESS THAN (736000) ENGINE = MyISAM,
 PARTITION p193 VALUES LESS THAN (736001) ENGINE = MyISAM,
 PARTITION p194 VALUES LESS THAN (736002) ENGINE = MyISAM,
 PARTITION p195 VALUES LESS THAN (736003) ENGINE = MyISAM,
 PARTITION p196 VALUES LESS THAN (736004) ENGINE = MyISAM,
 PARTITION p197 VALUES LESS THAN (736005) ENGINE = MyISAM,
 PARTITION p198 VALUES LESS THAN (736006) ENGINE = MyISAM,
 PARTITION p199 VALUES LESS THAN (736007) ENGINE = MyISAM,
 PARTITION p200 VALUES LESS THAN (736008) ENGINE = MyISAM,
 PARTITION p201 VALUES LESS THAN (736009) ENGINE = MyISAM,
 PARTITION p202 VALUES LESS THAN (736010) ENGINE = MyISAM,
 PARTITION p203 VALUES LESS THAN (736011) ENGINE = MyISAM,
 PARTITION p204 VALUES LESS THAN (736012) ENGINE = MyISAM,
 PARTITION p205 VALUES LESS THAN (736013) ENGINE = MyISAM,
 PARTITION p206 VALUES LESS THAN (736014) ENGINE = MyISAM,
 PARTITION p207 VALUES LESS THAN (736015) ENGINE = MyISAM,
 PARTITION p208 VALUES LESS THAN (736016) ENGINE = MyISAM,
 PARTITION p209 VALUES LESS THAN (736017) ENGINE = MyISAM,
 PARTITION p210 VALUES LESS THAN (736018) ENGINE = MyISAM,
 PARTITION p211 VALUES LESS THAN (736019) ENGINE = MyISAM,
 PARTITION p212 VALUES LESS THAN (736020) ENGINE = MyISAM,
 PARTITION p213 VALUES LESS THAN (736021) ENGINE = MyISAM,
 PARTITION p214 VALUES LESS THAN (736022) ENGINE = MyISAM,
 PARTITION p215 VALUES LESS THAN (736023) ENGINE = MyISAM,
 PARTITION p216 VALUES LESS THAN (736024) ENGINE = MyISAM,
 PARTITION p217 VALUES LESS THAN (736025) ENGINE = MyISAM,
 PARTITION p218 VALUES LESS THAN (736026) ENGINE = MyISAM,
 PARTITION p219 VALUES LESS THAN (736027) ENGINE = MyISAM,
 PARTITION p220 VALUES LESS THAN (736028) ENGINE = MyISAM,
 PARTITION p221 VALUES LESS THAN (736029) ENGINE = MyISAM,
 PARTITION p222 VALUES LESS THAN (736030) ENGINE = MyISAM,
 PARTITION p223 VALUES LESS THAN (736031) ENGINE = MyISAM,
 PARTITION p224 VALUES LESS THAN (736032) ENGINE = MyISAM,
 PARTITION p225 VALUES LESS THAN (736033) ENGINE = MyISAM,
 PARTITION p226 VALUES LESS THAN (736034) ENGINE = MyISAM,
 PARTITION p227 VALUES LESS THAN (736035) ENGINE = MyISAM,
 PARTITION p228 VALUES LESS THAN (736036) ENGINE = MyISAM,
 PARTITION p229 VALUES LESS THAN (736037) ENGINE = MyISAM,
 PARTITION p230 VALUES LESS THAN (736038) ENGINE = MyISAM,
 PARTITION p231 VALUES LESS THAN (736039) ENGINE = MyISAM,
 PARTITION p232 VALUES LESS THAN (736040) ENGINE = MyISAM,
 PARTITION p233 VALUES LESS THAN (736041) ENGINE = MyISAM,
 PARTITION p234 VALUES LESS THAN (736042) ENGINE = MyISAM,
 PARTITION p235 VALUES LESS THAN (736043) ENGINE = MyISAM,
 PARTITION p236 VALUES LESS THAN (736044) ENGINE = MyISAM,
 PARTITION p237 VALUES LESS THAN (736045) ENGINE = MyISAM,
 PARTITION p238 VALUES LESS THAN (736046) ENGINE = MyISAM,
 PARTITION p239 VALUES LESS THAN (736047) ENGINE = MyISAM,
 PARTITION p240 VALUES LESS THAN (736048) ENGINE = MyISAM,
 PARTITION p241 VALUES LESS THAN (736049) ENGINE = MyISAM,
 PARTITION p242 VALUES LESS THAN (736050) ENGINE = MyISAM,
 PARTITION p243 VALUES LESS THAN (736051) ENGINE = MyISAM,
 PARTITION p244 VALUES LESS THAN (736052) ENGINE = MyISAM,
 PARTITION p245 VALUES LESS THAN (736053) ENGINE = MyISAM,
 PARTITION p246 VALUES LESS THAN (736054) ENGINE = MyISAM,
 PARTITION p247 VALUES LESS THAN (736055) ENGINE = MyISAM,
 PARTITION p248 VALUES LESS THAN (736056) ENGINE = MyISAM,
 PARTITION p249 VALUES LESS THAN (736057) ENGINE = MyISAM,
 PARTITION p250 VALUES LESS THAN (736058) ENGINE = MyISAM,
 PARTITION p251 VALUES LESS THAN (736059) ENGINE = MyISAM,
 PARTITION p252 VALUES LESS THAN (736060) ENGINE = MyISAM,
 PARTITION p253 VALUES LESS THAN (736061) ENGINE = MyISAM,
 PARTITION p254 VALUES LESS THAN (736062) ENGINE = MyISAM,
 PARTITION p255 VALUES LESS THAN (736063) ENGINE = MyISAM,
 PARTITION p256 VALUES LESS THAN (736064) ENGINE = MyISAM,
 PARTITION p257 VALUES LESS THAN (736065) ENGINE = MyISAM,
 PARTITION p258 VALUES LESS THAN (736066) ENGINE = MyISAM,
 PARTITION p259 VALUES LESS THAN (736067) ENGINE = MyISAM,
 PARTITION p260 VALUES LESS THAN (736068) ENGINE = MyISAM,
 PARTITION p261 VALUES LESS THAN (736069) ENGINE = MyISAM,
 PARTITION p262 VALUES LESS THAN (736070) ENGINE = MyISAM,
 PARTITION p263 VALUES LESS THAN (736071) ENGINE = MyISAM,
 PARTITION p264 VALUES LESS THAN (736072) ENGINE = MyISAM,
 PARTITION p265 VALUES LESS THAN (736073) ENGINE = MyISAM,
 PARTITION p266 VALUES LESS THAN (736074) ENGINE = MyISAM,
 PARTITION p267 VALUES LESS THAN (736075) ENGINE = MyISAM,
 PARTITION p268 VALUES LESS THAN (736076) ENGINE = MyISAM,
 PARTITION p269 VALUES LESS THAN (736077) ENGINE = MyISAM,
 PARTITION p270 VALUES LESS THAN (736078) ENGINE = MyISAM,
 PARTITION p271 VALUES LESS THAN (736079) ENGINE = MyISAM,
 PARTITION p272 VALUES LESS THAN (736080) ENGINE = MyISAM,
 PARTITION p273 VALUES LESS THAN (736081) ENGINE = MyISAM,
 PARTITION p274 VALUES LESS THAN (736082) ENGINE = MyISAM,
 PARTITION p275 VALUES LESS THAN (736083) ENGINE = MyISAM,
 PARTITION p276 VALUES LESS THAN (736084) ENGINE = MyISAM,
 PARTITION p277 VALUES LESS THAN (736085) ENGINE = MyISAM,
 PARTITION p278 VALUES LESS THAN (736086) ENGINE = MyISAM,
 PARTITION p279 VALUES LESS THAN (736087) ENGINE = MyISAM,
 PARTITION p280 VALUES LESS THAN (736088) ENGINE = MyISAM,
 PARTITION p281 VALUES LESS THAN (736089) ENGINE = MyISAM,
 PARTITION p282 VALUES LESS THAN (736090) ENGINE = MyISAM,
 PARTITION p283 VALUES LESS THAN (736091) ENGINE = MyISAM,
 PARTITION p284 VALUES LESS THAN (736092) ENGINE = MyISAM,
 PARTITION p285 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*Table structure for table `nginx_access_log_raw_tmp` */

CREATE TABLE `nginx_access_log_raw_tmp` (
  `ip` varchar(25) DEFAULT NULL COMMENT '公网IP,多个IP情况下为代理IP',
  `sub_ip` varchar(25) DEFAULT NULL COMMENT '子网IP或真实IP',
  `vist_time` datetime NOT NULL,
  `firtst_visit_time` bigint(20) DEFAULT NULL COMMENT '该用户最早访问时间，来自cookie，用于计算老访客',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `url_layer1` varchar(20) DEFAULT NULL,
  `url_layer2` varchar(20) DEFAULT NULL,
  `url_layer3` varchar(20) DEFAULT NULL,
  `num_before_qm` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `param1_name` varchar(50) DEFAULT NULL,
  `param1_value` varchar(50) DEFAULT NULL,
  `param2_name` varchar(50) DEFAULT NULL,
  `param2_value` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `visit_url` varchar(500) DEFAULT NULL,
  `action_name` varchar(20) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数',
  `visit_referer` varchar(500) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host_name` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `request_time` int(11) DEFAULT NULL COMMENT '全部响应时间，包括网络',
  `upstream_response_time` int(11) DEFAULT NULL COMMENT '后端程序响应时间',
  KEY `NewIndex1` (`fileid`),
  KEY `NewIndex2` (`vist_time`),
  KEY `NewIndex3` (`visit_url`(333)),
  KEY `NewIndex4` (`visit_referer`(333)),
  KEY `NewIndex5` (`action_name`),
  KEY `NewIndex6` (`ip`),
  KEY `index_url_layer1` (`url_layer1`),
  KEY `index_url_layer2` (`url_layer2`),
  KEY `index_agent` (`agent`),
  KEY `index_status` (`status`),
  KEY `index_yiwugouid` (`yiwugouid`),
  KEY `index_session_id_year` (`session_id_year`),
  KEY `index_session_id` (`session_id`),
  KEY `index_host_name` (`host_name`),
  KEY `index_server_name` (`server_name`),
  KEY `NewIndex7` (`sub_ip`),
  KEY `NewIndex8` (`request_time`),
  KEY `NewIndex9` (`upstream_response_time`),
  KEY `index_referer` (`visit_referer`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `potentical_robot_ip_one_day` */

CREATE TABLE `potentical_robot_ip_one_day` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `ip` varchar(25) DEFAULT NULL,
  `20140824` varchar(8) NOT NULL DEFAULT '',
  `agent_num` bigint(21) NOT NULL DEFAULT '0',
  `agent` varchar(100) DEFAULT NULL,
  `url_num` bigint(21) NOT NULL DEFAULT '0',
  `url` varchar(1000) DEFAULT NULL COMMENT '访问的url,只包括jsp,html,htm',
  `referer_num` bigint(21) NOT NULL DEFAULT '0',
  `referer` varchar(1000) DEFAULT NULL COMMENT 'referer,不包含参数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `product_category` */

CREATE TABLE `product_category` (
  `id` bigint(20) DEFAULT NULL,
  `cats_id` bigint(20) DEFAULT NULL,
  `cats_name` varchar(100) DEFAULT NULL,
  `parent_cats_id` bigint(20) DEFAULT NULL,
  `order_num` bigint(20) DEFAULT NULL,
  KEY `NewIndex1` (`id`),
  KEY `NewIndex2` (`parent_cats_id`),
  KEY `NewIndex3` (`cats_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `pv_domain_minute` */

CREATE TABLE `pv_domain_minute` (
  `pv_num` bigint(21) NOT NULL DEFAULT '0',
  `domain` varchar(50) DEFAULT NULL,
  `t_min` datetime DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `domain` (`domain`,`t_min`),
  KEY `NewIndex1` (`t_min`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `pv_domain_minute_ratio` */

CREATE TABLE `pv_domain_minute_ratio` (
  `t_min` datetime DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `pv_current` bigint(21) NOT NULL DEFAULT '0',
  `pv_one_min_bef` bigint(21) NOT NULL DEFAULT '0',
  `min_ratio` decimal(24,4) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `domain` (`domain`,`t_min`),
  KEY `NewIndex1` (`domain`),
  KEY `NewIndex2` (`t_min`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `pv_domain_minute_ratio_plus_alert` */

CREATE TABLE `pv_domain_minute_ratio_plus_alert` (
  `t_min` datetime DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `pv_current` bigint(21) NOT NULL DEFAULT '0',
  `pv_one_min_bef` bigint(21) NOT NULL DEFAULT '0',
  `min_ratio` decimal(24,4) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `domain` (`domain`,`t_min`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `pv_yiwugou` */

CREATE TABLE `pv_yiwugou` (
  `pv` bigint(21) NOT NULL DEFAULT '0',
  `day_date` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `rencai_address_dim` */

CREATE TABLE `rencai_address_dim` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(32) DEFAULT NULL,
  `id_level0` bigint(32) DEFAULT NULL,
  `id_level0_name` varchar(45) DEFAULT NULL,
  `id_level1` bigint(32) DEFAULT NULL,
  `id_level1_name` varchar(45) DEFAULT NULL,
  `id_level2` bigint(32) DEFAULT NULL,
  `id_level2_name` varchar(45) DEFAULT NULL,
  `id_level3` bigint(32) DEFAULT NULL,
  `id_level3_name` varchar(45) DEFAULT NULL,
  `id_level4` bigint(32) DEFAULT NULL,
  `id_level4_name` varchar(45) DEFAULT NULL,
  `short_name` varchar(45) DEFAULT NULL,
  `layer_num` bigint(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_2` (`node_id`),
  KEY `NewIndex1` (`id_level2`)
) ENGINE=MyISAM AUTO_INCREMENT=3327 DEFAULT CHARSET=utf8;

/*Table structure for table `rencai_address_dim_slim` */

CREATE TABLE `rencai_address_dim_slim` (
  `id` bigint(32) NOT NULL DEFAULT '0',
  `node_id` bigint(32) DEFAULT NULL,
  `id_level0` bigint(32) DEFAULT NULL,
  `id_level0_name` varchar(45) DEFAULT NULL,
  `id_level1` bigint(32) DEFAULT NULL,
  `id_level1_name` varchar(45) DEFAULT NULL,
  `id_level2` bigint(32) DEFAULT NULL,
  `id_level2_name` varchar(45) DEFAULT NULL,
  `id_level3` bigint(32) DEFAULT NULL,
  `id_level3_name` varchar(45) DEFAULT NULL,
  `id_level4` bigint(32) DEFAULT NULL,
  `id_level4_name` varchar(45) DEFAULT NULL,
  `short_name` varchar(45) DEFAULT NULL,
  `layer_num` bigint(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `schema_domains` */

CREATE TABLE `schema_domains` (
  `domain` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `schema_foreign_domains` */

CREATE TABLE `schema_foreign_domains` (
  `domain` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `search_engine_crawl_num` */

CREATE TABLE `search_engine_crawl_num` (
  `baidu_spider_num` bigint(20) DEFAULT NULL,
  `date_str` varchar(10) DEFAULT NULL,
  `360_num` bigint(20) DEFAULT NULL,
  `bing_num` bigint(20) DEFAULT NULL,
  `google_num` bigint(20) DEFAULT NULL,
  `sogou_num` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `search_engine_keyword_day_site` */

CREATE TABLE `search_engine_keyword_day_site` (
  `num` bigint(20) DEFAULT NULL,
  `dayStr` varchar(10) DEFAULT NULL,
  `site_source` varchar(20) DEFAULT NULL,
  `key_word` varchar(200) DEFAULT NULL,
  KEY `index_key_word_search_engine` (`key_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `session_id_year_yiwugouid` */

CREATE TABLE `session_id_year_yiwugouid` (
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '用户登录后产生的sessionid,生命周期为一个会话期',
  `session_id_year` varchar(50) DEFAULT NULL,
  `visit_day` varchar(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `session_year_id_distinct` */

CREATE TABLE `session_year_id_distinct` (
  `session_id_year` varchar(50) DEFAULT NULL,
  `day_str` varchar(8) NOT NULL DEFAULT '',
  KEY `NewIndex1` (`session_id_year`),
  KEY `NewIndex2` (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `src_area_foreign_site` */

CREATE TABLE `src_area_foreign_site` (
  `ip` varchar(25) DEFAULT NULL,
  `sub_ip` varchar(25) DEFAULT NULL,
  `vist_time` datetime DEFAULT NULL,
  `yiwugouid` varchar(50) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `referer` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (to_days(vist_time))
(PARTITION p226 VALUES LESS THAN (736034) ENGINE = MyISAM,
 PARTITION p227 VALUES LESS THAN (736035) ENGINE = MyISAM,
 PARTITION p228 VALUES LESS THAN (736036) ENGINE = MyISAM,
 PARTITION p229 VALUES LESS THAN (736037) ENGINE = MyISAM,
 PARTITION p230 VALUES LESS THAN (736038) ENGINE = MyISAM,
 PARTITION p231 VALUES LESS THAN (736039) ENGINE = MyISAM,
 PARTITION p232 VALUES LESS THAN (736040) ENGINE = MyISAM,
 PARTITION p233 VALUES LESS THAN (736041) ENGINE = MyISAM,
 PARTITION p234 VALUES LESS THAN (736042) ENGINE = MyISAM,
 PARTITION p235 VALUES LESS THAN (736043) ENGINE = MyISAM,
 PARTITION p236 VALUES LESS THAN (736044) ENGINE = MyISAM,
 PARTITION p237 VALUES LESS THAN (736045) ENGINE = MyISAM,
 PARTITION p238 VALUES LESS THAN (736046) ENGINE = MyISAM,
 PARTITION p239 VALUES LESS THAN (736047) ENGINE = MyISAM,
 PARTITION p240 VALUES LESS THAN (736048) ENGINE = MyISAM,
 PARTITION p241 VALUES LESS THAN (736049) ENGINE = MyISAM,
 PARTITION p242 VALUES LESS THAN (736050) ENGINE = MyISAM,
 PARTITION p243 VALUES LESS THAN (736051) ENGINE = MyISAM,
 PARTITION p244 VALUES LESS THAN (736052) ENGINE = MyISAM,
 PARTITION p245 VALUES LESS THAN (736053) ENGINE = MyISAM,
 PARTITION p246 VALUES LESS THAN (736054) ENGINE = MyISAM,
 PARTITION p247 VALUES LESS THAN (736055) ENGINE = MyISAM,
 PARTITION p248 VALUES LESS THAN (736056) ENGINE = MyISAM,
 PARTITION p249 VALUES LESS THAN (736057) ENGINE = MyISAM,
 PARTITION p250 VALUES LESS THAN (736058) ENGINE = MyISAM,
 PARTITION p251 VALUES LESS THAN (736059) ENGINE = MyISAM,
 PARTITION p252 VALUES LESS THAN (736060) ENGINE = MyISAM,
 PARTITION p253 VALUES LESS THAN (736061) ENGINE = MyISAM,
 PARTITION p254 VALUES LESS THAN (736062) ENGINE = MyISAM,
 PARTITION p255 VALUES LESS THAN (736063) ENGINE = MyISAM,
 PARTITION p256 VALUES LESS THAN (736064) ENGINE = MyISAM,
 PARTITION p257 VALUES LESS THAN (736065) ENGINE = MyISAM,
 PARTITION p258 VALUES LESS THAN (736066) ENGINE = MyISAM,
 PARTITION p259 VALUES LESS THAN (736067) ENGINE = MyISAM,
 PARTITION p260 VALUES LESS THAN (736068) ENGINE = MyISAM,
 PARTITION p261 VALUES LESS THAN (736069) ENGINE = MyISAM,
 PARTITION p262 VALUES LESS THAN (736070) ENGINE = MyISAM,
 PARTITION p263 VALUES LESS THAN (736071) ENGINE = MyISAM,
 PARTITION p264 VALUES LESS THAN (736072) ENGINE = MyISAM,
 PARTITION p265 VALUES LESS THAN (736073) ENGINE = MyISAM,
 PARTITION p266 VALUES LESS THAN (736074) ENGINE = MyISAM,
 PARTITION p267 VALUES LESS THAN (736075) ENGINE = MyISAM,
 PARTITION p268 VALUES LESS THAN (736076) ENGINE = MyISAM,
 PARTITION p269 VALUES LESS THAN (736077) ENGINE = MyISAM,
 PARTITION p270 VALUES LESS THAN (736078) ENGINE = MyISAM,
 PARTITION p271 VALUES LESS THAN (736079) ENGINE = MyISAM,
 PARTITION p272 VALUES LESS THAN (736080) ENGINE = MyISAM,
 PARTITION p273 VALUES LESS THAN (736081) ENGINE = MyISAM,
 PARTITION p274 VALUES LESS THAN (736082) ENGINE = MyISAM,
 PARTITION p275 VALUES LESS THAN (736083) ENGINE = MyISAM,
 PARTITION p276 VALUES LESS THAN (736084) ENGINE = MyISAM,
 PARTITION p277 VALUES LESS THAN (736085) ENGINE = MyISAM,
 PARTITION p278 VALUES LESS THAN (736086) ENGINE = MyISAM,
 PARTITION p279 VALUES LESS THAN (736087) ENGINE = MyISAM,
 PARTITION p280 VALUES LESS THAN (736088) ENGINE = MyISAM,
 PARTITION p281 VALUES LESS THAN (736089) ENGINE = MyISAM,
 PARTITION p282 VALUES LESS THAN (736090) ENGINE = MyISAM,
 PARTITION p283 VALUES LESS THAN (736091) ENGINE = MyISAM,
 PARTITION p284 VALUES LESS THAN (736092) ENGINE = MyISAM,
 PARTITION p285 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*Table structure for table `statis_search_click` */

CREATE TABLE `statis_search_click` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `p_clicknum` decimal(41,0) DEFAULT NULL,
  `s_clicknum` decimal(41,0) DEFAULT NULL,
  `day_str` varchar(8) NOT NULL DEFAULT '',
  UNIQUE KEY `NewIndex3` (`key_word`,`day_str`),
  KEY `NewIndex1` (`key_word`),
  KEY `NewIndex2` (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `statis_search_click_sem` */

CREATE TABLE `statis_search_click_sem` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `p_clicknum` decimal(41,0) DEFAULT NULL,
  `s_clicknum` decimal(41,0) DEFAULT NULL,
  `day_str` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `statis_search_click_seo` */

CREATE TABLE `statis_search_click_seo` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `p_clicknum` decimal(41,0) DEFAULT NULL,
  `s_clicknum` decimal(41,0) DEFAULT NULL,
  `day_str` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `statis_search_click_sum_day` */

CREATE TABLE `statis_search_click_sum_day` (
  `search_num` decimal(63,0) DEFAULT NULL,
  `p_clicknum` decimal(63,0) DEFAULT NULL,
  `s_clicknum` decimal(63,0) DEFAULT NULL,
  `p_ratio` decimal(65,4) DEFAULT NULL,
  `s_ratio` decimal(65,4) DEFAULT NULL,
  `day_str` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`day_str`),
  KEY `NewIndex1` (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `statis_search_click_sum_day_sem` */

CREATE TABLE `statis_search_click_sum_day_sem` (
  `search_num` decimal(63,0) DEFAULT NULL,
  `p_clicknum` decimal(63,0) DEFAULT NULL,
  `s_clicknum` decimal(63,0) DEFAULT NULL,
  `p_ratio` decimal(65,4) DEFAULT NULL,
  `s_ratio` decimal(65,4) DEFAULT NULL,
  `day_str` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `statis_search_click_sum_day_seo` */

CREATE TABLE `statis_search_click_sum_day_seo` (
  `search_num` decimal(63,0) DEFAULT NULL,
  `p_clicknum` decimal(63,0) DEFAULT NULL,
  `s_clicknum` decimal(63,0) DEFAULT NULL,
  `p_ratio` decimal(65,4) DEFAULT NULL,
  `s_ratio` decimal(65,4) DEFAULT NULL,
  `day_str` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`day_str`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `temp_ali_complitest` */

CREATE TABLE `temp_ali_complitest` (
  `cats_id` bigint(20) DEFAULT NULL,
  `cats_name` varchar(100) DEFAULT NULL,
  `parent_cats_id` bigint(20) DEFAULT NULL,
  KEY `NewIndex1` (`cats_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `temp_log` */

CREATE TABLE `temp_log` (
  `ip` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `temp_log_mobile` */

CREATE TABLE `temp_log_mobile` (
  `date` datetime DEFAULT NULL,
  `time` double DEFAULT NULL,
  `INFO` varchar(4) DEFAULT NULL,
  `[com.asynchronous.listener.MessageConsumer]` varchar(43) DEFAULT NULL,
  `_` datetime DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `mobile` varchar(6) DEFAULT NULL,
  `Field8` datetime DEFAULT NULL,
  `Field9` datetime DEFAULT NULL,
  `Field10` datetime DEFAULT NULL,
  `Field11` datetime DEFAULT NULL,
  `success` varchar(7) DEFAULT NULL,
  `Field13` datetime DEFAULT NULL,
  `Field14` datetime DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `Field16` datetime DEFAULT NULL,
  `other_info` varchar(67) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `temp_log_mobile1` */

CREATE TABLE `temp_log_mobile1` (
  `date` datetime DEFAULT NULL,
  `time` double DEFAULT NULL,
  `d2` varchar(4) DEFAULT NULL,
  `d1` varchar(43) DEFAULT NULL,
  `d3` datetime DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `d4` varchar(6) DEFAULT NULL,
  `Field8` datetime DEFAULT NULL,
  `Field9` datetime DEFAULT NULL,
  `Field10` datetime DEFAULT NULL,
  `Field11` datetime DEFAULT NULL,
  `success` varchar(7) DEFAULT NULL,
  `Field13` datetime DEFAULT NULL,
  `Field14` datetime DEFAULT NULL,
  `number1` bigint(20) DEFAULT NULL,
  `Field16` datetime DEFAULT NULL,
  `other_info` varchar(67) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `temp_louqinf` */

CREATE TABLE `temp_louqinf` (
  `ccc` varchar(2000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `temp_shop_ids` */

CREATE TABLE `temp_shop_ids` (
  `shop_id` varchar(50) DEFAULT NULL COMMENT '商位号\r\n',
  `yiwugouid` varchar(50) DEFAULT NULL COMMENT '义乌购登录账号\r\n',
  `trade_num` int(11) DEFAULT NULL COMMENT '成交笔数\r\n',
  `trade_amount` decimal(10,0) DEFAULT NULL COMMENT '成交额\r\n',
  `avg_ip_num_NOV` int(11) DEFAULT NULL COMMENT '平均IP(2014年11月)',
  `avg_ip_num_DEC` int(11) DEFAULT NULL COMMENT '平均IP\r\n(2014年12月)',
  `product_num` int(11) DEFAULT NULL COMMENT '产品总数\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_agg_serch_list_keyword` */

CREATE TABLE `tmp_agg_serch_list_keyword` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `key_word` varchar(200) DEFAULT NULL,
  KEY `key_word11` (`key_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_agg_serch_list_result_keyword` */

CREATE TABLE `tmp_agg_serch_list_result_keyword` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `key_word` varchar(200) DEFAULT NULL,
  `url_layer1` varchar(200) DEFAULT NULL,
  KEY `key_word1` (`key_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_exclude_wu` */

CREATE TABLE `tmp_dic_exclude_wu` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `power_count` decimal(27,1) DEFAULT NULL,
  KEY `NewIndex1` (`wordstr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_exclude_wu_exclude_paoding` */

CREATE TABLE `tmp_dic_exclude_wu_exclude_paoding` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `power_count` decimal(27,1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_inner_search_tmp` */

CREATE TABLE `tmp_dic_inner_search_tmp` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `num` decimal(41,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_inner_search_tmp1` */

CREATE TABLE `tmp_dic_inner_search_tmp1` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `num` decimal(41,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_inner_search_tmp2` */

CREATE TABLE `tmp_dic_inner_search_tmp2` (
  `wordstr` varchar(100) DEFAULT NULL,
  `begin_end` decimal(60,0) DEFAULT NULL,
  `begin_not_end` decimal(60,0) DEFAULT NULL,
  `end_not_begin` decimal(60,0) DEFAULT NULL,
  `uid_count` decimal(60,0) DEFAULT NULL,
  `not_begin_notend` decimal(60,0) DEFAULT NULL,
  `total` decimal(60,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_search` */

CREATE TABLE `tmp_dic_search` (
  `num` decimal(41,0) DEFAULT NULL,
  `key_word` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dic_search_seq` */

CREATE TABLE `tmp_dic_search_seq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` decimal(41,0) DEFAULT NULL,
  `key_word` text,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `NewIndex1` (`key_word`)
) ENGINE=MyISAM AUTO_INCREMENT=48226 DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dis_product_category` */

CREATE TABLE `tmp_dis_product_category` (
  `cats_id` bigint(20) DEFAULT NULL,
  `cats_name` varchar(100) DEFAULT NULL,
  `parent_cats_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_dis_product_category_dim` */

CREATE TABLE `tmp_dis_product_category_dim` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(32) DEFAULT NULL,
  `id_level0` bigint(32) DEFAULT NULL,
  `id_level0_name` varchar(45) DEFAULT NULL,
  `id_level1` bigint(32) DEFAULT NULL,
  `id_level1_name` varchar(45) DEFAULT NULL,
  `id_level2` bigint(32) DEFAULT NULL,
  `id_level2_name` varchar(45) DEFAULT NULL,
  `id_level3` bigint(32) DEFAULT NULL,
  `id_level3_name` varchar(45) DEFAULT NULL,
  `id_level4` bigint(32) DEFAULT NULL,
  `id_level4_name` varchar(45) DEFAULT NULL,
  `id_level5` bigint(32) DEFAULT NULL,
  `id_level5_name` varchar(45) DEFAULT NULL,
  `id_level6` bigint(32) DEFAULT NULL,
  `id_level6_name` varchar(45) DEFAULT NULL,
  `id_level7` bigint(32) DEFAULT NULL,
  `id_level7_name` varchar(45) DEFAULT NULL,
  `id_level8` bigint(32) DEFAULT NULL,
  `id_level8_name` varchar(45) DEFAULT NULL,
  `id_level9` bigint(32) DEFAULT NULL,
  `id_level9_name` varchar(45) DEFAULT NULL,
  `cats_name` varchar(45) DEFAULT NULL,
  `layer_num` bigint(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NewIndex1` (`cats_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7752 DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_filter_test` */

CREATE TABLE `tmp_filter_test` (
  `is_over` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_foreign_domain` */

CREATE TABLE `tmp_foreign_domain` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `host_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_inner_keyword` */

CREATE TABLE `tmp_inner_keyword` (
  `num` decimal(41,0) DEFAULT NULL,
  `key_word` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_mai_sogou` */

CREATE TABLE `tmp_mai_sogou` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `agent` varchar(200) DEFAULT NULL,
  KEY `NewIndex1` (`agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_search_click_keyword` */

CREATE TABLE `tmp_search_click_keyword` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `clicknum` decimal(41,0) DEFAULT NULL,
  `url_layer1` varchar(200) DEFAULT NULL,
  KEY `ked` (`key_word`),
  KEY `ul1` (`url_layer1`),
  FULLTEXT KEY `key_woddang` (`key_word`,`url_layer1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_search_click_keyword_sem` */

CREATE TABLE `tmp_search_click_keyword_sem` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `clicknum` decimal(41,0) DEFAULT NULL,
  `url_layer1` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_search_click_keyword_seo` */

CREATE TABLE `tmp_search_click_keyword_seo` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `clicknum` decimal(41,0) DEFAULT NULL,
  `url_layer1` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_serch_list_keyword` */

CREATE TABLE `tmp_serch_list_keyword` (
  `key_word` varchar(500) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `url` text,
  `session_id_year` varchar(50) DEFAULT NULL,
  KEY `index_tmp_skeyword` (`key_word`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_serch_list_result_keyword` */

CREATE TABLE `tmp_serch_list_result_keyword` (
  `key_word` varchar(1000) DEFAULT NULL,
  `url_layer1` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `url` text,
  `session_id_year` varchar(50) DEFAULT NULL,
  KEY `index_tmp_keyword` (`key_word`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_session_id_year_regedit` */

CREATE TABLE `tmp_session_id_year_regedit` (
  `session_id_year` varchar(50) DEFAULT NULL,
  KEY `NewIndex1` (`session_id_year`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_sogou_all` */

CREATE TABLE `tmp_sogou_all` (
  `num` bigint(21) NOT NULL DEFAULT '0',
  `agent` varchar(200) DEFAULT NULL,
  KEY `NewIndex1` (`agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_tmp` */

CREATE TABLE `tmp_tmp` (
  `key_word` varchar(200) DEFAULT NULL,
  `search_num` decimal(41,0) DEFAULT NULL,
  `p_clicknum` decimal(41,0) DEFAULT NULL,
  `s_clicknum` decimal(41,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `word_2` */

CREATE TABLE `word_2` (
  `begin_end` bigint(20) DEFAULT NULL,
  `begin_not_end` bigint(20) DEFAULT NULL,
  `end_not_begin` bigint(20) DEFAULT NULL,
  `uid_count` bigint(20) DEFAULT NULL,
  `wordstr` tinytext,
  `not_begin_notend` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  FULLTEXT KEY `NewIndex1` (`wordstr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `word_userid` */

CREATE TABLE `word_userid` (
  `USER_ID` varchar(20) DEFAULT NULL,
  `word` varchar(400) DEFAULT NULL,
  KEY `NewIndex1` (`USER_ID`(3)),
  KEY `NewIndex2` (`word`(3))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `www_work_wap_session_id_year` */

CREATE TABLE `www_work_wap_session_id_year` (
  `session_id_year_www` bigint(20) DEFAULT NULL,
  `session_id_year_work` bigint(20) DEFAULT NULL,
  `session_id_year_wap` bigint(20) DEFAULT NULL,
  `day_date` varchar(8) DEFAULT NULL,
  KEY `NewIndex1` (`day_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
