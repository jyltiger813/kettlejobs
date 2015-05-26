-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: sse
-- ------------------------------------------------------
-- Server version	5.6.11
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `300_future`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;


CREATE TABLE `300_future` (
  `datetime` datetime DEFAULT NULL,
  `trade_amount` double DEFAULT NULL,
  `trade_volumn` double DEFAULT NULL,
  `hold_amount` double DEFAULT NULL,
  `hold_volumn` double DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `300_future`
--


--
-- Table structure for table `avg_2close_ratio_bef3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avg_2close_ratio_bef3`
--


--
-- Table structure for table `block_cybz`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_cybz` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_cybz`
--


--
-- Table structure for table `block_hs300`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_hs300` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_hs300`
--


--
-- Table structure for table `block_hylt`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_hylt` (
  `code_id` varchar(50) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_hylt`
--


--
-- Table structure for table `block_index`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_index` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_index`
--


--
-- Table structure for table `block_rzrq`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_rzrq` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`code_id`),
  KEY `NewIndex1` (`code_id`),
  KEY `NewIndex2` (`stock_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_rzrq`
--


--
-- Table structure for table `block_rzrq_etf`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_rzrq_etf` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_rzrq_etf`
--


--
-- Table structure for table `block_rzrq_sz`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_rzrq_sz` (
  `code_id` varchar(30) DEFAULT NULL,
  `stock_name` varchar(30) DEFAULT NULL,
  KEY `NewIndex1` (`code_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_rzrq_sz`
--


--
-- Table structure for table `block_sse_loan_monny_loan_stock`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_sse_loan_monny_loan_stock` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `stock_name` varchar(30) DEFAULT NULL,
  `is_dealed` int(11) DEFAULT '0' COMMENT '0:未处理，1：已处理'
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_sse_loan_monny_loan_stock`
--


--
-- Table structure for table `block_sz50`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_sz50` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`code_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_sz50`
--


--
-- Table structure for table `block_szcz`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_szcz` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_szcz`
--


--
-- Table structure for table `block_szse_loan_monny_loan_stock`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_szse_loan_monny_loan_stock` (
  `stock_code` varchar(30) DEFAULT NULL,
  `stock_name` varchar(30) DEFAULT NULL,
  `is_dealed` varchar(1) NOT NULL DEFAULT ''
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_szse_loan_monny_loan_stock`
--


--
-- Table structure for table `block_zxbz`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_zxbz` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_zxbz`
--


--
-- Table structure for table `cease`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cease` (
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`changeTime`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cease`
--


--
-- Table structure for table `day_data_ipo_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day_data_ipo_detail` (
  `stock_code` varchar(50) DEFAULT NULL,
  `apply_code` varchar(50) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `apply_day` datetime DEFAULT NULL,
  `ipo_day` datetime DEFAULT NULL,
  `ipo_num` double DEFAULT NULL,
  `net_ipo_num` double DEFAULT NULL,
  `ipo_price` double DEFAULT NULL,
  `revenge_ratio` double DEFAULT NULL,
  `personal_apply_limit` double DEFAULT NULL,
  `ipo_amount` double DEFAULT NULL,
  `net_apply_success_ratio` double DEFAULT NULL,
  `apply_success_num` varchar(50) DEFAULT NULL,
  `predict` varchar(50) DEFAULT NULL,
  `report` varchar(50) DEFAULT NULL,
  `recruit_report_publish_time` datetime DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_data_ipo_detail`
--

INSERT INTO sse.`day_data_ipo_detail` VALUES ('300473','300473','德尔股份 ','2015-06-03 00:00:00',NULL,2500,NULL,0,0,0,7.19,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2766','2766','索菱股份 ','2015-06-03 00:00:00',NULL,4580,NULL,0,0,0,3.449,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300476','300476','胜宏科技 ','2015-06-03 00:00:00',NULL,NULL,NULL,0,0,0,5.768,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300469','300469','信息发展 ','2015-06-03 00:00:00',NULL,NULL,NULL,0,0,0,1.693,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603066','732066','音飞储存 ','2015-06-03 00:00:00',NULL,NULL,NULL,0,0,0,3.108,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300479','300479','神思电子 ','2015-06-03 00:00:00',NULL,2000,NULL,0,0,0,2.204,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300472','300472','新元科技 ','2015-06-03 00:00:00',NULL,NULL,NULL,0,0,0,1.899,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2760','2760','凤形股份 ','2015-06-03 00:00:00',NULL,2200,NULL,0,0,0,1.828,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603616','732616','韩建河山 ','2015-06-03 00:00:00',NULL,NULL,NULL,0,0,0,4.166,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601968','780968','宝钢包装 ','2015-06-03 00:00:00',NULL,NULL,NULL,0,0,0,6.417,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2761','2761','多喜爱 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,2.184,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601368','780368','绿城水务 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,8.801,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2765','2765','蓝黛传动 ','2015-06-02 00:00:00',NULL,5200,NULL,0,0,0,3.669,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300475','300475','聚隆科技 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,4.4,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2763','2763','汇洁股份 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,7.077,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601985','780985','中国核电 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,135.799,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300478','300478','杭州高新 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,2.474,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300464','300464','星徽精密 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,2.108,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300477','300477','合纵科技 ','2015-06-02 00:00:00',NULL,NULL,NULL,0,0,0,2.76,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300470','300470','日机密封 ','2015-06-02 00:00:00',NULL,1334,NULL,0,0,0,4.617,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2762','2762','金发拉比 ','2015-06-02 00:00:00',NULL,1700,NULL,0,0,0,4.421,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603026','732026','石大胜华 ','2015-05-21 00:00:00',NULL,5068,4561,6.51,32.55,2,3.299,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603198','732198','迎驾贡酒 ','2015-05-20 00:00:00',NULL,8000,7200,11.8,19.4,2,9.446,0.7,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603568','732568','伟明环保 ','2015-05-20 00:00:00',NULL,4580,4122,11.27,22.97,1,5.162,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300465','300465','高伟达 ','2015-05-20 00:00:00',NULL,3334,3001,11.26,22.93,1,3.754,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2757','2757','南兴装备 ','2015-05-19 00:00:00',NULL,2734,2461,12.94,22.98,1,3.538,0.32,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300461','300461','田中精机 ','2015-05-11 00:00:00','2015-05-19 00:00:00',1668,1501,7.92,22.98,1,1.321,0.12,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603311','732311','金海环境 ','2015-05-07 00:00:00','2015-05-18 00:00:00',5250,4725,5.39,22.99,2,2.83,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603968','732968','醋化股份 ','2015-05-07 00:00:00','2015-05-18 00:00:00',2556,2300,19.58,22.98,1,5.005,0.58,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603566','732566','普莱柯 ','2015-05-07 00:00:00','2015-05-18 00:00:00',4000,3600,15.52,18.89,2,6.212,0.51,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603989','732989','艾华集团 ','2015-05-07 00:00:00','2015-05-15 00:00:00',5000,4500,20.74,22.99,2,10.371,0.64,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2753','2753','永东股份 ','2015-05-07 00:00:00','2015-05-19 00:00:00',2470,2223,13.56,22.99,1,3.349,0.41,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300456','300456','耐威科技 ','2015-05-06 00:00:00','2015-05-14 00:00:00',2100,1890,14.01,22.98,1,2.802,0.39,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603022','732022','新通联 ','2015-05-06 00:00:00','2015-05-18 00:00:00',2000,1800,14.31,22.98,1,2.862,0.36,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300455','300455','康拓红外 ','2015-05-06 00:00:00','2015-05-15 00:00:00',3500,3150,6.88,18.11,1,2.409,0.35,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300458','300458','全志科技 ','2015-05-06 00:00:00','2015-05-15 00:00:00',4000,3600,12.73,19.89,2,5.094,0.43,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300453','300453','三鑫医疗 ','2015-05-06 00:00:00','2015-05-15 00:00:00',1986,1787,12.87,22.98,1,2.556,0.41,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300450','300450','先导股份 ','2015-05-06 00:00:00','2015-05-18 00:00:00',1700,1530,21.21,22.98,1,3.606,0.47,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2755','2755','东方新星 ','2015-05-06 00:00:00','2015-05-15 00:00:00',2534,2281,7.49,20.49,1,1.898,0.32,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603718','732718','海利生物 ','2015-05-06 00:00:00','2015-05-15 00:00:00',7000,6300,6.81,21.28,3,4.774,0.31,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603227','732227','雪峰科技 ','2015-05-06 00:00:00','2015-05-15 00:00:00',8235,7412,4.98,22.95,3,3.875,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300459','300459','浙江金科 ','2015-05-05 00:00:00','2015-05-15 00:00:00',2650,2385,7.84,22.97,1,2.078,0.33,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300451','300451','创业软件 ','2015-05-05 00:00:00','2015-05-14 00:00:00',1700,1530,14.02,22.98,1,2.384,0.2,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2756','2756','永兴特钢 ','2015-05-05 00:00:00','2015-05-15 00:00:00',5000,4500,21.74,17.97,2,10.872,0.48,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603355','732355','莱克电气 ','2015-05-05 00:00:00','2015-05-13 00:00:00',4100,3690,19.08,22.99,1,7.823,0.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300460','300460','惠伦晶体 ','2015-05-05 00:00:00','2015-05-15 00:00:00',4208,3787,6.43,22.96,2,2.706,0.34,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300457','300457','赢合科技 ','2015-05-05 00:00:00','2015-05-14 00:00:00',1950,1755,12.41,20.34,1,2.421,0.33,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300452','300452','山河药辅 ','2015-05-05 00:00:00','2015-05-15 00:00:00',1160,1044,14.96,22.99,0,1.736,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300414','300414','中光防雷 ','2015-05-05 00:00:00','2015-05-13 00:00:00',2107,1896,14.74,13.24,1,3.106,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603599','732599','广信股份 ','2015-05-05 00:00:00','2015-05-13 00:00:00',4706,4235,16.11,20.62,2,7.581,0.32,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300442','300442','普丽盛 ','2015-04-16 00:00:00','2015-04-24 00:00:00',2500,2250,19.17,22.55,1,4.212,0.62,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300434','300434','金石东方 ','2015-04-16 00:00:00','2015-04-24 00:00:00',1700,1530,10.57,22.98,1,1.475,0.44,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300438','300438','鹏辉能源 ','2015-04-16 00:00:00','2015-04-24 00:00:00',2100,1890,14.87,22.99,1,2.782,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2751','2751','易尚展示 ','2015-04-16 00:00:00','2015-04-24 00:00:00',1756,1580,10.48,22.98,1,1.55,0.34,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300404','300404','博济医药 ','2015-04-16 00:00:00','2015-04-24 00:00:00',1667,1500,12.87,22.98,1,1.884,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300446','300446','乐凯新材 ','2015-04-15 00:00:00','2015-04-23 00:00:00',1540,1386,8.85,7.11,1,1.115,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300444','300444','双杰电气 ','2015-04-15 00:00:00','2015-04-23 00:00:00',3449,3104,12.13,22.89,1,3.698,0.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603021','732021','山东华鹏 ','2015-04-15 00:00:00','2015-04-23 00:00:00',2640,2376,8.73,22.97,1,1.934,0.47,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300441','300441','鲍斯股份 ','2015-04-15 00:00:00','2015-04-23 00:00:00',2112,1901,9.81,22.81,1,1.732,0.68,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603315','732315','福鞍股份 ','2015-04-15 00:00:00','2015-04-24 00:00:00',2500,2250,10.77,22.91,1,2.399,0.47,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('600959','730959','江苏有线 ','2015-04-15 00:00:00','2015-04-28 00:00:00',59700,53730,5.47,22.98,18,31.22,1.24,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300448','300448','浩云科技 ','2015-04-15 00:00:00','2015-04-24 00:00:00',2000,1800,15.79,22.88,1,2.841,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300440','300440','运达科技 ','2015-04-15 00:00:00','2015-04-23 00:00:00',2800,2520,21.7,22.97,1,5.578,0.61,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300437','300437','清水源 ','2015-04-15 00:00:00','2015-04-23 00:00:00',1670,1503,10.53,19.3,1,1.523,0.5,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300436','300436','广生堂 ','2015-04-14 00:00:00','2015-04-22 00:00:00',1750,1260,21.47,18.67,1,2.588,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300443','300443','金雷风电 ','2015-04-14 00:00:00','2015-04-22 00:00:00',1407,1013,31.94,19.66,1,3.34,0.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603808','732808','歌力思 ','2015-04-14 00:00:00','2015-04-22 00:00:00',4000,3600,19.16,22.96,2,7.282,0.8,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603567','732567','珍宝岛 ','2015-04-14 00:00:00','2015-04-24 00:00:00',6458,5812,23.6,22.91,2,14.275,0.83,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603025','732025','大豪科技 ','2015-04-14 00:00:00','2015-04-22 00:00:00',5100,4590,11.17,22.98,2,5.183,0.62,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300436','300436','广生堂 ','2015-04-14 00:00:00','2015-04-22 00:00:00',1750,1260,21.47,18.67,1,2.588,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2752','2752','昇兴股份 ','2015-04-14 00:00:00','2015-04-22 00:00:00',6000,5400,5.74,22.96,2,3.141,0.53,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300447','300447','全信股份 ','2015-04-14 00:00:00','2015-04-22 00:00:00',2025,1823,12.91,22.3,1,2.103,0.43,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603883','732883','老百姓 ','2015-04-14 00:00:00','2015-04-23 00:00:00',6700,6030,16.41,22.52,3,10.104,0.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603789','732789','星光农机 ','2015-04-14 00:00:00','2015-04-27 00:00:00',5000,4500,11.23,21.19,2,4.979,0.66,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603318','732318','派思股份 ','2015-04-14 00:00:00','2015-04-24 00:00:00',3010,2709,6.52,22.97,1,1.551,0.32,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300424','300424','航新科技 ','2015-04-14 00:00:00','2015-04-22 00:00:00',3327,2994,11.68,22.9,1,3.352,0.43,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300445','300445','康斯特 ','2015-04-14 00:00:00','2015-04-24 00:00:00',1020,918,18.12,22.98,0,1.586,0.52,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603818','732818','曲美股份 ','2015-04-14 00:00:00','2015-04-22 00:00:00',6052,5447,8.98,22.99,2,5.078,0.57,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603703','732703','盛洋科技 ','2015-04-14 00:00:00','2015-04-23 00:00:00',2300,2070,11.32,22.98,1,2.269,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300449','300449','汉邦高科 ','2015-04-13 00:00:00','2015-04-22 00:00:00',1770,1593,17.76,22.98,1,2.768,0.2,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300435','300435','中泰股份 ','2015-03-18 00:00:00','2015-03-26 00:00:00',2000,1800,14.73,18.09,1,2.602,0.18,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603338','732338','浙江鼎力 ','2015-03-13 00:00:00','2015-03-25 00:00:00',1625,1463,29.56,21.34,1,4.4,0.36,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603869','732869','北部湾旅 ','2015-03-12 00:00:00','2015-03-26 00:00:00',5406,4865,5.03,21.33,2,2.47,0.53,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603030','732030','全筑股份 ','2015-03-12 00:00:00','2015-03-20 00:00:00',4000,3600,9.85,22.91,2,3.602,0.83,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300429','300429','强力新材 ','2015-03-12 00:00:00','2015-03-24 00:00:00',2000,1800,15.89,18.67,1,2.739,0.74,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2747','2747','埃斯顿 ','2015-03-12 00:00:00','2015-03-20 00:00:00',3000,2700,6.8,22.67,1,1.704,0.39,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603199','732199','九华旅游 ','2015-03-12 00:00:00','2015-03-26 00:00:00',2768,2491,12.08,20.47,1,3.052,0.72,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603020','732020','爱普股份 ','2015-03-12 00:00:00','2015-03-25 00:00:00',4000,3600,20.47,22.61,1,7.574,1.16,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300431','300431','暴风科技 ','2015-03-12 00:00:00','2015-03-24 00:00:00',3000,2700,7.14,22.97,1,1.666,0.34,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2750','2750','龙津药业 ','2015-03-12 00:00:00','2015-03-24 00:00:00',1675,1508,21.21,22.99,1,3.021,0.64,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603012','732012','创力集团 ','2015-03-12 00:00:00','2015-03-20 00:00:00',7960,7164,13.56,22.96,3,10.072,1.22,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603158','732158','腾龙股份 ','2015-03-12 00:00:00','2015-03-20 00:00:00',2667,2400,14.53,17.51,1,3.375,0.9,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2749','2749','国光股份 ','2015-03-12 00:00:00','2015-03-20 00:00:00',1875,1350,26.92,16.47,1,3.449,0.69,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603729','732729','龙韵股份 ','2015-03-11 00:00:00','2015-03-24 00:00:00',1667,1500,26.61,22.55,1,4.01,0.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300374','300374','恒通科技 ','2015-03-11 00:00:00','2015-03-19 00:00:00',2434,2191,13.21,22.98,1,2.735,0.67,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603519','732519','立霸股份 ','2015-03-11 00:00:00','2015-03-19 00:00:00',2000,1800,13.69,20.13,1,2.217,0.57,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300432','300432','富临精工 ','2015-03-11 00:00:00','2015-03-19 00:00:00',3000,2700,13.97,12.86,1,3.77,0.57,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300428','300428','四通新材 ','2015-03-11 00:00:00','2015-03-19 00:00:00',2020,1818,14.71,22.98,1,2.684,0.66,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601689','780689','拓普集团 ','2015-03-11 00:00:00','2015-03-19 00:00:00',12910,11619,11.37,19.81,4,13.925,1.14,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603268','732268','松发股份 ','2015-03-11 00:00:00','2015-03-19 00:00:00',2200,1980,11.66,22.86,1,2.179,0.59,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('600958','730958','东方证券 ','2015-03-11 00:00:00','2015-03-23 00:00:00',100000,70000,10.03,22.98,30,100.3,1.62,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300430','300430','诚益通 ','2015-03-11 00:00:00','2015-03-19 00:00:00',1520,1370,18.91,22.89,1,2.465,0.53,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2748','2748','世龙实业 ','2015-03-11 00:00:00','2015-03-19 00:00:00',3000,2700,15.38,22.96,1,4.043,0.61,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300433','300433','蓝思科技 ','2015-03-10 00:00:00','2015-03-18 00:00:00',6736,6062,22.99,22.98,2,15.064,0.66,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603997','732997','继峰股份 ','2015-02-12 00:00:00','2015-03-02 00:00:00',6000,5400,7.97,18.98,2,4.396,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603015','732015','弘讯科技','2015-02-11 00:00:00','2015-03-03 00:00:00',5010,4509,10.6,22.97,2,4.793,0.71,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603828','732828','柯利达','2015-02-11 00:00:00','2015-02-26 00:00:00',3000,2700,17.2,21.5,1,4.733,0.96,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603969','732969','银龙股份','2015-02-11 00:00:00','2015-02-27 00:00:00',5000,4500,13.79,22.61,2,6.353,1.11,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2742','2742','三圣特材','2015-02-10 00:00:00','2015-02-17 00:00:00',2400,2160,20.37,19.59,1,4.391,1.05,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2743','2743','富煌钢构','2015-02-10 00:00:00','2015-02-17 00:00:00',3034,2731,7.22,22.91,1,2.404,0.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2745','2745','木林森','2015-02-10 00:00:00','2015-02-17 00:00:00',4450,4005,21.5,22.83,1,8.763,1.14,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300394','300394','天孚通信','2015-02-10 00:00:00','2015-02-17 00:00:00',1859,1372,21.41,18.78,1,2.856,0.61,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300420','300420','五洋科技','2015-02-10 00:00:00','2015-02-17 00:00:00',2000,1800,8.27,19.23,1,1.315,0.68,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300421','300421','力星股份','2015-02-10 00:00:00','2015-02-17 00:00:00',2800,2520,9.13,22.83,1,2.288,0.89,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300422','300422','博世科','2015-02-10 00:00:00','2015-02-17 00:00:00',1550,1395,10,22.97,1,1.245,0.58,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300423','300423','鲁亿通','2015-02-10 00:00:00','2015-02-17 00:00:00',2200,1980,10.3,22.89,1,1.902,0.9,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300426','300426','唐德影视','2015-02-10 00:00:00','2015-02-17 00:00:00',2000,1800,22.83,22.96,1,4.183,0.51,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300427','300427','红相电力','2015-02-10 00:00:00','2015-02-17 00:00:00',2217,1995,10.46,18.34,1,2.32,0.96,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601198','780198','东兴证券','2015-02-10 00:00:00','2015-02-26 00:00:00',50000,45000,9.18,22.97,15,0,1.44,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603118','732118','共进股份','2015-02-10 00:00:00','2015-02-25 00:00:00',7500,6750,11.95,19.27,3,8.462,0.93,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603222','732222','济民制药','2015-02-10 00:00:00','2015-02-17 00:00:00',4000,3600,7.36,22.96,2,2.511,0.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603309','732309','维力医疗','2015-02-10 00:00:00','2015-03-02 00:00:00',2500,2250,15.4,22.87,1,3.472,0.61,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603618','732618','杭电股份','2015-02-10 00:00:00','2015-02-17 00:00:00',5335,4802,11.65,22.84,2,5.736,1.12,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603898','732898','好莱客','2015-02-10 00:00:00','2015-02-17 00:00:00',2450,2205,19.57,19,1,4.297,0.91,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603939','732939','益丰药房','2015-02-10 00:00:00','2015-02-17 00:00:00',4000,3600,19.47,22.93,2,7.258,0.92,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2741','2741','光华科技','2015-02-09 00:00:00','2015-02-16 00:00:00',3000,2700,12.31,22.8,1,3.28,0.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2746','2746','仙坛股份','2015-02-09 00:00:00','2015-02-16 00:00:00',3985,3587,5.28,22.96,2,1.722,0.39,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300425','300425','环能科技','2015-02-09 00:00:00','2015-02-16 00:00:00',1800,1620,15.21,20.28,1,2.442,0.38,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603698','732698','航天工程','2015-01-16 00:00:00','2015-01-28 00:00:00',8230,7407,12.52,22.97,2,9.803,0.61,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603799','732799','华友钴业','2015-01-16 00:00:00','2015-01-29 00:00:00',9100,8190,4.77,22.94,3,3.701,0.53,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300416','300416','苏试试验','2015-01-15 00:00:00','2015-01-22 00:00:00',1570,1413,11.48,22.96,1,1.43,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300419','300419','浩丰科技','2015-01-15 00:00:00','2015-01-22 00:00:00',1030,927,28.81,22.94,0,2.668,0.56,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603558','732558','健盛集团','2015-01-15 00:00:00','2015-01-27 00:00:00',2000,1800,19.25,22.92,1,3.455,0.68,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603600','732600','永艺股份','2015-01-15 00:00:00','2015-01-23 00:00:00',2500,2250,10.22,22.71,1,2.239,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603686','732686','龙马环卫','2015-01-15 00:00:00','2015-01-26 00:00:00',3335,3002,14.86,21.23,1,4.496,0.52,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603899','732899','晨光文具','2015-01-15 00:00:00','2015-01-27 00:00:00',6000,5400,13.15,22.99,2,7.89,0.69,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2734','2734','利民股份','2015-01-14 00:00:00','2015-01-27 00:00:00',2500,2250,10.69,22.98,1,2.27,0.71,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2739','2739','万达院线','2015-01-14 00:00:00','2015-01-22 00:00:00',6000,5400,21.35,22.96,2,12.4,0.86,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2740','2740','爱迪尔','2015-01-14 00:00:00','2015-01-22 00:00:00',2500,2250,16.48,18.52,1,3.6,0.94,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300364','300364','中文在线','2015-01-14 00:00:00','2015-01-21 00:00:00',3000,2700,6.81,22.87,1,1.675,0.53,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300415','300415','伊之密','2015-01-14 00:00:00','2015-01-23 00:00:00',3000,2700,13.32,22.69,1,3.606,1.08,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300417','300417','南华仪器','2015-01-14 00:00:00','2015-01-23 00:00:00',1020,918,16.08,22.65,0,1.641,0.71,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601069','780069','西部黄金','2015-01-14 00:00:00','2015-01-22 00:00:00',12600,11340,3.57,22.31,4,4.123,0.76,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603601','732601','再升科技','2015-01-14 00:00:00','2015-01-22 00:00:00',1700,1530,7.9,22.34,1,1.043,0.44,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603611','732611','诺力股份','2015-01-14 00:00:00','2015-01-28 00:00:00',2000,1800,18.37,21.36,1,3.247,0.75,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603678','732678','火炬电子','2015-01-14 00:00:00','2015-01-26 00:00:00',4160,3744,10.38,15.04,2,3.819,0.63,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300413','300413','快乐购','2015-01-13 00:00:00','2015-01-21 00:00:00',7000,6300,9.06,22.89,2,5.64,0.79,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300418','300418','昆仑万维','2015-01-13 00:00:00','2015-01-21 00:00:00',7000,6300,20.3,22.99,3,13.304,0.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603788','732788','宁波高发','2015-01-12 00:00:00',NULL,3420,1320,10.28,19.4,1,3.09,0,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603889','732889','新澳股份','2014-12-23 00:00:00','2014-12-31 00:00:00',2668,2401,17.95,21.63,1,4.306,0.43,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603017','732017','园区设计','2014-12-22 00:00:00','2014-12-31 00:00:00',1500,1350,29.97,22.88,1,4.169,0.55,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603636','732636','南威软件','2014-12-22 00:00:00','2014-12-30 00:00:00',2500,2250,14.95,22.96,1,3.491,0.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2736','2736','国信证券','2014-12-19 00:00:00','2014-12-29 00:00:00',120000,60000,5.83,22.97,36,68.402,1.8,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2738','2738','中矿资源','2014-12-19 00:00:00','2014-12-30 00:00:00',3000,2700,7.57,22.98,1,1.905,0.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300410','300410','正业科技','2014-12-19 00:00:00','2014-12-31 00:00:00',1500,1350,10.79,22.96,1,1.327,0.41,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300411','300411','金盾股份','2014-12-19 00:00:00','2014-12-31 00:00:00',2000,1800,12.8,22.92,1,2.183,0.48,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300412','300412','迦南科技','2014-12-19 00:00:00','2014-12-31 00:00:00',1340,1206,13.6,22.78,1,1.822,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603588','732588','高能环境','2014-12-19 00:00:00','2014-12-29 00:00:00',4040,3636,18.23,22.79,2,6.99,0.41,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2737','2737','葵花药业','2014-12-18 00:00:00','2014-12-30 00:00:00',3650,3285,36.53,22.97,1,12.489,0.64,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601226','780226','华电重工','2014-11-27 00:00:00','2014-12-11 00:00:00',15000,13500,10,22.22,5,14.458,0.68,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300408','300408','三环集团','2014-11-25 00:00:00','2014-12-03 00:00:00',4600,4140,29.39,22.61,1,13,1.23,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601969','780969','海南矿业','2014-11-25 00:00:00','2014-12-09 00:00:00',18667,16800,10.34,19.88,6,17.6,1.8,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603998','732998','方盛制药','2014-11-25 00:00:00','2014-12-05 00:00:00',2726,2453,14.85,22.85,1,3.689,0.51,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2732','2732','燕塘乳业','2014-11-24 00:00:00','2014-12-05 00:00:00',3935,3542,10.13,22.87,2,3.455,0.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2733','2733','雄韬股份','2014-11-24 00:00:00','2014-12-03 00:00:00',3400,3060,13.16,22.31,1,5.4,0.5,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2735','2735','王子新材','2014-11-24 00:00:00','2014-12-03 00:00:00',2000,1800,9.23,22.51,1,1.517,0.33,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300407','300407','凯发电气','2014-11-24 00:00:00','2014-12-03 00:00:00',1700,1530,22.34,22.8,1,3.435,0.49,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300409','300409','道氏技术','2014-11-24 00:00:00','2014-12-03 00:00:00',1625,1463,17.3,20.35,1,2.538,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603368','732368','柳州医药','2014-11-24 00:00:00','2014-12-04 00:00:00',2813,2025,26.22,19.71,1,5.899,0.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603518','732518','维格娜丝','2014-11-24 00:00:00','2014-12-03 00:00:00',3700,3330,20.02,22.3,1,7.407,0.64,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603166','732166','福达股份','2014-11-17 00:00:00','2014-11-27 00:00:00',4350,3915,5.8,20,1,2.523,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603011','732011','合锻股份','2014-10-27 00:00:00','2014-11-07 00:00:00',4500,4050,4.26,22.42,2,1.619,0.55,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603088','732088','宁波精达','2014-10-27 00:00:00','2014-11-11 00:00:00',2000,1800,8.57,22.91,1,1.371,0.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2724','2724','海洋王','2014-10-24 00:00:00','2014-11-04 00:00:00',5000,4500,8.88,22.77,2,3.988,0.6,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2731','2731','萃华珠宝','2014-10-24 00:00:00','2014-11-04 00:00:00',3768,3391,11.92,17.28,1,4.087,0.68,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601015','780015','陕西黑猫','2014-10-24 00:00:00','2014-11-05 00:00:00',12000,10800,6.15,22.69,4,6.893,1.28,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603019','732019','中科曙光','2014-10-24 00:00:00','2014-11-06 00:00:00',7500,6750,5.29,22.98,3,3.967,0.52,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603688','732688','石英股份','2014-10-24 00:00:00','2014-10-31 00:00:00',5595,5036,6.45,19.61,2,3.311,0.69,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603988','732988','中电电机','2014-10-24 00:00:00','2014-11-04 00:00:00',2000,1800,14.88,21.97,1,2.675,0.49,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300403','300403','地尔汉宇','2014-10-23 00:00:00','2014-10-30 00:00:00',3400,3060,19.3,21.99,1,6.565,0.63,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300405','300405','科隆精化','2014-10-23 00:00:00','2014-10-30 00:00:00',1700,1530,16.45,22.84,1,2.498,0.48,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300406','300406','九强生物','2014-10-23 00:00:00','2014-10-30 00:00:00',3111,2199,14.32,10.07,1,3.001,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300400','300400','劲拓股份','2014-09-25 00:00:00','2014-10-10 00:00:00',2000,1800,7.6,21.11,0,1.2,0.7,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300402','300402','宝色股份','2014-09-25 00:00:00','2014-10-10 00:00:00',5100,4590,4.47,20.66,2,2,0.58,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603606','732606','东方电缆','2014-09-25 00:00:00','2014-10-15 00:00:00',3535,2822,8.2,20.41,1,2.571,0.49,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2730','2730','电光科技','2014-09-24 00:00:00','2014-10-09 00:00:00',3667,3300,8.07,19.59,1,2.642,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300398','300398','飞凯材料','2014-09-24 00:00:00','2014-10-09 00:00:00',2000,1800,18.15,22.84,1,3.142,0.52,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300399','300399','京天利','2014-09-24 00:00:00','2014-10-09 00:00:00',2000,1800,11.19,20.35,1,1.7,0.39,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300401','300401','花园生物','2014-09-24 00:00:00','2014-10-09 00:00:00',2270,2043,7.01,21.1,1,1.598,0.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603010','732010','万盛股份','2014-09-24 00:00:00','2014-10-10 00:00:00',2500,2250,11.7,22.76,1,2.513,0.49,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603018','732018','设计股份','2014-09-24 00:00:00','2014-10-13 00:00:00',2600,2340,32.26,22.88,1,8.39,0.75,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603169','732169','兰石重装','2014-09-24 00:00:00','2014-10-09 00:00:00',10000,9000,1.68,21.73,4,3.91,0.61,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603456','732456','九洲药业','2014-09-24 00:00:00','2014-10-10 00:00:00',5196,4676,15.43,22.36,2,7.527,0.75,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('600917','730917','重庆燃气','2014-09-22 00:00:00','2014-09-30 00:00:00',15600,14040,3.25,19.12,5,4.7,0.88,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601016','780016','节能风电','2014-09-18 00:00:00','2014-09-29 00:00:00',17778,16000,2.17,22.06,5,3.3,0.7,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603306','732306','华懋科技','2014-09-18 00:00:00','2014-09-26 00:00:00',3500,3150,12.08,19.24,1,4.007,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300392','300392','腾信股份','2014-08-29 00:00:00','2014-09-10 00:00:00',1600,1440,26.1,22.7,1,3.478,0.67,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300396','300396','迪瑞医疗','2014-08-29 00:00:00','2014-09-10 00:00:00',1534,1381,29.54,20.8,1,4.2,0.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2729','2729','好利来','2014-08-28 00:00:00','2014-09-12 00:00:00',1668,1501,11.9,19.29,1,1.7,0.37,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300393','300393','中来股份','2014-08-28 00:00:00','2014-09-12 00:00:00',2988,2114,16.42,20.95,1,3.5,0.58,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300395','300395','菲利华','2014-08-28 00:00:00','2014-09-10 00:00:00',1620,1458,19.13,18.94,1,2.7,0.66,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300397','300397','天和防务','2014-08-28 00:00:00','2014-09-10 00:00:00',3000,2700,24.05,20.73,1,6.438,0.59,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603188','732188','亚邦股份','2014-08-28 00:00:00','2014-09-09 00:00:00',7200,6480,20.49,22.75,2,14.762,1.21,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603806','732806','福斯特','2014-08-28 00:00:00','2014-09-05 00:00:00',6000,5400,27.18,22.28,2,15.714,1.52,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601579','780579','会稽山','2014-08-14 00:00:00','2014-08-25 00:00:00',10000,9000,4.43,14.42,4,3.76,0.49,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603099','732099','长白山','2014-08-13 00:00:00','2014-08-22 00:00:00',6667,6000,4.54,20.25,3,2.7,0.37,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603609','732609','禾丰牧业','2014-07-30 00:00:00','2014-08-08 00:00:00',8000,7200,5.88,21.78,2,4.254,0.51,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300384','300384','三联虹普','2014-07-24 00:00:00','2014-08-01 00:00:00',1334,1201,30.66,20.97,1,3.716,0.62,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300388','300388','国祯环保','2014-07-24 00:00:00','2014-08-01 00:00:00',2206,1985,12.14,18.55,1,2.3,0.48,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300389','300389','艾比森','2014-07-24 00:00:00','2014-08-01 00:00:00',1966,1392,18.43,13.16,0,2.607,0.72,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300391','300391','康跃科技','2014-07-24 00:00:00','2014-08-01 00:00:00',1667,1500,9.84,20.5,0,1.391,0.84,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2728','2728','台城制药','2014-07-23 00:00:00','2014-07-31 00:00:00',2500,2250,14,17.5,1,3.218,0.38,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300390','300390','天华超净','2014-07-23 00:00:00','2014-07-31 00:00:00',1950,1402,8.47,18.29,1,1,0.3,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603100','732100','川仪股份','2014-07-23 00:00:00','2014-08-05 00:00:00',10000,9000,6.72,21,4,6.259,0.89,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603111','732111','康尼机电','2014-07-23 00:00:00','2014-08-01 00:00:00',7230,6507,6.89,18.62,3,4.5,0.65,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603126','732126','中材节能','2014-07-23 00:00:00','2014-07-31 00:00:00',8000,7200,3.46,21.63,2,2.512,0.85,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603009','732009','北特科技','2014-07-10 00:00:00','2014-07-18 00:00:00',2667,2400,7.01,19.47,1,0,0.28,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300387','300387','富邦股份','2014-06-24 00:00:00','2014-07-02 00:00:00',1525,1169,20.48,23.01,0,0,0.71,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2727','2727','一心堂','2014-06-23 00:00:00','2014-07-02 00:00:00',6510,5859,12.2,13.45,3,7.945,0.62,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603369','732369','今世缘','2014-06-23 00:00:00','2014-07-03 00:00:00',5180,4662,16.93,12.54,2,10.026,1.06,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603168','732168','莎普爱思','2014-06-20 00:00:00','2014-07-02 00:00:00',1635,1472,21.85,14.05,1,0,0.76,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603328','732328','依顿电子','2014-06-19 00:00:00','2014-07-01 00:00:00',9000,8100,15.31,23.2,3,0,1.7,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2726','2726','龙大肉食','2014-06-18 00:00:00','2014-06-26 00:00:00',5459,4913,9.79,19.58,2,0,0.83,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300385','300385','雪浪环境','2014-06-18 00:00:00','2014-06-26 00:00:00',2000,1800,14.73,22.17,1,0,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300386','300386','飞天诚信','2014-06-18 00:00:00','2014-06-26 00:00:00',2376,1801,33.13,16.57,1,0,0.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603006','732006','联明股份','2014-06-18 00:00:00','2014-06-30 00:00:00',2000,1800,9.93,13.43,1,2.78,0.44,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2713','2713','东易日盛','2014-02-11 00:00:00','2014-02-19 00:00:00',3121,2448,21,38.32,1,5.065,0.65,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2715','2715','登云股份','2014-02-11 00:00:00','2014-02-19 00:00:00',2300,1720,10.16,26.52,1,0,0.46,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2717','2717','岭南园林','2014-02-11 00:00:00','2014-02-19 00:00:00',2143,1286,22.32,23.34,0,0,0.58,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603288','732288','海天味业','2014-01-24 00:00:00','2014-02-11 00:00:00',7485,4491,51.25,31.9,1,0,2.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603005','732005','晶方科技','2014-01-23 00:00:00','2014-02-10 00:00:00',5667,4533,19.16,33.76,2,7.127,1.32,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300363','300363','博腾股份','2014-01-21 00:00:00','2014-01-29 00:00:00',2725,2180,25.1,34.26,1,0,1.55,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300367','300367','东方网力','2014-01-21 00:00:00','2014-01-29 00:00:00',1470,588,49.9,37.75,0,0,2.23,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300369','300369','绿盟科技','2014-01-21 00:00:00','2014-01-29 00:00:00',2115,846,41,37.96,0,0,2.03,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300383','300383','光环新网','2014-01-21 00:00:00','2014-01-29 00:00:00',1365,819,38.3,37.79,1,0,1.54,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2718','2718','友邦吊顶','2014-01-20 00:00:00','2014-01-28 00:00:00',1310,655,28.02,24.58,0,0,2.1,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2719','2719','麦趣尔','2014-01-20 00:00:00','2014-01-28 00:00:00',2290,1374,25.38,39.64,1,0,2.23,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2722','2722','金轮股份','2014-01-20 00:00:00','2014-01-28 00:00:00',3360,2644,7.18,19.41,1,0,2.03,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2723','2723','金莱特','2014-01-20 00:00:00','2014-01-29 00:00:00',2335,1769,13.38,22.3,1,0,2.1,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2725','2725','跃岭股份','2014-01-20 00:00:00','2014-01-29 00:00:00',2500,1500,15.36,16.52,1,0,1.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300379','300379','东方通','2014-01-20 00:00:00','2014-01-28 00:00:00',1286,1029,22,30.27,1,0,1.04,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300382','300382','斯莱克','2014-01-20 00:00:00','2014-01-29 00:00:00',1331,799,35.15,22.29,1,0,1.65,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2711','2711','欧浦钢网','2014-01-17 00:00:00','2014-01-27 00:00:00',3753,1501,18.29,25.23,2,0,2.04,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2714','2714','牧原股份','2014-01-17 00:00:00','2014-01-28 00:00:00',6050,2420,24.07,18.8,2,0,2.58,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2716','2716','金贵银业','2014-01-17 00:00:00','2014-01-28 00:00:00',5719,2288,14.35,23.26,2,0,2.56,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300376','300376','易事特','2014-01-17 00:00:00','2014-01-27 00:00:00',2239,1791,18.4,14.51,1,0,1.62,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300378','300378','鼎捷软件','2014-01-17 00:00:00','2014-01-27 00:00:00',3000,1800,20.77,27.37,1,0,2.59,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300380','300380','安硕信息','2014-01-17 00:00:00','2014-01-28 00:00:00',1718,1031,23.4,40.06,1,0,1.88,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300381','300381','溢多利','2014-01-17 00:00:00','2014-01-28 00:00:00',1145,687,27.88,23.83,0,0,1.73,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('601225','780225','陕西煤业','2014-01-17 00:00:00','2014-01-28 00:00:00',100000,15000,4,6.23,15,0,4.87,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2721','2721','金一文化','2014-01-16 00:00:00','2014-01-27 00:00:00',4181,2509,10.55,25.73,1,2.664,1.2,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300366','300366','创意信息','2014-01-16 00:00:00','2014-01-27 00:00:00',1429,857,18.11,27.08,0,1.295,1.08,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300372','300372','欣泰电气','2014-01-16 00:00:00','2014-01-27 00:00:00',2145,1287,16.31,25.48,0,2.573,1.45,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300377','300377','赢时胜','2014-01-16 00:00:00','2014-01-27 00:00:00',1385,693,21.58,33.1,0,2.234,2.42,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2707','2707','众信旅游','2014-01-15 00:00:00','2014-01-23 00:00:00',1458,1020,23.15,22.05,0,1.688,1.08,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300365','300365','恒华科技','2014-01-15 00:00:00','2014-01-23 00:00:00',1208,604,43.21,42.16,0,2.731,2.05,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300368','300368','汇金股份','2014-01-15 00:00:00','2014-01-23 00:00:00',1548,1238,18.77,21.33,1,2.234,1.29,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300371','300371','汇中股份','2014-01-15 00:00:00','2014-01-23 00:00:00',1200,720,39.89,39.11,0,2.393,2.49,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300373','300373','扬杰科技','2014-01-15 00:00:00','2014-01-23 00:00:00',2060,1648,19.5,26.53,1,2.613,1.38,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300375','300375','鹏翎股份','2014-01-15 00:00:00','2014-01-27 00:00:00',2220,1114,19.58,24.17,1,2.291,1.89,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603555','732555','贵人鸟','2014-01-15 00:00:00','2014-01-24 00:00:00',8900,4450,10.6,12.89,3,9.434,2.29,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2708','2708','光洋股份','2014-01-13 00:00:00','2014-01-21 00:00:00',3320,2648,11.88,28.29,1,3.9,1.83,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2709','2709','天赐材料','2014-01-13 00:00:00','2014-01-23 00:00:00',3011,2404,13.66,28.08,1,2.952,1.28,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2712','2712','思美传媒','2014-01-13 00:00:00','2014-01-23 00:00:00',2133,1703,25.18,24.06,1,3.11,1.15,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300359','300359','全通教育','2014-01-13 00:00:00','2014-01-21 00:00:00',1630,978,30.31,51.37,1,1.455,1.68,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300370','300370','安控科技','2014-01-13 00:00:00','2014-01-23 00:00:00',1345,764,35.51,39.54,0,1.76,2.1,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603308','732308','应流股份','2014-01-13 00:00:00','2014-01-22 00:00:00',8001,4000,8.28,19.6,2,6.625,1.79,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2706','2706','良信电器','2014-01-10 00:00:00','2014-01-21 00:00:00',2154,1292,19.1,24.64,0,4.114,1.43,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300360','300360','炬华科技','2014-01-10 00:00:00','2014-01-21 00:00:00',1988,1193,55.11,33.17,1,2.359,2.25,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300362','300362','天保重装','2014-01-10 00:00:00','2014-01-21 00:00:00',2570,1998,12,41.38,1,3.084,1.23,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300358','300358','楚天科技','2014-01-09 00:00:00','2014-01-21 00:00:00',1825,1095,40,31.5,0,2.8,1.4,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('603699','732699','纽威股份','2014-01-09 00:00:00','2014-01-17 00:00:00',8250,4125,17.66,46.47,2,8.83,1.77,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('2705','2705','新宝股份','2014-01-08 00:00:00','2014-01-21 00:00:00',7600,5320,10.5,30.08,2,7.98,1.05,NULL,NULL,NULL,NULL);
INSERT INTO `day_data_ipo_detail` VALUES ('300357','300357','我武生物','2014-01-08 00:00:00','2014-01-21 00:00:00',2525,2020,20.05,39.31,1,2.205,0.57,NULL,NULL,NULL,NULL);

--
-- Table structure for table `day_data_ipo_hezhun`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day_data_ipo_hezhun` (
  `audit_date` datetime DEFAULT NULL,
  `audit_company_num` int(11) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_data_ipo_hezhun`
--

INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-05-22 00:00:00',23);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-05-08 00:00:00',20);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-04-23 00:00:00',25);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-04-02 00:00:00',30);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-03-02 00:00:00',24);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-01-30 00:00:00',24);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2015-01-05 00:00:00',20);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2014-12-10 00:00:00',12);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2014-11-13 00:00:00',11);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2014-10-15 00:00:00',11);
INSERT INTO `day_data_ipo_hezhun` VALUES ('2014-09-15 00:00:00',11);

--
-- Table structure for table `dic_correct_index_period_report`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dic_correct_index_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `keyword_value` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `value_str` varchar(200) DEFAULT NULL COMMENT '值字符串',
  `stock_code` varchar(10) NOT NULL DEFAULT '' COMMENT '股票代码',
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '定期报告时间',
  `wrong_type` int(10) DEFAULT NULL COMMENT '错误类型,0:没有数据,1:多条数据',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`keyword_value`,`stock_code`,`report_period_time`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_correct_index_period_report`
--


--
-- Table structure for table `dic_extract_datas_raw_period_report`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dic_extract_datas_raw_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `real_key_name` varchar(200) DEFAULT NULL COMMENT '实际关键词名称',
  `value_str` varchar(200) DEFAULT NULL COMMENT '值字符串',
  `data_seq` int(10) DEFAULT NULL COMMENT '值序号（提取到多值的话）',
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '定期报告时间',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `NewIndex1` (`keyword_name`,`stock_code`,`data_seq`,`report_period_time`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_extract_datas_raw_period_report`
--


--
-- Table structure for table `dic_keyword_type_period_report`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dic_keyword_type_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `value_type` int(10) DEFAULT NULL COMMENT '提取值类型,0:字符串,1:整型,2:浮点型',
  `comment_content` varchar(200) DEFAULT NULL COMMENT '注释',
  `catagory1` varchar(200) DEFAULT NULL COMMENT '类别一（大类别）',
  `catagory2` varchar(200) DEFAULT NULL COMMENT '类别二（小类别）',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_keyword_type_period_report`
--


--
-- Table structure for table `dic_keyword_value_period_report`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dic_keyword_value_period_report` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `keyword_value` varchar(50) DEFAULT NULL COMMENT '关键词文字',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`keyword_name`,`keyword_value`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_keyword_value_period_report`
--


--
-- Table structure for table `dic_temp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dic_temp` (
  `keyword_name` varchar(50) DEFAULT NULL COMMENT '关键词名称,使用英文,作为唯一识别',
  `keyword_value` varchar(50) DEFAULT NULL COMMENT '关键词文字'
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_temp`
--


--
-- Table structure for table `employees`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `hired` date NOT NULL DEFAULT '1970-01-01',
  `separated` date NOT NULL DEFAULT '9999-12-31',
  `job_code` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
)
/*!50100 PARTITION BY LIST (store_id)
(PARTITION pNorth VALUES IN (3,5,6,9,17),
 PARTITION pEast VALUES IN (1,2,10,11,19,20),
 PARTITION pWest VALUES IN (4,12,13,14,18),
 PARTITION pCentral VALUES IN (7,8,15,16)) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--


--
-- Table structure for table `evaluate_result`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluate_result` (
  `evaluate_sql` varchar(2000) DEFAULT NULL,
  `avg_value` double DEFAULT NULL COMMENT '均价',
  `rise_num` int(10) DEFAULT NULL COMMENT '上涨股票只数',
  `down_num` int(10) DEFAULT NULL COMMENT '下跌股票只数',
  `count_total` int(10) DEFAULT NULL COMMENT '符合条件的股票总数',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate_result`
--


--
-- Table structure for table `ext_right_index`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ext_right_index`
--


--
-- Table structure for table `fjvr_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fjvr_10`
--


--
-- Table structure for table `fvr_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fvr_10`
--


--
-- Table structure for table `index_vr_related_data`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data`
--


--
-- Table structure for table `index_vr_related_data1_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data1_10`
--


--
-- Table structure for table `index_vr_related_data1_21`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data1_21`
--


--
-- Table structure for table `index_vr_related_data1_5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data1_5`
--


--
-- Table structure for table `index_vr_related_data2_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data2_10`
--


--
-- Table structure for table `index_vr_related_data2_21`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data2_21`
--


--
-- Table structure for table `index_vr_related_data2_5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data2_5`
--


--
-- Table structure for table `index_vr_related_data3_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data3_10`
--


--
-- Table structure for table `index_vr_related_data3_10_pirce_volumn_related_index`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data3_10_pirce_volumn_related_index`
--


--
-- Table structure for table `index_vr_related_data3_21`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data3_21`
--


--
-- Table structure for table `index_vr_related_data3_5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data3_5`
--


--
-- Table structure for table `index_vr_related_data4_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data4_10`
--


--
-- Table structure for table `index_vr_related_data4_10_0529`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data4_10_0529`
--


--
-- Table structure for table `index_vr_related_data4_10_pirce_volumn_related_index`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data4_10_pirce_volumn_related_index`
--


--
-- Table structure for table `index_vr_related_data4_21`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data4_21`
--


--
-- Table structure for table `index_vr_related_data4_5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `index_id_count_days_stock_code_trade_date` (`index_id`,`stock_code`,`count_days`,`trade_date`),
  KEY `NewIndex1` (`index_id`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`),
  KEY `NewIndex4` (`index_id`,`count_days`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_vr_related_data4_5`
--


--
-- Table structure for table `jvr_10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jvr_10`
--


--
-- Table structure for table `lack`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lack` (
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`changeTime`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lack`
--


--
-- Table structure for table `loan_monny_loan_stock_analysis_industry_block_sum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_monny_loan_stock_analysis_industry_block_sum` (
  `stock_code` varchar(100) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(100) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changeratio1` float DEFAULT NULL COMMENT '融资融券余额与前一天变化率',
  `changeratio3` float DEFAULT NULL,
  `changeratio5` float DEFAULT NULL,
  `changeratio10` float DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_analysis_industry_block_sum`
--


--
-- Table structure for table `loan_monny_loan_stock_analysis_sse`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_monny_loan_stock_analysis_sse` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_analysis_sse`
--


--
-- Table structure for table `loan_monny_loan_stock_analysis_sse_sum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_monny_loan_stock_analysis_sse_sum` (
  `stock_code` varchar(100) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(100) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changeratio1` float DEFAULT NULL COMMENT '融资融券余额与前一天变化率',
  `changeratio3` float DEFAULT NULL,
  `changeratio5` float DEFAULT NULL,
  `changeratio10` float DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_analysis_sse_sum`
--

INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-04-26 16:00:00',0,0,'2015-05-24 13:37:49',0.0152981,0,0,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-04-27 16:00:00',0,0,'2015-05-24 13:37:50',0.00418821,0,0,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-04-28 16:00:00',0,0,'2015-05-24 13:37:50',0.00477132,0.024415,0,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-04-29 16:00:00',0,0,'2015-05-24 13:37:50',0.0023907,0.0113917,0,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-03 16:00:00',0,0,'2015-05-24 13:37:50',0.0138606,0.0211334,0.041097,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-04 16:00:00',0,0,'2015-05-24 13:37:50',0.00236052,0.0186833,0.0278306,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-05 16:00:00',0,0,'2015-05-24 13:37:51',0.011726,0.0281704,0.0355459,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-06 16:00:00',0,0,'2015-05-24 13:37:51',0.00560056,0.0197938,0.0364006,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999','上海汇总','2015-05-07 16:00:00',1,-0.0158627,'2015-05-24 13:37:51',-0.0158627,0.0012537,0.0175279,0);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-10 16:00:00',0,0,'2015-05-24 13:37:51',0.0013807,-0.00898456,0.00500287,0.0463055);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-11 16:00:00',0,0,'2015-05-24 13:37:52',0.00729448,-0.00731521,0.00994983,0.0380574);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-12 16:00:00',0,0,'2015-05-24 13:37:52',0.007003,0.0157491,0.00523509,0.0409671);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-13 16:00:00',0,0,'2015-05-24 13:37:52',0.00478895,0.0192062,0.00442377,0.0409854);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999','上海汇总','2015-05-14 16:00:00',1,-0.000857271,'2015-05-24 13:37:52',-0.000857271,0.0109581,0.0197385,0.0376123);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-17 16:00:00',0,0,'2015-05-24 13:37:53',0.00674602,0.0107001,0.0252022,0.0303311);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-18 16:00:00',0,0,'2015-05-24 13:37:53',0.011963,0.0179163,0.0299537,0.0402015);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-19 16:00:00',0,0,'2015-05-24 13:37:53',0.0121769,0.0311954,0.0352455,0.0406651);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999',NULL,'2015-05-20 16:00:00',0,0,'2015-05-24 13:37:54',0.00852662,0.0330192,0.0390965,0.0436932);
INSERT INTO `loan_monny_loan_stock_analysis_sse_sum` VALUES ('999999','上海汇总','2015-05-21 16:00:00',1,-0.00500307,'2015-05-24 13:37:54',-0.00500307,0.0157002,0.0347849,0.05521);

--
-- Table structure for table `loan_monny_loan_stock_analysis_szse`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_monny_loan_stock_analysis_szse` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_analysis_szse`
--


--
-- Table structure for table `loan_monny_loan_stock_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint(20) NOT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`id`),
  KEY `NewIndex4` (`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_detail`
--


--
-- Table structure for table `loan_monny_loan_stock_detail_sse`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_detail_sse`
--


--
-- Table structure for table `loan_monny_loan_stock_detail_sum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint(20) NOT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`trade_date`),
  KEY `NewIndex3` (`stock_code`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_detail_sum`
--

INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-21 16:00:00','上海汇总',1314570000000,142753000000,0,665671000,5329550000,1773360000,0,0,'2015-05-24 09:22:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-20 16:00:00','上海汇总',1321180000000,108553000000,0,634904000,4925640000,1303500000,0,0,'2015-05-24 09:22:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-19 16:00:00','上海汇总',1310010000000,117098000000,0,601080000,4656260000,1687960000,0,0,'2015-05-24 09:22:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-18 16:00:00','上海汇总',1294250000000,113575000000,0,614797000,4763470000,2008710000,0,0,'2015-05-24 09:22:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-17 16:00:00','上海汇总',1278950000000,95383800000,0,619940000,4622250000,1578110000,0,0,'2015-05-24 09:22:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-14 16:00:00','上海汇总',1270380000000,103539000000,0,622531000,4746220000,1692380000,0,0,'2015-05-24 09:22:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-13 16:00:00','上海汇总',1271470000000,105313000000,0,727305000,5402260000,1732090000,0,0,'2015-05-24 09:22:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-12 16:00:00','上海汇总',1265410000000,132210000000,0,744974000,5472340000,1836400000,0,0,'2015-05-24 09:22:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-11 16:00:00','上海汇总',1256610000000,136449000000,0,707972000,5319750000,2148470000,0,0,'2015-05-24 09:22:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-10 16:00:00','上海汇总',1247510000000,119726000000,0,628804000,4834760000,2141550000,0,0,'2015-05-24 09:22:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-07 16:00:00','上海汇总',1245790000000,87812600000,0,536003000,4135050000,1669320000,0,0,'2015-05-24 09:22:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-06 16:00:00','上海汇总',1265870000000,94358800000,0,528167000,4030100000,1586470000,0,0,'2015-05-24 09:22:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-05 16:00:00','上海汇总',1258820000000,122154000000,0,647180000,4701560000,1579160000,0,0,'2015-05-24 09:22:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-04 16:00:00','上海汇总',1244230000000,128461000000,0,692133000,4992900000,1724890000,0,0,'2015-05-24 09:22:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-05-03 16:00:00','上海汇总',1241300000000,116901000000,0,821124000,5999920000,1694090000,0,0,'2015-05-24 09:22:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-29 16:00:00','上海汇总',1224330000000,135754000000,0,783508000,5831680000,1749350000,0,0,'2015-05-24 09:22:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-28 16:00:00','上海汇总',1221410000000,126740000000,0,794875000,6021610000,1887770000,0,0,'2015-05-24 09:22:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-27 16:00:00','上海汇总',1215610000000,148772000000,0,818516000,6149730000,2090160000,0,0,'2015-05-24 09:22:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-26 16:00:00','上海汇总',1210540000000,162760000000,0,829882000,6254060000,1970870000,0,0,'2015-05-24 09:22:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-23 16:00:00','上海汇总',1192300000000,153157000000,0,793271000,5965260000,1641800000,0,0,'2015-05-24 09:22:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-22 16:00:00','上海汇总',1185640000000,171738000000,0,839707000,6278470000,2013410000,0,0,'2015-05-24 09:22:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-21 16:00:00','上海汇总',1172670000000,165509000000,0,841589000,6368410000,2106230000,0,0,'2015-05-24 09:22:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-20 16:00:00','上海汇总',1153570000000,143193000000,0,800533000,5961510000,1946110000,0,0,'2015-05-24 09:22:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-19 16:00:00','上海汇总',1143070000000,165794000000,0,806776000,5886540000,1954780000,0,0,'2015-05-24 09:22:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-16 16:00:00','上海汇总',1149160000000,129211000000,0,819750000,6041060000,1380230000,0,0,'2015-05-24 09:22:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-15 16:00:00','上海汇总',1157180000000,112006000000,0,820992000,5973350000,2203960000,0,0,'2015-05-24 09:22:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-14 16:00:00','上海汇总',1146130000000,127638000000,0,815237000,5760510000,2243630000,0,0,'2015-05-24 09:22:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-13 16:00:00','上海汇总',1132440000000,135681000000,0,808066000,5734280000,2105260000,0,0,'2015-05-24 09:22:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-12 16:00:00','上海汇总',1112640000000,125462000000,0,837423000,6012260000,1717710000,0,0,'2015-05-24 09:22:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-09 16:00:00','上海汇总',1093650000000,120172000000,0,851628000,6013790000,1903810000,0,0,'2015-05-24 09:22:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-08 16:00:00','上海汇总',1080030000000,151266000000,0,950252000,7459280000,1839300000,0,0,'2015-05-24 09:22:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-07 16:00:00','上海汇总',1063910000000,146795000000,0,883306000,6090840000,1811110000,0,0,'2015-05-24 09:22:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-06 16:00:00','上海汇总',1049020000000,135205000000,0,890247000,6052610000,1812380000,0,0,'2015-05-24 09:22:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-02 16:00:00','上海汇总',1028340000000,121746000000,0,833667000,5639390000,1685020000,0,0,'2015-05-24 09:22:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-04-01 16:00:00','上海汇总',1019830000000,122446000000,0,845035000,5605670000,1548300000,0,0,'2015-05-24 09:22:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-31 16:00:00','上海汇总',1007500000000,112638000000,0,839076000,5579430000,1729480000,0,0,'2015-05-24 09:22:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-30 16:00:00','上海汇总',992115000000,116775000000,0,815494000,5408130000,1326090000,0,0,'2015-05-24 09:22:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-29 16:00:00','上海汇总',987305000000,128249000000,0,840090000,5489040000,2127990000,0,0,'2015-05-24 09:22:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-26 16:00:00','上海汇总',974695000000,94331300000,0,742424000,4882310000,1661690000,0,0,'2015-05-24 09:22:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-25 16:00:00','上海汇总',971529000000,117308000000,0,717949000,4759650000,1763610000,0,0,'2015-05-24 09:22:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-24 16:00:00','上海汇总',960087000000,115372000000,0,698297000,4643220000,1524510000,0,0,'2015-05-24 09:22:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-23 16:00:00','上海汇总',948928000000,145585000000,0,689082000,4619080000,1829460000,0,0,'2015-05-24 09:22:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-22 16:00:00','上海汇总',935962000000,122351000000,0,732427000,4789020000,1690090000,0,0,'2015-05-24 09:22:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-19 16:00:00','上海汇总',927002000000,133492000000,0,657655000,4317420000,1858440000,0,0,'2015-05-24 09:22:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-18 16:00:00','上海汇总',911757000000,119422000000,0,614806000,4136000000,1602860000,0,0,'2015-05-24 09:22:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-17 16:00:00','上海汇总',896109000000,123253000000,0,627926000,4223180000,2044010000,0,0,'2015-05-24 09:22:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-16 16:00:00','上海汇总',881883000000,118454000000,0,556521000,3731160000,1950510000,0,0,'2015-05-24 09:22:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-15 16:00:00','上海汇总',874851000000,93488500000,0,529826000,3535080000,1466230000,0,0,'2015-05-24 09:22:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-12 16:00:00','上海汇总',880612000000,76456000000,0,492300000,3193990000,1428680000,0,0,'2015-05-24 09:22:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-11 16:00:00','上海汇总',878076000000,85412100000,0,495995000,3182040000,1862530000,0,0,'2015-05-24 09:22:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-10 16:00:00','上海汇总',864004000000,65924900000,0,458202000,2927590000,1480830000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-09 16:00:00','上海汇总',848538000000,68915700000,0,505009000,3099080000,1633890000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-08 16:00:00','上海汇总',834879000000,70291100000,0,520206000,3353980000,1878490000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-05 16:00:00','上海汇总',824380000000,61530400000,0,529269000,3441280000,1400400000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-04 16:00:00','上海汇总',819402000000,70255100000,0,558296000,3596430000,1277060000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-03 16:00:00','上海汇总',811253000000,66225200000,0,590423000,3800140000,1108460000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-02 16:00:00','上海汇总',804100000000,87283000000,0,561491000,3658350000,1188200000,0,0,'2015-05-24 09:23:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-03-01 16:00:00','上海汇总',792791000000,79111400000,0,600182000,3820320000,1086850000,0,0,'2015-05-24 09:23:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-26 16:00:00','上海汇总',780844000000,67295500000,0,578066000,3643960000,906278000,0,0,'2015-05-24 09:23:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-25 16:00:00','上海汇总',778902000000,70218800000,0,600194000,3727500000,1245470000,0,0,'2015-05-24 09:23:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-24 16:00:00','上海汇总',770968000000,60092800000,0,522164000,3277750000,819377000,0,0,'2015-05-24 09:23:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-16 16:00:00','上海汇总',753461000000,49701300000,0,468094000,3034260000,674413000,0,0,'2015-05-24 09:23:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-15 16:00:00','上海汇总',772980000000,53928600000,0,506514000,3238040000,860489000,0,0,'2015-05-24 09:23:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-12 16:00:00','上海汇总',779162000000,52535700000,0,529972000,3311070000,962369000,0,0,'2015-05-24 09:23:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-11 16:00:00','上海汇总',804093000000,49061200000,0,533390000,3307980000,982934000,0,0,'2015-05-24 09:23:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-10 16:00:00','上海汇总',805111000000,49814300000,0,552555000,3376240000,1102900000,0,0,'2015-05-24 09:23:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-09 16:00:00','上海汇总',797892000000,49940700000,0,547550000,3321740000,1402010000,0,0,'2015-05-24 09:23:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-08 16:00:00','上海汇总',786747000000,51281300000,0,552250000,3292350000,1497270000,0,0,'2015-05-24 09:23:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-05 16:00:00','上海汇总',779642000000,51350000000,0,564209000,3355010000,1289930000,0,0,'2015-05-24 09:23:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-04 16:00:00','上海汇总',777970000000,70696100000,0,675815000,3951050000,1324120000,0,0,'2015-05-24 09:23:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-03 16:00:00','上海汇总',774771000000,55998200000,0,694053000,4075260000,1199050000,0,0,'2015-05-24 09:23:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-02 16:00:00','上海汇总',773742000000,52159800000,0,687278000,4125150000,1068520000,0,0,'2015-05-24 09:23:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-02-01 16:00:00','上海汇总',774867000000,47632200000,0,638069000,3768750000,998229000,0,0,'2015-05-24 09:23:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-29 16:00:00','上海汇总',773978000000,50312600000,0,690478000,4040910000,914321000,0,0,'2015-05-24 09:23:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-28 16:00:00','上海汇总',777562000000,55046200000,0,736793000,4327860000,998013000,0,0,'2015-05-24 09:23:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-27 16:00:00','上海汇总',775934000000,63920100000,0,773841000,4542720000,1190290000,0,0,'2015-05-24 09:23:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-26 16:00:00','上海汇总',773838000000,75031200000,0,798720000,4699670000,1220930000,0,0,'2015-05-24 09:23:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-25 16:00:00','上海汇总',771374000000,67111900000,0,823867000,4885930000,1159450000,0,0,'2015-05-24 09:23:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-22 16:00:00','上海汇总',766039000000,82258700000,0,794385000,4700100000,1307260000,0,0,'2015-05-24 09:23:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-21 16:00:00','上海汇总',761669000000,75064700000,0,816100000,4785140000,973298000,0,0,'2015-05-24 09:23:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-20 16:00:00','上海汇总',754596000000,91163400000,0,817894000,4822500000,1722380000,0,0,'2015-05-24 09:23:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-19 16:00:00','上海汇总',750762000000,76513200000,0,719398000,4089040000,1507140000,0,0,'2015-05-24 09:23:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-18 16:00:00','上海汇总',752048000000,72756900000,0,695039000,4006320000,1100470000,0,0,'2015-05-24 09:23:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-15 16:00:00','上海汇总',766660000000,83138500000,0,836901000,5019950000,1212010000,0,0,'2015-05-24 09:23:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-14 16:00:00','上海汇总',762383000000,71147900000,0,837376000,5061960000,1305320000,0,0,'2015-05-24 09:23:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-13 16:00:00','上海汇总',749751000000,55908600000,0,819902000,4832460000,1031840000,0,0,'2015-05-24 09:23:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-12 16:00:00','上海汇总',740893000000,52882700000,0,853670000,4970840000,1100240000,0,0,'2015-05-24 09:23:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-11 16:00:00','上海汇总',735878000000,68855600000,0,871073000,5080930000,1075610000,0,0,'2015-05-24 09:23:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-08 16:00:00','上海汇总',726401000000,87327000000,0,918874000,5383420000,1538410000,0,0,'2015-05-24 09:23:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-07 16:00:00','上海汇总',718485000000,72365000000,0,943391000,5627590000,982279000,0,0,'2015-05-24 09:23:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-06 16:00:00','上海汇总',715729000000,81243100000,0,999318000,6161620000,1159980000,0,0,'2015-05-24 09:23:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-05 16:00:00','上海汇总',707391000000,98370800000,0,972733000,5990340000,1251410000,0,0,'2015-05-24 09:23:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2015-01-04 16:00:00','上海汇总',700007000000,102462000000,0,998244000,6127220000,1448180000,0,0,'2015-05-24 09:23:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-30 16:00:00','上海汇总',690305000000,80629200000,0,1033590000,6213790000,1501440000,0,0,'2015-05-24 09:23:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-29 16:00:00','上海汇总',691782000000,76341800000,0,956068000,5620340000,1410190000,0,0,'2015-05-24 09:23:16',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-28 16:00:00','上海汇总',687678000000,102446000000,0,921606000,5485660000,1498510000,0,0,'2015-05-24 09:23:17',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-25 16:00:00','上海汇总',678646000000,87566400000,0,908219000,5392790000,1569100000,0,0,'2015-05-24 09:23:17',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-24 16:00:00','上海汇总',672974000000,66548600000,0,884653000,5075980000,1692350000,0,0,'2015-05-24 09:23:18',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-21 16:00:00','上海汇总',670596000000,96086900000,0,890122000,5146320000,1413060000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-23 16:00:00','上海汇总',667221000000,60785400000,0,783877000,4423260000,1386060000,0,0,'2015-05-24 09:23:18',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-18 16:00:00','上海汇总',667260000000,87986500000,0,859907000,4990160000,1622110000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-22 16:00:00','上海汇总',669005000000,68088700000,0,847854000,4905510000,1286460000,0,0,'2015-05-24 09:23:19',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-17 16:00:00','上海汇总',657357000000,86108100000,0,872698000,5116340000,1566420000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-16 16:00:00','上海汇总',648450000000,105662000000,0,865220000,5036990000,1821400000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-15 16:00:00','上海汇总',637958000000,92376300000,0,853613000,4957960000,1765610000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-14 16:00:00','上海汇总',628731000000,76617600000,0,814475000,4669810000,1349570000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-11 16:00:00','上海汇总',619376000000,73760100000,0,815522000,4628970000,1325620000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-10 16:00:00','上海汇总',617382000000,81319100000,0,854689000,4817030000,1443870000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-09 16:00:00','上海汇总',614043000000,92619500000,0,841858000,4845590000,1616220000,0,0,'2015-05-24 09:26:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-08 16:00:00','上海汇总',605493000000,121843000000,0,914928000,5039480000,1591760000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-07 16:00:00','上海汇总',595996000000,114514000000,0,995831000,5686870000,1709390000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-04 16:00:00','上海汇总',575484000000,113474000000,0,892615000,5035050000,1540870000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-03 16:00:00','上海汇总',569429000000,105228000000,0,941957000,5252690000,1573490000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-02 16:00:00','上海汇总',552053000000,99700600000,0,903194000,4791760000,1448410000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-12-01 16:00:00','上海汇总',545713000000,76886400000,0,923073000,4828940000,1541230000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-30 16:00:00','上海汇总',538393000000,77440800000,0,921041000,4568070000,1378090000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-27 16:00:00','上海汇总',528992000000,77397900000,0,889100000,4426130000,1491510000,0,0,'2015-05-24 09:26:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-26 16:00:00','上海汇总',522914000000,67309600000,0,805062000,4099980000,1303980000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-25 16:00:00','上海汇总',518602000000,67013000000,0,755040000,3830670000,1220780000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-24 16:00:00','上海汇总',509782000000,59098300000,0,700759000,3601460000,1196320000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-23 16:00:00','上海汇总',499260000000,69936100000,0,662448000,3450540000,1453460000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-20 16:00:00','上海汇总',485788000000,37965300000,0,669336000,3334100000,1042150000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-19 16:00:00','上海汇总',483385000000,26772600000,0,695967000,3367940000,868062000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-18 16:00:00','上海汇总',481691000000,29457100000,0,665399000,3264180000,892735000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-17 16:00:00','上海汇总',479387000000,30864000000,0,671129000,3318620000,841442000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-16 16:00:00','上海汇总',476798000000,33657300000,0,758356000,3685740000,796147000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-13 16:00:00','上海汇总',474452000000,33685800000,0,809490000,3805370000,859204000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-12 16:00:00','上海汇总',474102000000,47038300000,0,845053000,3918630000,1089310000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-11 16:00:00','上海汇总',471793000000,38069200000,0,832982000,3882130000,1093430000,0,0,'2015-05-24 09:26:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-10 16:00:00','上海汇总',468512000000,59512200000,0,800380000,3677940000,1203970000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-09 16:00:00','上海汇总',464090000000,43074900000,0,827763000,3775250000,1208680000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-06 16:00:00','上海汇总',460795000000,43097000000,0,653784000,3151990000,1139240000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-05 16:00:00','上海汇总',460287000000,31786400000,0,622441000,3071090000,883171000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-04 16:00:00','上海汇总',456680000000,35525800000,0,650165000,3175030000,935088000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-03 16:00:00','上海汇总',453445000000,39878200000,0,647859000,3196510000,955937000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-11-02 16:00:00','上海汇总',449802000000,41008800000,0,648974000,3221660000,992203000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-30 16:00:00','上海汇总',444331000000,42922100000,0,644906000,3139690000,1093920000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-29 16:00:00','上海汇总',443443000000,39726400000,0,571062000,2863060000,1049890000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-28 16:00:00','上海汇总',439652000000,37671200000,0,479029000,2611820000,943217000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-27 16:00:00','上海汇总',440302000000,27452100000,0,404811000,2314770000,893030000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-26 16:00:00','上海汇总',441744000000,20724500000,0,332512000,1996490000,799180000,0,0,'2015-05-24 09:26:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-23 16:00:00','上海汇总',439036000000,20161500000,0,372719000,2199410000,720012000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-22 16:00:00','上海汇总',436986000000,25192300000,0,408886000,2340510000,817183000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-21 16:00:00','上海汇总',432871000000,24355600000,0,494401000,2693780000,822328000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-20 16:00:00','上海汇总',430307000000,24884200000,0,536926000,2802120000,713476000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-19 16:00:00','上海汇总',427825000000,23487000000,0,537157000,2824270000,748586000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-16 16:00:00','上海汇总',425311000000,29063300000,0,487719000,2654960000,743206000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-15 16:00:00','上海汇总',424531000000,35283100000,0,585041000,3010510000,931306000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-14 16:00:00','上海汇总',422267000000,31845700000,0,552338000,2885490000,774764000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-13 16:00:00','上海汇总',417913000000,30016800000,0,534018000,2752290000,783994000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-12 16:00:00','上海汇总',413818000000,31602700000,0,519861000,2684860000,749586000,0,0,'2015-05-24 09:26:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-09 16:00:00','上海汇总',407460000000,34135900000,0,536135000,2772750000,768466000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-08 16:00:00','上海汇总',403598000000,36582700000,0,547405000,2858750000,811258000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-10-07 16:00:00','上海汇总',397397000000,37442100000,0,559818000,2836410000,923700000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-29 16:00:00','上海汇总',386228000000,27147300000,0,447007000,2402150000,672779000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-28 16:00:00','上海汇总',393042000000,28613100000,0,507493000,2644410000,757653000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-25 16:00:00','上海汇总',395131000000,27354300000,0,519168000,2654830000,850494000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-24 16:00:00','上海汇总',393151000000,35791300000,0,488477000,2618340000,904723000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-23 16:00:00','上海汇总',388078000000,35225000000,0,516422000,2717090000,1100530000,0,0,'2015-05-24 09:26:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-22 16:00:00','上海汇总',380500000000,22613100000,0,476328000,2580380000,851878000,0,0,'2015-05-24 09:26:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-21 16:00:00','上海汇总',377642000000,26802500000,0,444658000,2472700000,611299000,0,0,'2015-05-24 09:26:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-18 16:00:00','上海汇总',371415000000,23437100000,0,505039000,2743340000,779323000,0,0,'2015-05-24 09:26:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-17 16:00:00','上海汇总',371023000000,23454700000,0,515412000,2754050000,910651000,0,0,'2015-05-24 09:26:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-16 16:00:00','上海汇总',368035000000,24748000000,0,481116000,2633270000,759755000,0,0,'2015-05-24 09:26:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-15 16:00:00','上海汇总',364562000000,38576300000,0,494046000,2675810000,882830000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-14 16:00:00','上海汇总',360155000000,30277200000,0,493655000,2786070000,741224000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-11 16:00:00','上海汇总',354593000000,25877300000,0,524061000,2854750000,677361000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-10 16:00:00','上海汇总',351357000000,31551500000,0,508336000,2809840000,813463000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-09 16:00:00','上海汇总',347085000000,26516600000,0,524305000,2844850000,689374000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-08 16:00:00','上海汇总',342444000000,29429500000,0,604878000,3157570000,674257000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-04 16:00:00','上海汇总',337115000000,27435300000,0,607844000,3167710000,718006000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-03 16:00:00','上海汇总',337617000000,27868400000,0,557973000,2987580000,631925000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-02 16:00:00','上海汇总',334452000000,28142300000,0,510673000,2802270000,754505000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-09-01 16:00:00','上海汇总',334304000000,25074500000,0,459853000,2575070000,748140000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-31 16:00:00','上海汇总',334993000000,19375200000,0,420834000,2353460000,526996000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-28 16:00:00','上海汇总',333028000000,14869800000,0,427855000,2336770000,584885000,0,0,'2015-05-24 09:26:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-27 16:00:00','上海汇总',331974000000,18075400000,0,416711000,2306180000,647098000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-26 16:00:00','上海汇总',327033000000,15775200000,0,466948000,2506070000,621260000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-25 16:00:00','上海汇总',324639000000,19645900000,0,477911000,2545230000,514061000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-24 16:00:00','上海汇总',322693000000,20660700000,0,525815000,2712630000,621002000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-21 16:00:00','上海汇总',320713000000,20931600000,0,539562000,2777760000,558178000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-20 16:00:00','上海汇总',319781000000,20937400000,0,522418000,2783450000,520977000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-19 16:00:00','上海汇总',316920000000,21102300000,0,559844000,2952940000,585842000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-18 16:00:00','上海汇总',314000000000,24478900000,0,558965000,2971230000,651977000,0,0,'2015-05-24 09:26:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-17 16:00:00','上海汇总',311145000000,22116900000,0,545879000,2928630000,523300000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-14 16:00:00','上海汇总',308506000000,19882800000,0,549071000,2926730000,648326000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-13 16:00:00','上海汇总',307293000000,21440600000,0,537777000,2848460000,524204000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-12 16:00:00','上海汇总',304161000000,22784900000,0,549788000,2941330000,552469000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-11 16:00:00','上海汇总',300456000000,20662600000,0,566153000,2993820000,519066000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-10 16:00:00','上海汇总',297415000000,19756900000,0,595875000,3098590000,628750000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-07 16:00:00','上海汇总',295837000000,16839300000,0,511142000,2739070000,457483000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-06 16:00:00','上海汇总',294718000000,21831100000,0,553476000,2880810000,503911000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-05 16:00:00','上海汇总',291616000000,22133800000,0,718356000,3394810000,600292000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-04 16:00:00','上海汇总',288090000000,21974300000,0,646019000,3367750000,535885000,0,0,'2015-05-24 09:26:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-08-03 16:00:00','上海汇总',285698000000,21361200000,0,669994000,3494810000,622624000,0,0,'2015-05-24 09:26:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-31 16:00:00','上海汇总',282808000000,20877600000,0,604541000,3183150000,499792000,0,0,'2015-05-24 09:26:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-30 16:00:00','上海汇总',283473000000,19428300000,0,637597000,3299140000,562002000,0,0,'2015-05-24 09:26:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-29 16:00:00','上海汇总',281192000000,21820800000,0,621205000,3224130000,526037000,0,0,'2015-05-24 09:26:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-28 16:00:00','上海汇总',277437000000,22313800000,0,643910000,3273440000,570961000,0,0,'2015-05-24 09:26:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-27 16:00:00','上海汇总',275792000000,25330800000,0,602367000,3096330000,837981000,0,0,'2015-05-24 09:26:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-24 16:00:00','上海汇总',276339000000,16146200000,0,485628000,2609140000,653920000,0,0,'2015-05-24 13:27:20',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-23 16:00:00','上海汇总',277338000000,19341200000,0,480781000,2523210000,781324000,0,0,'2015-05-24 13:27:21',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-22 16:00:00','上海汇总',275745000000,15381400000,0,408978000,2215190000,608947000,0,0,'2015-05-24 13:27:21',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-21 16:00:00','上海汇总',273882000000,14498500000,0,420754000,2198530000,673156000,0,0,'2015-05-24 13:27:22',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-20 16:00:00','上海汇总',272801000000,10107100000,0,395797000,2153670000,414377000,0,0,'2015-05-24 13:27:22',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-17 16:00:00','上海汇总',273067000000,10488000000,0,363760000,2050710000,449771000,0,0,'2015-05-24 13:27:22',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-16 16:00:00','上海汇总',274022000000,10449100000,0,348209000,2020040000,364432000,0,0,'2015-05-24 13:27:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-15 16:00:00','上海汇总',273677000000,13832200000,0,368432000,2024580000,550544000,0,0,'2015-05-24 13:27:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-14 16:00:00','上海汇总',272383000000,13649300000,0,335855000,1887330000,449671000,0,0,'2015-05-24 13:27:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-13 16:00:00','上海汇总',271693000000,14022400000,0,320727000,1819220000,491242000,0,0,'2015-05-24 13:27:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-10 16:00:00','上海汇总',270336000000,11432900000,0,304315000,1743880000,387264000,0,0,'2015-05-24 13:27:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-09 16:00:00','上海汇总',270150000000,11445400000,0,312336000,1789240000,438918000,0,0,'2015-05-24 13:27:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-08 16:00:00','上海汇总',268977000000,13708100000,0,321896000,1837920000,442627000,0,0,'2015-05-24 13:27:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-07 16:00:00','上海汇总',267771000000,11443100000,0,356328000,1941620000,431866000,0,0,'2015-05-24 13:27:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-06 16:00:00','上海汇总',266652000000,11498600000,0,360983000,1964320000,459386000,0,0,'2015-05-24 13:27:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-03 16:00:00','上海汇总',265437000000,11209300000,0,351429000,1909110000,457240000,0,0,'2015-05-24 13:27:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-02 16:00:00','上海汇总',265975000000,13478500000,0,354318000,1920080000,596042000,0,0,'2015-05-24 13:27:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-07-01 16:00:00','上海汇总',265240000000,12502300000,0,321647000,1804550000,511542000,0,0,'2015-05-24 13:27:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-30 16:00:00','上海汇总',264608000000,11619100000,0,299237000,1728230000,328688000,0,0,'2015-05-24 13:27:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-29 16:00:00','上海汇总',263736000000,11863400000,0,366130000,1864010000,571830000,0,0,'2015-05-24 13:27:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-26 16:00:00','上海汇总',262844000000,10674700000,0,301262000,1670350000,567236000,0,0,'2015-05-24 13:27:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-25 16:00:00','上海汇总',263902000000,8934490000,0,291804000,1705960000,427775000,0,0,'2015-05-24 13:27:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-24 16:00:00','上海汇总',264826000000,7798910000,0,284060000,1729310000,386525000,0,0,'2015-05-24 13:27:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-23 16:00:00','上海汇总',264558000000,8678670000,0,298013000,1783360000,444842000,0,0,'2015-05-24 13:27:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-22 16:00:00','上海汇总',264424000000,7984520000,0,268562000,1711410000,509042000,0,0,'2015-05-24 13:27:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-19 16:00:00','上海汇总',264462000000,7311570000,0,256774000,1659090000,455955000,0,0,'2015-05-24 13:27:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-18 16:00:00','上海汇总',264417000000,11575600000,0,272159000,1692950000,471621000,0,0,'2015-05-24 13:27:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-17 16:00:00','上海汇总',263465000000,10981600000,0,327079000,1905450000,596837000,0,0,'2015-05-24 13:27:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-16 16:00:00','上海汇总',261263000000,10678400000,0,347794000,1986060000,445866000,0,0,'2015-05-24 13:27:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-15 16:00:00','上海汇总',259830000000,10960000000,0,383098000,2128110000,554373000,0,0,'2015-05-24 13:27:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-12 16:00:00','上海汇总',259234000000,11035400000,0,330619000,1932560000,526948000,0,0,'2015-05-24 13:27:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-11 16:00:00','上海汇总',260095000000,9619440000,0,313295000,1880330000,389478000,0,0,'2015-05-24 13:27:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-10 16:00:00','上海汇总',259331000000,9242900000,0,313316000,1902830000,418877000,0,0,'2015-05-24 13:27:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-09 16:00:00','上海汇总',258915000000,9738390000,0,330908000,1925380000,495123000,0,0,'2015-05-24 13:27:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-08 16:00:00','上海汇总',258813000000,7991680000,0,295478000,1790510000,468188000,0,0,'2015-05-24 13:27:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-05 16:00:00','上海汇总',258784000000,7841010000,0,262975000,1676570000,346320000,0,0,'2015-05-24 13:27:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-04 16:00:00','上海汇总',258997000000,7718020000,0,294637000,1793130000,383802000,0,0,'2015-05-24 13:27:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-03 16:00:00','上海汇总',259578000000,8028120000,0,271997000,1702380000,395633000,0,0,'2015-05-24 13:27:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-06-02 16:00:00','上海汇总',259934000000,8771510000,0,291678000,1785620000,481673000,0,0,'2015-05-24 13:27:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-29 16:00:00','上海汇总',260267000000,8167970000,0,270316000,1702230000,393230000,0,0,'2015-05-24 13:27:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-28 16:00:00','上海汇总',261868000000,9774460000,0,288073000,1773430000,402510000,0,0,'2015-05-24 13:27:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-27 16:00:00','上海汇总',262496000000,10723800000,0,312371000,1849680000,478352000,0,0,'2015-05-24 13:27:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-26 16:00:00','上海汇总',262185000000,8449240000,0,294369000,1786180000,464636000,0,0,'2015-05-24 13:27:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-25 16:00:00','上海汇总',261798000000,8649750000,0,289836000,1769480000,435523000,0,0,'2015-05-24 13:27:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-22 16:00:00','上海汇总',262180000000,7232470000,0,289471000,1742950000,421776000,0,0,'2015-05-24 13:27:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-21 16:00:00','上海汇总',263286000000,8451470000,0,293952000,1758200000,411065000,0,0,'2015-05-24 13:27:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-20 16:00:00','上海汇总',263711000000,7437970000,0,290254000,1769020000,554334000,0,0,'2015-05-24 13:27:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-19 16:00:00','上海汇总',263330000000,7378820000,0,264519000,1660690000,407007000,0,0,'2015-05-24 13:27:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-18 16:00:00','上海汇总',262978000000,8257520000,0,256421000,1636150000,411757000,0,0,'2015-05-24 13:27:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-15 16:00:00','上海汇总',262505000000,6777230000,0,254283000,1674470000,358331000,0,0,'2015-05-24 13:27:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-14 16:00:00','上海汇总',263365000000,8055800000,0,261473000,1714350000,436143000,0,0,'2015-05-24 13:27:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-13 16:00:00','上海汇总',263785000000,7703540000,0,302805000,1827570000,376334000,0,0,'2015-05-24 13:27:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-12 16:00:00','上海汇总',263876000000,10210300000,0,300234000,1857820000,341661000,0,0,'2015-05-24 13:27:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-11 16:00:00','上海汇总',263336000000,12716700000,0,316540000,1887910000,517233000,0,0,'2015-05-24 13:27:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-08 16:00:00','上海汇总',262895000000,7334170000,0,263259000,1705760000,409249000,0,0,'2015-05-24 13:27:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-07 16:00:00','上海汇总',263640000000,7985050000,0,294183000,1789700000,378945000,0,0,'2015-05-24 13:27:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-06 16:00:00','上海汇总',263849000000,7547560000,0,291051000,1783930000,433098000,0,0,'2015-05-24 13:27:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-05 16:00:00','上海汇总',263870000000,8424670000,0,291324000,1790870000,485860000,0,0,'2015-05-24 13:27:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-05-04 16:00:00','上海汇总',263125000000,8516570000,0,279157000,1729000000,437717000,0,0,'2015-05-24 13:27:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-29 16:00:00','上海汇总',262010000000,7247350000,0,248958000,1635790000,321016000,0,0,'2015-05-24 13:27:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-28 16:00:00','上海汇总',263634000000,7772910000,0,264533000,1691290000,463997000,0,0,'2015-05-24 13:27:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-27 16:00:00','上海汇总',264628000000,8967150000,0,257761000,1613010000,428957000,0,0,'2015-05-24 13:27:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-24 16:00:00','上海汇总',265577000000,9783870000,0,290233000,1721210000,398307000,0,0,'2015-05-24 13:27:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-23 16:00:00','上海汇总',266726000000,8580520000,0,348964000,1905800000,422788000,0,0,'2015-05-24 13:27:40',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-22 16:00:00','上海汇总',267460000000,8985210000,0,325476000,1860870000,431178000,0,0,'2015-05-24 13:27:40',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-21 16:00:00','上海汇总',266870000000,11268000000,0,305326000,1799920000,498583000,0,0,'2015-05-24 13:27:40',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-20 16:00:00','上海汇总',266693000000,11210300000,0,301790000,1769180000,477961000,0,0,'2015-05-24 13:27:40',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-17 16:00:00','上海汇总',266500000000,9577430000,0,287242000,1794890000,374984000,0,0,'2015-05-24 13:27:41',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-16 16:00:00','上海汇总',266777000000,10134500000,0,330356000,1934600000,324658000,0,0,'2015-05-24 13:27:41',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-15 16:00:00','上海汇总',266555000000,10267900000,0,330635000,1975240000,362010000,0,0,'2015-05-24 13:27:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-14 16:00:00','上海汇总',266245000000,13534400000,0,314795000,1903450000,294872000,0,0,'2015-05-24 13:27:43',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-13 16:00:00','上海汇总',264564000000,12074600000,0,367306000,2121970000,367334000,0,0,'2015-05-24 13:27:43',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-10 16:00:00','上海汇总',262884000000,14611800000,0,384966000,2175950000,436033000,0,0,'2015-05-24 13:27:43',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-09 16:00:00','上海汇总',262944000000,19699600000,0,395589000,2251710000,579654000,0,0,'2015-05-24 13:27:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-08 16:00:00','上海汇总',260539000000,12507500000,0,340435000,2046830000,378483000,0,0,'2015-05-24 13:27:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-07 16:00:00','上海汇总',259333000000,15064000000,0,379430000,2142300000,677734000,0,0,'2015-05-24 13:27:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-03 16:00:00','上海汇总',258588000000,8204650000,0,323644000,1915930000,386842000,0,0,'2015-05-24 13:27:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-02 16:00:00','上海汇总',259440000000,10708700000,0,338802000,1951090000,515881000,0,0,'2015-05-24 13:27:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-04-01 16:00:00','上海汇总',258349000000,9776630000,0,357173000,2028110000,509755000,0,0,'2015-05-24 13:27:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-31 16:00:00','上海汇总',258455000000,7454150000,0,329583000,1882870000,299476000,0,0,'2015-05-24 13:27:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-30 16:00:00','上海汇总',258891000000,8313340000,0,315372000,1788600000,320556000,0,0,'2015-05-24 13:27:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-27 16:00:00','上海汇总',259106000000,10963000000,0,322625000,1781790000,351555000,0,0,'2015-05-24 13:27:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-26 16:00:00','上海汇总',260096000000,12509500000,0,341175000,1858450000,527447000,0,0,'2015-05-24 13:27:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-25 16:00:00','上海汇总',259401000000,10473600000,0,365488000,1927610000,375384000,0,0,'2015-05-24 13:27:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-24 16:00:00','上海汇总',258316000000,12745300000,0,359963000,1903060000,419893000,0,0,'2015-05-24 13:27:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-23 16:00:00','上海汇总',257147000000,14887600000,0,358982000,1905010000,534189000,0,0,'2015-05-24 13:27:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-20 16:00:00','上海汇总',255771000000,14222600000,0,306673000,1740050000,694067000,0,0,'2015-05-24 13:27:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-19 16:00:00','上海汇总',255559000000,10997500000,0,390205000,1946990000,408416000,0,0,'2015-05-24 13:27:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-18 16:00:00','上海汇总',255576000000,10216100000,0,449441000,2053150000,329802000,0,0,'2015-05-24 13:27:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-17 16:00:00','上海汇总',254150000000,11016400000,0,488658000,2153230000,307781000,0,0,'2015-05-24 13:27:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-16 16:00:00','上海汇总',253044000000,9484880000,0,492981000,2184790000,346139000,0,0,'2015-05-24 13:27:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-13 16:00:00','上海汇总',252331000000,8951180000,0,488064000,2151720000,289537000,0,0,'2015-05-24 13:27:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-12 16:00:00','上海汇总',252761000000,10331300000,0,483937000,2192450000,516236000,0,0,'2015-05-24 13:27:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-11 16:00:00','上海汇总',251946000000,10131500000,0,422673000,1997250000,519314000,0,0,'2015-05-24 13:27:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-10 16:00:00','上海汇总',252039000000,9244370000,0,388371000,1917870000,518475000,0,0,'2015-05-24 13:27:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-09 16:00:00','上海汇总',252415000000,11738400000,0,362900000,1830210000,449346000,0,0,'2015-05-24 13:27:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-06 16:00:00','上海汇总',253051000000,11198400000,0,304514000,1793410000,350247000,0,0,'2015-05-24 13:27:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-05 16:00:00','上海汇总',253731000000,11798500000,0,276332000,1704550000,447122000,0,0,'2015-05-24 13:27:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-04 16:00:00','上海汇总',253240000000,11197000000,0,299624000,1750660000,364578000,0,0,'2015-05-24 13:27:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-03 16:00:00','上海汇总',252352000000,12125200000,0,291378000,1699560000,419071000,0,0,'2015-05-24 13:27:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-26 16:00:00','上海汇总',189444000000,10876800000,0,331915000,2338570000,317802000,0,0,'2015-05-24 13:28:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-25 16:00:00','上海汇总',189697000000,13657700000,0,358659000,2451240000,355831000,0,0,'2015-05-24 13:28:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-24 16:00:00','上海汇总',188780000000,14754500000,0,409763000,2709040000,368655000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-23 16:00:00','上海汇总',187833000000,15891200000,0,417706000,2728330000,386716000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-22 16:00:00','上海汇总',186139000000,13746000000,0,444150000,2853250000,369638000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-17 16:00:00','上海汇总',183565000000,10866900000,0,411051000,2705430000,353697000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-16 16:00:00','上海汇总',184433000000,15108900000,0,448775000,2863620000,315685000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-15 16:00:00','上海汇总',182712000000,15316400000,0,522282000,3159050000,379393000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-12 16:00:00','上海汇总',180047000000,14794700000,0,540121000,3247770000,360354000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-11 16:00:00','上海汇总',178704000000,18661500000,0,597505000,3574480000,535453000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-10 16:00:00','上海汇总',175218000000,19066800000,0,578515000,3342400000,434966000,0,0,'2015-05-24 13:28:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-09 16:00:00','上海汇总',173743000000,20039700000,0,569672000,3327960000,534985000,0,0,'2015-05-24 13:28:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-08 16:00:00','上海汇总',170264000000,19419600000,0,572841000,3326600000,643061000,0,0,'2015-05-24 13:28:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-05 16:00:00','上海汇总',166842000000,11281200000,0,458060000,2758150000,387077000,0,0,'2015-05-24 13:28:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-04 16:00:00','上海汇总',165979000000,9804210000,0,452218000,2760950000,279375000,0,0,'2015-05-24 13:28:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-03 16:00:00','上海汇总',164745000000,10667200000,0,461955000,2814410000,326141000,0,0,'2015-05-24 13:28:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-02 16:00:00','上海汇总',163836000000,9264280000,0,455211000,2799920000,309326000,0,0,'2015-05-24 13:28:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-01 16:00:00','上海汇总',164203000000,10893900000,0,441640000,2793800000,352991000,0,0,'2015-05-24 13:28:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-29 16:00:00','上海汇总',162731000000,12066200000,0,441432000,2786330000,398632000,0,0,'2015-05-24 13:28:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-28 16:00:00','上海汇总',163646000000,10195000000,0,449724000,2783130000,318545000,0,0,'2015-05-24 13:28:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-27 16:00:00','上海汇总',162036000000,12670100000,0,459271000,2867440000,410235000,0,0,'2015-05-24 13:28:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-26 16:00:00','上海汇总',159897000000,10505400000,0,455087000,2907630000,382970000,0,0,'2015-05-24 13:28:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-25 16:00:00','上海汇总',158143000000,10303500000,0,461361000,2962020000,449671000,0,0,'2015-05-24 13:28:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-22 16:00:00','上海汇总',157207000000,9468850000,0,434019000,2737220000,373467000,0,0,'2015-05-24 13:28:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-21 16:00:00','上海汇总',157188000000,7154590000,0,451705000,2864260000,296577000,0,0,'2015-05-24 13:28:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-20 16:00:00','上海汇总',156835000000,6940770000,0,456856000,2866550000,306865000,0,0,'2015-05-24 13:28:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-19 16:00:00','上海汇总',155661000000,8705920000,0,473711000,2935190000,432899000,0,0,'2015-05-24 13:28:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-18 16:00:00','上海汇总',154828000000,7878350000,0,458511000,2907720000,427496000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-15 16:00:00','上海汇总',154515000000,13006600000,0,468380000,2839760000,591046000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-14 16:00:00','上海汇总',153382000000,7899680000,0,483929000,3054870000,296981000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-13 16:00:00','上海汇总',152811000000,9089550000,0,511343000,3191810000,354928000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-12 16:00:00','上海汇总',152675000000,9467810000,0,516576000,3213820000,312581000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-11 16:00:00','上海汇总',151556000000,10517800000,0,534691000,3289800000,422255000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-08 16:00:00','上海汇总',151565000000,7775890000,0,532874000,3131590000,322595000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-07 16:00:00','上海汇总',151422000000,7147550000,0,551215000,3184370000,302562000,0,0,'2015-05-24 13:28:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-06 16:00:00','上海汇总',150260000000,8933970000,0,562354000,3248450000,353901000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-05 16:00:00','上海汇总',149657000000,8542220000,0,560754000,3207780000,341132000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-04 16:00:00','上海汇总',149397000000,7193320000,0,562128000,3258700000,267774000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-08-01 16:00:00','上海汇总',148969000000,7328510000,0,571197000,3167910000,244525000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-31 16:00:00','上海汇总',149556000000,7121570000,0,669954000,3337530000,354785000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-30 16:00:00','上海汇总',149420000000,5473310000,0,688142000,3310730000,317515000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-29 16:00:00','上海汇总',149208000000,6003060000,0,668748000,3192350000,354839000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-28 16:00:00','上海汇总',149188000000,6003180000,0,660637000,3146310000,364563000,0,0,'2015-05-24 13:28:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-25 16:00:00','上海汇总',148876000000,5432380000,0,584028000,3020510000,272334000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-24 16:00:00','上海汇总',149233000000,7665730000,0,579938000,3040030000,365802000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-23 16:00:00','上海汇总',149279000000,8617460000,0,554078000,2930070000,443662000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-22 16:00:00','上海汇总',148859000000,8486420000,0,528496000,3001640000,465502000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-21 16:00:00','上海汇总',148325000000,5694020000,0,516276000,2872250000,407632000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-18 16:00:00','上海汇总',147876000000,7248690000,0,502247000,2796390000,446868000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-17 16:00:00','上海汇总',148720000000,6705460000,0,502715000,2904180000,329896000,0,0,'2015-05-24 13:28:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-16 16:00:00','上海汇总',147809000000,7738120000,0,554606000,3120390000,362363000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-15 16:00:00','上海汇总',147690000000,7899410000,0,603790000,3279210000,404277000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-14 16:00:00','上海汇总',146480000000,8714920000,0,545894000,3162190000,393605000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-11 16:00:00','上海汇总',145733000000,10184200000,0,543415000,3012710000,313147000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-10 16:00:00','上海汇总',144993000000,11836400000,0,724534000,3534500000,405142000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-09 16:00:00','上海汇总',145468000000,6516620000,0,788853000,3459100000,321721000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-08 16:00:00','上海汇总',145224000000,4060140000,0,776213000,3406760000,280444000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-07 16:00:00','上海汇总',145462000000,5161290000,0,765920000,3349010000,290272000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-04 16:00:00','上海汇总',146114000000,6311260000,0,746418000,3346430000,295952000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-03 16:00:00','上海汇总',146431000000,6940760000,0,705957000,3222890000,363351000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-02 16:00:00','上海汇总',146331000000,6458800000,0,666150000,3122160000,392375000,0,0,'2015-05-24 13:28:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-07-01 16:00:00','上海汇总',145793000000,6140200000,0,604799000,2994910000,363272000,0,0,'2015-05-24 13:28:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-30 16:00:00','上海汇总',145470000000,4848230000,0,554048000,2788910000,406633000,0,0,'2015-05-24 13:28:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-27 16:00:00','上海汇总',145647000000,6216910000,0,473466000,2530270000,503128000,0,0,'2015-05-24 13:28:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-26 16:00:00','上海汇总',146817000000,6272160000,0,407715000,2249590000,571116000,0,0,'2015-05-24 13:28:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-25 16:00:00','上海汇总',148060000000,6758400000,0,324544000,1947130000,593516000,0,0,'2015-05-24 13:28:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-24 16:00:00','上海汇总',147920000000,8118020000,0,284874000,1778590000,719022000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-23 16:00:00','上海汇总',150897000000,7735160000,0,241095000,1790650000,569965000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-20 16:00:00','上海汇总',152615000000,5782680000,0,239939000,1965170000,486183000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-19 16:00:00','上海汇总',152881000000,6490610000,0,267806000,1987310000,373386000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-18 16:00:00','上海汇总',152169000000,6713610000,0,332495000,2207790000,492809000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-17 16:00:00','上海汇总',151213000000,5884390000,0,301011000,2230420000,477440000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-16 16:00:00','上海汇总',150423000000,6939990000,0,266932000,2128560000,428372000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-13 16:00:00','上海汇总',148837000000,5797040000,0,265155000,2061640000,374803000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-12 16:00:00','上海汇总',149005000000,7009860000,0,236661000,1993160000,332491000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-06 16:00:00','上海汇总',148109000000,7526890000,0,215927000,1957880000,235244000,0,0,'2015-05-24 13:28:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-05 16:00:00','上海汇总',149152000000,7577270000,0,233869000,2071560000,242293000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-04 16:00:00','上海汇总',148966000000,6605150000,0,249273000,2183050000,237058000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-03 16:00:00','上海汇总',148443000000,8363090000,0,259566000,2171820000,335833000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-06-02 16:00:00','上海汇总',147121000000,8694880000,0,345692000,2557650000,301121000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-30 16:00:00','上海汇总',145252000000,9369270000,0,283828000,2258880000,359663000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-29 16:00:00','上海汇总',144689000000,10070300000,0,307986000,2418230000,339230000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-28 16:00:00','上海汇总',143150000000,11029500000,0,318752000,2456230000,416143000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-27 16:00:00','上海汇总',141777000000,11214800000,0,327866000,2455370000,457461000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-26 16:00:00','上海汇总',140820000000,9894920000,0,302399000,2305290000,286552000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-23 16:00:00','上海汇总',138985000000,7928040000,0,288296000,2234200000,251501000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-22 16:00:00','上海汇总',138317000000,10511500000,0,310550000,2344210000,314530000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-21 16:00:00','上海汇总',136140000000,9552040000,0,324325000,2437490000,260783000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-20 16:00:00','上海汇总',134818000000,9591120000,0,314916000,2334850000,267288000,0,0,'2015-05-24 13:28:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-19 16:00:00','上海汇总',133092000000,11095300000,0,346465000,2517280000,375553000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-16 16:00:00','上海汇总',131417000000,8768080000,0,356603000,2470390000,395353000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-15 16:00:00','上海汇总',131623000000,8878690000,0,355985000,2475370000,395813000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-14 16:00:00','上海汇总',130324000000,5529180000,0,337710000,2433050000,254134000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-13 16:00:00','上海汇总',129518000000,6593080000,0,311170000,2337690000,246498000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-12 16:00:00','上海汇总',128164000000,6459750000,0,311976000,2360910000,275975000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-09 16:00:00','上海汇总',126740000000,6034580000,0,302955000,2303730000,290496000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-08 16:00:00','上海汇总',126419000000,8168050000,0,328586000,2374710000,252690000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-07 16:00:00','上海汇总',124888000000,7157540000,0,361546000,2507220000,301418000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-06 16:00:00','上海汇总',124270000000,7074720000,0,329811000,2362140000,303058000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-05 16:00:00','上海汇总',123361000000,7268200000,0,308417000,2276920000,339491000,0,0,'2015-05-24 13:28:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-02 16:00:00','上海汇总',121887000000,6620960000,0,273712000,2148740000,352357000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-05-01 16:00:00','上海汇总',122198000000,5644480000,0,256380000,2057670000,262890000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-25 16:00:00','上海汇总',121166000000,5086050000,0,231243000,1942210000,231262000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-24 16:00:00','上海汇总',122010000000,6886960000,0,281114000,2173000000,336901000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-23 16:00:00','上海汇总',121553000000,6827150000,0,301988000,2287190000,379208000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-22 16:00:00','上海汇总',120768000000,7082170000,0,276913000,2131780000,257902000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-21 16:00:00','上海汇总',119392000000,7099830000,0,321565000,2384690000,219729000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-18 16:00:00','上海汇总',117699000000,7739020000,0,352286000,2443080000,412698000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-17 16:00:00','上海汇总',117672000000,4771940000,0,329887000,2292640000,295538000,0,0,'2015-05-24 13:28:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-16 16:00:00','上海汇总',117145000000,4875310000,0,327888000,2267620000,391844000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-15 16:00:00','上海汇总',116263000000,5209410000,0,296228000,2139950000,307887000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-14 16:00:00','上海汇总',116038000000,4245120000,0,310450000,2199320000,266043000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-11 16:00:00','上海汇总',115950000000,3905820000,0,303699000,2148490000,213042000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-10 16:00:00','上海汇总',116103000000,4192360000,0,316677000,2152970000,201268000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-09 16:00:00','上海汇总',115776000000,4753020000,0,312303000,2142950000,288025000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-08 16:00:00','上海汇总',115626000000,4952530000,0,281641000,1985860000,320378000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-07 16:00:00','上海汇总',115054000000,4894190000,0,231800000,1762790000,298928000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-02 16:00:00','上海汇总',113948000000,4074980000,0,238181000,1829120000,269389000,0,0,'2015-05-24 13:29:00',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-04-01 16:00:00','上海汇总',114125000000,5298060000,0,233983000,1812580000,288123000,0,0,'2015-05-24 13:29:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-31 16:00:00','上海汇总',113636000000,4542230000,0,236893000,1823590000,232219000,0,0,'2015-05-24 13:29:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-28 16:00:00','上海汇总',112888000000,5204020000,0,235086000,1883390000,287753000,0,0,'2015-05-24 13:29:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-27 16:00:00','上海汇总',113187000000,8010030000,0,241346000,1899980000,325061000,0,0,'2015-05-24 13:29:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-26 16:00:00','上海汇总',112137000000,6298680000,0,291761000,2269200000,267285000,0,0,'2015-05-24 13:29:01',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-25 16:00:00','上海汇总',111035000000,7099630000,0,294172000,2248490000,266674000,0,0,'2015-05-24 13:29:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-24 16:00:00','上海汇总',109878000000,6297770000,0,316958000,2449060000,279005000,0,0,'2015-05-24 13:29:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-21 16:00:00','上海汇总',108591000000,5511650000,0,318449000,2435870000,243690000,0,0,'2015-05-24 13:29:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-20 16:00:00','上海汇总',108019000000,7062890000,0,334857000,2483730000,270158000,0,0,'2015-05-24 13:29:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-19 16:00:00','上海汇总',107196000000,8066190000,0,331896000,2399760000,415504000,0,0,'2015-05-24 13:29:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-18 16:00:00','上海汇总',106755000000,5201100000,0,291718000,2130070000,289261000,0,0,'2015-05-24 13:29:02',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-17 16:00:00','上海汇总',106239000000,5282720000,0,276040000,2019530000,267797000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-14 16:00:00','上海汇总',105627000000,7471160000,0,288992000,2011780000,408902000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-13 16:00:00','上海汇总',104875000000,4609780000,0,286117000,1996910000,283442000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-12 16:00:00','上海汇总',104109000000,5513880000,0,254252000,1825840000,299097000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-11 16:00:00','上海汇总',102712000000,7022480000,0,262583000,1902710000,314763000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-10 16:00:00','上海汇总',102822000000,5082090000,0,267982000,1948450000,276633000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-07 16:00:00','上海汇总',101902000000,5936310000,0,275907000,1987530000,290445000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-06 16:00:00','上海汇总',101488000000,8464040000,0,274466000,1966920000,309918000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-05 16:00:00','上海汇总',99945600000,8520560000,0,299588000,2115380000,327014000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-04 16:00:00','上海汇总',98534900000,8155060000,0,279818000,2000670000,402109000,0,0,'2015-05-24 13:29:03',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-03-03 16:00:00','上海汇总',97426100000,9066490000,0,232684000,1727140000,308220000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-28 16:00:00','上海汇总',95606100000,7320600000,0,262117000,1972670000,263261000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-27 16:00:00','上海汇总',94814100000,7990990000,0,286757000,2105270000,353484000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-26 16:00:00','上海汇总',94762600000,5775750000,0,259019000,1840020000,317130000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-25 16:00:00','上海汇总',94033800000,7658470000,0,239349000,1805070000,286012000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-24 16:00:00','上海汇总',92421900000,4784970000,0,251501000,1830460000,232553000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-21 16:00:00','上海汇总',91592300000,5317830000,0,230804000,1742090000,210726000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-20 16:00:00','上海汇总',91468200000,8401140000,0,249390000,1853590000,262302000,0,0,'2015-05-24 13:29:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-19 16:00:00','上海汇总',90333700000,6361230000,0,302837000,2257190000,223244000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-18 16:00:00','上海汇总',89876300000,7886100000,0,313654000,2271720000,213396000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-17 16:00:00','上海汇总',87926500000,8842690000,0,335821000,2416620000,205111000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-07 16:00:00','上海汇总',84932400000,6812940000,0,329320000,2418020000,172760000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-06 16:00:00','上海汇总',86663000000,8580920000,0,366211000,2660620000,211824000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-05 16:00:00','上海汇总',85266800000,7874040000,0,455924000,3110880000,206984000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-04 16:00:00','上海汇总',83842600000,9474420000,0,470151000,3132340000,284032000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-02-03 16:00:00','上海汇总',82305900000,11251600000,0,508920000,3224030000,314655000,0,0,'2015-05-24 13:29:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-31 16:00:00','上海汇总',79974300000,7920560000,0,520979000,3294340000,285848000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-30 16:00:00','上海汇总',80012600000,7429870000,0,533771000,3229530000,246998000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-29 16:00:00','上海汇总',79109500000,8022480000,0,542740000,3231190000,300927000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-28 16:00:00','上海汇总',77370600000,8032160000,0,524522000,3195250000,324575000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-27 16:00:00','上海汇总',75824000000,7217230000,0,488531000,3070040000,342790000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-24 16:00:00','上海汇总',74656400000,3835370000,0,409112000,2643750000,213679000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-23 16:00:00','上海汇总',74826800000,8055560000,0,443966000,2769070000,363638000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-22 16:00:00','上海汇总',74367400000,5642830000,0,452816000,2824300000,266353000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-21 16:00:00','上海汇总',73301000000,7837770000,0,484012000,2877990000,383005000,0,0,'2015-05-24 13:29:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-20 16:00:00','上海汇总',71876400000,6561600000,0,467598000,2889140000,280265000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-17 16:00:00','上海汇总',70367100000,5755910000,0,422241000,2715430000,284915000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-16 16:00:00','上海汇总',70577300000,5886940000,0,401298000,2549580000,260768000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-15 16:00:00','上海汇总',69257000000,7447350000,0,427966000,2712350000,234712000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-14 16:00:00','上海汇总',68086100000,7691870000,0,462408000,2866460000,269804000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-13 16:00:00','上海汇总',66993900000,7911830000,0,450431000,2776370000,324600000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-10 16:00:00','上海汇总',65761900000,5721940000,0,428139000,2503840000,229860000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-09 16:00:00','上海汇总',65288100000,5763180000,0,482789000,2812450000,252995000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-08 16:00:00','上海汇总',64195100000,5722170000,0,473092000,2728890000,259417000,0,0,'2015-05-24 13:29:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-07 16:00:00','上海汇总',63304800000,5640080000,0,470222000,2760960000,228406000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-06 16:00:00','上海汇总',62235600000,5443530000,0,496273000,2933730000,275218000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-01-03 16:00:00','上海汇总',60785500000,7407750000,0,468316000,2812000000,249166000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-30 16:00:00','上海汇总',59014200000,5633860000,0,490806000,2751610000,407518000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-27 16:00:00','上海汇总',59294700000,5297740000,0,386182000,2460900000,384020000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-26 16:00:00','上海汇总',59152500000,5373170000,0,361641000,2353660000,331518000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-25 16:00:00','上海汇总',58355000000,5114110000,0,376278000,2417110000,234225000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-24 16:00:00','上海汇总',57544400000,6368460000,0,388334000,2456220000,409793000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-23 16:00:00','上海汇总',57128900000,3788190000,0,333461000,2257000000,296163000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-20 16:00:00','上海汇总',56447800000,4689260000,0,307395000,2139540000,269920000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-19 16:00:00','上海汇总',55689600000,4484710000,0,326439000,2242930000,345923000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-18 16:00:00','上海汇总',54931100000,3768910000,0,349579000,2273480000,230855000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-17 16:00:00','上海汇总',54408100000,5151250000,0,337190000,2270280000,300650000,0,0,'2015-05-24 13:29:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-16 16:00:00','上海汇总',53572000000,5541610000,0,330016000,2198210000,294181000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-13 16:00:00','上海汇总',52791900000,5843340000,0,307019000,2087410000,328394000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-12 16:00:00','上海汇总',52669300000,2246500000,0,288678000,1953470000,217353000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-11 16:00:00','上海汇总',52377500000,2687400000,0,317828000,2098300000,267006000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-10 16:00:00','上海汇总',51868900000,3125290000,0,306225000,2031580000,265455000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-09 16:00:00','上海汇总',51306900000,3401160000,0,313129000,2052660000,312883000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-06 16:00:00','上海汇总',51153100000,3742790000,0,273390000,1908060000,308254000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-05 16:00:00','上海汇总',51239400000,2710160000,0,245045000,1773460000,274816000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-04 16:00:00','上海汇总',50824100000,4221720000,0,260755000,1791670000,342048000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-03 16:00:00','上海汇总',50719300000,1668160000,0,247998000,1691390000,210298000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-12-02 16:00:00','上海汇总',50979400000,1746130000,0,231641000,1642670000,230229000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-29 16:00:00','上海汇总',51380800000,1715100000,0,213227000,1534950000,272226000,0,0,'2015-05-24 13:29:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-28 16:00:00','上海汇总',51590800000,1428620000,0,216979000,1487430000,274952000,0,0,'2015-05-24 13:29:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-27 16:00:00','上海汇总',51839000000,1430770000,0,200578000,1363890000,252283000,0,0,'2015-05-24 13:29:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-26 16:00:00','上海汇总',52059400000,1561380000,0,195318000,1384090000,255616000,0,0,'2015-05-24 13:29:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-25 16:00:00','上海汇总',52224900000,1322180000,0,187498000,1366830000,234475000,0,0,'2015-05-24 13:29:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-22 16:00:00','上海汇总',52163800000,1543730000,0,184950000,1347840000,257860000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-21 16:00:00','上海汇总',52326300000,1332150000,0,172773000,1302640000,214933000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-20 16:00:00','上海汇总',52338400000,1943150000,0,184856000,1306570000,308582000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-19 16:00:00','上海汇总',52232900000,1509400000,0,166144000,1208320000,225335000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-18 16:00:00','上海汇总',52136400000,1674660000,0,166062000,1227620000,252906000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-15 16:00:00','上海汇总',51842400000,1662230000,0,164871000,1175450000,239595000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-14 16:00:00','上海汇总',51834400000,1585330000,0,181549000,1291520000,229952000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-13 16:00:00','上海汇总',51742900000,1519970000,0,193814000,1331110000,272000000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-12 16:00:00','上海汇总',51621600000,1885580000,0,190958000,1282130000,216004000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-11 16:00:00','上海汇总',51537000000,1767230000,0,194274000,1292540000,239937000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-08 16:00:00','上海汇总',51496500000,1478650000,0,158011000,1169280000,207705000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-07 16:00:00','上海汇总',51702900000,2055490000,0,156054000,1160800000,224975000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-06 16:00:00','上海汇总',51842200000,2051690000,0,159650000,1198480000,200322000,0,0,'2015-05-24 13:29:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-05 16:00:00','上海汇总',51683400000,2421700000,0,159389000,1180020000,166281000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-04 16:00:00','上海汇总',51362300000,2316300000,0,165124000,1218020000,143929000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-11-01 16:00:00','上海汇总',51130700000,2343570000,0,163272000,1181070000,147342000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-31 16:00:00','上海汇总',51237200000,2617930000,0,159065000,1142170000,186500000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-30 16:00:00','上海汇总',51559100000,1692370000,0,141296000,1063190000,159334000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-29 16:00:00','上海汇总',51501900000,1589600000,0,137652000,1001360000,151390000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-28 16:00:00','上海汇总',51689000000,1584950000,0,122834000,927847000,128121000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-25 16:00:00','上海汇总',51310700000,2288660000,0,119587000,889943000,111327000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-24 16:00:00','上海汇总',50925500000,2168300000,0,146078000,1100160000,139551000,0,0,'2015-05-24 13:29:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-23 16:00:00','上海汇总',50554000000,1887160000,0,154386000,1157440000,133866000,0,0,'2015-05-24 13:29:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-22 16:00:00','上海汇总',50268600000,2284290000,0,159592000,1165650000,131753000,0,0,'2015-05-24 13:29:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-21 16:00:00','上海汇总',49878700000,1994060000,0,164810000,1243450000,139669000,0,0,'2015-05-24 13:29:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-18 16:00:00','上海汇总',49690300000,1848950000,0,149291000,1170030000,135685000,0,0,'2015-05-24 13:29:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-17 16:00:00','上海汇总',49898400000,2447880000,0,172225000,1258700000,161104000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-16 16:00:00','上海汇总',50073300000,1926670000,0,156206000,1172940000,153854000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-15 16:00:00','上海汇总',49763700000,1844930000,0,147390000,1125350000,159268000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-14 16:00:00','上海汇总',49663200000,1691220000,0,142656000,1090410000,113395000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-11 16:00:00','上海汇总',49448600000,1908820000,0,129878000,1025770000,156487000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-10 16:00:00','上海汇总',49440500000,2225160000,0,141203000,1045820000,195814000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-09 16:00:00','上海汇总',48919500000,2279620000,0,131883000,1073260000,129691000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-08 16:00:00','上海汇总',48396900000,2764490000,0,133467000,1092150000,146185000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-10-07 16:00:00','上海汇总',48264700000,2310100000,0,119718000,969056000,115648000,0,0,'2015-05-24 13:29:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-27 16:00:00','上海汇总',47592600000,2247160000,0,101327000,932013000,155872000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-26 16:00:00','上海汇总',48907500000,2351990000,0,107166000,931647000,184576000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-25 16:00:00','上海汇总',49560400000,1300490000,0,93606900,887942000,140129000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-24 16:00:00','上海汇总',49668100000,1347720000,0,90621900,910568000,119230000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-23 16:00:00','上海汇总',49922400000,1719000000,0,87540900,837519000,152476000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-20 16:00:00','上海汇总',49751800000,1769210000,0,85076100,816584000,139892000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-19 16:00:00','上海汇总',49793100000,2140710000,0,87505700,802087000,131211000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-18 16:00:00','上海汇总',49533600000,1837770000,0,86657500,814641000,123928000,0,0,'2015-05-24 13:29:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-17 16:00:00','上海汇总',49257000000,1754120000,0,81366500,767030000,126572000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-16 16:00:00','上海汇总',49040100000,2558270000,0,94791500,817906000,146148000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-13 16:00:00','上海汇总',48670200000,2806240000,0,98193200,837192000,157295000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-12 16:00:00','上海汇总',48798200000,2208340000,0,96817300,830509000,127243000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-11 16:00:00','上海汇总',48462900000,2739660000,0,101053000,822986000,162311000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-10 16:00:00','上海汇总',47897800000,2580280000,0,110301000,796149000,110352000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-09 16:00:00','上海汇总',47126200000,3477140000,0,119592000,886485000,112440000,0,0,'2015-05-24 13:29:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-06 16:00:00','上海汇总',46551400000,4336820000,0,126381000,899377000,227423000,0,0,'2015-05-24 13:29:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-05 16:00:00','上海汇总',46734300000,1608730000,0,101604000,878207000,135900000,0,0,'2015-05-24 13:29:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-04 16:00:00','上海汇总',46434500000,1632560000,0,94487200,866941000,125504000,0,0,'2015-05-24 13:29:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-03 16:00:00','上海汇总',46165800000,1753550000,0,91707300,825214000,136973000,0,0,'2015-05-24 13:29:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-09-02 16:00:00','上海汇总',45954900000,1669080000,0,90823700,816603000,110290000,0,0,'2015-05-24 13:29:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-30 16:00:00','上海汇总',45671800000,1075960000,0,84120900,747150000,94804100,0,0,'2015-05-24 13:29:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-29 16:00:00','上海汇总',45665100000,1463050000,0,87744500,740696000,129610000,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-28 16:00:00','上海汇总',45764600000,1325560000,0,90901600,774752000,98202200,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-27 16:00:00','上海汇总',45823000000,1503900000,0,101985000,806676000,147567000,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-26 16:00:00','上海汇总',45734000000,1623650000,0,84369300,752749000,109171000,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-23 16:00:00','上海汇总',45979800000,1394090000,0,74545500,739252000,91369000,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-22 16:00:00','上海汇总',46197800000,1650540000,0,84030100,741581000,122034000,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-21 16:00:00','上海汇总',46048700000,1477900000,0,75302600,712808000,73249800,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-20 16:00:00','上海汇总',45866100000,1670210000,0,78030000,714371000,98054600,0,0,'2015-05-24 13:29:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-19 16:00:00','上海汇总',45688500000,1336770000,0,70237800,687918000,79200700,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-16 16:00:00','上海汇总',45527700000,1327190000,0,69860600,676252000,71407900,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-15 16:00:00','上海汇总',45507600000,1199330000,0,69900300,704217000,54400800,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-14 16:00:00','上海汇总',45370200000,1603180000,0,72983200,723992000,62267000,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-13 16:00:00','上海汇总',45091000000,2023420000,0,72206500,705610000,97420900,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-12 16:00:00','上海汇总',44805500000,2193590000,0,72005900,723521000,104164000,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-09 16:00:00','上海汇总',44448500000,1847680000,0,74348100,775173000,80525600,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-08 16:00:00','上海汇总',44655600000,2042620000,0,80495000,807874000,96060900,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-07 16:00:00','上海汇总',44382400000,1651110000,0,81257600,811851000,82835500,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-06 16:00:00','上海汇总',44381200000,1916820000,0,76336700,793859000,70258300,0,0,'2015-05-24 13:29:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-05 16:00:00','上海汇总',43984000000,2087000000,0,82372000,803767000,99917000,0,0,'2015-05-24 13:29:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-02 16:00:00','上海汇总',43644300000,1253400000,0,86148800,792848000,81031200,0,0,'2015-05-24 13:29:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-08-01 16:00:00','上海汇总',43560700000,1272420000,0,109965000,892254000,102298000,0,0,'2015-05-24 13:29:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-31 16:00:00','上海汇总',43473500000,1328780000,0,87744300,846109000,93231900,0,0,'2015-05-24 13:29:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-30 16:00:00','上海汇总',43397300000,1164960000,0,87036300,819410000,95425000,0,0,'2015-05-24 13:29:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-29 16:00:00','上海汇总',43600800000,1195210000,0,82041500,773620000,88269700,0,0,'2015-05-24 13:29:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-26 16:00:00','上海汇总',43546600000,1164630000,0,82465900,776735000,90590900,0,0,'2015-05-24 13:29:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-25 16:00:00','上海汇总',43605900000,1117460000,0,81310300,805111000,84741500,0,0,'2015-05-24 13:29:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-24 16:00:00','上海汇总',43628600000,910461000,0,77500400,792767000,61189700,0,0,'2015-05-24 13:29:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-23 16:00:00','上海汇总',43673800000,1164980000,0,78452400,794241000,74363800,0,0,'2015-05-24 13:29:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-22 16:00:00','上海汇总',43520900000,1270200000,0,79265000,783218000,74122600,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-19 16:00:00','上海汇总',43293300000,1377290000,0,75563500,801989000,81880000,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-18 16:00:00','上海汇总',43133400000,1899780000,0,87830400,855941000,101789000,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-17 16:00:00','上海汇总',43001300000,1706980000,0,87308300,815807000,94063900,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-16 16:00:00','上海汇总',42850600000,1320740000,0,87962700,822313000,78146900,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-15 16:00:00','上海汇总',42954900000,1612760000,0,82744100,837479000,63438600,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-12 16:00:00','上海汇总',42995300000,1496120000,0,73569100,809010000,57872300,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-11 16:00:00','上海汇总',42958400000,2685530000,0,86725300,825306000,81076200,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-10 16:00:00','上海汇总',42763500000,1400210000,0,79346100,852956000,55472800,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-09 16:00:00','上海汇总',42677900000,1526390000,0,72108500,790231000,51222800,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-08 16:00:00','上海汇总',42433200000,2200690000,0,76491400,824026000,65970400,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-05 16:00:00','上海汇总',42071500000,2161090000,0,71524800,809180000,55644000,0,0,'2015-05-24 13:29:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-04 16:00:00','上海汇总',41980100000,1357110000,0,76724100,810716000,45976400,0,0,'2015-05-24 13:29:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-03 16:00:00','上海汇总',41979700000,1502120000,0,83797900,859660000,54962900,0,0,'2015-05-24 13:29:39',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-02 16:00:00','上海汇总',41775300000,1608080000,0,77988300,835348000,60616200,0,0,'2015-05-24 13:30:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-07-01 16:00:00','上海汇总',41651600000,1764740000,0,78605200,807499000,57944200,0,0,'2015-05-24 13:30:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-28 16:00:00','上海汇总',41352500000,1575180000,0,71843500,748286000,55266100,0,0,'2015-05-24 13:30:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-27 16:00:00','上海汇总',41554200000,1419500000,0,65864700,699842000,41152000,0,0,'2015-05-24 13:30:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-26 16:00:00','上海汇总',41452200000,1170930000,0,74432400,728467000,47294600,0,0,'2015-05-24 13:30:04',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-25 16:00:00','上海汇总',41366800000,1329390000,0,70170800,664880000,55891700,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-24 16:00:00','上海汇总',41328100000,1688930000,0,68561000,638598000,50582400,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-20 16:00:00','上海汇总',41216000000,1827370000,0,72266400,667886000,58747900,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-19 16:00:00','上海汇总',40971400000,1305050000,0,78687500,756005000,32590800,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-18 16:00:00','上海汇总',40959300000,1610400000,0,83848900,737452000,50150400,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-17 16:00:00','上海汇总',40774100000,1739590000,0,82028200,785855000,53460300,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-14 16:00:00','上海汇总',40424500000,2362760000,0,76271100,752573000,61302200,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-13 16:00:00','上海汇总',40463700000,1596180000,0,91731700,805818000,63646400,0,0,'2015-05-24 13:30:05',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-12 16:00:00','上海汇总',40366200000,2136090000,0,88006200,804451000,75041000,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-11 16:00:00','上海汇总',40118900000,1627000000,0,86829100,775286000,86560300,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-10 16:00:00','上海汇总',39915100000,1777900000,0,71278600,708140000,69193500,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-07 16:00:00','上海汇总',39719800000,1805600000,0,74578400,707825000,68552400,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-06 16:00:00','上海汇总',39824300000,1889740000,0,80374900,693818000,55219900,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-05 16:00:00','上海汇总',39585300000,1698620000,0,75901800,696908000,55559900,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-04 16:00:00','上海汇总',39341800000,1627170000,0,79361900,693112000,72500300,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-06-03 16:00:00','上海汇总',39201400000,2785010000,0,70592500,674920000,46517900,0,0,'2015-05-24 13:30:06',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-31 16:00:00','上海汇总',38393000000,1909780000,0,82324300,741659000,48880200,0,0,'2015-05-24 13:30:07',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-30 16:00:00','上海汇总',38363700000,2037760000,0,81459900,762841000,41240000,0,0,'2015-05-24 13:30:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-29 16:00:00','上海汇总',37985500000,2248620000,0,96936500,837501000,56907000,0,0,'2015-05-24 13:30:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-28 16:00:00','上海汇总',37676400000,2823200000,0,102682000,795979000,85831200,0,0,'2015-05-24 13:30:08',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-27 16:00:00','上海汇总',37598800000,1930550000,0,100086000,770435000,79788700,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-24 16:00:00','上海汇总',37536000000,1497070000,0,99344300,770189000,65466700,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-23 16:00:00','上海汇总',37528300000,1988440000,0,109120000,814033000,48564300,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-22 16:00:00','上海汇总',37072100000,1835460000,0,110406000,851735000,63951200,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-21 16:00:00','上海汇总',37079800000,1671470000,0,101273000,792550000,62124000,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-20 16:00:00','上海汇总',37126500000,1797960000,0,79977500,691025000,70327100,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-17 16:00:00','上海汇总',36821400000,1888310000,0,79483000,650248000,48150100,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-16 16:00:00','上海汇总',36787700000,1962620000,0,98072500,715906000,72488800,0,0,'2015-05-24 13:30:09',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-15 16:00:00','上海汇总',36779200000,2178810000,0,82716700,646127000,54455600,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-14 16:00:00','上海汇总',36152600000,2036100000,0,76164800,655470000,44423400,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-13 16:00:00','上海汇总',35628800000,2461640000,0,83330100,626430000,58276800,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-10 16:00:00','上海汇总',35115700000,1960510000,0,72634400,618125000,52964400,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-09 16:00:00','上海汇总',35040900000,2161720000,0,70736300,622694000,46438800,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-08 16:00:00','上海汇总',34451900000,2651770000,0,70429200,625817000,31970100,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-07 16:00:00','上海汇总',33893600000,2441140000,0,89363800,722746000,46747800,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-06 16:00:00','上海汇总',33467500000,2716730000,0,93667400,728200000,47121100,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-03 16:00:00','上海汇总',32929100000,2390140000,0,94427300,793584000,44620400,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-02 16:00:00','上海汇总',32914400000,2695220000,0,100602000,797697000,55100800,0,0,'2015-05-24 13:30:10',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-05-01 16:00:00','上海汇总',32374300000,3738260000,0,102617000,762654000,96785000,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-26 16:00:00','上海汇总',31996100000,1870380000,0,75102800,652371000,44197700,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-25 16:00:00','上海汇总',32207600000,2491760000,0,92790400,711809000,61307500,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-24 16:00:00','上海汇总',32022800000,2546860000,0,95956900,733449000,77263600,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-23 16:00:00','上海汇总',31886500000,2842910000,0,89615700,698699000,100607000,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-22 16:00:00','上海汇总',31919300000,2418730000,0,93581900,740476000,33113200,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-19 16:00:00','上海汇总',31698000000,2307630000,0,107584000,799576000,65626800,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-18 16:00:00','上海汇总',31763700000,2086450000,0,95252400,745588000,36252000,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-17 16:00:00','上海汇总',31713100000,2056220000,0,94973500,742347000,68154000,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-16 16:00:00','上海汇总',31701800000,1522190000,0,75021400,644510000,28548600,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-15 16:00:00','上海汇总',31551900000,1690210000,0,99357500,745742000,40483900,0,0,'2015-05-24 13:30:11',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-12 16:00:00','上海汇总',31321500000,1929010000,0,103455000,724919000,42290900,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-11 16:00:00','上海汇总',31658400000,2069070000,0,99941100,728862000,80195000,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-10 16:00:00','上海汇总',31650500000,1620530000,0,79068400,637540000,55313400,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-09 16:00:00','上海汇总',31315100000,1442580000,0,73810200,613614000,80355800,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-08 16:00:00','上海汇总',31312700000,1263660000,0,68770200,637822000,47806700,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-05 16:00:00','上海汇总',31203200000,1556670000,0,73395700,638010000,46986700,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-04-04 16:00:00','上海汇总',31036900000,1910710000,0,64586600,612980000,56598200,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-29 16:00:00','上海汇总',30855100000,1118750000,0,56193300,498505000,62941200,0,0,'2015-05-24 13:30:12',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-28 16:00:00','上海汇总',31466700000,1468200000,0,44127000,451280000,46667600,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-27 16:00:00','上海汇总',31725400000,1803700000,0,48674200,472971000,42376500,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-26 16:00:00','上海汇总',31653000000,1639570000,0,49559000,506941000,27388000,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-25 16:00:00','上海汇总',31310300000,1024520000,0,46497800,500458000,23866400,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-22 16:00:00','上海汇总',31324500000,1588670000,0,48785200,501264000,26483700,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-21 16:00:00','上海汇总',31258600000,1552430000,0,57970600,539410000,31318000,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-20 16:00:00','上海汇总',31184300000,2250810000,0,54813900,524894000,35619600,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-19 16:00:00','上海汇总',30881400000,2213240000,0,56872000,538234000,30913000,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-18 16:00:00','上海汇总',30589600000,2323160000,0,56181900,578815000,27401100,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-15 16:00:00','上海汇总',30040300000,1990280000,0,54580000,560756000,28742900,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-14 16:00:00','上海汇总',30030600000,2615940000,0,59941600,553398000,32707000,0,0,'2015-05-24 13:30:13',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-13 16:00:00','上海汇总',29962500000,3971920000,0,69026000,583607000,49997500,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-12 16:00:00','上海汇总',29506100000,2090950000,0,69587600,650512000,26611200,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-11 16:00:00','上海汇总',29313500000,2466700000,0,67452000,624485000,21119400,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-08 16:00:00','上海汇总',28698900000,2039560000,0,68860800,627719000,27333600,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-07 16:00:00','上海汇总',28553300000,2004960000,0,65148900,617718000,30877400,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-06 16:00:00','上海汇总',28322800000,2037720000,0,60969700,572081000,27513500,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-05 16:00:00','上海汇总',27925400000,2260380000,0,57613600,576732000,22969700,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-04 16:00:00','上海汇总',27545700000,2328140000,0,69480400,661468000,23245400,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-03-01 16:00:00','上海汇总',27048700000,2290380000,0,68727000,651311000,32257200,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-29 16:00:00','上海汇总',26693100000,1544100000,0,66158700,599587000,18384900,0,0,'2015-05-24 13:30:14',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-28 16:00:00','上海汇总',26421200000,2001680000,0,69376700,618906000,21241500,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-27 16:00:00','上海汇总',26173600000,2196630000,0,87665100,723104000,35380100,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-26 16:00:00','上海汇总',25953100000,3344830000,0,84073300,749953000,40228300,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-23 16:00:00','上海汇总',25607200000,2713860000,0,79216600,715902000,38356900,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-22 16:00:00','上海汇总',25510000000,2185980000,0,74545200,658672000,29827100,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-21 16:00:00','上海汇总',25223700000,2434750000,0,71213500,648311000,33399200,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-20 16:00:00','上海汇总',24969800000,1563230000,0,67474200,604736000,28384200,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-19 16:00:00','上海汇总',24772800000,1759770000,0,67006400,579981000,25030100,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-16 16:00:00','上海汇总',24478200000,1179540000,0,67342300,576582000,21536500,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-15 16:00:00','上海汇总',24491800000,1582480000,0,67354600,590145000,29591700,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-14 16:00:00','上海汇总',24179800000,1781360000,0,70206200,601734000,33021800,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-13 16:00:00','上海汇总',23861000000,1256560000,0,67425800,579119000,21818400,0,0,'2015-05-24 13:30:15',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-12 16:00:00','上海汇总',23608200000,1582130000,0,74001900,607362000,27428700,0,0,'2015-05-24 13:30:16',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-09 16:00:00','上海汇总',23186700000,1445010000,0,77934200,644879000,37539900,0,0,'2015-05-24 13:30:16',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-08 16:00:00','上海汇总',23364300000,1737120000,0,73917000,614905000,24235900,0,0,'2015-05-24 13:30:16',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-07 16:00:00','上海汇总',23304300000,1565570000,0,76405200,626032000,42850700,0,0,'2015-05-24 13:30:16',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-06 16:00:00','上海汇总',23313200000,1445700000,0,67519900,547717000,23234600,0,0,'2015-05-24 13:30:16',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-05 16:00:00','上海汇总',22784500000,1343940000,0,79203200,647383000,30082300,0,0,'2015-05-24 13:31:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-02 16:00:00','上海汇总',22515400000,1520410000,0,72249400,614937000,28466200,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-02-01 16:00:00','上海汇总',22396200000,1178860000,0,74944700,616095000,40883100,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-31 16:00:00','上海汇总',22366500000,1285620000,0,62171400,499225000,29621100,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-30 16:00:00','上海汇总',22014300000,1044340000,0,65089100,516870000,25851300,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-29 16:00:00','上海汇总',21653300000,1502770000,0,61608600,517342000,27449200,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-19 16:00:00','上海汇总',21088600000,1142180000,0,55586400,465817000,26347900,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-18 16:00:00','上海汇总',22161800000,1384430000,0,55687200,469401000,34258700,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-17 16:00:00','上海汇总',22564600000,1581540000,0,58523000,462491000,27677300,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-16 16:00:00','上海汇总',22582600000,1651310000,0,58887800,472152000,44605400,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-15 16:00:00','上海汇总',22638900000,878057000,0,55948100,482315000,23390500,0,0,'2015-05-24 13:31:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-12 16:00:00','上海汇总',22674400000,1133650000,0,53783900,472374000,32020700,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-11 16:00:00','上海汇总',22781200000,1231620000,0,55347600,518981000,25652700,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-10 16:00:00','上海汇总',22869700000,1274710000,0,54570000,484381000,22465200,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-09 16:00:00','上海汇总',22774000000,1701130000,0,60754800,542466000,36201100,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-08 16:00:00','上海汇总',22853400000,1130780000,0,53940100,493660000,36755700,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-05 16:00:00','上海汇总',22974800000,825710000,0,46360900,424102000,28232100,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-04 16:00:00','上海汇总',22871000000,794286000,0,50717400,442508000,33093200,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2012-01-03 16:00:00','上海汇总',23086200000,788065000,0,46400100,420192000,23909800,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-29 16:00:00','上海汇总',23163500000,762689000,0,42775800,381308000,16111300,0,0,'2015-05-24 13:31:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-28 16:00:00','上海汇总',23261500000,635606000,0,41815100,376408000,20787000,0,0,'2015-05-24 13:31:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-27 16:00:00','上海汇总',23227100000,640947000,0,39661800,363621000,26680600,0,0,'2015-05-24 13:31:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-26 16:00:00','上海汇总',23125500000,595502000,0,42098700,404474000,22763300,0,0,'2015-05-24 13:31:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-25 16:00:00','上海汇总',23097100000,581464000,0,44732200,416766000,25980300,0,0,'2015-05-24 13:31:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-22 16:00:00','上海汇总',23022600000,606711000,0,37405900,376194000,23217800,0,0,'2015-05-24 13:31:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-21 16:00:00','上海汇总',23156200000,712316000,0,37859400,379727000,25005500,0,0,'2015-05-24 13:31:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-20 16:00:00','上海汇总',23213200000,747256000,0,37184400,377163000,20155400,0,0,'2015-05-24 13:31:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-19 16:00:00','上海汇总',23215300000,728256000,0,34861400,360846000,15958900,0,0,'2015-05-24 13:31:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-18 16:00:00','上海汇总',23160900000,822982000,0,33106000,332958000,24292400,0,0,'2015-05-24 13:31:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-15 16:00:00','上海汇总',22961000000,860810000,0,30758400,305996000,21208900,0,0,'2015-05-24 13:31:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-14 16:00:00','上海汇总',22829400000,963186000,0,28592300,272303000,21056500,0,0,'2015-05-24 13:31:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-13 16:00:00','上海汇总',22710700000,632941000,0,35419600,330634000,18636400,0,0,'2015-05-24 13:31:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-12 16:00:00','上海汇总',22643600000,833397000,0,32193800,307394000,18470000,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-11 16:00:00','上海汇总',22525100000,554603000,0,33629200,347531000,14426100,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-08 16:00:00','上海汇总',22507100000,566831000,0,31101900,331966000,12314400,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-07 16:00:00','上海汇总',22529000000,675915000,0,31650600,348108000,13511900,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-06 16:00:00','上海汇总',22449300000,604857000,0,32517600,355101000,12002900,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-05 16:00:00','上海汇总',22413400000,596413000,0,30294600,323513000,12894200,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-04 16:00:00','上海汇总',22379600000,875783000,0,28770900,285651000,11485800,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-12-01 16:00:00','上海汇总',22267800000,591660000,0,25798300,286193000,11811400,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-30 16:00:00','上海汇总',22299500000,1146810000,0,31414300,323600000,23831900,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-29 16:00:00','上海汇总',22466500000,671043000,0,25789400,251840000,13718800,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-28 16:00:00','上海汇总',22518600000,523651000,0,23939300,243157000,6499080,0,0,'2015-05-24 13:31:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-27 16:00:00','上海汇总',22494900000,416782000,0,23766100,237444000,8508860,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-24 16:00:00','上海汇总',22400800000,378428000,0,24411200,229399000,6142340,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-23 16:00:00','上海汇总',22422000000,533809000,0,26047000,222337000,10427200,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-22 16:00:00','上海汇总',22381300000,531977000,0,25511900,226185000,7883060,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-21 16:00:00','上海汇总',22340600000,525422000,0,25818200,222145000,10996400,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-20 16:00:00','上海汇总',22261900000,559758000,0,22621200,199896000,6876940,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-17 16:00:00','上海汇总',22128300000,780916000,0,24522700,222240000,10335900,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-16 16:00:00','上海汇总',22110500000,648789000,0,26273400,227849000,7134580,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-15 16:00:00','上海汇总',22079300000,1219960000,0,26259500,239721000,9295090,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-14 16:00:00','上海汇总',21642900000,779370000,0,27080400,273248000,7269670,0,0,'2015-05-24 13:31:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-13 16:00:00','上海汇总',21472100000,975366000,0,26773700,283123000,10944900,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-10 16:00:00','上海汇总',21345100000,522265000,0,21814500,228554000,6117290,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-09 16:00:00','上海汇总',21382400000,988496000,0,24396900,251366000,8554810,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-08 16:00:00','上海汇总',21137400000,941665000,0,26167400,274342000,9004070,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-07 16:00:00','上海汇总',20905000000,899091000,0,26772200,282879000,10627200,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-06 16:00:00','上海汇总',20693200000,948486000,0,26955200,291959000,9635060,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-03 16:00:00','上海汇总',20425600000,1033450000,0,26947600,313367000,8369940,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-02 16:00:00','上海汇总',20365200000,1715750000,0,31206100,350922000,12683300,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-11-01 16:00:00','上海汇总',20094700000,1186050000,0,29987000,324026000,16013900,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-31 16:00:00','上海汇总',20008000000,1034960000,0,26987200,311178000,13416000,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-30 16:00:00','上海汇总',19901300000,848254000,0,28142800,289607000,12563800,0,0,'2015-05-24 13:31:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-27 16:00:00','上海汇总',19749300000,1317090000,0,24563600,280413000,14723000,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-26 16:00:00','上海汇总',19930700000,866056000,0,25870100,269320000,8478120,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-25 16:00:00','上海汇总',19786700000,1186800000,0,25867200,278027000,11895900,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-24 16:00:00','上海汇总',19857200000,1013480000,0,27805800,275099000,11529900,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-23 16:00:00','上海汇总',19813200000,665327000,0,29482000,277010000,16458500,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-20 16:00:00','上海汇总',20077600000,435631000,0,21500400,211421000,8870040,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-19 16:00:00','上海汇总',20274100000,763089000,0,19965200,202599000,12807000,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-18 16:00:00','上海汇总',20242800000,560817000,0,21272900,214840000,9326280,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-17 16:00:00','上海汇总',20246900000,767491000,0,20821500,201357000,9000480,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-16 16:00:00','上海汇总',20300400000,615448000,0,22424100,224637000,9809470,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-13 16:00:00','上海汇总',20400800000,566964000,0,18130700,173236000,7224170,0,0,'2015-05-24 13:31:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-12 16:00:00','上海汇总',20543900000,1004160000,0,19387300,189605000,10184700,0,0,'2015-05-24 13:31:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-11 16:00:00','上海汇总',20430800000,1268680000,0,20463800,197809000,17590700,0,0,'2015-05-24 13:31:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-10 16:00:00','上海汇总',20324300000,818717000,0,16966500,164383000,14579500,0,0,'2015-05-24 13:31:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-10-09 16:00:00','上海汇总',20500200000,563519000,0,13608100,127729000,6471750,0,0,'2015-05-24 13:31:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-29 16:00:00','上海汇总',20678300000,492770000,0,10440800,103620000,5937150,0,0,'2015-05-24 13:31:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-28 16:00:00','上海汇总',21137800000,607797000,0,11299500,114029000,8060880,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-27 16:00:00','上海汇总',21285200000,589899000,0,14122300,138656000,8666250,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-26 16:00:00','上海汇总',21443000000,798225000,0,13725000,137037000,8993690,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-25 16:00:00','上海汇总',21305000000,770319000,0,14219500,139292000,10197700,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-22 16:00:00','上海汇总',21359300000,725290000,0,13090000,120866000,8825810,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-21 16:00:00','上海汇总',21403200000,1069290000,0,14441300,130053000,4620320,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-20 16:00:00','上海汇总',21080900000,954137000,0,21524900,206592000,12899000,0,0,'2015-05-24 13:31:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-19 16:00:00','上海汇总',21181600000,498229000,0,14239400,143515000,5818840,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-18 16:00:00','上海汇总',21103800000,477719000,0,15411500,149394000,5293500,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-15 16:00:00','上海汇总',21020900000,481260000,0,14740000,152059000,3733100,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-14 16:00:00','上海汇总',20996400000,520749000,0,15301800,153850000,6723860,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-13 16:00:00','上海汇总',21050900000,578762000,0,13571800,141503000,8655410,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-12 16:00:00','上海汇总',21122100000,496754000,0,13236800,135897000,5736070,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-08 16:00:00','上海汇总',21041900000,456448000,0,11242300,123041000,4718270,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-07 16:00:00','上海汇总',21114900000,426970000,0,11230100,119523000,2851130,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-06 16:00:00','上海汇总',21042300000,545204000,0,13341900,137648000,7934340,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-05 16:00:00','上海汇总',21068900000,538936000,0,15441000,140793000,6705600,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-04 16:00:00','上海汇总',21003500000,544364000,0,15756400,151286000,4891220,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-09-01 16:00:00','上海汇总',20901200000,513089000,0,15842600,148372000,4677930,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-31 16:00:00','上海汇总',20898900000,591420000,0,16459000,170124000,6978880,0,0,'2015-05-24 13:31:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-30 16:00:00','上海汇总',20893300000,631884000,0,14817600,156151000,5352130,0,0,'2015-05-24 13:32:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-29 16:00:00','上海汇总',20749900000,941989000,0,15575400,144875000,8519800,0,0,'2015-05-24 13:32:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-28 16:00:00','上海汇总',20496300000,924884000,0,14198000,138195000,6936500,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-25 16:00:00','上海汇总',20109300000,779340000,0,14260700,144852000,4749620,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-24 16:00:00','上海汇总',19909800000,1096240000,0,18118300,178338000,19696000,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-23 16:00:00','上海汇总',20148200000,612218000,0,10600300,124292000,4595200,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-22 16:00:00','上海汇总',20161800000,533359000,0,10029100,119578000,5461260,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-21 16:00:00','上海汇总',20104600000,558702000,0,9545430,105878000,3715580,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-18 16:00:00','上海汇总',20074100000,651203000,0,9616530,105793000,5616950,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-17 16:00:00','上海汇总',20125800000,551566000,0,9341230,102842000,2849490,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-16 16:00:00','上海汇总',20020200000,543390000,0,11402000,121491000,5960700,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-15 16:00:00','上海汇总',19938500000,667246000,0,11029900,119343000,5334920,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-14 16:00:00','上海汇总',19900200000,753176000,0,12740200,138610000,7811500,0,0,'2015-05-24 13:32:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-11 16:00:00','上海汇总',19780600000,613786000,0,8721820,100761000,5604530,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-10 16:00:00','上海汇总',19853800000,734315000,0,10015100,118858000,9749560,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-09 16:00:00','上海汇总',19891800000,722853000,0,8164480,102750000,6358840,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-08 16:00:00','上海汇总',19958900000,928507000,0,8510820,103220000,9821260,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-07 16:00:00','上海汇总',19966000000,1069170000,0,6228650,84548200,6829970,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-04 16:00:00','上海汇总',19903200000,732342000,0,6236970,81846200,4610780,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-03 16:00:00','上海汇总',19917000000,425657000,0,6177710,88632500,1934770,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-02 16:00:00','上海汇总',19947300000,517125000,0,6009480,84927100,2512120,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-08-01 16:00:00','上海汇总',19875100000,587232000,0,5634770,80459900,3827180,0,0,'2015-05-24 13:32:50',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-31 16:00:00','上海汇总',19710700000,526493000,0,6757290,94262100,3564910,0,0,'2015-05-24 13:32:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-28 16:00:00','上海汇总',19559800000,599192000,0,7444960,99044200,7700460,0,0,'2015-05-24 13:32:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-27 16:00:00','上海汇总',19687800000,729220000,0,6158000,89444700,2857000,0,0,'2015-05-24 13:32:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-26 16:00:00','上海汇总',19723600000,710416000,0,7058610,91618300,4154340,0,0,'2015-05-24 13:32:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-25 16:00:00','上海汇总',19521200000,600132000,0,6979340,91989900,4838400,0,0,'2015-05-24 13:32:51',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-24 16:00:00','上海汇总',19407400000,1223690000,0,7053850,90912500,5661280,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-21 16:00:00','上海汇总',19089900000,538622000,0,8038120,109482000,2046280,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-20 16:00:00','上海汇总',19064500000,794485000,0,7927620,103322000,2763770,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-19 16:00:00','上海汇总',18904100000,753245000,0,8025980,104271000,2273100,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-18 16:00:00','上海汇总',18721100000,869512000,0,9226150,116106000,4966710,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-17 16:00:00','上海汇总',18533200000,938115000,0,10626100,118285000,4400940,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-14 16:00:00','上海汇总',18253500000,898096000,0,11091800,124866000,4445760,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-13 16:00:00','上海汇总',18255200000,941411000,0,10004800,118057000,7088670,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-12 16:00:00','上海汇总',18208700000,810911000,0,8339730,107248000,4194820,0,0,'2015-05-24 13:32:52',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-11 16:00:00','上海汇总',17997200000,882517000,0,7666640,96865200,1397480,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-10 16:00:00','上海汇总',17917100000,703190000,0,9106730,120988000,2281820,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-07 16:00:00','上海汇总',17776200000,836312000,0,9576650,123146000,3327510,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-06 16:00:00','上海汇总',17758800000,1120180000,0,10090000,128927000,5285070,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-05 16:00:00','上海汇总',17664000000,986208000,0,8978640,120444000,2794260,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-04 16:00:00','上海汇总',17383800000,922969000,0,11444000,138736000,4495780,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-07-03 16:00:00','上海汇总',17323600000,1166310000,0,12854600,152657000,5022070,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-30 16:00:00','上海汇总',17284300000,924432000,0,9895060,126467000,3314300,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-29 16:00:00','上海汇总',17124300000,1040050000,0,11193700,131300000,5586820,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-28 16:00:00','上海汇总',16809800000,858850000,0,11266600,120599000,4031310,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-27 16:00:00','上海汇总',16607000000,808100000,0,12446400,140408000,5449690,0,0,'2015-05-24 13:32:53',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-26 16:00:00','上海汇总',16488000000,875089000,0,11729900,136964000,3819560,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-23 16:00:00','上海汇总',16292300000,1246000000,0,12614100,139251000,7404590,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-22 16:00:00','上海汇总',16344100000,590474000,0,10385300,127164000,5572440,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-21 16:00:00','上海汇总',16340600000,458577000,0,8562700,110373000,3246940,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-20 16:00:00','上海汇总',16298000000,556173000,0,8746780,108579000,4500980,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-19 16:00:00','上海汇总',16237500000,684554000,0,7041290,84482800,4208220,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-16 16:00:00','上海汇总',15996300000,543788000,0,6893630,85261200,3206710,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-15 16:00:00','上海汇总',16725900000,548958000,0,6380950,80625500,3149920,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-14 16:00:00','上海汇总',16604100000,681523000,0,7176380,92799300,2954550,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-13 16:00:00','上海汇总',16495900000,632876000,0,7462570,96725000,4647150,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-12 16:00:00','上海汇总',16526600000,461223000,0,7313920,89785600,2794480,0,0,'2015-05-24 13:32:54',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-09 16:00:00','上海汇总',16706900000,510782000,0,6829390,87414400,3503620,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-08 16:00:00','上海汇总',16653000000,536559000,0,5502360,77298200,1354200,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-07 16:00:00','上海汇总',16637500000,652215000,0,5936400,82207100,2297380,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-06 16:00:00','上海汇总',16632500000,494848000,0,4933490,71989000,1125850,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-02 16:00:00','上海汇总',16651900000,429224000,0,4572370,69986000,1436300,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-06-01 16:00:00','上海汇总',16686400000,707661000,0,4478360,71607000,2568570,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-31 16:00:00','上海汇总',16497700000,429816000,0,5753120,86503900,1261190,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-30 16:00:00','上海汇总',16438300000,605992000,0,6405090,82236500,2723860,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-29 16:00:00','上海汇总',16213100000,405172000,0,6559800,81285700,2173870,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-26 16:00:00','上海汇总',16191800000,353444000,0,5550780,72613600,3297770,0,0,'2015-05-24 13:32:55',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-25 16:00:00','上海汇总',16341700000,355961000,0,6033410,78006600,2108780,0,0,'2015-05-24 13:32:56',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-24 16:00:00','上海汇总',16283900000,452351000,0,6097600,79638100,2105200,0,0,'2015-05-24 13:32:56',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-23 16:00:00','上海汇总',16214400000,435566000,0,5842580,81266000,2168460,0,0,'2015-05-24 13:32:56',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-22 16:00:00','上海汇总',16098900000,583648000,0,4944670,71963900,1974910,0,0,'2015-05-24 13:32:56',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-19 16:00:00','上海汇总',16152700000,388182000,0,5823960,83657500,1343500,0,0,'2015-05-24 13:32:56',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-18 16:00:00','上海汇总',16077600000,457941000,0,6641540,87460100,2057860,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-17 16:00:00','上海汇总',16108300000,488478000,0,5823070,76216400,1213980,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-16 16:00:00','上海汇总',15929000000,531244000,0,6135780,77901100,3172340,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-15 16:00:00','上海汇总',15719800000,429035000,0,5888150,77105100,1494120,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-12 16:00:00','上海汇总',15708100000,839979000,0,5952900,77440700,2347150,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-11 16:00:00','上海汇总',15577400000,637724000,0,7396420,79021700,2865180,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-10 16:00:00','上海汇总',15401100000,446167000,0,6848450,84911500,2034730,0,0,'2015-05-24 13:32:57',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-09 16:00:00','上海汇总',15396000000,549641000,0,8506550,95339400,4009760,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-08 16:00:00','上海汇总',15232400000,655678000,0,6954170,79239600,3053830,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-05 16:00:00','上海汇总',15122000000,575024000,0,7884400,79037200,3168270,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-04 16:00:00','上海汇总',15244300000,517843000,0,8093040,74631000,4013590,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-03 16:00:00','上海汇总',15343900000,720446000,0,9876670,90450200,6684150,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-05-02 16:00:00','上海汇总',15460700000,576527000,0,8520050,79822400,4452340,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-28 16:00:00','上海汇总',15489400000,660354000,0,7108920,77939700,5409610,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-27 16:00:00','上海汇总',15496200000,816294000,0,6300950,69131800,3717520,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-26 16:00:00','上海汇总',15650200000,700836000,0,6616760,70066300,2820570,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-25 16:00:00','上海汇总',15631600000,607506000,0,9058680,81107800,2767530,0,0,'2015-05-24 13:32:58',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-24 16:00:00','上海汇总',15674600000,831492000,0,10324800,88110800,6829890,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-21 16:00:00','上海汇总',15747600000,793021000,0,6733340,73647300,2122070,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-20 16:00:00','上海汇总',15678900000,891477000,0,6904790,74875000,3852800,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-19 16:00:00','上海汇总',15422500000,974223000,0,5668500,66104500,3303600,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-18 16:00:00','上海汇总',15113900000,833388000,0,6761050,71154500,2117260,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-17 16:00:00','上海汇总',15115600000,1078750000,0,7706570,81851500,3249510,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-14 16:00:00','上海汇总',14964300000,907993000,0,7011860,79993000,4872520,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-13 16:00:00','上海汇总',14893900000,1055290000,0,6117780,77139000,2627950,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-12 16:00:00','上海汇总',14822100000,1279810000,0,5703040,79253500,1932790,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2011-04-11 16:00:00','上海汇总',14507200000,1382760000,0,8994320,89657000,5225240,0,0,'2015-05-24 13:32:59',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-03-02 16:00:00','上海汇总',251983000000,12657100000,0,279936000,1677170000,414288000,0,0,'2015-05-24 13:37:22',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-27 16:00:00','上海汇总',250686000000,11898500000,0,249070000,1590880000,453431000,0,0,'2015-05-24 13:37:22',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-26 16:00:00','上海汇总',250676000000,13592800000,0,269434000,1624210000,576954000,0,0,'2015-05-24 13:37:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-25 16:00:00','上海汇总',250664000000,11539000000,0,221441000,1410090000,413733000,0,0,'2015-05-24 13:37:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-24 16:00:00','上海汇总',249672000000,15187400000,0,215305000,1436850000,409132000,0,0,'2015-05-24 13:37:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-23 16:00:00','上海汇总',250051000000,13189700000,0,216281000,1480010000,420273000,0,0,'2015-05-24 13:37:23',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-20 16:00:00','上海汇总',249702000000,12045800000,0,237720000,1549860000,303761000,0,0,'2015-05-24 13:37:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-19 16:00:00','上海汇总',249861000000,16705900000,0,270188000,1702620000,485701000,0,0,'2015-05-24 13:37:24',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-18 16:00:00','上海汇总',248757000000,16467800000,0,263590000,1710770000,544344000,0,0,'2015-05-24 13:37:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-17 16:00:00','上海汇总',246824000000,16987900000,0,215374000,1524190000,521045000,0,0,'2015-05-24 13:37:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-16 16:00:00','上海汇总',244481000000,16297900000,0,234842000,1609880000,351927000,0,0,'2015-05-24 13:37:25',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-13 16:00:00','上海汇总',242428000000,11422200000,0,228509000,1540650000,288082000,0,0,'2015-05-24 13:37:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-12 16:00:00','上海汇总',242215000000,16575300000,0,254395000,1598740000,484547000,0,0,'2015-05-24 13:37:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-11 16:00:00','上海汇总',239799000000,14427300000,0,239000000,1556250000,444802000,0,0,'2015-05-24 13:37:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-10 16:00:00','上海汇总',237114000000,17047700000,0,252608000,1588790000,529138000,0,0,'2015-05-24 13:37:26',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-09 16:00:00','上海汇总',233894000000,15675900000,0,225887000,1481220000,427008000,0,0,'2015-05-24 13:37:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-02-06 16:00:00','上海汇总',230299000000,10055200000,0,172648000,1303400000,303879000,0,0,'2015-05-24 13:37:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-29 16:00:00','上海汇总',227890000000,7046400000,0,152716000,1158620000,207762000,0,0,'2015-05-24 13:37:27',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-28 16:00:00','上海汇总',230618000000,8042090000,0,185304000,1337870000,208615000,0,0,'2015-05-24 13:37:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-27 16:00:00','上海汇总',231924000000,7893790000,0,187153000,1349330000,255297000,0,0,'2015-05-24 13:37:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-26 16:00:00','上海汇总',232466000000,10823500000,0,183628000,1323030000,288632000,0,0,'2015-05-24 13:37:28',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-23 16:00:00','上海汇总',231775000000,10368800000,0,190789000,1391630000,362572000,0,0,'2015-05-24 13:37:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-22 16:00:00','上海汇总',231946000000,10130500000,0,220620000,1495070000,280726000,0,0,'2015-05-24 13:37:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-21 16:00:00','上海汇总',231326000000,10873200000,0,264444000,1619790000,392041000,0,0,'2015-05-24 13:37:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-20 16:00:00','上海汇总',230778000000,6968030000,0,217439000,1502450000,308110000,0,0,'2015-05-24 13:37:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-19 16:00:00','上海汇总',230792000000,5607300000,0,212692000,1499170000,239283000,0,0,'2015-05-24 13:37:29',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-16 16:00:00','上海汇总',230412000000,6844410000,0,216779000,1526450000,281673000,0,0,'2015-05-24 13:37:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-15 16:00:00','上海汇总',230061000000,7656170000,0,239051000,1627160000,329058000,0,0,'2015-05-24 13:37:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-14 16:00:00','上海汇总',229812000000,7343290000,0,234939000,1597820000,332330000,0,0,'2015-05-24 13:37:30',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-13 16:00:00','上海汇总',229312000000,6685510000,0,241626000,1608590000,362113000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-12 16:00:00','上海汇总',229499000000,6346360000,0,229414000,1568230000,462661000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-09 16:00:00','上海汇总',229737000000,7004170000,0,231296000,1537340000,319225000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-08 16:00:00','上海汇总',230020000000,8847270000,0,238660000,1593770000,413420000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-07 16:00:00','上海汇总',229156000000,7463940000,0,242021000,1636240000,389625000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-06 16:00:00','上海汇总',228638000000,5910250000,0,235286000,1583710000,368646000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-05 16:00:00','上海汇总',228761000000,8036280000,0,215850000,1523790000,329112000,0,0,'2015-05-24 13:37:31',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-02 16:00:00','上海汇总',228595000000,8292730000,0,214561000,1513930000,305042000,0,0,'2015-05-24 13:37:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2014-01-01 16:00:00','上海汇总',228710000000,7318940000,0,224484000,1557080000,266696000,0,0,'2015-05-24 13:37:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-30 16:00:00','上海汇总',227979000000,8322270000,0,281121000,1941700000,395737000,0,0,'2015-05-24 13:37:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-29 16:00:00','上海汇总',227841000000,7661100000,0,223145000,1576940000,352047000,0,0,'2015-05-24 13:37:32',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-26 16:00:00','上海汇总',226225000000,7154180000,0,235543000,1633140000,338202000,0,0,'2015-05-24 13:37:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-25 16:00:00','上海汇总',226080000000,7599430000,0,219640000,1555870000,368616000,0,0,'2015-05-24 13:37:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-24 16:00:00','上海汇总',225649000000,7189390000,0,222520000,1601750000,384987000,0,0,'2015-05-24 13:37:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-23 16:00:00','上海汇总',224886000000,7147730000,0,235600000,1623240000,364602000,0,0,'2015-05-24 13:37:33',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-22 16:00:00','上海汇总',224631000000,6322420000,0,253982000,2056360000,371608000,0,0,'2015-05-24 13:37:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-19 16:00:00','上海汇总',224522000000,8431880000,0,237090000,1991700000,359250000,0,0,'2015-05-24 13:37:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-18 16:00:00','上海汇总',223938000000,7640600000,0,283876000,2222830000,409196000,0,0,'2015-05-24 13:37:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-17 16:00:00','上海汇总',223478000000,6566110000,0,300506000,2331710000,413646000,0,0,'2015-05-24 13:37:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-16 16:00:00','上海汇总',223119000000,7944320000,0,295652000,2289220000,441217000,0,0,'2015-05-24 13:37:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-15 16:00:00','上海汇总',222640000000,10065300000,0,293988000,2295020000,380483000,0,0,'2015-05-24 13:37:34',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-12 16:00:00','上海汇总',222161000000,8306250000,0,301534000,2400710000,301663000,0,0,'2015-05-24 13:37:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-11 16:00:00','上海汇总',221822000000,9104760000,0,310136000,2475660000,344642000,0,0,'2015-05-24 13:37:35',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-10 16:00:00','上海汇总',221251000000,11397000000,0,299369000,2439830000,319961000,0,0,'2015-05-24 13:37:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-09 16:00:00','上海汇总',220431000000,10904200000,0,362807000,2719960000,413848000,0,0,'2015-05-24 13:37:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-08 16:00:00','上海汇总',219870000000,10295800000,0,359393000,2691090000,444644000,0,0,'2015-05-24 13:37:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-05 16:00:00','上海汇总',219019000000,11386100000,0,345786000,2687890000,425521000,0,0,'2015-05-24 13:37:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-04 16:00:00','上海汇总',218993000000,13270400000,0,387724000,2908320000,484021000,0,0,'2015-05-24 13:37:36',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-03 16:00:00','上海汇总',217474000000,16912800000,0,412208000,2920550000,634297000,0,0,'2015-05-24 13:37:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-02 16:00:00','上海汇总',215435000000,11588400000,0,412217000,2875100000,397853000,0,0,'2015-05-24 13:37:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-12-01 16:00:00','上海汇总',214501000000,18825400000,0,409943000,2871420000,583814000,0,0,'2015-05-24 13:37:37',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-28 16:00:00','上海汇总',214339000000,12276800000,0,350778000,2658500000,303103000,0,0,'2015-05-24 13:37:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-27 16:00:00','上海汇总',213683000000,15322300000,0,406973000,2760350000,501833000,0,0,'2015-05-24 13:37:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-26 16:00:00','上海汇总',212898000000,13499400000,0,418183000,2796130000,512623000,0,0,'2015-05-24 13:37:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-25 16:00:00','上海汇总',211631000000,10115500000,0,420455000,2740380000,352605000,0,0,'2015-05-24 13:37:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-24 16:00:00','上海汇总',210514000000,11503000000,0,437176000,2766980000,386004000,0,0,'2015-05-24 13:37:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-21 16:00:00','上海汇总',209875000000,12613800000,0,439028000,2790740000,361300000,0,0,'2015-05-24 13:37:38',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-20 16:00:00','上海汇总',210073000000,14047600000,0,456017000,2836660000,446905000,0,0,'2015-05-24 13:37:41',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-19 16:00:00','上海汇总',209552000000,11941700000,0,476549000,2899120000,301975000,0,0,'2015-05-24 13:37:41',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-18 16:00:00','上海汇总',208019000000,14291500000,0,494243000,2945510000,358410000,0,0,'2015-05-24 13:37:41',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-17 16:00:00','上海汇总',206617000000,17385100000,0,534029000,3031300000,590106000,0,0,'2015-05-24 13:37:41',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-14 16:00:00','上海汇总',204613000000,12875800000,0,416140000,2471550000,475181000,0,0,'2015-05-24 13:37:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-13 16:00:00','上海汇总',204095000000,8086160000,0,413585000,2432880000,391075000,0,0,'2015-05-24 13:37:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-12 16:00:00','上海汇总',203715000000,7971880000,0,389609000,2291870000,298198000,0,0,'2015-05-24 13:37:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-11 16:00:00','上海汇总',204587000000,7050100000,0,413180000,2366910000,334987000,0,0,'2015-05-24 13:37:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-10 16:00:00','上海汇总',205042000000,6425590000,0,373798000,2177370000,307234000,0,0,'2015-05-24 13:37:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-07 16:00:00','上海汇总',205288000000,7553280000,0,344690000,2135590000,333474000,0,0,'2015-05-24 13:37:42',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-06 16:00:00','上海汇总',205764000000,7550980000,0,389870000,2345690000,323706000,0,0,'2015-05-24 13:37:43',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-05 16:00:00','上海汇总',205683000000,9209310000,0,386999000,2429770000,375285000,0,0,'2015-05-24 13:37:43',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-04 16:00:00','上海汇总',205472000000,8215740000,0,399300000,2496010000,368509000,0,0,'2015-05-24 13:37:43',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-11-03 16:00:00','上海汇总',205076000000,7331470000,0,396487000,2477600000,299002000,0,0,'2015-05-24 13:37:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-31 16:00:00','上海汇总',204392000000,7333880000,0,387365000,2426490000,336481000,0,0,'2015-05-24 13:37:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-30 16:00:00','上海汇总',205744000000,9119160000,0,384826000,2410670000,363523000,0,0,'2015-05-24 13:37:44',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-29 16:00:00','上海汇总',205960000000,10483800000,0,391498000,2493790000,477256000,0,0,'2015-05-24 13:37:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-28 16:00:00','上海汇总',205671000000,12384300000,0,351767000,2334650000,518588000,0,0,'2015-05-24 13:37:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-27 16:00:00','上海汇总',207060000000,8194770000,0,344385000,2273930000,325363000,0,0,'2015-05-24 13:37:45',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-24 16:00:00','上海汇总',206295000000,10652200000,0,340504000,2233690000,338160000,0,0,'2015-05-24 13:37:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-23 16:00:00','上海汇总',206258000000,9279890000,0,365061000,2350890000,366287000,0,0,'2015-05-24 13:37:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-22 16:00:00','上海汇总',205583000000,12942600000,0,366303000,2381960000,473154000,0,0,'2015-05-24 13:37:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-21 16:00:00','上海汇总',205600000000,14930100000,0,368794000,2448250000,407945000,0,0,'2015-05-24 13:37:46',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-20 16:00:00','上海汇总',204342000000,13903800000,0,371051000,2472860000,464469000,0,0,'2015-05-24 13:37:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-17 16:00:00','上海汇总',202632000000,9052740000,0,363570000,2392200000,340294000,0,0,'2015-05-24 13:37:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-16 16:00:00','上海汇总',203295000000,11697500000,0,346092000,2324040000,314307000,0,0,'2015-05-24 13:37:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-15 16:00:00','上海汇总',202459000000,14308900000,0,333200000,2307930000,352876000,0,0,'2015-05-24 13:37:47',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-14 16:00:00','上海汇总',202446000000,14754600000,0,366046000,2497710000,344151000,0,0,'2015-05-24 13:37:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-13 16:00:00','上海汇总',200189000000,16401000000,0,367438000,2495990000,393231000,0,0,'2015-05-24 13:37:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-10 16:00:00','上海汇总',197583000000,15382300000,0,359200000,2467330000,441605000,0,0,'2015-05-24 13:37:48',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-09 16:00:00','上海汇总',195963000000,15182600000,0,339649000,2354040000,340166000,0,0,'2015-05-24 13:37:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-08 16:00:00','上海汇总',193433000000,13769700000,0,357359000,2456450000,375572000,0,0,'2015-05-24 13:37:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-10-07 16:00:00','上海汇总',190621000000,15020000000,0,366880000,2507700000,384259000,0,0,'2015-05-24 13:37:49',0);
INSERT INTO `loan_monny_loan_stock_detail_sum` VALUES ('999999','2013-09-29 16:00:00','上海汇总',187008000000,9374950000,0,316976000,2277090000,246562000,0,0,'2015-05-24 13:37:49',0);

--
-- Table structure for table `loan_monny_loan_stock_detail_szse`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_detail_szse`
--


--
-- Table structure for table `loan_monny_loan_stock_sum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`exchange_house_symbol`,`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_monny_loan_stock_sum`
--


--
-- Table structure for table `max_min_ratio_index_estimate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `max_min_ratio_index_estimate`
--


--
-- Table structure for table `period_report_url_content_raw`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period_report_url_content_raw` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '定期报告时间',
  `publish_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '定期报告发布时间(冗余)',
  `is_parsed` int(3) DEFAULT '0' COMMENT '是否已经抓取数据 0:未解析，1:已抓取',
  `raw_content` mediumtext COMMENT '定期报告内容',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code`,`report_period_time`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_report_url_content_raw`
--


--
-- Table structure for table `period_report_url_inf`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period_report_url_inf` (
  `url` varchar(600) DEFAULT NULL,
  `stock_code` varchar(30) DEFAULT NULL,
  `report_name` varchar(150) DEFAULT NULL,
  `period_symbol` double DEFAULT NULL,
  `report_period_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publish_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_crawled` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_report_url_inf`
--


--
-- Table structure for table `pirce_volumn_related_index`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pirce_volumn_related_index`
--


--
-- Table structure for table `pirce_volumn_related_index1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pirce_volumn_related_index1` (
  `id` bigint(20) NOT NULL,
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pirce_volumn_related_index1`
--


--
-- Table structure for table `pirce_volumn_related_index_0529`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pirce_volumn_related_index_0529`
--


--
-- Table structure for table `price_max_min_measure`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_max_min_measure` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `hightest300` float DEFAULT NULL COMMENT '300交易日内最高价',
  `hightest150` float DEFAULT NULL COMMENT '150交易日内最高价',
  `lowest300` float DEFAULT NULL COMMENT '300交易日内最低价',
  `lowest150` float DEFAULT NULL COMMENT '150交易日内最低价',
  `terminal_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '计算日期',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closeprice` float DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`stock_code`,`terminal_day`),
  KEY `NewIndex2` (`terminal_day`),
  KEY `NewIndex3` (`stock_code`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_max_min_measure`
--


--
-- Table structure for table `record`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `changeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `maketTotal` float DEFAULT NULL,
  `circulateTotal` float DEFAULT NULL,
  `volumn` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `hundredShare` float DEFAULT NULL,
  `perGet` float DEFAULT NULL,
  `changeRatio` float DEFAULT NULL,
  `amountPerChange` float DEFAULT NULL,
  PRIMARY KEY (`changeTime`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--


--
-- Table structure for table `shibo_data`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shibo_data` (
  `statis_day` datetime DEFAULT NULL,
  `one_night_rate` double DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shibo_data`
--

INSERT INTO `shibo_data` VALUES ('2011-01-04 11:31:02',2.9308);
INSERT INTO `shibo_data` VALUES ('2011-01-05 11:31:02',2.68);
INSERT INTO `shibo_data` VALUES ('2011-01-06 11:31:02',2.1804);
INSERT INTO `shibo_data` VALUES ('2011-01-07 11:31:02',2.12);
INSERT INTO `shibo_data` VALUES ('2011-01-10 11:31:02',2.01);
INSERT INTO `shibo_data` VALUES ('2011-01-11 11:31:02',1.98);
INSERT INTO `shibo_data` VALUES ('2011-01-12 11:31:02',1.9625);
INSERT INTO `shibo_data` VALUES ('2011-01-13 11:31:02',1.9157);
INSERT INTO `shibo_data` VALUES ('2011-01-14 11:31:02',1.9217);
INSERT INTO `shibo_data` VALUES ('2011-01-17 11:31:02',1.9258);
INSERT INTO `shibo_data` VALUES ('2011-01-18 11:31:02',1.9971);
INSERT INTO `shibo_data` VALUES ('2011-01-19 11:31:02',2.6275);
INSERT INTO `shibo_data` VALUES ('2011-01-20 11:31:02',5.7083);
INSERT INTO `shibo_data` VALUES ('2011-01-21 11:31:02',5.7242);
INSERT INTO `shibo_data` VALUES ('2011-01-24 11:31:02',5.0408);
INSERT INTO `shibo_data` VALUES ('2011-01-25 11:31:02',7.2042);
INSERT INTO `shibo_data` VALUES ('2011-01-26 11:31:02',7.7608);
INSERT INTO `shibo_data` VALUES ('2011-01-27 11:31:02',7.9997);
INSERT INTO `shibo_data` VALUES ('2011-01-28 11:31:02',7.6992);
INSERT INTO `shibo_data` VALUES ('2011-01-30 11:31:02',7.9833);
INSERT INTO `shibo_data` VALUES ('2011-01-31 11:31:02',5.0142);
INSERT INTO `shibo_data` VALUES ('2011-02-01 11:31:02',3.3458);
INSERT INTO `shibo_data` VALUES ('2011-02-09 11:31:02',3.8475);
INSERT INTO `shibo_data` VALUES ('2011-02-10 11:31:02',2.8758);
INSERT INTO `shibo_data` VALUES ('2011-02-11 11:31:02',2.885);
INSERT INTO `shibo_data` VALUES ('2011-02-12 11:31:02',2.595);
INSERT INTO `shibo_data` VALUES ('2011-02-14 11:31:02',2.31);
INSERT INTO `shibo_data` VALUES ('2011-02-15 11:31:02',2.31);
INSERT INTO `shibo_data` VALUES ('2011-02-16 11:31:02',2.3008);
INSERT INTO `shibo_data` VALUES ('2011-02-17 11:31:02',2.1867);
INSERT INTO `shibo_data` VALUES ('2011-02-18 11:31:02',2.1075);
INSERT INTO `shibo_data` VALUES ('2011-02-21 11:31:02',2.1783);
INSERT INTO `shibo_data` VALUES ('2011-02-22 11:31:02',2.0167);
INSERT INTO `shibo_data` VALUES ('2011-02-23 11:31:02',1.995);
INSERT INTO `shibo_data` VALUES ('2011-02-24 11:31:02',2.2892);
INSERT INTO `shibo_data` VALUES ('2011-02-25 11:31:02',2.7028);
INSERT INTO `shibo_data` VALUES ('2011-02-28 11:31:02',2.3783);
INSERT INTO `shibo_data` VALUES ('2011-03-01 11:31:02',2.1875);
INSERT INTO `shibo_data` VALUES ('2011-03-02 11:31:02',2.0183);
INSERT INTO `shibo_data` VALUES ('2011-03-03 11:31:02',1.9419);
INSERT INTO `shibo_data` VALUES ('2011-03-04 11:31:02',1.8933);
INSERT INTO `shibo_data` VALUES ('2011-03-07 11:31:02',1.7858);
INSERT INTO `shibo_data` VALUES ('2011-03-08 11:31:02',1.6917);
INSERT INTO `shibo_data` VALUES ('2011-03-09 11:31:02',1.6875);
INSERT INTO `shibo_data` VALUES ('2011-03-10 11:31:02',1.6792);
INSERT INTO `shibo_data` VALUES ('2011-03-11 11:31:02',1.6858);
INSERT INTO `shibo_data` VALUES ('2011-03-14 11:31:02',1.6875);
INSERT INTO `shibo_data` VALUES ('2011-03-15 11:31:02',1.6804);
INSERT INTO `shibo_data` VALUES ('2011-03-16 11:31:02',1.6783);
INSERT INTO `shibo_data` VALUES ('2011-03-17 11:31:02',1.6733);
INSERT INTO `shibo_data` VALUES ('2011-03-18 11:31:02',1.6692);
INSERT INTO `shibo_data` VALUES ('2011-03-21 11:31:02',1.9242);
INSERT INTO `shibo_data` VALUES ('2011-03-22 11:31:02',1.9158);
INSERT INTO `shibo_data` VALUES ('2011-03-23 11:31:02',1.8992);
INSERT INTO `shibo_data` VALUES ('2011-03-24 11:31:02',1.879);
INSERT INTO `shibo_data` VALUES ('2011-03-25 11:31:02',1.8675);
INSERT INTO `shibo_data` VALUES ('2011-03-28 11:31:02',1.7883);
INSERT INTO `shibo_data` VALUES ('2011-03-29 11:31:02',1.7883);
INSERT INTO `shibo_data` VALUES ('2011-03-30 11:31:02',1.7858);
INSERT INTO `shibo_data` VALUES ('2011-03-31 11:31:02',1.7992);
INSERT INTO `shibo_data` VALUES ('2011-04-01 11:31:02',1.7922);
INSERT INTO `shibo_data` VALUES ('2011-04-02 11:31:02',1.7802);
INSERT INTO `shibo_data` VALUES ('2011-04-06 11:31:02',1.7829);
INSERT INTO `shibo_data` VALUES ('2011-04-07 11:31:02',1.7717);
INSERT INTO `shibo_data` VALUES ('2011-04-08 11:31:02',1.7663);
INSERT INTO `shibo_data` VALUES ('2011-04-11 11:31:02',1.7571);
INSERT INTO `shibo_data` VALUES ('2011-04-12 11:31:02',1.7452);
INSERT INTO `shibo_data` VALUES ('2011-04-13 11:31:02',1.7361);
INSERT INTO `shibo_data` VALUES ('2011-04-14 11:31:02',1.7338);
INSERT INTO `shibo_data` VALUES ('2011-04-15 11:31:02',1.7282);
INSERT INTO `shibo_data` VALUES ('2011-04-18 11:31:02',1.7629);
INSERT INTO `shibo_data` VALUES ('2011-04-19 11:31:02',1.7637);
INSERT INTO `shibo_data` VALUES ('2011-04-20 11:31:02',1.7569);
INSERT INTO `shibo_data` VALUES ('2011-04-21 11:31:02',3.5333);
INSERT INTO `shibo_data` VALUES ('2011-04-22 11:31:02',3.0775);
INSERT INTO `shibo_data` VALUES ('2011-04-25 11:31:02',2.6958);
INSERT INTO `shibo_data` VALUES ('2011-04-26 11:31:02',2.6792);
INSERT INTO `shibo_data` VALUES ('2011-04-27 11:31:02',2.0233);
INSERT INTO `shibo_data` VALUES ('2011-04-28 11:31:02',2.0242);
INSERT INTO `shibo_data` VALUES ('2011-04-29 11:31:02',2.4992);
INSERT INTO `shibo_data` VALUES ('2011-05-03 11:31:02',2.5525);
INSERT INTO `shibo_data` VALUES ('2011-05-04 11:31:02',2.5167);
INSERT INTO `shibo_data` VALUES ('2011-05-05 11:31:02',1.9942);
INSERT INTO `shibo_data` VALUES ('2011-05-06 11:31:02',1.9938);
INSERT INTO `shibo_data` VALUES ('2011-05-09 11:31:02',2.12);
INSERT INTO `shibo_data` VALUES ('2011-05-10 11:31:02',2.11);
INSERT INTO `shibo_data` VALUES ('2011-05-11 11:31:02',2.1006);
INSERT INTO `shibo_data` VALUES ('2011-05-12 11:31:02',2.0858);
INSERT INTO `shibo_data` VALUES ('2011-05-13 11:31:02',2.0892);
INSERT INTO `shibo_data` VALUES ('2011-05-16 11:31:02',2.0908);
INSERT INTO `shibo_data` VALUES ('2011-05-17 11:31:02',2.0992);
INSERT INTO `shibo_data` VALUES ('2011-05-18 11:31:02',3.1492);
INSERT INTO `shibo_data` VALUES ('2011-05-19 11:31:02',3.5467);
INSERT INTO `shibo_data` VALUES ('2011-05-20 11:31:02',4.005);
INSERT INTO `shibo_data` VALUES ('2011-05-23 11:31:02',4.0008);
INSERT INTO `shibo_data` VALUES ('2011-05-24 11:31:02',4.4767);
INSERT INTO `shibo_data` VALUES ('2011-05-25 11:31:02',4.9992);
INSERT INTO `shibo_data` VALUES ('2011-05-26 11:31:02',4.8533);
INSERT INTO `shibo_data` VALUES ('2011-05-27 11:31:02',2.8362);
INSERT INTO `shibo_data` VALUES ('2011-05-30 11:31:02',2.55);
INSERT INTO `shibo_data` VALUES ('2011-05-31 11:31:02',3.8433);
INSERT INTO `shibo_data` VALUES ('2011-06-01 11:31:02',3.1454);
INSERT INTO `shibo_data` VALUES ('2011-06-02 11:31:02',2.8436);
INSERT INTO `shibo_data` VALUES ('2011-06-03 11:31:02',2.505);
INSERT INTO `shibo_data` VALUES ('2011-06-07 11:31:02',2.9967);
INSERT INTO `shibo_data` VALUES ('2011-06-08 11:31:02',3.6663);
INSERT INTO `shibo_data` VALUES ('2011-06-09 11:31:02',3.7858);
INSERT INTO `shibo_data` VALUES ('2011-06-10 11:31:02',3.8167);
INSERT INTO `shibo_data` VALUES ('2011-06-13 11:31:02',3.8025);
INSERT INTO `shibo_data` VALUES ('2011-06-14 11:31:02',3.4842);
INSERT INTO `shibo_data` VALUES ('2011-06-15 11:31:02',3.9878);
INSERT INTO `shibo_data` VALUES ('2011-06-16 11:31:02',3.9957);
INSERT INTO `shibo_data` VALUES ('2011-06-17 11:31:02',3.985);
INSERT INTO `shibo_data` VALUES ('2011-06-20 11:31:02',6.955);
INSERT INTO `shibo_data` VALUES ('2011-06-21 11:31:02',7.1375);
INSERT INTO `shibo_data` VALUES ('2011-06-22 11:31:02',7.47);
INSERT INTO `shibo_data` VALUES ('2011-06-23 11:31:02',7.3325);
INSERT INTO `shibo_data` VALUES ('2011-06-24 11:31:02',7.0502);
INSERT INTO `shibo_data` VALUES ('2011-06-27 11:31:02',6.1117);
INSERT INTO `shibo_data` VALUES ('2011-06-28 11:31:02',5.0554);
INSERT INTO `shibo_data` VALUES ('2011-06-29 11:31:02',5.035);
INSERT INTO `shibo_data` VALUES ('2011-06-30 11:31:02',4.9983);
INSERT INTO `shibo_data` VALUES ('2011-07-01 11:31:02',4.7297);
INSERT INTO `shibo_data` VALUES ('2011-07-04 11:31:02',2.8505);
INSERT INTO `shibo_data` VALUES ('2011-07-05 11:31:02',5.8392);
INSERT INTO `shibo_data` VALUES ('2011-07-06 11:31:02',5.5817);
INSERT INTO `shibo_data` VALUES ('2011-07-07 11:31:02',4.8292);
INSERT INTO `shibo_data` VALUES ('2011-07-08 11:31:02',4.9983);
INSERT INTO `shibo_data` VALUES ('2011-07-11 11:31:02',4.015);
INSERT INTO `shibo_data` VALUES ('2011-07-12 11:31:02',2.4325);
INSERT INTO `shibo_data` VALUES ('2011-07-13 11:31:02',3.4525);
INSERT INTO `shibo_data` VALUES ('2011-07-14 11:31:02',4.2217);
INSERT INTO `shibo_data` VALUES ('2011-07-15 11:31:02',3.8683);
INSERT INTO `shibo_data` VALUES ('2011-07-18 11:31:02',3.6367);
INSERT INTO `shibo_data` VALUES ('2011-07-19 11:31:02',4.43);
INSERT INTO `shibo_data` VALUES ('2011-07-20 11:31:02',4.7383);
INSERT INTO `shibo_data` VALUES ('2011-07-21 11:31:02',5.4208);
INSERT INTO `shibo_data` VALUES ('2011-07-22 11:31:02',5.2967);
INSERT INTO `shibo_data` VALUES ('2011-07-25 11:31:02',5.1408);
INSERT INTO `shibo_data` VALUES ('2011-07-26 11:31:02',4.615);
INSERT INTO `shibo_data` VALUES ('2011-07-27 11:31:02',4.1483);
INSERT INTO `shibo_data` VALUES ('2011-07-28 11:31:02',3.6367);
INSERT INTO `shibo_data` VALUES ('2011-07-29 11:31:02',3.4817);
INSERT INTO `shibo_data` VALUES ('2011-08-01 11:31:02',3.0263);
INSERT INTO `shibo_data` VALUES ('2011-08-02 11:31:02',2.8121);
INSERT INTO `shibo_data` VALUES ('2011-08-03 11:31:02',2.8133);
INSERT INTO `shibo_data` VALUES ('2011-08-04 11:31:02',2.8442);
INSERT INTO `shibo_data` VALUES ('2011-08-05 11:31:02',2.8175);
INSERT INTO `shibo_data` VALUES ('2011-08-08 11:31:02',2.7286);
INSERT INTO `shibo_data` VALUES ('2011-08-09 11:31:02',2.7368);
INSERT INTO `shibo_data` VALUES ('2011-08-10 11:31:02',3.0425);
INSERT INTO `shibo_data` VALUES ('2011-08-11 11:31:02',2.7438);
INSERT INTO `shibo_data` VALUES ('2011-08-12 11:31:02',2.7942);
INSERT INTO `shibo_data` VALUES ('2011-08-15 11:31:02',2.8492);
INSERT INTO `shibo_data` VALUES ('2011-08-16 11:31:02',2.9871);
INSERT INTO `shibo_data` VALUES ('2011-08-17 11:31:02',2.9992);
INSERT INTO `shibo_data` VALUES ('2011-08-18 11:31:02',3.4425);
INSERT INTO `shibo_data` VALUES ('2011-08-19 11:31:02',3.6892);
INSERT INTO `shibo_data` VALUES ('2011-08-22 11:31:02',4.03);
INSERT INTO `shibo_data` VALUES ('2011-08-23 11:31:02',4.2306);
INSERT INTO `shibo_data` VALUES ('2011-08-24 11:31:02',3.7683);
INSERT INTO `shibo_data` VALUES ('2011-08-25 11:31:02',3.3377);
INSERT INTO `shibo_data` VALUES ('2011-08-26 11:31:02',3.2235);
INSERT INTO `shibo_data` VALUES ('2011-08-29 11:31:02',3.165);
INSERT INTO `shibo_data` VALUES ('2011-08-30 11:31:02',3.4308);
INSERT INTO `shibo_data` VALUES ('2011-08-31 11:31:02',3.3538);
INSERT INTO `shibo_data` VALUES ('2011-09-01 11:31:02',3.4192);
INSERT INTO `shibo_data` VALUES ('2011-09-02 11:31:02',3.4808);
INSERT INTO `shibo_data` VALUES ('2011-09-05 11:31:02',3.8892);
INSERT INTO `shibo_data` VALUES ('2011-09-06 11:31:02',2.9975);
INSERT INTO `shibo_data` VALUES ('2011-09-07 11:31:02',3.0546);
INSERT INTO `shibo_data` VALUES ('2011-09-08 11:31:02',3.1058);
INSERT INTO `shibo_data` VALUES ('2011-09-09 11:31:02',3.0408);
INSERT INTO `shibo_data` VALUES ('2011-09-13 11:31:02',2.9525);
INSERT INTO `shibo_data` VALUES ('2011-09-14 11:31:02',2.9575);
INSERT INTO `shibo_data` VALUES ('2011-09-15 11:31:02',3.1933);
INSERT INTO `shibo_data` VALUES ('2011-09-16 11:31:02',3.19);
INSERT INTO `shibo_data` VALUES ('2011-09-19 11:31:02',3.4777);
INSERT INTO `shibo_data` VALUES ('2011-09-20 11:31:02',3.7975);
INSERT INTO `shibo_data` VALUES ('2011-09-21 11:31:02',3.7346);
INSERT INTO `shibo_data` VALUES ('2011-09-22 11:31:02',3.5042);
INSERT INTO `shibo_data` VALUES ('2011-09-23 11:31:02',3.2942);
INSERT INTO `shibo_data` VALUES ('2011-09-26 11:31:02',3.0958);
INSERT INTO `shibo_data` VALUES ('2011-09-27 11:31:02',4.055);
INSERT INTO `shibo_data` VALUES ('2011-09-28 11:31:02',3.9917);
INSERT INTO `shibo_data` VALUES ('2011-09-29 11:31:02',3.8721);
INSERT INTO `shibo_data` VALUES ('2011-09-30 11:31:02',4.8925);
INSERT INTO `shibo_data` VALUES ('2011-10-08 11:31:02',4.8604);
INSERT INTO `shibo_data` VALUES ('2011-10-09 11:31:02',4.5642);
INSERT INTO `shibo_data` VALUES ('2011-10-10 11:31:02',3.8192);
INSERT INTO `shibo_data` VALUES ('2011-10-11 11:31:02',3.4417);
INSERT INTO `shibo_data` VALUES ('2011-10-12 11:31:02',2.995);
INSERT INTO `shibo_data` VALUES ('2011-10-13 11:31:02',2.9642);
INSERT INTO `shibo_data` VALUES ('2011-10-14 11:31:02',2.88);
INSERT INTO `shibo_data` VALUES ('2011-10-17 11:31:02',2.8075);
INSERT INTO `shibo_data` VALUES ('2011-10-18 11:31:02',2.8308);
INSERT INTO `shibo_data` VALUES ('2011-10-19 11:31:02',2.8963);
INSERT INTO `shibo_data` VALUES ('2011-10-20 11:31:02',3.01);
INSERT INTO `shibo_data` VALUES ('2011-10-21 11:31:02',3.0738);
INSERT INTO `shibo_data` VALUES ('2011-10-24 11:31:02',3.065);
INSERT INTO `shibo_data` VALUES ('2011-10-25 11:31:02',3.5983);
INSERT INTO `shibo_data` VALUES ('2011-10-26 11:31:02',3.9983);
INSERT INTO `shibo_data` VALUES ('2011-10-27 11:31:02',4.1875);
INSERT INTO `shibo_data` VALUES ('2011-10-28 11:31:02',4.8983);
INSERT INTO `shibo_data` VALUES ('2011-10-31 11:31:02',4.695);
INSERT INTO `shibo_data` VALUES ('2011-11-01 11:31:02',3.3025);
INSERT INTO `shibo_data` VALUES ('2011-11-02 11:31:02',3.0964);
INSERT INTO `shibo_data` VALUES ('2011-11-03 11:31:02',3.09);
INSERT INTO `shibo_data` VALUES ('2011-11-04 11:31:02',3.09);
INSERT INTO `shibo_data` VALUES ('2011-11-07 11:31:02',3.0933);
INSERT INTO `shibo_data` VALUES ('2011-11-08 11:31:02',3.1117);
INSERT INTO `shibo_data` VALUES ('2011-11-09 11:31:02',3.1167);
INSERT INTO `shibo_data` VALUES ('2011-11-10 11:31:02',3.1254);
INSERT INTO `shibo_data` VALUES ('2011-11-11 11:31:02',2.8233);
INSERT INTO `shibo_data` VALUES ('2011-11-14 11:31:02',2.8988);
INSERT INTO `shibo_data` VALUES ('2011-11-15 11:31:02',2.9125);
INSERT INTO `shibo_data` VALUES ('2011-11-16 11:31:02',2.925);
INSERT INTO `shibo_data` VALUES ('2011-11-17 11:31:02',3.2292);
INSERT INTO `shibo_data` VALUES ('2011-11-18 11:31:02',3.4225);
INSERT INTO `shibo_data` VALUES ('2011-11-21 11:31:02',3.6033);
INSERT INTO `shibo_data` VALUES ('2011-11-22 11:31:02',3.8342);
INSERT INTO `shibo_data` VALUES ('2011-11-23 11:31:02',3.9567);
INSERT INTO `shibo_data` VALUES ('2011-11-24 11:31:02',3.9467);
INSERT INTO `shibo_data` VALUES ('2011-11-25 11:31:02',4.0192);
INSERT INTO `shibo_data` VALUES ('2011-11-28 11:31:02',3.7075);
INSERT INTO `shibo_data` VALUES ('2011-11-29 11:31:02',3.4086);
INSERT INTO `shibo_data` VALUES ('2011-11-30 11:31:02',3.425);
INSERT INTO `shibo_data` VALUES ('2011-12-01 11:31:02',2.9775);
INSERT INTO `shibo_data` VALUES ('2011-12-02 11:31:02',2.9723);
INSERT INTO `shibo_data` VALUES ('2011-12-05 11:31:02',2.8567);
INSERT INTO `shibo_data` VALUES ('2011-12-06 11:31:02',2.8504);
INSERT INTO `shibo_data` VALUES ('2011-12-07 11:31:02',2.8696);
INSERT INTO `shibo_data` VALUES ('2011-12-08 11:31:02',2.8596);
INSERT INTO `shibo_data` VALUES ('2011-12-09 11:31:02',2.89);
INSERT INTO `shibo_data` VALUES ('2011-12-12 11:31:02',2.9475);
INSERT INTO `shibo_data` VALUES ('2011-12-13 11:31:02',2.9513);
INSERT INTO `shibo_data` VALUES ('2011-12-14 11:31:02',2.9158);
INSERT INTO `shibo_data` VALUES ('2011-12-15 11:31:02',2.9483);
INSERT INTO `shibo_data` VALUES ('2011-12-16 11:31:02',2.8758);
INSERT INTO `shibo_data` VALUES ('2011-12-19 11:31:02',2.8763);
INSERT INTO `shibo_data` VALUES ('2011-12-20 11:31:02',2.8775);
INSERT INTO `shibo_data` VALUES ('2011-12-21 11:31:02',2.8983);
INSERT INTO `shibo_data` VALUES ('2011-12-22 11:31:02',2.935);
INSERT INTO `shibo_data` VALUES ('2011-12-23 11:31:02',2.9392);
INSERT INTO `shibo_data` VALUES ('2011-12-26 11:31:02',2.9992);
INSERT INTO `shibo_data` VALUES ('2011-12-27 11:31:02',3.0775);
INSERT INTO `shibo_data` VALUES ('2011-12-28 11:31:02',3.4202);
INSERT INTO `shibo_data` VALUES ('2011-12-29 11:31:02',3.4175);
INSERT INTO `shibo_data` VALUES ('2011-12-30 11:31:02',3.4067);
INSERT INTO `shibo_data` VALUES ('2011-12-31 11:31:02',4.9992);
INSERT INTO `shibo_data` VALUES ('2012-01-04 11:30:23',3.4975);
INSERT INTO `shibo_data` VALUES ('2012-01-05 11:30:23',4);
INSERT INTO `shibo_data` VALUES ('2012-01-06 11:30:23',3.9979);
INSERT INTO `shibo_data` VALUES ('2012-01-09 11:30:23',4);
INSERT INTO `shibo_data` VALUES ('2012-01-10 11:30:23',3.6933);
INSERT INTO `shibo_data` VALUES ('2012-01-11 11:30:23',3.24);
INSERT INTO `shibo_data` VALUES ('2012-01-12 11:30:23',3.475);
INSERT INTO `shibo_data` VALUES ('2012-01-13 11:30:23',4.6363);
INSERT INTO `shibo_data` VALUES ('2012-01-16 11:30:23',5.4725);
INSERT INTO `shibo_data` VALUES ('2012-01-17 11:30:23',7.3667);
INSERT INTO `shibo_data` VALUES ('2012-01-18 11:30:23',8.1667);
INSERT INTO `shibo_data` VALUES ('2012-01-19 11:30:23',6.4975);
INSERT INTO `shibo_data` VALUES ('2012-01-20 11:30:23',3.4775);
INSERT INTO `shibo_data` VALUES ('2012-01-21 11:30:23',3.4692);
INSERT INTO `shibo_data` VALUES ('2012-01-29 11:30:23',3.2992);
INSERT INTO `shibo_data` VALUES ('2012-01-30 11:30:23',2.8578);
INSERT INTO `shibo_data` VALUES ('2012-01-31 11:30:23',2.9675);
INSERT INTO `shibo_data` VALUES ('2012-02-01 11:30:23',2.965);
INSERT INTO `shibo_data` VALUES ('2012-02-02 11:30:23',2.9675);
INSERT INTO `shibo_data` VALUES ('2012-02-03 11:30:23',2.9242);
INSERT INTO `shibo_data` VALUES ('2012-02-06 11:30:23',2.775);
INSERT INTO `shibo_data` VALUES ('2012-02-07 11:30:23',2.7767);
INSERT INTO `shibo_data` VALUES ('2012-02-08 11:30:23',2.7667);
INSERT INTO `shibo_data` VALUES ('2012-02-09 11:30:23',2.6567);
INSERT INTO `shibo_data` VALUES ('2012-02-10 11:30:23',2.6867);
INSERT INTO `shibo_data` VALUES ('2012-02-13 11:30:23',2.6883);
INSERT INTO `shibo_data` VALUES ('2012-02-14 11:30:23',2.9973);
INSERT INTO `shibo_data` VALUES ('2012-02-15 11:30:23',3.0075);
INSERT INTO `shibo_data` VALUES ('2012-02-16 11:30:23',3.5025);
INSERT INTO `shibo_data` VALUES ('2012-02-17 11:30:23',4.4958);
INSERT INTO `shibo_data` VALUES ('2012-02-20 11:30:23',4.7792);
INSERT INTO `shibo_data` VALUES ('2012-02-21 11:30:23',4.8842);
INSERT INTO `shibo_data` VALUES ('2012-02-22 11:30:23',5.0167);
INSERT INTO `shibo_data` VALUES ('2012-02-23 11:30:23',5.2192);
INSERT INTO `shibo_data` VALUES ('2012-02-24 11:30:23',4.6433);
INSERT INTO `shibo_data` VALUES ('2012-02-27 11:30:23',3.0131);
INSERT INTO `shibo_data` VALUES ('2012-02-28 11:30:23',2.6817);
INSERT INTO `shibo_data` VALUES ('2012-02-29 11:30:23',2.5933);
INSERT INTO `shibo_data` VALUES ('2012-03-01 11:30:23',2.5067);
INSERT INTO `shibo_data` VALUES ('2012-03-02 11:30:23',2.5292);
INSERT INTO `shibo_data` VALUES ('2012-03-05 11:30:23',2.4465);
INSERT INTO `shibo_data` VALUES ('2012-03-06 11:30:23',2.3154);
INSERT INTO `shibo_data` VALUES ('2012-03-07 11:30:23',2.3154);
INSERT INTO `shibo_data` VALUES ('2012-03-08 11:30:23',2.3146);
INSERT INTO `shibo_data` VALUES ('2012-03-09 11:30:23',2.3088);
INSERT INTO `shibo_data` VALUES ('2012-03-12 11:30:23',2.3058);
INSERT INTO `shibo_data` VALUES ('2012-03-13 11:30:23',2.3175);
INSERT INTO `shibo_data` VALUES ('2012-03-14 11:30:23',2.3139);
INSERT INTO `shibo_data` VALUES ('2012-03-15 11:30:23',2.3477);
INSERT INTO `shibo_data` VALUES ('2012-03-16 11:30:23',2.3783);
INSERT INTO `shibo_data` VALUES ('2012-03-19 11:30:23',2.395);
INSERT INTO `shibo_data` VALUES ('2012-03-20 11:30:23',2.4992);
INSERT INTO `shibo_data` VALUES ('2012-03-21 11:30:23',2.5478);
INSERT INTO `shibo_data` VALUES ('2012-03-22 11:30:23',2.6983);
INSERT INTO `shibo_data` VALUES ('2012-03-23 11:30:23',2.7125);
INSERT INTO `shibo_data` VALUES ('2012-03-26 11:30:23',2.6842);
INSERT INTO `shibo_data` VALUES ('2012-03-27 11:30:23',2.5483);
INSERT INTO `shibo_data` VALUES ('2012-03-28 11:30:23',2.635);
INSERT INTO `shibo_data` VALUES ('2012-03-29 11:30:23',2.6008);
INSERT INTO `shibo_data` VALUES ('2012-03-30 11:30:23',2.6767);
INSERT INTO `shibo_data` VALUES ('2012-03-31 11:30:23',2.6733);
INSERT INTO `shibo_data` VALUES ('2012-04-01 11:30:23',2.6392);
INSERT INTO `shibo_data` VALUES ('2012-04-05 11:30:23',3.0033);
INSERT INTO `shibo_data` VALUES ('2012-04-06 11:30:23',3.2288);
INSERT INTO `shibo_data` VALUES ('2012-04-09 11:30:23',2.9125);
INSERT INTO `shibo_data` VALUES ('2012-04-10 11:30:23',2.9946);
INSERT INTO `shibo_data` VALUES ('2012-04-11 11:30:23',2.9975);
INSERT INTO `shibo_data` VALUES ('2012-04-12 11:30:23',3.0475);
INSERT INTO `shibo_data` VALUES ('2012-04-13 11:30:23',3.4958);
INSERT INTO `shibo_data` VALUES ('2012-04-16 11:30:23',3.29);
INSERT INTO `shibo_data` VALUES ('2012-04-17 11:30:23',3.0004);
INSERT INTO `shibo_data` VALUES ('2012-04-18 11:30:23',2.9983);
INSERT INTO `shibo_data` VALUES ('2012-04-19 11:30:23',3.1992);
INSERT INTO `shibo_data` VALUES ('2012-04-20 11:30:23',3.4);
INSERT INTO `shibo_data` VALUES ('2012-04-23 11:30:23',3.3267);
INSERT INTO `shibo_data` VALUES ('2012-04-24 11:30:23',3.2163);
INSERT INTO `shibo_data` VALUES ('2012-04-25 11:30:23',3.4658);
INSERT INTO `shibo_data` VALUES ('2012-04-26 11:30:23',3.4358);
INSERT INTO `shibo_data` VALUES ('2012-04-27 11:30:23',3.285);
INSERT INTO `shibo_data` VALUES ('2012-04-28 11:30:23',2.7967);
INSERT INTO `shibo_data` VALUES ('2012-05-02 11:30:23',2.8367);
INSERT INTO `shibo_data` VALUES ('2012-05-03 11:30:23',2.955);
INSERT INTO `shibo_data` VALUES ('2012-05-04 11:30:23',2.9575);
INSERT INTO `shibo_data` VALUES ('2012-05-07 11:30:23',2.9625);
INSERT INTO `shibo_data` VALUES ('2012-05-08 11:30:23',2.4683);
INSERT INTO `shibo_data` VALUES ('2012-05-09 11:30:23',2.395);
INSERT INTO `shibo_data` VALUES ('2012-05-10 11:30:23',2.3667);
INSERT INTO `shibo_data` VALUES ('2012-05-11 11:30:23',2.275);
INSERT INTO `shibo_data` VALUES ('2012-05-14 11:30:23',1.9221);
INSERT INTO `shibo_data` VALUES ('2012-05-15 11:30:23',1.8725);
INSERT INTO `shibo_data` VALUES ('2012-05-16 11:30:23',1.8275);
INSERT INTO `shibo_data` VALUES ('2012-05-17 11:30:23',1.8114);
INSERT INTO `shibo_data` VALUES ('2012-05-18 11:30:23',1.8275);
INSERT INTO `shibo_data` VALUES ('2012-05-21 11:30:23',1.8142);
INSERT INTO `shibo_data` VALUES ('2012-05-22 11:30:23',1.8208);
INSERT INTO `shibo_data` VALUES ('2012-05-23 11:30:23',1.845);
INSERT INTO `shibo_data` VALUES ('2012-05-24 11:30:23',1.8833);
INSERT INTO `shibo_data` VALUES ('2012-05-25 11:30:23',1.9017);
INSERT INTO `shibo_data` VALUES ('2012-05-28 11:30:23',1.9117);
INSERT INTO `shibo_data` VALUES ('2012-05-29 11:30:23',1.9042);
INSERT INTO `shibo_data` VALUES ('2012-05-30 11:30:23',1.9058);
INSERT INTO `shibo_data` VALUES ('2012-05-31 11:30:23',1.8788);
INSERT INTO `shibo_data` VALUES ('2012-06-01 11:30:23',1.895);
INSERT INTO `shibo_data` VALUES ('2012-06-04 11:30:23',1.9183);
INSERT INTO `shibo_data` VALUES ('2012-06-05 11:30:23',1.9983);
INSERT INTO `shibo_data` VALUES ('2012-06-06 11:30:23',2.2017);
INSERT INTO `shibo_data` VALUES ('2012-06-07 11:30:23',2.4008);
INSERT INTO `shibo_data` VALUES ('2012-06-08 11:30:23',2.4033);
INSERT INTO `shibo_data` VALUES ('2012-06-11 11:30:23',2.3196);
INSERT INTO `shibo_data` VALUES ('2012-06-12 11:30:23',2.3867);
INSERT INTO `shibo_data` VALUES ('2012-06-13 11:30:23',2.4938);
INSERT INTO `shibo_data` VALUES ('2012-06-14 11:30:23',2.5483);
INSERT INTO `shibo_data` VALUES ('2012-06-15 11:30:23',2.5592);
INSERT INTO `shibo_data` VALUES ('2012-06-18 11:30:23',2.5388);
INSERT INTO `shibo_data` VALUES ('2012-06-19 11:30:23',2.6908);
INSERT INTO `shibo_data` VALUES ('2012-06-20 11:30:23',3.2775);
INSERT INTO `shibo_data` VALUES ('2012-06-21 11:30:23',3.59);
INSERT INTO `shibo_data` VALUES ('2012-06-25 11:30:23',3.6508);
INSERT INTO `shibo_data` VALUES ('2012-06-26 11:30:23',3.8775);
INSERT INTO `shibo_data` VALUES ('2012-06-27 11:30:23',3.4967);
INSERT INTO `shibo_data` VALUES ('2012-06-28 11:30:23',3.5483);
INSERT INTO `shibo_data` VALUES ('2012-06-29 11:30:23',3.6008);
INSERT INTO `shibo_data` VALUES ('2012-07-02 11:30:23',3.6092);
INSERT INTO `shibo_data` VALUES ('2012-07-03 11:30:23',3.2475);
INSERT INTO `shibo_data` VALUES ('2012-07-04 11:30:23',2.6208);
INSERT INTO `shibo_data` VALUES ('2012-07-05 11:30:23',2.6025);
INSERT INTO `shibo_data` VALUES ('2012-07-06 11:30:23',2.3501);
INSERT INTO `shibo_data` VALUES ('2012-07-09 11:30:23',2.3437);
INSERT INTO `shibo_data` VALUES ('2012-07-10 11:30:23',2.3277);
INSERT INTO `shibo_data` VALUES ('2012-07-11 11:30:23',2.3467);
INSERT INTO `shibo_data` VALUES ('2012-07-12 11:30:23',2.389);
INSERT INTO `shibo_data` VALUES ('2012-07-13 11:30:23',2.4792);
INSERT INTO `shibo_data` VALUES ('2012-07-16 11:30:23',2.4573);
INSERT INTO `shibo_data` VALUES ('2012-07-17 11:30:23',2.6325);
INSERT INTO `shibo_data` VALUES ('2012-07-18 11:30:23',2.9342);
INSERT INTO `shibo_data` VALUES ('2012-07-19 11:30:23',2.9858);
INSERT INTO `shibo_data` VALUES ('2012-07-20 11:30:23',3.1271);
INSERT INTO `shibo_data` VALUES ('2012-07-23 11:30:23',3.3275);
INSERT INTO `shibo_data` VALUES ('2012-07-24 11:30:23',2.9517);
INSERT INTO `shibo_data` VALUES ('2012-07-25 11:30:23',2.6813);
INSERT INTO `shibo_data` VALUES ('2012-07-26 11:30:23',2.66);
INSERT INTO `shibo_data` VALUES ('2012-07-27 11:30:23',2.6);
INSERT INTO `shibo_data` VALUES ('2012-07-30 11:30:23',2.5283);
INSERT INTO `shibo_data` VALUES ('2012-07-31 11:30:23',2.5983);
INSERT INTO `shibo_data` VALUES ('2012-08-01 11:30:23',2.6192);
INSERT INTO `shibo_data` VALUES ('2012-08-02 11:30:23',2.5375);
INSERT INTO `shibo_data` VALUES ('2012-08-03 11:30:23',2.5033);
INSERT INTO `shibo_data` VALUES ('2012-08-06 11:30:23',2.4783);
INSERT INTO `shibo_data` VALUES ('2012-08-07 11:30:23',2.5344);
INSERT INTO `shibo_data` VALUES ('2012-08-08 11:30:23',2.5483);
INSERT INTO `shibo_data` VALUES ('2012-08-09 11:30:23',2.5992);
INSERT INTO `shibo_data` VALUES ('2012-08-10 11:30:23',2.6592);
INSERT INTO `shibo_data` VALUES ('2012-08-13 11:30:23',2.4342);
INSERT INTO `shibo_data` VALUES ('2012-08-14 11:30:23',2.675);
INSERT INTO `shibo_data` VALUES ('2012-08-15 11:30:23',3.1117);
INSERT INTO `shibo_data` VALUES ('2012-08-16 11:30:23',3.0942);
INSERT INTO `shibo_data` VALUES ('2012-08-17 11:30:23',3.175);
INSERT INTO `shibo_data` VALUES ('2012-08-20 11:30:23',3.3525);
INSERT INTO `shibo_data` VALUES ('2012-08-21 11:30:23',3.49);
INSERT INTO `shibo_data` VALUES ('2012-08-22 11:30:23',3.08);
INSERT INTO `shibo_data` VALUES ('2012-08-23 11:30:23',3.055);
INSERT INTO `shibo_data` VALUES ('2012-08-24 11:30:23',2.6983);
INSERT INTO `shibo_data` VALUES ('2012-08-27 11:30:23',2.6975);
INSERT INTO `shibo_data` VALUES ('2012-08-28 11:30:23',2.7001);
INSERT INTO `shibo_data` VALUES ('2012-08-29 11:30:23',2.5992);
INSERT INTO `shibo_data` VALUES ('2012-08-30 11:30:23',2.3838);
INSERT INTO `shibo_data` VALUES ('2012-08-31 11:30:23',2.0657);
INSERT INTO `shibo_data` VALUES ('2012-09-03 11:30:23',2.05);
INSERT INTO `shibo_data` VALUES ('2012-09-04 11:30:23',2.0075);
INSERT INTO `shibo_data` VALUES ('2012-09-05 11:30:23',2.1375);
INSERT INTO `shibo_data` VALUES ('2012-09-06 11:30:23',2.1237);
INSERT INTO `shibo_data` VALUES ('2012-09-07 11:30:23',2.1253);
INSERT INTO `shibo_data` VALUES ('2012-09-10 11:30:23',2.2992);
INSERT INTO `shibo_data` VALUES ('2012-09-11 11:30:23',2.4992);
INSERT INTO `shibo_data` VALUES ('2012-09-12 11:30:23',2.5983);
INSERT INTO `shibo_data` VALUES ('2012-09-13 11:30:23',2.6833);
INSERT INTO `shibo_data` VALUES ('2012-09-14 11:30:23',2.6732);
INSERT INTO `shibo_data` VALUES ('2012-09-17 11:30:23',2.715);
INSERT INTO `shibo_data` VALUES ('2012-09-18 11:30:23',2.9217);
INSERT INTO `shibo_data` VALUES ('2012-09-19 11:30:23',3.5008);
INSERT INTO `shibo_data` VALUES ('2012-09-20 11:30:23',3.9992);
INSERT INTO `shibo_data` VALUES ('2012-09-21 11:30:23',4.2892);
INSERT INTO `shibo_data` VALUES ('2012-09-24 11:30:23',4.3892);
INSERT INTO `shibo_data` VALUES ('2012-09-25 11:30:23',4.5);
INSERT INTO `shibo_data` VALUES ('2012-09-26 11:30:23',2.9975);
INSERT INTO `shibo_data` VALUES ('2012-09-27 11:30:23',2.9992);
INSERT INTO `shibo_data` VALUES ('2012-09-28 11:30:23',2.4758);
INSERT INTO `shibo_data` VALUES ('2012-09-29 11:30:23',3.28);
INSERT INTO `shibo_data` VALUES ('2012-10-08 11:30:23',3.7192);
INSERT INTO `shibo_data` VALUES ('2012-10-09 11:30:23',3.3635);
INSERT INTO `shibo_data` VALUES ('2012-10-10 11:30:23',2.65);
INSERT INTO `shibo_data` VALUES ('2012-10-11 11:30:23',2.4475);
INSERT INTO `shibo_data` VALUES ('2012-10-12 11:30:23',2.4228);
INSERT INTO `shibo_data` VALUES ('2012-10-15 11:30:23',2.0408);
INSERT INTO `shibo_data` VALUES ('2012-10-16 11:30:23',2.2058);
INSERT INTO `shibo_data` VALUES ('2012-10-17 11:30:23',2.2192);
INSERT INTO `shibo_data` VALUES ('2012-10-18 11:30:23',2.1943);
INSERT INTO `shibo_data` VALUES ('2012-10-19 11:30:23',2.1958);
INSERT INTO `shibo_data` VALUES ('2012-10-22 11:30:23',2.2435);
INSERT INTO `shibo_data` VALUES ('2012-10-23 11:30:23',2.3446);
INSERT INTO `shibo_data` VALUES ('2012-10-24 11:30:23',2.7633);
INSERT INTO `shibo_data` VALUES ('2012-10-25 11:30:23',2.7092);
INSERT INTO `shibo_data` VALUES ('2012-10-26 11:30:23',3.315);
INSERT INTO `shibo_data` VALUES ('2012-10-29 11:30:23',4.4292);
INSERT INTO `shibo_data` VALUES ('2012-10-30 11:30:23',3.0585);
INSERT INTO `shibo_data` VALUES ('2012-10-31 11:30:23',2.955);
INSERT INTO `shibo_data` VALUES ('2012-11-01 11:30:23',3.0433);
INSERT INTO `shibo_data` VALUES ('2012-11-02 11:30:23',2.6758);
INSERT INTO `shibo_data` VALUES ('2012-11-05 11:30:23',2.6933);
INSERT INTO `shibo_data` VALUES ('2012-11-06 11:30:23',2.5267);
INSERT INTO `shibo_data` VALUES ('2012-11-07 11:30:23',2.5688);
INSERT INTO `shibo_data` VALUES ('2012-11-08 11:30:23',2.5748);
INSERT INTO `shibo_data` VALUES ('2012-11-09 11:30:23',2.6183);
INSERT INTO `shibo_data` VALUES ('2012-11-12 11:30:23',2.5221);
INSERT INTO `shibo_data` VALUES ('2012-11-13 11:30:23',2.32);
INSERT INTO `shibo_data` VALUES ('2012-11-14 11:30:23',2.2974);
INSERT INTO `shibo_data` VALUES ('2012-11-15 11:30:23',2.2775);
INSERT INTO `shibo_data` VALUES ('2012-11-16 11:30:23',2.2775);
INSERT INTO `shibo_data` VALUES ('2012-11-19 11:30:23',2.154);
INSERT INTO `shibo_data` VALUES ('2012-11-20 11:30:23',2.2422);
INSERT INTO `shibo_data` VALUES ('2012-11-21 11:30:23',2.3042);
INSERT INTO `shibo_data` VALUES ('2012-11-22 11:30:23',2.315);
INSERT INTO `shibo_data` VALUES ('2012-11-23 11:30:23',2.2525);
INSERT INTO `shibo_data` VALUES ('2012-11-26 11:30:23',2.2992);
INSERT INTO `shibo_data` VALUES ('2012-11-27 11:30:23',2.3108);
INSERT INTO `shibo_data` VALUES ('2012-11-28 11:30:23',2.315);
INSERT INTO `shibo_data` VALUES ('2012-11-29 11:30:23',2.3148);
INSERT INTO `shibo_data` VALUES ('2012-11-30 11:30:23',2.2533);
INSERT INTO `shibo_data` VALUES ('2012-12-03 11:30:23',2.258);
INSERT INTO `shibo_data` VALUES ('2012-12-04 11:30:23',2.25);
INSERT INTO `shibo_data` VALUES ('2012-12-05 11:30:23',2.25);
INSERT INTO `shibo_data` VALUES ('2012-12-06 11:30:23',2.2399);
INSERT INTO `shibo_data` VALUES ('2012-12-07 11:30:23',2.2503);
INSERT INTO `shibo_data` VALUES ('2012-12-10 11:30:23',2.249);
INSERT INTO `shibo_data` VALUES ('2012-12-11 11:30:23',2.25);
INSERT INTO `shibo_data` VALUES ('2012-12-12 11:30:23',2.26);
INSERT INTO `shibo_data` VALUES ('2012-12-13 11:30:23',2.2747);
INSERT INTO `shibo_data` VALUES ('2012-12-14 11:30:23',2.2559);
INSERT INTO `shibo_data` VALUES ('2012-12-17 11:30:23',2.256);
INSERT INTO `shibo_data` VALUES ('2012-12-18 11:30:23',2.28);
INSERT INTO `shibo_data` VALUES ('2012-12-19 11:30:23',2.2775);
INSERT INTO `shibo_data` VALUES ('2012-12-20 11:30:23',2.638);
INSERT INTO `shibo_data` VALUES ('2012-12-21 11:30:23',2.42);
INSERT INTO `shibo_data` VALUES ('2012-12-24 11:30:23',2.3);
INSERT INTO `shibo_data` VALUES ('2012-12-25 11:30:23',2.3);
INSERT INTO `shibo_data` VALUES ('2012-12-26 11:30:23',2.303);
INSERT INTO `shibo_data` VALUES ('2012-12-27 11:30:23',2.2925);
INSERT INTO `shibo_data` VALUES ('2012-12-28 11:30:23',2.286);
INSERT INTO `shibo_data` VALUES ('2012-12-31 11:30:23',3.866);
INSERT INTO `shibo_data` VALUES ('2013-01-04 11:31:13',2.557);
INSERT INTO `shibo_data` VALUES ('2013-01-05 11:31:13',2.304);
INSERT INTO `shibo_data` VALUES ('2013-01-06 11:31:13',2.199);
INSERT INTO `shibo_data` VALUES ('2013-01-07 11:31:13',2.1529);
INSERT INTO `shibo_data` VALUES ('2013-01-08 11:31:13',2.145);
INSERT INTO `shibo_data` VALUES ('2013-01-09 11:31:13',2.107);
INSERT INTO `shibo_data` VALUES ('2013-01-10 11:31:13',2.108);
INSERT INTO `shibo_data` VALUES ('2013-01-11 11:31:13',2.104);
INSERT INTO `shibo_data` VALUES ('2013-01-14 11:31:13',2.078);
INSERT INTO `shibo_data` VALUES ('2013-01-15 11:31:13',2.105);
INSERT INTO `shibo_data` VALUES ('2013-01-16 11:31:13',2.071);
INSERT INTO `shibo_data` VALUES ('2013-01-17 11:31:13',2.029);
INSERT INTO `shibo_data` VALUES ('2013-01-18 11:31:13',1.979);
INSERT INTO `shibo_data` VALUES ('2013-01-21 11:31:13',1.958);
INSERT INTO `shibo_data` VALUES ('2013-01-22 11:31:13',1.927);
INSERT INTO `shibo_data` VALUES ('2013-01-23 11:31:13',1.9409);
INSERT INTO `shibo_data` VALUES ('2013-01-24 11:31:13',2.0665);
INSERT INTO `shibo_data` VALUES ('2013-01-25 11:31:13',2.103);
INSERT INTO `shibo_data` VALUES ('2013-01-28 11:31:13',2.1);
INSERT INTO `shibo_data` VALUES ('2013-01-29 11:31:13',2.1);
INSERT INTO `shibo_data` VALUES ('2013-01-30 11:31:13',2.1);
INSERT INTO `shibo_data` VALUES ('2013-01-31 11:31:13',2.31);
INSERT INTO `shibo_data` VALUES ('2013-02-01 11:31:13',2.6745);
INSERT INTO `shibo_data` VALUES ('2013-02-04 11:31:13',2.833);
INSERT INTO `shibo_data` VALUES ('2013-02-05 11:31:13',3.25);
INSERT INTO `shibo_data` VALUES ('2013-02-06 11:31:13',3.596);
INSERT INTO `shibo_data` VALUES ('2013-02-07 11:31:13',3.6463);
INSERT INTO `shibo_data` VALUES ('2013-02-08 11:31:13',2.715);
INSERT INTO `shibo_data` VALUES ('2013-02-16 11:31:13',1.98);
INSERT INTO `shibo_data` VALUES ('2013-02-17 11:31:13',1.899);
INSERT INTO `shibo_data` VALUES ('2013-02-18 11:31:13',1.866);
INSERT INTO `shibo_data` VALUES ('2013-02-19 11:31:13',1.8693);
INSERT INTO `shibo_data` VALUES ('2013-02-20 11:31:13',1.8798);
INSERT INTO `shibo_data` VALUES ('2013-02-21 11:31:13',2.018);
INSERT INTO `shibo_data` VALUES ('2013-02-22 11:31:13',2.2);
INSERT INTO `shibo_data` VALUES ('2013-02-25 11:31:13',2.386);
INSERT INTO `shibo_data` VALUES ('2013-02-26 11:31:13',3.69);
INSERT INTO `shibo_data` VALUES ('2013-02-27 11:31:13',3.932);
INSERT INTO `shibo_data` VALUES ('2013-02-28 11:31:13',4.011);
INSERT INTO `shibo_data` VALUES ('2013-03-01 11:31:13',4.136);
INSERT INTO `shibo_data` VALUES ('2013-03-04 11:31:13',3.2935);
INSERT INTO `shibo_data` VALUES ('2013-03-05 11:31:13',3.018);
INSERT INTO `shibo_data` VALUES ('2013-03-06 11:31:13',2.858);
INSERT INTO `shibo_data` VALUES ('2013-03-07 11:31:13',2.486);
INSERT INTO `shibo_data` VALUES ('2013-03-08 11:31:13',2.468);
INSERT INTO `shibo_data` VALUES ('2013-03-11 11:31:13',2.2315);
INSERT INTO `shibo_data` VALUES ('2013-03-12 11:31:13',2.095);
INSERT INTO `shibo_data` VALUES ('2013-03-13 11:31:13',2.072);
INSERT INTO `shibo_data` VALUES ('2013-03-14 11:31:13',2.057);
INSERT INTO `shibo_data` VALUES ('2013-03-15 11:31:13',2.064);
INSERT INTO `shibo_data` VALUES ('2013-03-18 11:31:13',2.524);
INSERT INTO `shibo_data` VALUES ('2013-03-19 11:31:13',2.248);
INSERT INTO `shibo_data` VALUES ('2013-03-20 11:31:13',2.051);
INSERT INTO `shibo_data` VALUES ('2013-03-21 11:31:13',1.938);
INSERT INTO `shibo_data` VALUES ('2013-03-22 11:31:13',1.807);
INSERT INTO `shibo_data` VALUES ('2013-03-25 11:31:13',1.6841);
INSERT INTO `shibo_data` VALUES ('2013-03-26 11:31:13',1.674);
INSERT INTO `shibo_data` VALUES ('2013-03-27 11:31:13',1.741);
INSERT INTO `shibo_data` VALUES ('2013-03-28 11:31:13',1.75);
INSERT INTO `shibo_data` VALUES ('2013-03-29 11:31:13',2.684);
INSERT INTO `shibo_data` VALUES ('2013-04-01 11:31:13',1.9915);
INSERT INTO `shibo_data` VALUES ('2013-04-02 11:31:13',2.019);
INSERT INTO `shibo_data` VALUES ('2013-04-03 11:31:13',2.093);
INSERT INTO `shibo_data` VALUES ('2013-04-07 11:31:13',2.033);
INSERT INTO `shibo_data` VALUES ('2013-04-08 11:31:13',2.1808);
INSERT INTO `shibo_data` VALUES ('2013-04-09 11:31:13',2.14);
INSERT INTO `shibo_data` VALUES ('2013-04-10 11:31:13',2.1235);
INSERT INTO `shibo_data` VALUES ('2013-04-11 11:31:13',2.0669);
INSERT INTO `shibo_data` VALUES ('2013-04-12 11:31:13',2.0238);
INSERT INTO `shibo_data` VALUES ('2013-04-15 11:31:13',2.0533);
INSERT INTO `shibo_data` VALUES ('2013-04-16 11:31:13',2.017);
INSERT INTO `shibo_data` VALUES ('2013-04-17 11:31:13',2.0138);
INSERT INTO `shibo_data` VALUES ('2013-04-18 11:31:13',2.208);
INSERT INTO `shibo_data` VALUES ('2013-04-19 11:31:13',2.503);
INSERT INTO `shibo_data` VALUES ('2013-04-22 11:31:13',2.637);
INSERT INTO `shibo_data` VALUES ('2013-04-23 11:31:13',2.97);
INSERT INTO `shibo_data` VALUES ('2013-04-24 11:31:13',4.061);
INSERT INTO `shibo_data` VALUES ('2013-04-25 11:31:13',4.291);
INSERT INTO `shibo_data` VALUES ('2013-04-26 11:31:13',3);
INSERT INTO `shibo_data` VALUES ('2013-04-27 11:31:13',3.016);
INSERT INTO `shibo_data` VALUES ('2013-04-28 11:31:13',2.83);
INSERT INTO `shibo_data` VALUES ('2013-05-02 11:31:13',2.8);
INSERT INTO `shibo_data` VALUES ('2013-05-03 11:31:13',3);
INSERT INTO `shibo_data` VALUES ('2013-05-06 11:31:13',2.78);
INSERT INTO `shibo_data` VALUES ('2013-05-07 11:31:13',2.36);
INSERT INTO `shibo_data` VALUES ('2013-05-08 11:31:13',2.11);
INSERT INTO `shibo_data` VALUES ('2013-05-09 11:31:13',2.11);
INSERT INTO `shibo_data` VALUES ('2013-05-10 11:31:13',2.14);
INSERT INTO `shibo_data` VALUES ('2013-05-13 11:31:13',2.1573);
INSERT INTO `shibo_data` VALUES ('2013-05-14 11:31:13',2.24);
INSERT INTO `shibo_data` VALUES ('2013-05-15 11:31:13',2.2445);
INSERT INTO `shibo_data` VALUES ('2013-05-16 11:31:13',2.702);
INSERT INTO `shibo_data` VALUES ('2013-05-17 11:31:13',2.8439);
INSERT INTO `shibo_data` VALUES ('2013-05-20 11:31:13',2.957);
INSERT INTO `shibo_data` VALUES ('2013-05-21 11:31:13',3.36);
INSERT INTO `shibo_data` VALUES ('2013-05-22 11:31:13',3.424);
INSERT INTO `shibo_data` VALUES ('2013-05-23 11:31:13',3.681);
INSERT INTO `shibo_data` VALUES ('2013-05-24 11:31:13',3.504);
INSERT INTO `shibo_data` VALUES ('2013-05-27 11:31:13',3.56);
INSERT INTO `shibo_data` VALUES ('2013-05-28 11:31:13',3.35);
INSERT INTO `shibo_data` VALUES ('2013-05-29 11:31:13',3.05);
INSERT INTO `shibo_data` VALUES ('2013-05-30 11:31:13',3.39);
INSERT INTO `shibo_data` VALUES ('2013-05-31 11:31:13',4.501);
INSERT INTO `shibo_data` VALUES ('2013-06-03 11:31:13',4.599);
INSERT INTO `shibo_data` VALUES ('2013-06-04 11:31:13',4.517);
INSERT INTO `shibo_data` VALUES ('2013-06-05 11:31:13',4.623);
INSERT INTO `shibo_data` VALUES ('2013-06-06 11:31:13',5.982);
INSERT INTO `shibo_data` VALUES ('2013-06-07 11:31:13',8.294);
INSERT INTO `shibo_data` VALUES ('2013-06-08 11:31:13',9.581);
INSERT INTO `shibo_data` VALUES ('2013-06-09 11:31:13',7.49);
INSERT INTO `shibo_data` VALUES ('2013-06-13 11:31:13',6.691);
INSERT INTO `shibo_data` VALUES ('2013-06-14 11:31:13',6.968);
INSERT INTO `shibo_data` VALUES ('2013-06-17 11:31:13',4.813);
INSERT INTO `shibo_data` VALUES ('2013-06-18 11:31:13',5.596);
INSERT INTO `shibo_data` VALUES ('2013-06-19 11:31:13',7.66);
INSERT INTO `shibo_data` VALUES ('2013-06-20 11:31:13',13.444);
INSERT INTO `shibo_data` VALUES ('2013-06-21 11:31:13',8.492);
INSERT INTO `shibo_data` VALUES ('2013-06-24 11:31:13',6.489);
INSERT INTO `shibo_data` VALUES ('2013-06-25 11:31:13',5.736);
INSERT INTO `shibo_data` VALUES ('2013-06-26 11:31:13',5.553);
INSERT INTO `shibo_data` VALUES ('2013-06-27 11:31:13',5.561);
INSERT INTO `shibo_data` VALUES ('2013-06-28 11:31:13',4.941);
INSERT INTO `shibo_data` VALUES ('2013-07-01 11:31:13',4.456);
INSERT INTO `shibo_data` VALUES ('2013-07-02 11:31:13',3.786);
INSERT INTO `shibo_data` VALUES ('2013-07-03 11:31:13',3.4);
INSERT INTO `shibo_data` VALUES ('2013-07-04 11:31:13',3.348);
INSERT INTO `shibo_data` VALUES ('2013-07-05 11:31:13',3.38);
INSERT INTO `shibo_data` VALUES ('2013-07-08 11:31:13',3.256);
INSERT INTO `shibo_data` VALUES ('2013-07-09 11:31:13',3.249);
INSERT INTO `shibo_data` VALUES ('2013-07-10 11:31:13',3.251);
INSERT INTO `shibo_data` VALUES ('2013-07-11 11:31:13',3.3547);
INSERT INTO `shibo_data` VALUES ('2013-07-12 11:31:13',3.3);
INSERT INTO `shibo_data` VALUES ('2013-07-15 11:31:13',3.2998);
INSERT INTO `shibo_data` VALUES ('2013-07-16 11:31:13',3.013);
INSERT INTO `shibo_data` VALUES ('2013-07-17 11:31:13',2.968);
INSERT INTO `shibo_data` VALUES ('2013-07-18 11:31:13',2.998);
INSERT INTO `shibo_data` VALUES ('2013-07-19 11:31:13',3.04);
INSERT INTO `shibo_data` VALUES ('2013-07-22 11:31:13',3.1035);
INSERT INTO `shibo_data` VALUES ('2013-07-23 11:31:13',3.1355);
INSERT INTO `shibo_data` VALUES ('2013-07-24 11:31:13',3.23);
INSERT INTO `shibo_data` VALUES ('2013-07-25 11:31:13',3.3495);
INSERT INTO `shibo_data` VALUES ('2013-07-26 11:31:13',3.55);
INSERT INTO `shibo_data` VALUES ('2013-07-29 11:31:13',3.703);
INSERT INTO `shibo_data` VALUES ('2013-07-30 11:31:13',3.641);
INSERT INTO `shibo_data` VALUES ('2013-07-31 11:31:13',3.699);
INSERT INTO `shibo_data` VALUES ('2013-08-01 11:31:13',3.549);
INSERT INTO `shibo_data` VALUES ('2013-08-02 11:31:13',3.2539);
INSERT INTO `shibo_data` VALUES ('2013-08-05 11:31:13',3.1);
INSERT INTO `shibo_data` VALUES ('2013-08-06 11:31:13',3.1);
INSERT INTO `shibo_data` VALUES ('2013-08-07 11:31:13',3.1005);
INSERT INTO `shibo_data` VALUES ('2013-08-08 11:31:13',3.1641);
INSERT INTO `shibo_data` VALUES ('2013-08-09 11:31:13',2.914);
INSERT INTO `shibo_data` VALUES ('2013-08-12 11:31:13',2.9645);
INSERT INTO `shibo_data` VALUES ('2013-08-13 11:31:13',3.2253);
INSERT INTO `shibo_data` VALUES ('2013-08-14 11:31:13',3.435);
INSERT INTO `shibo_data` VALUES ('2013-08-15 11:31:13',3.283);
INSERT INTO `shibo_data` VALUES ('2013-08-16 11:31:13',3.209);
INSERT INTO `shibo_data` VALUES ('2013-08-19 11:31:13',3.403);
INSERT INTO `shibo_data` VALUES ('2013-08-20 11:31:13',3.854);
INSERT INTO `shibo_data` VALUES ('2013-08-21 11:31:13',3.517);
INSERT INTO `shibo_data` VALUES ('2013-08-22 11:31:13',3.357);
INSERT INTO `shibo_data` VALUES ('2013-08-23 11:31:13',3.265);
INSERT INTO `shibo_data` VALUES ('2013-08-26 11:31:13',3.037);
INSERT INTO `shibo_data` VALUES ('2013-08-27 11:31:13',3.006);
INSERT INTO `shibo_data` VALUES ('2013-08-28 11:31:13',3.098);
INSERT INTO `shibo_data` VALUES ('2013-08-29 11:31:13',2.957);
INSERT INTO `shibo_data` VALUES ('2013-08-30 11:31:13',3.034);
INSERT INTO `shibo_data` VALUES ('2013-09-02 11:31:13',3.0188);
INSERT INTO `shibo_data` VALUES ('2013-09-03 11:31:13',3.0006);
INSERT INTO `shibo_data` VALUES ('2013-09-04 11:31:13',3.005);
INSERT INTO `shibo_data` VALUES ('2013-09-05 11:31:13',2.89);
INSERT INTO `shibo_data` VALUES ('2013-09-06 11:31:13',2.95);
INSERT INTO `shibo_data` VALUES ('2013-09-09 11:31:13',2.92);
INSERT INTO `shibo_data` VALUES ('2013-09-10 11:31:13',2.8955);
INSERT INTO `shibo_data` VALUES ('2013-09-11 11:31:13',3.014);
INSERT INTO `shibo_data` VALUES ('2013-09-12 11:31:13',2.967);
INSERT INTO `shibo_data` VALUES ('2013-09-13 11:31:13',2.979);
INSERT INTO `shibo_data` VALUES ('2013-09-16 11:31:13',3.008);
INSERT INTO `shibo_data` VALUES ('2013-09-17 11:31:13',3.493);
INSERT INTO `shibo_data` VALUES ('2013-09-18 11:31:13',3.557);
INSERT INTO `shibo_data` VALUES ('2013-09-22 11:31:13',3.573);
INSERT INTO `shibo_data` VALUES ('2013-09-23 11:31:13',3.815);
INSERT INTO `shibo_data` VALUES ('2013-09-24 11:31:13',3.6144);
INSERT INTO `shibo_data` VALUES ('2013-09-25 11:31:13',3.347);
INSERT INTO `shibo_data` VALUES ('2013-09-26 11:31:13',3.112);
INSERT INTO `shibo_data` VALUES ('2013-09-27 11:31:13',3.1477);
INSERT INTO `shibo_data` VALUES ('2013-09-29 11:31:13',3.15);
INSERT INTO `shibo_data` VALUES ('2013-09-30 11:31:13',3.126);
INSERT INTO `shibo_data` VALUES ('2013-10-08 11:31:13',3.052);
INSERT INTO `shibo_data` VALUES ('2013-10-09 11:31:13',3.232);
INSERT INTO `shibo_data` VALUES ('2013-10-10 11:31:13',3.328);
INSERT INTO `shibo_data` VALUES ('2013-10-11 11:31:13',3.1);
INSERT INTO `shibo_data` VALUES ('2013-10-12 11:31:13',3.027);
INSERT INTO `shibo_data` VALUES ('2013-10-14 11:31:13',3.113);
INSERT INTO `shibo_data` VALUES ('2013-10-15 11:31:13',3.117);
INSERT INTO `shibo_data` VALUES ('2013-10-16 11:31:13',3.055);
INSERT INTO `shibo_data` VALUES ('2013-10-17 11:31:13',3.038);
INSERT INTO `shibo_data` VALUES ('2013-10-18 11:31:13',3.001);
INSERT INTO `shibo_data` VALUES ('2013-10-21 11:31:13',3.06);
INSERT INTO `shibo_data` VALUES ('2013-10-22 11:31:13',3.052);
INSERT INTO `shibo_data` VALUES ('2013-10-23 11:31:13',3.78);
INSERT INTO `shibo_data` VALUES ('2013-10-24 11:31:13',4.088);
INSERT INTO `shibo_data` VALUES ('2013-10-25 11:31:13',4.367);
INSERT INTO `shibo_data` VALUES ('2013-10-28 11:31:13',4.434);
INSERT INTO `shibo_data` VALUES ('2013-10-29 11:31:13',4.446);
INSERT INTO `shibo_data` VALUES ('2013-10-30 11:31:13',5.23);
INSERT INTO `shibo_data` VALUES ('2013-10-31 11:31:13',4.59);
INSERT INTO `shibo_data` VALUES ('2013-11-01 11:31:13',4.2883);
INSERT INTO `shibo_data` VALUES ('2013-11-04 11:31:13',4.0971);
INSERT INTO `shibo_data` VALUES ('2013-11-05 11:31:13',3.9147);
INSERT INTO `shibo_data` VALUES ('2013-11-06 11:31:13',3.66);
INSERT INTO `shibo_data` VALUES ('2013-11-07 11:31:13',3.73);
INSERT INTO `shibo_data` VALUES ('2013-11-08 11:31:13',3.761);
INSERT INTO `shibo_data` VALUES ('2013-11-11 11:31:13',3.6);
INSERT INTO `shibo_data` VALUES ('2013-11-12 11:31:13',3.329);
INSERT INTO `shibo_data` VALUES ('2013-11-13 11:31:13',3.336);
INSERT INTO `shibo_data` VALUES ('2013-11-14 11:31:13',4.188);
INSERT INTO `shibo_data` VALUES ('2013-11-15 11:31:13',4.454);
INSERT INTO `shibo_data` VALUES ('2013-11-18 11:31:13',4.513);
INSERT INTO `shibo_data` VALUES ('2013-11-19 11:31:13',4.075);
INSERT INTO `shibo_data` VALUES ('2013-11-20 11:31:13',4.057);
INSERT INTO `shibo_data` VALUES ('2013-11-21 11:31:13',3.889);
INSERT INTO `shibo_data` VALUES ('2013-11-22 11:31:13',3.899);
INSERT INTO `shibo_data` VALUES ('2013-11-25 11:31:13',3.847);
INSERT INTO `shibo_data` VALUES ('2013-11-26 11:31:13',3.746);
INSERT INTO `shibo_data` VALUES ('2013-11-27 11:31:13',3.764);
INSERT INTO `shibo_data` VALUES ('2013-11-28 11:31:13',3.746);
INSERT INTO `shibo_data` VALUES ('2013-11-29 11:31:13',3.726);
INSERT INTO `shibo_data` VALUES ('2013-12-02 11:31:13',3.748);
INSERT INTO `shibo_data` VALUES ('2013-12-03 11:31:13',3.725);
INSERT INTO `shibo_data` VALUES ('2013-12-04 11:31:13',3.7235);
INSERT INTO `shibo_data` VALUES ('2013-12-05 11:31:13',3.703);
INSERT INTO `shibo_data` VALUES ('2013-12-06 11:31:13',3.7);
INSERT INTO `shibo_data` VALUES ('2013-12-09 11:31:13',3.62);
INSERT INTO `shibo_data` VALUES ('2013-12-10 11:31:13',3.558);
INSERT INTO `shibo_data` VALUES ('2013-12-11 11:31:13',3.51);
INSERT INTO `shibo_data` VALUES ('2013-12-12 11:31:13',3.46);
INSERT INTO `shibo_data` VALUES ('2013-12-13 11:31:13',3.4321);
INSERT INTO `shibo_data` VALUES ('2013-12-16 11:31:13',3.447);
INSERT INTO `shibo_data` VALUES ('2013-12-17 11:31:13',3.47);
INSERT INTO `shibo_data` VALUES ('2013-12-18 11:31:13',3.588);
INSERT INTO `shibo_data` VALUES ('2013-12-19 11:31:13',3.846);
INSERT INTO `shibo_data` VALUES ('2013-12-20 11:31:13',3.927);
INSERT INTO `shibo_data` VALUES ('2013-12-23 11:31:13',4.515);
INSERT INTO `shibo_data` VALUES ('2013-12-24 11:31:13',4.145);
INSERT INTO `shibo_data` VALUES ('2013-12-25 11:31:13',4.05);
INSERT INTO `shibo_data` VALUES ('2013-12-26 11:31:13',4.001);
INSERT INTO `shibo_data` VALUES ('2013-12-27 11:31:13',3.513);
INSERT INTO `shibo_data` VALUES ('2013-12-30 11:31:13',3.205);
INSERT INTO `shibo_data` VALUES ('2013-12-31 11:31:13',3.148);
INSERT INTO `shibo_data` VALUES ('2014-01-02 09:31:26',3.131);
INSERT INTO `shibo_data` VALUES ('2014-01-03 09:31:26',3.006);
INSERT INTO `shibo_data` VALUES ('2014-01-06 09:31:26',2.92);
INSERT INTO `shibo_data` VALUES ('2014-01-07 09:31:26',2.875);
INSERT INTO `shibo_data` VALUES ('2014-01-08 09:31:26',2.83);
INSERT INTO `shibo_data` VALUES ('2014-01-09 09:31:26',2.794);
INSERT INTO `shibo_data` VALUES ('2014-01-10 09:31:26',2.766);
INSERT INTO `shibo_data` VALUES ('2014-01-13 09:31:26',2.738);
INSERT INTO `shibo_data` VALUES ('2014-01-14 09:31:26',2.7395);
INSERT INTO `shibo_data` VALUES ('2014-01-15 09:31:26',2.7513);
INSERT INTO `shibo_data` VALUES ('2014-01-16 09:31:26',2.7723);
INSERT INTO `shibo_data` VALUES ('2014-01-17 09:31:26',2.817);
INSERT INTO `shibo_data` VALUES ('2014-01-20 09:31:26',3.888);
INSERT INTO `shibo_data` VALUES ('2014-01-21 09:31:26',3.641);
INSERT INTO `shibo_data` VALUES ('2014-01-22 09:31:26',3.676);
INSERT INTO `shibo_data` VALUES ('2014-01-23 09:31:26',3.7);
INSERT INTO `shibo_data` VALUES ('2014-01-24 09:31:26',3.7193);
INSERT INTO `shibo_data` VALUES ('2014-01-26 09:31:26',4.4);
INSERT INTO `shibo_data` VALUES ('2014-01-27 09:31:26',4.534);
INSERT INTO `shibo_data` VALUES ('2014-01-28 09:31:26',4.8477);
INSERT INTO `shibo_data` VALUES ('2014-01-29 09:31:26',4.8);
INSERT INTO `shibo_data` VALUES ('2014-01-30 09:31:26',4.435);
INSERT INTO `shibo_data` VALUES ('2014-02-07 09:31:26',4.27);
INSERT INTO `shibo_data` VALUES ('2014-02-08 09:31:26',4.25);
INSERT INTO `shibo_data` VALUES ('2014-02-10 09:31:26',4.3035);
INSERT INTO `shibo_data` VALUES ('2014-02-11 09:31:26',4.137);
INSERT INTO `shibo_data` VALUES ('2014-02-12 09:31:26',4.075);
INSERT INTO `shibo_data` VALUES ('2014-02-13 09:31:26',3.669);
INSERT INTO `shibo_data` VALUES ('2014-02-14 09:31:26',3.278);
INSERT INTO `shibo_data` VALUES ('2014-02-17 09:31:26',2.951);
INSERT INTO `shibo_data` VALUES ('2014-02-18 09:31:26',2.68);
INSERT INTO `shibo_data` VALUES ('2014-02-19 09:31:26',2.403);
INSERT INTO `shibo_data` VALUES ('2014-02-20 09:31:26',1.981);
INSERT INTO `shibo_data` VALUES ('2014-02-21 09:31:26',1.764);
INSERT INTO `shibo_data` VALUES ('2014-02-24 09:31:26',1.7);
INSERT INTO `shibo_data` VALUES ('2014-02-25 09:31:26',1.72);
INSERT INTO `shibo_data` VALUES ('2014-02-26 09:31:26',1.75);
INSERT INTO `shibo_data` VALUES ('2014-02-27 09:31:26',1.75);
INSERT INTO `shibo_data` VALUES ('2014-02-28 09:31:26',1.8458);
INSERT INTO `shibo_data` VALUES ('2014-03-03 09:31:26',2.085);
INSERT INTO `shibo_data` VALUES ('2014-03-04 09:31:26',2.083);
INSERT INTO `shibo_data` VALUES ('2014-03-05 09:31:26',2.09);
INSERT INTO `shibo_data` VALUES ('2014-03-06 09:31:26',2.0547);
INSERT INTO `shibo_data` VALUES ('2014-03-07 09:31:26',1.9948);
INSERT INTO `shibo_data` VALUES ('2014-03-10 09:31:26',1.919);
INSERT INTO `shibo_data` VALUES ('2014-03-11 09:31:26',1.873);
INSERT INTO `shibo_data` VALUES ('2014-03-12 09:31:26',1.9);
INSERT INTO `shibo_data` VALUES ('2014-03-13 09:31:26',1.96);
INSERT INTO `shibo_data` VALUES ('2014-03-14 09:31:26',1.8765);
INSERT INTO `shibo_data` VALUES ('2014-03-17 09:31:26',1.869);
INSERT INTO `shibo_data` VALUES ('2014-03-18 09:31:26',2.05);
INSERT INTO `shibo_data` VALUES ('2014-03-19 09:31:26',2.8025);
INSERT INTO `shibo_data` VALUES ('2014-03-20 09:31:26',3.011);
INSERT INTO `shibo_data` VALUES ('2014-03-21 09:31:26',2.5);
INSERT INTO `shibo_data` VALUES ('2014-03-24 09:31:26',2.5);
INSERT INTO `shibo_data` VALUES ('2014-03-25 09:31:26',2.5);
INSERT INTO `shibo_data` VALUES ('2014-03-26 09:31:26',2.52);
INSERT INTO `shibo_data` VALUES ('2014-03-27 09:31:26',2.658);
INSERT INTO `shibo_data` VALUES ('2014-03-28 09:31:26',2.75);
INSERT INTO `shibo_data` VALUES ('2014-03-31 09:31:26',2.8);
INSERT INTO `shibo_data` VALUES ('2014-04-01 09:31:26',2.866);
INSERT INTO `shibo_data` VALUES ('2014-04-02 09:31:26',2.95);
INSERT INTO `shibo_data` VALUES ('2014-04-03 09:31:26',2.95);
INSERT INTO `shibo_data` VALUES ('2014-04-04 09:31:26',2.763);
INSERT INTO `shibo_data` VALUES ('2014-04-08 09:31:26',2.713);
INSERT INTO `shibo_data` VALUES ('2014-04-09 09:31:26',2.74);
INSERT INTO `shibo_data` VALUES ('2014-04-10 09:31:26',2.74);
INSERT INTO `shibo_data` VALUES ('2014-04-11 09:31:26',2.75);
INSERT INTO `shibo_data` VALUES ('2014-04-14 09:31:26',2.639);
INSERT INTO `shibo_data` VALUES ('2014-04-15 09:31:26',2.449);
INSERT INTO `shibo_data` VALUES ('2014-04-16 09:31:26',2.298);
INSERT INTO `shibo_data` VALUES ('2014-04-17 09:31:26',2.181);
INSERT INTO `shibo_data` VALUES ('2014-04-18 09:31:26',2);
INSERT INTO `shibo_data` VALUES ('2014-04-21 09:31:26',1.98);
INSERT INTO `shibo_data` VALUES ('2014-04-22 09:31:26',1.9262);
INSERT INTO `shibo_data` VALUES ('2014-04-23 09:31:26',1.963);
INSERT INTO `shibo_data` VALUES ('2014-04-24 09:31:26',2.303);
INSERT INTO `shibo_data` VALUES ('2014-04-25 09:31:26',2.31);
INSERT INTO `shibo_data` VALUES ('2014-04-28 09:31:26',2.406);
INSERT INTO `shibo_data` VALUES ('2014-04-29 09:31:26',2.604);
INSERT INTO `shibo_data` VALUES ('2014-04-30 09:31:26',2.5);
INSERT INTO `shibo_data` VALUES ('2014-05-04 09:31:26',2.4);
INSERT INTO `shibo_data` VALUES ('2014-05-05 09:31:26',2.37);
INSERT INTO `shibo_data` VALUES ('2014-05-06 09:31:26',2.37);
INSERT INTO `shibo_data` VALUES ('2014-05-07 09:31:26',2.37);
INSERT INTO `shibo_data` VALUES ('2014-05-08 09:31:26',2.23);
INSERT INTO `shibo_data` VALUES ('2014-05-09 09:31:26',2.2205);
INSERT INTO `shibo_data` VALUES ('2014-05-12 09:31:26',2.2135);
INSERT INTO `shibo_data` VALUES ('2014-05-13 09:31:26',2.35);
INSERT INTO `shibo_data` VALUES ('2014-05-14 09:31:26',2.3666);
INSERT INTO `shibo_data` VALUES ('2014-05-15 09:31:26',2.35);
INSERT INTO `shibo_data` VALUES ('2014-05-16 09:31:26',2.37);
INSERT INTO `shibo_data` VALUES ('2014-05-19 09:31:26',2.396);
INSERT INTO `shibo_data` VALUES ('2014-05-20 09:31:26',2.427);
INSERT INTO `shibo_data` VALUES ('2014-05-21 09:31:26',2.528);
INSERT INTO `shibo_data` VALUES ('2014-05-22 09:31:26',2.51);
INSERT INTO `shibo_data` VALUES ('2014-05-23 09:31:26',2.53);
INSERT INTO `shibo_data` VALUES ('2014-05-26 09:31:26',2.5025);
INSERT INTO `shibo_data` VALUES ('2014-05-27 09:31:26',2.541);
INSERT INTO `shibo_data` VALUES ('2014-05-28 09:31:26',2.51);
INSERT INTO `shibo_data` VALUES ('2014-05-29 09:31:26',2.51);
INSERT INTO `shibo_data` VALUES ('2014-05-30 09:31:26',2.57);
INSERT INTO `shibo_data` VALUES ('2014-06-03 09:31:26',2.521);
INSERT INTO `shibo_data` VALUES ('2014-06-04 09:31:26',2.561);
INSERT INTO `shibo_data` VALUES ('2014-06-05 09:31:26',2.576);
INSERT INTO `shibo_data` VALUES ('2014-06-06 09:31:26',2.5808);
INSERT INTO `shibo_data` VALUES ('2014-06-09 09:31:26',2.58);
INSERT INTO `shibo_data` VALUES ('2014-06-10 09:31:26',2.57);
INSERT INTO `shibo_data` VALUES ('2014-06-11 09:31:26',2.592);
INSERT INTO `shibo_data` VALUES ('2014-06-12 09:31:26',2.597);
INSERT INTO `shibo_data` VALUES ('2014-06-13 09:31:26',2.6);
INSERT INTO `shibo_data` VALUES ('2014-06-16 09:31:26',2.6);
INSERT INTO `shibo_data` VALUES ('2014-06-17 09:31:26',2.6);
INSERT INTO `shibo_data` VALUES ('2014-06-18 09:31:26',2.639);
INSERT INTO `shibo_data` VALUES ('2014-06-19 09:31:26',2.698);
INSERT INTO `shibo_data` VALUES ('2014-06-20 09:31:26',2.759);
INSERT INTO `shibo_data` VALUES ('2014-06-23 09:31:26',2.755);
INSERT INTO `shibo_data` VALUES ('2014-06-24 09:31:26',2.971);
INSERT INTO `shibo_data` VALUES ('2014-06-25 09:31:26',2.995);
INSERT INTO `shibo_data` VALUES ('2014-06-26 09:31:26',2.974);
INSERT INTO `shibo_data` VALUES ('2014-06-27 09:31:26',2.885);
INSERT INTO `shibo_data` VALUES ('2014-06-30 09:31:26',2.913);
INSERT INTO `shibo_data` VALUES ('2014-07-01 09:31:26',3.017);
INSERT INTO `shibo_data` VALUES ('2014-07-02 09:31:26',3.02);
INSERT INTO `shibo_data` VALUES ('2014-07-03 09:31:26',2.96);
INSERT INTO `shibo_data` VALUES ('2014-07-04 09:31:26',2.94);
INSERT INTO `shibo_data` VALUES ('2014-07-07 09:31:26',2.952);
INSERT INTO `shibo_data` VALUES ('2014-07-08 09:31:26',3.253);
INSERT INTO `shibo_data` VALUES ('2014-07-09 09:31:26',3.351);
INSERT INTO `shibo_data` VALUES ('2014-07-10 09:31:26',3.3);
INSERT INTO `shibo_data` VALUES ('2014-07-11 09:31:26',3.285);
INSERT INTO `shibo_data` VALUES ('2014-07-14 09:31:26',3.255);
INSERT INTO `shibo_data` VALUES ('2014-07-15 09:31:26',3.218);
INSERT INTO `shibo_data` VALUES ('2014-07-16 09:31:26',3.2472);
INSERT INTO `shibo_data` VALUES ('2014-07-17 09:31:26',3.2465);
INSERT INTO `shibo_data` VALUES ('2014-07-18 09:31:26',3.245);
INSERT INTO `shibo_data` VALUES ('2014-07-21 09:31:26',3.318);
INSERT INTO `shibo_data` VALUES ('2014-07-22 09:31:26',3.253);
INSERT INTO `shibo_data` VALUES ('2014-07-23 09:31:26',3.295);
INSERT INTO `shibo_data` VALUES ('2014-07-24 09:31:26',3.313);
INSERT INTO `shibo_data` VALUES ('2014-07-25 09:31:26',3.348);
INSERT INTO `shibo_data` VALUES ('2014-07-28 09:31:26',3.304);
INSERT INTO `shibo_data` VALUES ('2014-07-29 09:31:26',3.2503);
INSERT INTO `shibo_data` VALUES ('2014-07-30 09:31:26',3.2502);
INSERT INTO `shibo_data` VALUES ('2014-07-31 09:31:26',3.204);
INSERT INTO `shibo_data` VALUES ('2014-08-01 09:31:26',3.196);
INSERT INTO `shibo_data` VALUES ('2014-08-04 09:31:26',3.182);
INSERT INTO `shibo_data` VALUES ('2014-08-05 09:31:26',3.145);
INSERT INTO `shibo_data` VALUES ('2014-08-06 09:31:26',3.051);
INSERT INTO `shibo_data` VALUES ('2014-08-07 09:31:26',3.04);
INSERT INTO `shibo_data` VALUES ('2014-08-08 09:31:26',3.001);
INSERT INTO `shibo_data` VALUES ('2014-08-11 09:31:26',2.955);
INSERT INTO `shibo_data` VALUES ('2014-08-12 09:31:26',2.916);
INSERT INTO `shibo_data` VALUES ('2014-08-13 09:31:26',2.892);
INSERT INTO `shibo_data` VALUES ('2014-08-14 09:31:26',2.888);
INSERT INTO `shibo_data` VALUES ('2014-08-15 09:31:26',2.889);
INSERT INTO `shibo_data` VALUES ('2014-08-18 09:31:26',2.858);
INSERT INTO `shibo_data` VALUES ('2014-08-19 09:31:26',2.835);
INSERT INTO `shibo_data` VALUES ('2014-08-20 09:31:26',2.833);
INSERT INTO `shibo_data` VALUES ('2014-08-21 09:31:26',2.848);
INSERT INTO `shibo_data` VALUES ('2014-08-22 09:31:26',2.843);
INSERT INTO `shibo_data` VALUES ('2014-08-25 09:31:26',2.841);
INSERT INTO `shibo_data` VALUES ('2014-08-26 09:31:26',2.823);
INSERT INTO `shibo_data` VALUES ('2014-08-27 09:31:26',2.861);
INSERT INTO `shibo_data` VALUES ('2014-08-28 09:31:26',2.876);
INSERT INTO `shibo_data` VALUES ('2014-08-29 09:31:26',2.908);
INSERT INTO `shibo_data` VALUES ('2014-09-01 09:31:26',2.906);
INSERT INTO `shibo_data` VALUES ('2014-09-02 09:31:26',2.847);
INSERT INTO `shibo_data` VALUES ('2014-09-03 09:31:26',2.824);
INSERT INTO `shibo_data` VALUES ('2014-09-04 09:31:26',2.815);
INSERT INTO `shibo_data` VALUES ('2014-09-05 09:31:26',2.807);
INSERT INTO `shibo_data` VALUES ('2014-09-09 09:31:26',2.816);
INSERT INTO `shibo_data` VALUES ('2014-09-10 09:31:26',2.839);
INSERT INTO `shibo_data` VALUES ('2014-09-11 09:31:26',2.859);
INSERT INTO `shibo_data` VALUES ('2014-09-12 09:31:26',2.853);
INSERT INTO `shibo_data` VALUES ('2014-09-15 09:31:26',2.851);
INSERT INTO `shibo_data` VALUES ('2014-09-16 09:31:26',2.853);
INSERT INTO `shibo_data` VALUES ('2014-09-17 09:31:26',2.847);
INSERT INTO `shibo_data` VALUES ('2014-09-18 09:31:26',2.841);
INSERT INTO `shibo_data` VALUES ('2014-09-19 09:31:26',2.84);
INSERT INTO `shibo_data` VALUES ('2014-09-22 09:31:26',2.797);
INSERT INTO `shibo_data` VALUES ('2014-09-23 09:31:26',2.716);
INSERT INTO `shibo_data` VALUES ('2014-09-24 09:31:26',2.691);
INSERT INTO `shibo_data` VALUES ('2014-09-25 09:31:26',2.677);
INSERT INTO `shibo_data` VALUES ('2014-09-26 09:31:26',2.678);
INSERT INTO `shibo_data` VALUES ('2014-09-28 09:31:26',2.658);
INSERT INTO `shibo_data` VALUES ('2014-09-29 09:31:26',2.543);
INSERT INTO `shibo_data` VALUES ('2014-09-30 09:31:26',2.5325);
INSERT INTO `shibo_data` VALUES ('2014-10-08 09:31:26',2.54);
INSERT INTO `shibo_data` VALUES ('2014-10-09 09:31:26',2.5623);
INSERT INTO `shibo_data` VALUES ('2014-10-10 09:31:26',2.5665);
INSERT INTO `shibo_data` VALUES ('2014-10-11 09:31:26',2.544);
INSERT INTO `shibo_data` VALUES ('2014-10-13 09:31:26',2.536);
INSERT INTO `shibo_data` VALUES ('2014-10-14 09:31:26',2.538);
INSERT INTO `shibo_data` VALUES ('2014-10-15 09:31:26',2.498);
INSERT INTO `shibo_data` VALUES ('2014-10-16 09:31:26',2.474);
INSERT INTO `shibo_data` VALUES ('2014-10-17 09:31:26',2.461);
INSERT INTO `shibo_data` VALUES ('2014-10-20 09:31:26',2.428);
INSERT INTO `shibo_data` VALUES ('2014-10-21 09:31:26',2.415);
INSERT INTO `shibo_data` VALUES ('2014-10-22 09:31:26',2.419);
INSERT INTO `shibo_data` VALUES ('2014-10-23 09:31:26',2.423);
INSERT INTO `shibo_data` VALUES ('2014-10-24 09:31:26',2.4452);
INSERT INTO `shibo_data` VALUES ('2014-10-27 09:31:26',2.4822);
INSERT INTO `shibo_data` VALUES ('2014-10-28 09:31:26',2.491);
INSERT INTO `shibo_data` VALUES ('2014-10-29 09:31:26',2.518);
INSERT INTO `shibo_data` VALUES ('2014-10-30 09:31:26',2.554);
INSERT INTO `shibo_data` VALUES ('2014-10-31 09:31:26',2.559);
INSERT INTO `shibo_data` VALUES ('2014-11-03 09:31:26',2.548);
INSERT INTO `shibo_data` VALUES ('2014-11-04 09:31:26',2.542);
INSERT INTO `shibo_data` VALUES ('2014-11-05 09:31:26',2.542);
INSERT INTO `shibo_data` VALUES ('2014-11-06 09:31:26',2.558);
INSERT INTO `shibo_data` VALUES ('2014-11-07 09:31:26',2.569);
INSERT INTO `shibo_data` VALUES ('2014-11-10 09:31:26',2.539);
INSERT INTO `shibo_data` VALUES ('2014-11-11 09:31:26',2.493);
INSERT INTO `shibo_data` VALUES ('2014-11-12 09:31:26',2.483);
INSERT INTO `shibo_data` VALUES ('2014-11-13 09:31:26',2.473);
INSERT INTO `shibo_data` VALUES ('2014-11-14 09:31:26',2.486);
INSERT INTO `shibo_data` VALUES ('2014-11-17 09:31:26',2.509);
INSERT INTO `shibo_data` VALUES ('2014-11-18 09:31:26',2.503);
INSERT INTO `shibo_data` VALUES ('2014-11-19 09:31:26',2.504);
INSERT INTO `shibo_data` VALUES ('2014-11-20 09:31:26',2.539);
INSERT INTO `shibo_data` VALUES ('2014-11-21 09:31:26',2.586);
INSERT INTO `shibo_data` VALUES ('2014-11-24 09:31:26',2.554);
INSERT INTO `shibo_data` VALUES ('2014-11-25 09:31:26',2.559);
INSERT INTO `shibo_data` VALUES ('2014-11-26 09:31:26',2.573);
INSERT INTO `shibo_data` VALUES ('2014-11-27 09:31:26',2.584);
INSERT INTO `shibo_data` VALUES ('2014-11-28 09:31:26',2.608);
INSERT INTO `shibo_data` VALUES ('2014-12-01 09:31:26',2.646);
INSERT INTO `shibo_data` VALUES ('2014-12-02 09:31:26',2.643);
INSERT INTO `shibo_data` VALUES ('2014-12-03 09:31:26',2.634);
INSERT INTO `shibo_data` VALUES ('2014-12-04 09:31:26',2.632);
INSERT INTO `shibo_data` VALUES ('2014-12-05 09:31:26',2.628);
INSERT INTO `shibo_data` VALUES ('2014-12-08 09:31:26',2.641);
INSERT INTO `shibo_data` VALUES ('2014-12-09 09:31:26',2.64);
INSERT INTO `shibo_data` VALUES ('2014-12-10 09:31:26',2.643);
INSERT INTO `shibo_data` VALUES ('2014-12-11 09:31:26',2.646);
INSERT INTO `shibo_data` VALUES ('2014-12-12 09:31:26',2.651);
INSERT INTO `shibo_data` VALUES ('2014-12-15 09:31:26',2.654);
INSERT INTO `shibo_data` VALUES ('2014-12-16 09:31:26',2.668);
INSERT INTO `shibo_data` VALUES ('2014-12-17 09:31:26',2.766);
INSERT INTO `shibo_data` VALUES ('2014-12-18 09:31:26',3.13);
INSERT INTO `shibo_data` VALUES ('2014-12-19 09:31:26',3.606);
INSERT INTO `shibo_data` VALUES ('2014-12-22 09:31:26',3.702);
INSERT INTO `shibo_data` VALUES ('2014-12-23 09:31:26',3.667);
INSERT INTO `shibo_data` VALUES ('2014-12-24 09:31:26',3.606);
INSERT INTO `shibo_data` VALUES ('2014-12-25 09:31:26',3.549);
INSERT INTO `shibo_data` VALUES ('2014-12-26 09:31:26',3.486);
INSERT INTO `shibo_data` VALUES ('2014-12-29 09:31:26',3.415);
INSERT INTO `shibo_data` VALUES ('2014-12-30 09:31:26',3.38);
INSERT INTO `shibo_data` VALUES ('2014-12-31 09:31:26',3.528);
INSERT INTO `shibo_data` VALUES ('2015-01-04 09:30:44',3.64);
INSERT INTO `shibo_data` VALUES ('2015-01-05 09:30:44',3.421);
INSERT INTO `shibo_data` VALUES ('2015-01-06 09:30:44',3.032);
INSERT INTO `shibo_data` VALUES ('2015-01-07 09:30:44',2.881);
INSERT INTO `shibo_data` VALUES ('2015-01-08 09:30:44',2.83);
INSERT INTO `shibo_data` VALUES ('2015-01-09 09:30:44',2.805);
INSERT INTO `shibo_data` VALUES ('2015-01-12 09:30:44',2.753);
INSERT INTO `shibo_data` VALUES ('2015-01-13 09:30:44',2.667);
INSERT INTO `shibo_data` VALUES ('2015-01-14 09:30:44',2.636);
INSERT INTO `shibo_data` VALUES ('2015-01-15 09:30:44',2.631);
INSERT INTO `shibo_data` VALUES ('2015-01-16 09:30:44',2.633);
INSERT INTO `shibo_data` VALUES ('2015-01-19 09:30:44',2.66);
INSERT INTO `shibo_data` VALUES ('2015-01-20 09:30:44',2.707);
INSERT INTO `shibo_data` VALUES ('2015-01-21 09:30:44',2.788);
INSERT INTO `shibo_data` VALUES ('2015-01-22 09:30:44',2.771);
INSERT INTO `shibo_data` VALUES ('2015-01-23 09:30:44',2.728);
INSERT INTO `shibo_data` VALUES ('2015-01-26 09:30:44',2.688);
INSERT INTO `shibo_data` VALUES ('2015-01-27 09:30:44',2.674);
INSERT INTO `shibo_data` VALUES ('2015-01-28 09:30:44',2.69);
INSERT INTO `shibo_data` VALUES ('2015-01-29 09:30:44',2.765);
INSERT INTO `shibo_data` VALUES ('2015-01-30 09:30:44',2.813);
INSERT INTO `shibo_data` VALUES ('2015-02-02 09:30:44',2.889);
INSERT INTO `shibo_data` VALUES ('2015-02-03 09:30:44',2.9544);
INSERT INTO `shibo_data` VALUES ('2015-02-04 09:30:44',2.973);
INSERT INTO `shibo_data` VALUES ('2015-02-05 09:30:44',2.866);
INSERT INTO `shibo_data` VALUES ('2015-02-06 09:30:44',2.856);
INSERT INTO `shibo_data` VALUES ('2015-02-09 09:30:44',2.812);
INSERT INTO `shibo_data` VALUES ('2015-02-10 09:30:44',2.852);
INSERT INTO `shibo_data` VALUES ('2015-02-11 09:30:44',2.932);
INSERT INTO `shibo_data` VALUES ('2015-02-12 09:30:44',3.058);
INSERT INTO `shibo_data` VALUES ('2015-02-13 09:30:44',3.091);
INSERT INTO `shibo_data` VALUES ('2015-02-15 09:30:44',3.175);
INSERT INTO `shibo_data` VALUES ('2015-02-16 09:30:44',3.182);
INSERT INTO `shibo_data` VALUES ('2015-02-17 09:30:44',3.4);
INSERT INTO `shibo_data` VALUES ('2015-02-25 09:30:44',3.328);
INSERT INTO `shibo_data` VALUES ('2015-02-26 09:30:44',3.298);
INSERT INTO `shibo_data` VALUES ('2015-02-27 09:30:44',3.318);
INSERT INTO `shibo_data` VALUES ('2015-02-28 09:30:44',3.441);
INSERT INTO `shibo_data` VALUES ('2015-03-02 09:30:44',3.453);
INSERT INTO `shibo_data` VALUES ('2015-03-03 09:30:44',3.45);
INSERT INTO `shibo_data` VALUES ('2015-03-04 09:30:44',3.446);
INSERT INTO `shibo_data` VALUES ('2015-03-05 09:30:44',3.433);
INSERT INTO `shibo_data` VALUES ('2015-03-06 09:30:44',3.416);
INSERT INTO `shibo_data` VALUES ('2015-03-09 09:30:44',3.381);
INSERT INTO `shibo_data` VALUES ('2015-03-10 09:30:44',3.35);
INSERT INTO `shibo_data` VALUES ('2015-03-11 09:30:44',3.347);
INSERT INTO `shibo_data` VALUES ('2015-03-12 09:30:44',3.4644);
INSERT INTO `shibo_data` VALUES ('2015-03-13 09:30:44',3.436);
INSERT INTO `shibo_data` VALUES ('2015-03-16 09:30:44',3.403);
INSERT INTO `shibo_data` VALUES ('2015-03-17 09:30:44',3.376);
INSERT INTO `shibo_data` VALUES ('2015-03-18 09:30:44',3.369);
INSERT INTO `shibo_data` VALUES ('2015-03-19 09:30:44',3.332);
INSERT INTO `shibo_data` VALUES ('2015-03-20 09:30:44',3.294);
INSERT INTO `shibo_data` VALUES ('2015-03-23 09:30:44',3.217);
INSERT INTO `shibo_data` VALUES ('2015-03-24 09:30:44',3.218);
INSERT INTO `shibo_data` VALUES ('2015-03-25 09:30:44',3.21);
INSERT INTO `shibo_data` VALUES ('2015-03-26 09:30:44',3.216);
INSERT INTO `shibo_data` VALUES ('2015-03-27 09:30:44',3.206);
INSERT INTO `shibo_data` VALUES ('2015-03-30 09:30:44',3.203);
INSERT INTO `shibo_data` VALUES ('2015-03-31 09:30:44',3.183);
INSERT INTO `shibo_data` VALUES ('2015-04-01 09:30:44',3.087);
INSERT INTO `shibo_data` VALUES ('2015-04-02 09:30:44',2.995);
INSERT INTO `shibo_data` VALUES ('2015-04-03 09:30:44',2.887);
INSERT INTO `shibo_data` VALUES ('2015-04-07 09:30:44',2.766);
INSERT INTO `shibo_data` VALUES ('2015-04-08 09:30:44',2.683);
INSERT INTO `shibo_data` VALUES ('2015-04-09 09:30:44',2.599);
INSERT INTO `shibo_data` VALUES ('2015-04-10 09:30:44',2.489);
INSERT INTO `shibo_data` VALUES ('2015-04-13 09:30:44',2.405);
INSERT INTO `shibo_data` VALUES ('2015-04-14 09:30:44',2.372);
INSERT INTO `shibo_data` VALUES ('2015-04-15 09:30:44',2.307);
INSERT INTO `shibo_data` VALUES ('2015-04-16 09:30:44',2.298);
INSERT INTO `shibo_data` VALUES ('2015-04-17 09:30:44',2.268);
INSERT INTO `shibo_data` VALUES ('2015-04-20 09:30:44',2.087);
INSERT INTO `shibo_data` VALUES ('2015-04-21 09:30:44',2.002);
INSERT INTO `shibo_data` VALUES ('2015-04-22 09:30:44',1.949);
INSERT INTO `shibo_data` VALUES ('2015-04-23 09:30:44',1.908);
INSERT INTO `shibo_data` VALUES ('2015-04-24 09:30:44',1.851);
INSERT INTO `shibo_data` VALUES ('2015-04-27 09:30:44',1.806);
INSERT INTO `shibo_data` VALUES ('2015-04-28 09:30:44',1.759);
INSERT INTO `shibo_data` VALUES ('2015-04-29 09:30:44',1.739);
INSERT INTO `shibo_data` VALUES ('2015-04-30 09:30:44',1.69);
INSERT INTO `shibo_data` VALUES ('2015-05-04 09:30:44',1.619);
INSERT INTO `shibo_data` VALUES ('2015-05-05 09:30:44',1.564);
INSERT INTO `shibo_data` VALUES ('2015-05-06 09:30:44',1.523);
INSERT INTO `shibo_data` VALUES ('2015-05-07 09:30:44',1.489);
INSERT INTO `shibo_data` VALUES ('2015-05-08 09:30:44',1.443);
INSERT INTO `shibo_data` VALUES ('2015-05-11 09:30:44',1.345);
INSERT INTO `shibo_data` VALUES ('2015-05-12 09:30:44',1.29);
INSERT INTO `shibo_data` VALUES ('2015-05-13 09:30:44',1.247);
INSERT INTO `shibo_data` VALUES ('2015-05-14 09:30:44',1.182);
INSERT INTO `shibo_data` VALUES ('2015-05-15 09:30:44',1.078);
INSERT INTO `shibo_data` VALUES ('2015-05-18 09:30:44',1.052);
INSERT INTO `shibo_data` VALUES ('2015-05-19 09:30:44',1.033);
INSERT INTO `shibo_data` VALUES ('2015-05-20 09:30:44',1.032);
INSERT INTO `shibo_data` VALUES ('2015-05-21 09:30:44',1.033);
INSERT INTO `shibo_data` VALUES ('2015-05-22 09:30:44',1.037);
INSERT INTO `shibo_data` VALUES ('2015-05-25 09:30:44',1.039);

--
-- Table structure for table `stock_account_change_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_account_change_info` (
  `statistic_begin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '统计起始日期',
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`statistic_begin`,`statistic_end`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_account_change_info`
--


--
-- Table structure for table `stock_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_category` (
  `stock_code` varchar(20) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(20) DEFAULT NULL COMMENT '股票名称',
  `category1_code` varchar(20) DEFAULT NULL COMMENT '行业分类1代码',
  `category1_name` varchar(100) DEFAULT NULL COMMENT '行业分类1名称',
  `category2_code` varchar(20) DEFAULT NULL COMMENT '行业分类2代码',
  `category2_name` varchar(100) DEFAULT NULL COMMENT '行业分类2名称',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`category2_name`),
  KEY `NewIndex3` (`category1_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_category`
--


--
-- Table structure for table `stock_index_future_daily`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `stock_index_future_1` (`trade_date`,`contract_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_index_future_daily`
--


--
-- Table structure for table `stock_index_future_daily_top20`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `stock_index_future_1` (`trade_date`,`contract_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_index_future_daily_top20`
--


--
-- Table structure for table `stock_industry_categorys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_industry_categorys` (
  `category1_name` varchar(100) DEFAULT NULL COMMENT '行业分类1名称',
  `category2_name` varchar(100) DEFAULT NULL COMMENT '行业分类2名称',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category2_code` varchar(10) DEFAULT NULL,
  `rzrq_num` int(11) DEFAULT NULL COMMENT '该板块包含融券融券股票个数',
  UNIQUE KEY `NewIndex2` (`category2_code`),
  KEY `NewIndex1` (`category2_name`),
  KEY `NewIndex3` (`category1_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_industry_categorys`
--


--
-- Table structure for table `stock_similarity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_similarity` (
  `stock_code1` varchar(50) DEFAULT NULL,
  `stock_code2` varchar(50) DEFAULT NULL,
  `similarity` float DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`stock_code1`,`stock_code2`),
  KEY `NewIndex2` (`stock_code1`),
  KEY `NewIndex3` (`similarity`),
  KEY `NewIndex4` (`ts`),
  KEY `NewIndex5` (`stock_code2`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_similarity`
--


--
-- Table structure for table `stock_trade_daily_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`stock_code`,`trade_date`),
  KEY `NewIndex2` (`stock_code`),
  KEY `NewIndex3` (`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_trade_daily_detail`
--


--
-- Table structure for table `stock_trade_daily_detail1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_trade_daily_detail1` (
  `id` bigint(20) NOT NULL,
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `closed_yes` float DEFAULT NULL,
  `begin_today` float DEFAULT NULL,
  `close_today` float DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `volumn` bigint(20) DEFAULT NULL,
  `maxprice` float DEFAULT NULL,
  `minprice` float DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`stock_code`,`trade_date`),
  KEY `NewIndex1` (`stock_code`),
  KEY `NewIndex2` (`trade_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_trade_daily_detail1`
--


--
-- Table structure for table `stocknames`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocknames` (
  `code_id` varchar(15) DEFAULT NULL,
  `stock_name` varchar(50) DEFAULT NULL,
  `isdealed` int(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`code_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocknames`
--


--
-- Table structure for table `temp_anaylis_loan1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_anaylis_loan1`
--


--
-- Table structure for table `temp_anaylis_loan11`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_anaylis_loan11`
--


--
-- Table structure for table `temp_anaylis_loan2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_anaylis_loan2` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期',
  `loan_margin_change_ratio_1` double DEFAULT NULL,
  `loan_monny_buy_change_ratio_1` double DEFAULT NULL,
  `close_ratio_bef_1` double DEFAULT NULL,
  `close_ratio_after_1` double DEFAULT NULL,
  `close_ratio_after_3` double DEFAULT NULL,
  `fjvr_10` double DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_anaylis_loan2`
--


--
-- Table structure for table `temp_continue_inc`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_continue_inc`
--


--
-- Table structure for table `temp_stockcode_day`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_stockcode_day` (
  `stock_code` varchar(30) DEFAULT NULL,
  `trade_date` datetime DEFAULT NULL,
  `is_dealed` int(1) NOT NULL DEFAULT '0'
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_stockcode_day`
--


--
-- Table structure for table `tmp_loan_analysis`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_loan_analysis` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_loan_analysis`
--


--
-- Table structure for table `tmp_loan_analysis1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_loan_analysis1` (
  `stock_code` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(10) DEFAULT NULL COMMENT '股票名称',
  `trade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期',
  `continuely_decrease_days` int(5) DEFAULT '0' COMMENT '融资融券余额连续下降天数',
  `decrease_ratio` float DEFAULT NULL COMMENT '融资融券余额下降比率',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_loan_analysis1`
--


--
-- Table structure for table `tmp_loan_monny_loan_stock_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_loan_monny_loan_stock_detail` (
  `trade_date` timestamp NULL DEFAULT NULL COMMENT '交易日期'
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_loan_monny_loan_stock_detail`
--


--
-- Table structure for table `ts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts` (
  `id` int(11) DEFAULT NULL,
  `purchased` date DEFAULT NULL
)
/*!50100 PARTITION BY RANGE (YEAR(purchased))
SUBPARTITION BY HASH (TO_DAYS(purchased))
SUBPARTITIONS 2
(PARTITION p0 VALUES LESS THAN (1990),
 PARTITION p1 VALUES LESS THAN (2000),
 PARTITION p2 VALUES LESS THAN MAXVALUE) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts`
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-26 19:32:29
