/*
SQLyog Ultimate v8.4 
MySQL - 5.6.11 : Database - sse
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sse` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sse`;

/*Table structure for table `300_future` */

DROP TABLE IF EXISTS `300_future`;

CREATE TABLE `300_future` (
  `datetime` datetime DEFAULT NULL,
  `trade_amount` double DEFAULT NULL,
  `trade_volumn` double DEFAULT NULL,
  `hold_amount` double DEFAULT NULL,
  `hold_volumn` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `avg_2close_ratio_bef3` */

DROP TABLE IF EXISTS `avg_2close_ratio_bef3`;

CREATE TABLE `avg_2close_ratio_bef3` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_cybz` */

DROP TABLE IF EXISTS `block_cybz`;

CREATE TABLE `block_cybz` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_hs300` */

DROP TABLE IF EXISTS `block_hs300`;

CREATE TABLE `block_hs300` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_hylt` */

DROP TABLE IF EXISTS `block_hylt`;

CREATE TABLE `block_hylt` (
  `code_id` varchar(50) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_index` */

DROP TABLE IF EXISTS `block_index`;

CREATE TABLE `block_index` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_rzrq` */

DROP TABLE IF EXISTS `block_rzrq`;

CREATE TABLE `block_rzrq` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`code_id`),
  KEY `NewIndex1` (`code_id`),
  KEY `NewIndex2` (`stock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_rzrq_etf` */

DROP TABLE IF EXISTS `block_rzrq_etf`;

CREATE TABLE `block_rzrq_etf` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_rzrq_sz` */

DROP TABLE IF EXISTS `block_rzrq_sz`;

CREATE TABLE `block_rzrq_sz` (
  `code_id` varchar(30) DEFAULT NULL,
  `stock_name` varchar(30) DEFAULT NULL,
  KEY `NewIndex1` (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_sse_loan_monny_loan_stock` */

DROP TABLE IF EXISTS `block_sse_loan_monny_loan_stock`;

CREATE TABLE `block_sse_loan_monny_loan_stock` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `is_dealed` int(11) DEFAULT '0' COMMENT '0:未处理，1：已处理'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_sz50` */

DROP TABLE IF EXISTS `block_sz50`;

CREATE TABLE `block_sz50` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_szcz` */

DROP TABLE IF EXISTS `block_szcz`;

CREATE TABLE `block_szcz` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_szse_loan_monny_loan_stock` */

DROP TABLE IF EXISTS `block_szse_loan_monny_loan_stock`;

CREATE TABLE `block_szse_loan_monny_loan_stock` (
  `stock_code` varchar(30) DEFAULT NULL,
  `stock_name` varchar(30) DEFAULT NULL,
  `is_dealed` varchar(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `block_zxbz` */

DROP TABLE IF EXISTS `block_zxbz`;

CREATE TABLE `block_zxbz` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cease` */

DROP TABLE IF EXISTS `cease`;

CREATE TABLE `cease` (
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`changeTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `day_data_ipo_hezhun` */

DROP TABLE IF EXISTS `day_data_ipo_hezhun`;

CREATE TABLE `day_data_ipo_hezhun` (
  `audit_date` datetime DEFAULT NULL,
  `audit_company_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dic_correct_index_period_report` */

DROP TABLE IF EXISTS `dic_correct_index_period_report`;

CREATE TABLE `dic_correct_index_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `keyword_value` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `value_str` varchar(200) DEFAULT NULL COMMENT '值字符串',
  `stock_code` varchar(10) NOT NULL DEFAULT '' COMMENT '股票代码',
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '定期报告时间',
  `wrong_type` int(10) DEFAULT NULL COMMENT '错误类型,0:没有数据,1:多条数据',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`keyword_value`,`stock_code`,`report_period_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `dic_extract_datas_raw_period_report` */

DROP TABLE IF EXISTS `dic_extract_datas_raw_period_report`;

CREATE TABLE `dic_extract_datas_raw_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `real_key_name` varchar(200) DEFAULT NULL COMMENT '实际关键词名称',
  `value_str` varchar(200) DEFAULT NULL COMMENT '值字符串',
  `data_seq` int(10) DEFAULT NULL COMMENT '值序号（提取到多值的话）',
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '定期报告时间',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `NewIndex1` (`keyword_name`,`stock_code`,`data_seq`,`report_period_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `dic_keyword_type_period_report` */

DROP TABLE IF EXISTS `dic_keyword_type_period_report`;

CREATE TABLE `dic_keyword_type_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `value_type` int(10) DEFAULT NULL COMMENT '提取值类型,0:字符串,1:整型,2:浮点型',
  `comment_content` varchar(200) DEFAULT NULL COMMENT '注释',
  `catagory1` varchar(200) DEFAULT NULL COMMENT '类别一（大类别）',
  `catagory2` varchar(200) DEFAULT NULL COMMENT '类别二（小类别）',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `dic_keyword_value_period_report` */

DROP TABLE IF EXISTS `dic_keyword_value_period_report`;

CREATE TABLE `dic_keyword_value_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `keyword_value` varchar(50) DEFAULT NULL COMMENT '关键词文字',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`keyword_name`,`keyword_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `dic_temp` */

DROP TABLE IF EXISTS `dic_temp`;

CREATE TABLE `dic_temp` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `keyword_value` varchar(50) DEFAULT NULL COMMENT '关键词文字'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `hired` date NOT NULL DEFAULT '1970-01-01',
  `separated` date NOT NULL DEFAULT '9999-12-31',
  `job_code` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LIST (store_id)
(PARTITION pNorth VALUES IN (3,5,6,9,17) ENGINE = MyISAM,
 PARTITION pEast VALUES IN (1,2,10,11,19,20) ENGINE = MyISAM,
 PARTITION pWest VALUES IN (4,12,13,14,18) ENGINE = MyISAM,
 PARTITION pCentral VALUES IN (7,8,15,16) ENGINE = MyISAM) */;

/*Table structure for table `evaluate_result` */

DROP TABLE IF EXISTS `evaluate_result`;

CREATE TABLE `evaluate_result` (
  `evaluate_sql` varchar(2000) DEFAULT NULL,
  `avg_value` double DEFAULT NULL COMMENT '均价',
  `rise_num` int(10) DEFAULT NULL COMMENT '上涨股票只数',
  `down_num` int(10) DEFAULT NULL COMMENT '下跌股票只数',
  `count_total` int(10) DEFAULT NULL COMMENT '符合条件的股票总数',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `ext_right_index` */

DROP TABLE IF EXISTS `ext_right_index`;

CREATE TABLE `ext_right_index` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avg_2_open_close_ratio_bef_1` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_60` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_120` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_60` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `fjvr_10` */

DROP TABLE IF EXISTS `fjvr_10`;

CREATE TABLE `fjvr_10` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `nextdayopenratio` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `max_price_300` double DEFAULT NULL,
  `max_price_150` double DEFAULT NULL,
  `min_price_300` double DEFAULT NULL,
  `min_price_150` double DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`stock_code`,`trade_date`),
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `fvr_10` */

DROP TABLE IF EXISTS `fvr_10`;

CREATE TABLE `fvr_10` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `nextdayopenratio` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `max_price_300` double DEFAULT NULL,
  `max_price_150` double DEFAULT NULL,
  `min_price_300` double DEFAULT NULL,
  `min_price_150` double DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `index_vr_related_data` */

DROP TABLE IF EXISTS `index_vr_related_data`;

CREATE TABLE `index_vr_related_data` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '今天昨天收盘变化率',
  `ave_change_ratio` double DEFAULT NULL COMMENT '今天昨天均价变化率',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '今天收盘 开盘',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '今天均价收盘',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data1_10` */

DROP TABLE IF EXISTS `index_vr_related_data1_10`;

CREATE TABLE `index_vr_related_data1_10` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data1_21` */

DROP TABLE IF EXISTS `index_vr_related_data1_21`;

CREATE TABLE `index_vr_related_data1_21` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data1_5` */

DROP TABLE IF EXISTS `index_vr_related_data1_5`;

CREATE TABLE `index_vr_related_data1_5` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data2_10` */

DROP TABLE IF EXISTS `index_vr_related_data2_10`;

CREATE TABLE `index_vr_related_data2_10` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data2_21` */

DROP TABLE IF EXISTS `index_vr_related_data2_21`;

CREATE TABLE `index_vr_related_data2_21` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data2_5` */

DROP TABLE IF EXISTS `index_vr_related_data2_5`;

CREATE TABLE `index_vr_related_data2_5` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data3_10` */

DROP TABLE IF EXISTS `index_vr_related_data3_10`;

CREATE TABLE `index_vr_related_data3_10` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data3_10_pirce_volumn_related_index` */

DROP TABLE IF EXISTS `index_vr_related_data3_10_pirce_volumn_related_index`;

CREATE TABLE `index_vr_related_data3_10_pirce_volumn_related_index` (
  `index_value` double DEFAULT NULL,
  `id` bigint(20) NOT NULL DEFAULT '0',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `index_vr_related_data3_21` */

DROP TABLE IF EXISTS `index_vr_related_data3_21`;

CREATE TABLE `index_vr_related_data3_21` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data3_5` */

DROP TABLE IF EXISTS `index_vr_related_data3_5`;

CREATE TABLE `index_vr_related_data3_5` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data4_10` */

DROP TABLE IF EXISTS `index_vr_related_data4_10`;

CREATE TABLE `index_vr_related_data4_10` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data4_10_0529` */

DROP TABLE IF EXISTS `index_vr_related_data4_10_0529`;

CREATE TABLE `index_vr_related_data4_10_0529` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `index_vr_related_data4_10_pirce_volumn_related_index` */

DROP TABLE IF EXISTS `index_vr_related_data4_10_pirce_volumn_related_index`;

CREATE TABLE `index_vr_related_data4_10_pirce_volumn_related_index` (
  `index_value` double DEFAULT NULL,
  `id` bigint(20) NOT NULL DEFAULT '0',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`stock_code`,`trade_date`),
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `index_vr_related_data4_21` */

DROP TABLE IF EXISTS `index_vr_related_data4_21`;

CREATE TABLE `index_vr_related_data4_21` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `index_vr_related_data4_5` */

DROP TABLE IF EXISTS `index_vr_related_data4_5`;

CREATE TABLE `index_vr_related_data4_5` (
  `index_id` int(11) DEFAULT NULL,
  `stock_code` varchar(20) DEFAULT NULL,
  `change_ratio` double DEFAULT NULL COMMENT '?????????',
  `ave_change_ratio` double DEFAULT NULL COMMENT '?????????',
  `change_ratio_close_begin` double DEFAULT NULL COMMENT '???? ??',
  `change_ratio_avg_close` double DEFAULT NULL COMMENT '??????',
  `stock_code_int` int(10) DEFAULT NULL,
  `count_days` int(11) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `index_value` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `jvr_10` */

DROP TABLE IF EXISTS `jvr_10`;

CREATE TABLE `jvr_10` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `nextdayopenratio` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `max_price_300` double DEFAULT NULL,
  `max_price_150` double DEFAULT NULL,
  `min_price_300` double DEFAULT NULL,
  `min_price_150` double DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`stock_code`,`trade_date`),
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `lack` */

DROP TABLE IF EXISTS `lack`;

CREATE TABLE `lack` (
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`changeTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_analysis_industry_block_sum` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_analysis_industry_block_sum`;

CREATE TABLE `loan_monny_loan_stock_analysis_industry_block_sum` (
  `stock_code` varchar(100) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(100) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changeratio1` float DEFAULT NULL COMMENT '融资融券余额与前一天变化率',
  `changeratio3` float DEFAULT NULL,
  `changeratio5` float DEFAULT NULL,
  `changeratio10` float DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_analysis_sse` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_analysis_sse`;

CREATE TABLE `loan_monny_loan_stock_analysis_sse` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `loan_monny_loan_stock_analysis_sse_sum` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_analysis_sse_sum`;

CREATE TABLE `loan_monny_loan_stock_analysis_sse_sum` (
  `stock_code` varchar(100) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(100) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changeratio1` float DEFAULT NULL COMMENT '融资融券余额与前一天变化率',
  `changeratio3` float DEFAULT NULL,
  `changeratio5` float DEFAULT NULL,
  `changeratio10` float DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_analysis_szse` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_analysis_szse`;

CREATE TABLE `loan_monny_loan_stock_analysis_szse` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_detail` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_detail`;

CREATE TABLE `loan_monny_loan_stock_detail` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `loan_monny_buy` float DEFAULT NULL COMMENT '本日融资买入额（元）',
  `loan_monny_payback` float DEFAULT NULL COMMENT '本日融资偿还额（元）',
  `loan_stock_margin_share` float DEFAULT NULL COMMENT '本日融券余量(股)',
  `loan_stock_margin_amount` float DEFAULT NULL COMMENT '本日融券余量(元)',
  `loan_stock_sell_share` float DEFAULT NULL COMMENT '本日融券卖出量（股）',
  `loan_stock_payback_share` float DEFAULT NULL COMMENT '本日融券偿还量（股）',
  `exchange_house_symbol` int(3) DEFAULT '0' COMMENT '交易所标志代码 0:上海，1:深圳',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` bigint(20) NOT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`id`),
  KEY `NewIndex4` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_detail_sse` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_detail_sse`;

CREATE TABLE `loan_monny_loan_stock_detail_sse` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `loan_monny_buy` float DEFAULT NULL COMMENT '本日融资买入额（元）',
  `loan_monny_payback` float DEFAULT NULL COMMENT '本日融资偿还额（元）',
  `loan_stock_margin_share` float DEFAULT NULL COMMENT '本日融券余量(股)',
  `loan_stock_margin_amount` float DEFAULT NULL COMMENT '本日融券余量(元)',
  `loan_stock_sell_share` float DEFAULT NULL COMMENT '本日融券卖出量（股）',
  `loan_stock_payback_share` float DEFAULT NULL COMMENT '本日融券偿还量（股）',
  `exchange_house_symbol` int(3) DEFAULT '0' COMMENT '交易所标志代码 0:上海，1:深圳',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` bigint(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_detail_sum` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_detail_sum`;

CREATE TABLE `loan_monny_loan_stock_detail_sum` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `loan_monny_buy` float DEFAULT NULL COMMENT '本日融资买入额（元）',
  `loan_monny_payback` float DEFAULT NULL COMMENT '本日融资偿还额（元）',
  `loan_stock_margin_share` float DEFAULT NULL COMMENT '本日融券余量(股)',
  `loan_stock_margin_amount` float DEFAULT NULL COMMENT '本日融券余量(元)',
  `loan_stock_sell_share` float DEFAULT NULL COMMENT '本日融券卖出量（股）',
  `loan_stock_payback_share` float DEFAULT NULL COMMENT '本日融券偿还量（股）',
  `exchange_house_symbol` int(3) DEFAULT '0' COMMENT '交易所标志代码 0:上海，1:深圳',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` bigint(20) NOT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_detail_szse` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_detail_szse`;

CREATE TABLE `loan_monny_loan_stock_detail_szse` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `loan_monny_buy` float DEFAULT NULL COMMENT '本日融资买入额（元）',
  `loan_monny_payback` float DEFAULT NULL COMMENT '本日融资偿还额（元）',
  `loan_stock_margin_share` float DEFAULT NULL COMMENT '本日融券余量(股)',
  `loan_stock_margin_amount` float DEFAULT NULL COMMENT '本日融券余量(元)',
  `loan_stock_sell_share` float DEFAULT NULL COMMENT '本日融券卖出量（股）',
  `loan_stock_payback_share` float DEFAULT NULL COMMENT '本日融券偿还量（股）',
  `exchange_house_symbol` int(3) DEFAULT '0' COMMENT '交易所标志代码 0:上海，1:深圳',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` bigint(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `loan_monny_loan_stock_sum` */

DROP TABLE IF EXISTS `loan_monny_loan_stock_sum`;

CREATE TABLE `loan_monny_loan_stock_sum` (
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `loan_monny_buy` float DEFAULT NULL COMMENT '本日融资买入额（元）',
  `loan_monny_payback` float DEFAULT NULL COMMENT '本日融资偿还额（元）',
  `loan_stock_margin_share` float DEFAULT NULL COMMENT '本日融券余量(股)',
  `loan_stock_margin_amount` float DEFAULT NULL COMMENT '本日融券余量(元)',
  `loan_stock_sell_share` float DEFAULT NULL COMMENT '本日融券卖出量（股）',
  `loan_stock_payback_share` float DEFAULT NULL COMMENT '本日融券偿还量（股）',
  `exchange_house_symbol` int(3) DEFAULT '0' COMMENT '交易所标志代码 0:上海，1:深圳',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`exchange_house_symbol`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `max_min_ratio_index_estimate` */

DROP TABLE IF EXISTS `max_min_ratio_index_estimate`;

CREATE TABLE `max_min_ratio_index_estimate` (
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_2_open_close_ratio_bef_1` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `period_report_url_content_raw` */

DROP TABLE IF EXISTS `period_report_url_content_raw`;

CREATE TABLE `period_report_url_content_raw` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '定期报告时间',
  `publish_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '定期报告发布时间(冗余)',
  `is_parsed` int(3) DEFAULT '0' COMMENT '是否已经抓取数据 0:未解析，1:已抓取',
  `raw_content` mediumtext COMMENT '定期报告内容',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code`,`report_period_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `period_report_url_inf` */

DROP TABLE IF EXISTS `period_report_url_inf`;

CREATE TABLE `period_report_url_inf` (
  `url` varchar(600) DEFAULT NULL,
  `stock_code` varchar(30) DEFAULT NULL,
  `report_name` varchar(150) DEFAULT NULL,
  `period_symbol` double DEFAULT NULL,
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `publish_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_crawled` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `pirce_volumn_related_index` */

DROP TABLE IF EXISTS `pirce_volumn_related_index`;

CREATE TABLE `pirce_volumn_related_index` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avg_2_open_close_ratio_bef_1` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_60` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_120` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_60` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  `vr_5` double DEFAULT NULL,
  `fvr_5` double DEFAULT NULL,
  `jvr_5` double DEFAULT NULL,
  `fjvr_5` double DEFAULT NULL,
  `vr_10` double DEFAULT NULL,
  `fvr_10` double DEFAULT NULL,
  `jvr_10` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `vr_20` double DEFAULT NULL,
  `fvr_20` double DEFAULT NULL,
  `jvr_20` double DEFAULT NULL,
  `fjvr_20` double DEFAULT NULL,
  `avg_abs_3` double DEFAULT NULL,
  `avg_abs_5` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `avg_abs_60` double DEFAULT NULL,
  `nextdayopenratio` double DEFAULT NULL,
  `avg_price_inc_days` int(11) DEFAULT NULL,
  `max_price_300` double DEFAULT NULL,
  `max_price_150` double DEFAULT NULL,
  `min_price_300` double DEFAULT NULL,
  `min_price_150` double DEFAULT NULL,
  `min_price_10` double DEFAULT NULL,
  `min_price_20` double DEFAULT NULL,
  `min_price_30` double DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
) ENGINE=InnoDB AUTO_INCREMENT=76822018 DEFAULT CHARSET=utf8;

/*Table structure for table `pirce_volumn_related_index1` */

DROP TABLE IF EXISTS `pirce_volumn_related_index1`;

CREATE TABLE `pirce_volumn_related_index1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avg_2_open_close_ratio_bef_1` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_60` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_120` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_60` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  `vr_5` double DEFAULT NULL,
  `fvr_5` double DEFAULT NULL,
  `jvr_5` double DEFAULT NULL,
  `fjvr_5` double DEFAULT NULL,
  `vr_10` double DEFAULT NULL,
  `fvr_10` double DEFAULT NULL,
  `jvr_10` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `vr_20` double DEFAULT NULL,
  `fvr_20` double DEFAULT NULL,
  `jvr_20` double DEFAULT NULL,
  `fjvr_20` double DEFAULT NULL,
  `avg_abs_3` double DEFAULT NULL,
  `avg_abs_5` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `avg_abs_60` double DEFAULT NULL,
  `nextdayopenratio` double DEFAULT NULL,
  `avg_price_inc_days` int(11) DEFAULT NULL,
  `max_price_300` double DEFAULT NULL,
  `max_price_150` double DEFAULT NULL,
  `min_price_300` double DEFAULT NULL,
  `min_price_150` double DEFAULT NULL,
  `min_price_10` double DEFAULT NULL,
  `min_price_20` double DEFAULT NULL,
  `min_price_30` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`stock_code`,`trade_date`),
  KEY `NewIndex1` (`trade_date`),
  KEY `NewIndex2` (`avg_price_inc_days`),
  KEY `NewIndex3` (`stock_code`)
) ENGINE=MyISAM AUTO_INCREMENT=101953434 DEFAULT CHARSET=utf8 COMMENT='价量指标';

/*Table structure for table `pirce_volumn_related_index_0529` */

DROP TABLE IF EXISTS `pirce_volumn_related_index_0529`;

CREATE TABLE `pirce_volumn_related_index_0529` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avg_2_open_close_ratio_bef_1` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_60` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_120` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_60` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `price_max_min_measure` */

DROP TABLE IF EXISTS `price_max_min_measure`;

CREATE TABLE `price_max_min_measure` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `hightest300` float DEFAULT NULL COMMENT '300交易日内最高价',
  `hightest150` float DEFAULT NULL COMMENT '150交易日内最高价',
  `lowest300` float DEFAULT NULL COMMENT '300交易日内最低价',
  `lowest150` float DEFAULT NULL COMMENT '150交易日内最低价',
  `terminal_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '计算日期',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `closeprice` float DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`terminal_day`),
  KEY `NewIndex2` (`terminal_day`),
  KEY `NewIndex3` (`stock_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `record` */

DROP TABLE IF EXISTS `record`;

CREATE TABLE `record` (
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maketTotal` float DEFAULT NULL,
  `circulateTotal` float DEFAULT NULL,
  `volumn` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `hundredShare` float DEFAULT NULL,
  `perGet` float DEFAULT NULL,
  `changeRatio` float DEFAULT NULL,
  `amountPerChange` float DEFAULT NULL,
  PRIMARY KEY (`changeTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `stock_account_change_info` */

DROP TABLE IF EXISTS `stock_account_change_info`;

CREATE TABLE `stock_account_change_info` (
  `statistic_begin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '统计起始日期',
  `statistic_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '统计结束日期',
  `effective_account_num_sh` float DEFAULT NULL COMMENT '上海期末有效账户数（万户）',
  `effective_account_num_sz` float DEFAULT NULL COMMENT '深圳期末有效账户数（万户）',
  `increase_account_num_sh` float DEFAULT NULL COMMENT '上海新增账户数（户）',
  `increase_account_num_sz` float DEFAULT NULL COMMENT '深圳新增账户数（户）',
  `total_account_num_sh` float DEFAULT NULL COMMENT '上海期末A股账户数（万户）',
  `total_account_num_sz` float DEFAULT NULL COMMENT '深圳期末A股账户数（万户）',
  `position_account_num_sh` float DEFAULT NULL COMMENT '上海期末持仓A股账户数（万户）',
  `position_account_num_sz` float DEFAULT NULL COMMENT '深圳期末持仓A股账户数（万户）',
  `transac_account_num_sh` float DEFAULT NULL COMMENT '上海本周参与交易的A股账户数（万户）',
  `transac_account_num_sz` float DEFAULT NULL COMMENT '深圳本周参与交易的A股账户数（万户）',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`statistic_begin`,`statistic_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stock_category` */

DROP TABLE IF EXISTS `stock_category`;

CREATE TABLE `stock_category` (
  `stock_code` varchar(20) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(20) DEFAULT NULL COMMENT '股票名称',
  `category1_code` varchar(20) DEFAULT NULL COMMENT '行业分类1代码',
  `category1_name` varchar(100) DEFAULT NULL COMMENT '行业分类1名称',
  `category2_code` varchar(20) DEFAULT NULL COMMENT '行业分类2代码',
  `category2_name` varchar(100) DEFAULT NULL COMMENT '行业分类2名称',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`category2_name`),
  KEY `NewIndex3` (`category1_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `stock_index_future_daily` */

DROP TABLE IF EXISTS `stock_index_future_daily`;

CREATE TABLE `stock_index_future_daily` (
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `contract_name` varchar(30) DEFAULT NULL COMMENT '合约代码',
  `open_price` float DEFAULT NULL COMMENT '今开盘',
  `highest_price` float DEFAULT NULL COMMENT '最高价',
  `lowest_price` float DEFAULT NULL COMMENT '最低价',
  `exchange_volume` float DEFAULT NULL COMMENT '成交量',
  `exchange_amount` float DEFAULT NULL COMMENT '成交金额',
  `hold_volume` float DEFAULT NULL COMMENT '持仓量',
  `close_price` float DEFAULT NULL COMMENT '今收盘',
  `settle_price` float DEFAULT '0' COMMENT '今结算',
  `change_ratio1` float DEFAULT '0' COMMENT '涨跌1',
  `change_ratio2` float DEFAULT '0' COMMENT '涨跌2',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `stock_index_future_1` (`trade_date`,`contract_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stock_index_future_daily_top20` */

DROP TABLE IF EXISTS `stock_index_future_daily_top20`;

CREATE TABLE `stock_index_future_daily_top20` (
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `contract_name` varchar(30) DEFAULT NULL COMMENT '合约代码',
  `agency_name` varchar(30) DEFAULT NULL COMMENT '合约代码',
  `open_price` float DEFAULT NULL COMMENT '今开盘',
  `highest_price` float DEFAULT NULL COMMENT '最高价',
  `lowest_price` float DEFAULT NULL COMMENT '最低价',
  `exchange_volume` float DEFAULT NULL COMMENT '成交量',
  `exchange_amount` float DEFAULT NULL COMMENT '成交金额',
  `hold_volume` float DEFAULT NULL COMMENT '持仓量',
  `close_price` float DEFAULT NULL COMMENT '今收盘',
  `settle_price` float DEFAULT '0' COMMENT '今结算',
  `change_ratio1` float DEFAULT '0' COMMENT '涨跌1',
  `change_ratio2` float DEFAULT '0' COMMENT '涨跌2',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `stock_index_future_1` (`trade_date`,`contract_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stock_industry_categorys` */

DROP TABLE IF EXISTS `stock_industry_categorys`;

CREATE TABLE `stock_industry_categorys` (
  `category1_name` varchar(100) DEFAULT NULL COMMENT '行业分类1名称',
  `category2_name` varchar(100) DEFAULT NULL COMMENT '行业分类2名称',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category2_code` varchar(10) DEFAULT NULL,
  `rzrq_num` int(11) DEFAULT NULL COMMENT '该板块包含融券融券股票个数',
  UNIQUE KEY `NewIndex2` (`category2_code`),
  KEY `NewIndex1` (`category2_name`),
  KEY `NewIndex3` (`category1_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `stock_similarity` */

DROP TABLE IF EXISTS `stock_similarity`;

CREATE TABLE `stock_similarity` (
  `stock_code1` varchar(50) DEFAULT NULL,
  `stock_code2` varchar(50) DEFAULT NULL,
  `similarity` float DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code1`,`stock_code2`),
  KEY `NewIndex2` (`stock_code1`),
  KEY `NewIndex3` (`similarity`),
  KEY `NewIndex4` (`ts`),
  KEY `NewIndex5` (`stock_code2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stock_trade_daily_detail` */

DROP TABLE IF EXISTS `stock_trade_daily_detail`;

CREATE TABLE `stock_trade_daily_detail` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `closed_yes` float DEFAULT NULL,
  `begin_today` float DEFAULT NULL,
  `close_today` float DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `volumn` bigint(20) DEFAULT NULL,
  `maxprice` float DEFAULT NULL,
  `minprice` float DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3974997 DEFAULT CHARSET=utf8;

/*Table structure for table `stock_trade_daily_detail1` */

DROP TABLE IF EXISTS `stock_trade_daily_detail1`;

CREATE TABLE `stock_trade_daily_detail1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `closed_yes` float DEFAULT NULL,
  `begin_today` float DEFAULT NULL,
  `close_today` float DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `volumn` bigint(20) DEFAULT NULL,
  `maxprice` float DEFAULT NULL,
  `minprice` float DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`stock_code`,`trade_date`),
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`trade_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2912856 DEFAULT CHARSET=utf8;

/*Table structure for table `stocknames` */

DROP TABLE IF EXISTS `stocknames`;

CREATE TABLE `stocknames` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_anaylis_loan1` */

DROP TABLE IF EXISTS `temp_anaylis_loan1`;

CREATE TABLE `temp_anaylis_loan1` (
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `loan_margin_change_ratio_1` double DEFAULT NULL,
  `loan_monny_buy_change_ratio_1` double DEFAULT NULL,
  `loan_margin_change_ratio_10` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_anaylis_loan11` */

DROP TABLE IF EXISTS `temp_anaylis_loan11`;

CREATE TABLE `temp_anaylis_loan11` (
  `loan_monny_margin` float DEFAULT NULL COMMENT '本日融资余额（元）',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `loan_margin_change_ratio_1` double DEFAULT NULL,
  `loan_monny_buy_change_ratio_1` double DEFAULT NULL,
  `loan_margin_change_ratio_10` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_anaylis_loan2` */

DROP TABLE IF EXISTS `temp_anaylis_loan2`;

CREATE TABLE `temp_anaylis_loan2` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `loan_margin_change_ratio_1` double DEFAULT NULL,
  `loan_monny_buy_change_ratio_1` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_continue_inc` */

DROP TABLE IF EXISTS `temp_continue_inc`;

CREATE TABLE `temp_continue_inc` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `avg_2close_ratio_bef_1` double DEFAULT NULL,
  `avg_2close_ratio_bef_3` double DEFAULT NULL COMMENT '均价与市价（前一天收盘价与今日收盘价均值）偏差累计（比率累计）',
  `avg_2close_ratio_bef_5` double DEFAULT NULL,
  `avg_2close_ratio_bef_10` double DEFAULT NULL,
  `avg_2close_ratio_bef_20` double DEFAULT NULL,
  `avg_2close_ratio_bef_60` double DEFAULT NULL,
  `avg_2close_ratio_bef_120` double DEFAULT NULL,
  `avg_cost_bef_1_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_3_today_ratio` double DEFAULT NULL COMMENT '当前价格 与 前3天均价变动率',
  `avg_cost_bef_5_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_10_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_20_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_60_today_ratio` double DEFAULT NULL,
  `avg_cost_bef_120_today_ratio` double DEFAULT NULL,
  `avg_cost_after_1_today_ratio` double DEFAULT NULL,
  `avg_cost_after_3_today_ratio` double DEFAULT NULL COMMENT '后三日均价 与 当前成交均价变动率',
  `avg_cost_after_5_today_ratio` double DEFAULT NULL,
  `avg_cost_after_10_today_ratio` double DEFAULT NULL,
  `avg_cost_after_20_today_ratio` double DEFAULT NULL,
  `avg_cost_after_60_today_ratio` double DEFAULT NULL,
  `avg_cost_after_120_today_ratio` double DEFAULT NULL,
  `view_real_avg_ratio_before_1` double DEFAULT NULL,
  `view_real_avg_ratio_before_3` double DEFAULT NULL,
  `view_real_avg_ratio_before_5` double DEFAULT NULL,
  `view_real_avg_ratio_before_10` double DEFAULT NULL,
  `view_real_avg_ratio_before_20` double DEFAULT NULL,
  `view_real_avg_ratio_before_60` double DEFAULT NULL,
  `view_real_avg_ratio_before_120` double DEFAULT NULL,
  `volumeReduceChange_30_60` double DEFAULT NULL,
  `volumeReduceChange_50_100` double DEFAULT NULL,
  `volumeReduceChange_100_300` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avg_2_open_close_ratio_bef_1` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_3` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_5` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_10` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_20` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_60` double DEFAULT NULL,
  `avg_2_open_close_ratio_bef_120` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_1` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_3` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_5` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_10` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_20` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_60` double DEFAULT NULL,
  `avg_2_max_min_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_bef_3` double DEFAULT NULL,
  `close_ratio_bef_5` double DEFAULT NULL,
  `close_ratio_bef_10` double DEFAULT NULL,
  `close_ratio_bef_20` double DEFAULT NULL,
  `close_ratio_bef_60` double DEFAULT NULL,
  `close_ratio_bef_120` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `close_ratio_after_60` double DEFAULT NULL,
  `close_ratio_after_120` double DEFAULT NULL,
  `vr_5` double DEFAULT NULL,
  `fvr_5` double DEFAULT NULL,
  `jvr_5` double DEFAULT NULL,
  `fjvr_5` double DEFAULT NULL,
  `vr_10` double DEFAULT NULL,
  `fvr_10` double DEFAULT NULL,
  `jvr_10` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `vr_20` double DEFAULT NULL,
  `fvr_20` double DEFAULT NULL,
  `jvr_20` double DEFAULT NULL,
  `fjvr_20` double DEFAULT NULL,
  `avg_abs_3` double DEFAULT NULL,
  `avg_abs_5` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `avg_abs_60` double DEFAULT NULL,
  `nextdayopenratio` double DEFAULT NULL,
  `avg_price_inc_days` int(11) DEFAULT NULL,
  KEY `NewIndex1` (`trade_date`),
  KEY `NewIndex2` (`stock_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_stockcode_day` */

DROP TABLE IF EXISTS `temp_stockcode_day`;

CREATE TABLE `temp_stockcode_day` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `is_dealed` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_loan_analysis` */

DROP TABLE IF EXISTS `tmp_loan_analysis`;

CREATE TABLE `tmp_loan_analysis` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avg_abs_3` double DEFAULT NULL,
  `avg_abs_5` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `min_price_30` double DEFAULT NULL,
  `min_price_20` double DEFAULT NULL,
  `min_price_10` double DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_loan_analysis1` */

DROP TABLE IF EXISTS `tmp_loan_analysis1`;

CREATE TABLE `tmp_loan_analysis1` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avg_abs_3` double DEFAULT NULL,
  `avg_abs_5` double DEFAULT NULL,
  `avg_abs_10` double DEFAULT NULL,
  `avg_abs_20` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `close_ratio_after_5` double DEFAULT NULL,
  `close_ratio_after_10` double DEFAULT NULL,
  `close_ratio_after_20` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `min_price_30` double DEFAULT NULL,
  `min_price_20` double DEFAULT NULL,
  `min_price_10` double DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tmp_loan_monny_loan_stock_detail` */

DROP TABLE IF EXISTS `tmp_loan_monny_loan_stock_detail`;

CREATE TABLE `tmp_loan_monny_loan_stock_detail` (
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ts` */

DROP TABLE IF EXISTS `ts`;

CREATE TABLE `ts` (
  `id` int(11) DEFAULT NULL,
  `purchased` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (YEAR(purchased))
SUBPARTITION BY HASH (TO_DAYS(purchased))
SUBPARTITIONS 2
(PARTITION p0 VALUES LESS THAN (1990) ENGINE = MyISAM,
 PARTITION p1 VALUES LESS THAN (2000) ENGINE = MyISAM,
 PARTITION p2 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
