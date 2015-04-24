/*
SQLyog Ultimate v8.4 
MySQL - 5.1.73 : Database - static_index
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `audit_multisheet_all` */

CREATE TABLE `audit_multisheet_all` (
  `day_str` varchar(8) DEFAULT NULL,
  `www_ip` decimal(20,2) DEFAULT NULL,
  `www_pv` decimal(20,2) DEFAULT NULL,
  `www_uv` decimal(20,2) DEFAULT NULL,
  `www_shop_count` decimal(20,2) DEFAULT NULL,
  `www_product_count` decimal(20,2) DEFAULT NULL,
  `www_index_pv` decimal(20,2) DEFAULT NULL,
  `www_index_next_pv` decimal(20,2) DEFAULT NULL,
  `www_index_fw_visit_uv` decimal(20,2) DEFAULT NULL,
  `www_index_fw_next_uv` decimal(20,2) DEFAULT NULL,
  `www_order` decimal(20,2) DEFAULT NULL,
  `www_order_app` decimal(20,2) DEFAULT NULL,
  `hejihua_ip` decimal(20,2) DEFAULT NULL,
  `pc_orders_num` decimal(20,2) DEFAULT NULL,
  `wap_pv` decimal(20,2) DEFAULT NULL,
  `hejihua_pv` decimal(20,2) DEFAULT NULL,
  `order_buyer_uv` decimal(20,2) DEFAULT NULL,
  `buyer_visit_num_day` decimal(20,2) DEFAULT NULL,
  `seller_visit_num_day` decimal(20,2) DEFAULT NULL,
  `payed_orders` decimal(20,2) DEFAULT NULL,
  `hejihua_uv` decimal(20,2) DEFAULT NULL,
  `app_paid_orders_num` decimal(20,2) DEFAULT NULL,
  `pc_paid_orders_num` decimal(20,2) DEFAULT NULL,
  `regedit_buyer_day` decimal(20,2) DEFAULT NULL,
  `payed_orders_amount` decimal(20,2) DEFAULT NULL,
  `app_paid_orders_amount` decimal(20,2) DEFAULT NULL,
  `pc_paid_orders_amout` decimal(20,2) DEFAULT NULL,
  `hejihua_shop_counts` decimal(20,2) DEFAULT NULL,
  `regedit_buyers` decimal(20,2) DEFAULT NULL,
  `regedit_sellers` decimal(20,2) DEFAULT NULL,
  `payed_buyers` decimal(20,2) DEFAULT NULL,
  `app_paid_buyer_num` decimal(20,2) DEFAULT NULL,
  `pc_paid_buyers_num` decimal(20,2) DEFAULT NULL,
  `hejihua_product_counts` decimal(20,2) DEFAULT NULL,
  `login_seller_1_month` decimal(20,2) DEFAULT NULL,
  `www_recharge` decimal(20,2) DEFAULT NULL,
  `login_seller_3_month` decimal(20,2) DEFAULT NULL,
  `buy_30day` decimal(20,2) DEFAULT NULL,
  `withdraw_amount` decimal(20,2) DEFAULT NULL,
  `login_seller_6_month` decimal(20,2) DEFAULT NULL,
  `www_refund` decimal(20,2) DEFAULT NULL,
  `repeat_buy_30day` decimal(20,2) DEFAULT NULL,
  `buy_60day` decimal(20,2) DEFAULT NULL,
  `repeat_buy_60day` decimal(20,2) DEFAULT NULL,
  `nologin_num` decimal(20,2) DEFAULT NULL,
  `wap_index_fw_visit_uv` decimal(20,2) DEFAULT NULL,
  `wap_index_fw_next_uv` decimal(20,2) DEFAULT NULL,
  `android_pv_num` decimal(20,2) DEFAULT NULL,
  `ios_pv_num` decimal(20,2) DEFAULT NULL,
  `android_ip_num` decimal(20,2) DEFAULT NULL,
  `ios_ip_num` decimal(20,2) DEFAULT NULL,
  `www_confirm` decimal(20,2) DEFAULT NULL,
  `buyer_ip` decimal(20,2) DEFAULT NULL,
  `seller_ip` decimal(20,2) DEFAULT NULL,
  `buyer_pv` decimal(20,2) DEFAULT NULL,
  `seller_pv` decimal(20,2) DEFAULT NULL,
  `wap_ip` decimal(20,2) DEFAULT NULL,
  `wap_uv` decimal(20,2) DEFAULT NULL,
  `app_regit_users_num` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `audit_multisheet_all` */

insert  into `audit_multisheet_all`(`day_str`,`www_ip`,`www_pv`,`www_uv`,`www_shop_count`,`www_product_count`,`www_index_pv`,`www_index_next_pv`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`www_order`,`www_order_app`,`hejihua_ip`,`pc_orders_num`,`wap_pv`,`hejihua_pv`,`order_buyer_uv`,`buyer_visit_num_day`,`seller_visit_num_day`,`payed_orders`,`hejihua_uv`,`app_paid_orders_num`,`pc_paid_orders_num`,`regedit_buyer_day`,`payed_orders_amount`,`app_paid_orders_amount`,`pc_paid_orders_amout`,`hejihua_shop_counts`,`regedit_buyers`,`regedit_sellers`,`payed_buyers`,`app_paid_buyer_num`,`pc_paid_buyers_num`,`hejihua_product_counts`,`login_seller_1_month`,`www_recharge`,`login_seller_3_month`,`buy_30day`,`withdraw_amount`,`login_seller_6_month`,`www_refund`,`repeat_buy_30day`,`buy_60day`,`repeat_buy_60day`,`nologin_num`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`www_confirm`,`buyer_ip`,`seller_ip`,`buyer_pv`,`seller_pv`,`wap_ip`,`wap_uv`,`app_regit_users_num`) values ('20150422','101180.00','1417465.00','92019.00','61550.00','2860890.00','306010.00','155245.00','16143.00','7211.00','1398.00','218.00','1292.00','1180.00','45294.00','43190.00','281.00','1524.00','7101.00','879.00','94.00','72.00','807.00','731.00','3391782.02','292482.55','3099299.47','1215.00','390602.00','56599.00','213.00','25.00','188.00','40337.00','45505.00','1888601.09','51180.00','2743.00','1994018.80','59101.00','1373.77','812.00','3882.00','1221.00','155142.00','187.00','130.00','210869.00','35155.00','6349.00','1274.00','2335.00','4089.00','4089.00','200241.00','200241.00','340.00','535.00','225.00');
insert  into `audit_multisheet_all`(`day_str`,`www_ip`,`www_pv`,`www_uv`,`www_shop_count`,`www_product_count`,`www_index_pv`,`www_index_next_pv`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`www_order`,`www_order_app`,`hejihua_ip`,`pc_orders_num`,`wap_pv`,`hejihua_pv`,`order_buyer_uv`,`buyer_visit_num_day`,`seller_visit_num_day`,`payed_orders`,`hejihua_uv`,`app_paid_orders_num`,`pc_paid_orders_num`,`regedit_buyer_day`,`payed_orders_amount`,`app_paid_orders_amount`,`pc_paid_orders_amout`,`hejihua_shop_counts`,`regedit_buyers`,`regedit_sellers`,`payed_buyers`,`app_paid_buyer_num`,`pc_paid_buyers_num`,`hejihua_product_counts`,`login_seller_1_month`,`www_recharge`,`login_seller_3_month`,`buy_30day`,`withdraw_amount`,`login_seller_6_month`,`www_refund`,`repeat_buy_30day`,`buy_60day`,`repeat_buy_60day`,`nologin_num`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`www_confirm`,`buyer_ip`,`seller_ip`,`buyer_pv`,`seller_pv`,`wap_ip`,`wap_uv`,`app_regit_users_num`) values ('20150423','96144.00','1484721.00','83647.00','61550.00','2861594.00','300610.00','158867.00','15733.00','7154.00','1688.00','150.00','1229.00','1538.00','45365.00','42021.00','325.00','1551.00','6235.00','930.00','421.00','63.00','867.00','654.00','2610278.08','114137.55','2496140.53','1215.00','391256.00','56662.00','211.00','19.00','193.00','40380.00','46538.00','1504406.64','52138.00','2753.00','2321899.11','59938.00','2900.56','812.00','3952.00','1248.00','129883.00','197.00','138.00','204835.00','36441.00','6715.00','1318.00','2647.00','3477.00','3477.00','195026.00','195026.00','338.00','538.00','195.00');

/*Table structure for table `audit_multisheet_orders_sum` */

CREATE TABLE `audit_multisheet_orders_sum` (
  `day_str` varchar(8) DEFAULT NULL,
  `www_order` decimal(20,2) DEFAULT NULL,
  `order_buyer_uv` decimal(20,2) DEFAULT NULL,
  `payed_orders` decimal(20,2) DEFAULT NULL,
  `payed_orders_amount` decimal(20,2) DEFAULT NULL,
  `payed_buyers` decimal(20,2) DEFAULT NULL,
  `www_recharge` decimal(20,2) DEFAULT NULL,
  `www_refund` decimal(20,2) DEFAULT NULL,
  `withdraw_amount` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `audit_multisheet_orders_sum` */

insert  into `audit_multisheet_orders_sum`(`day_str`,`www_order`,`order_buyer_uv`,`payed_orders`,`payed_orders_amount`,`payed_buyers`,`www_recharge`,`www_refund`,`withdraw_amount`) values ('20150420','1911.00','305.00','1450.00','3413241.27','250.00','2527089.84','1403.20',NULL);
insert  into `audit_multisheet_orders_sum`(`day_str`,`www_order`,`order_buyer_uv`,`payed_orders`,`payed_orders_amount`,`payed_buyers`,`www_recharge`,`www_refund`,`withdraw_amount`) values ('20150421','1722.00','357.00','1399.00','3708803.88','239.00','2459921.02','2945.85','1295460.04');
insert  into `audit_multisheet_orders_sum`(`day_str`,`www_order`,`order_buyer_uv`,`payed_orders`,`payed_orders_amount`,`payed_buyers`,`www_recharge`,`www_refund`,`withdraw_amount`) values ('20150422','1398.00','281.00','879.00','3391782.02','213.00','1888601.09','1373.77','1994018.80');
insert  into `audit_multisheet_orders_sum`(`day_str`,`www_order`,`order_buyer_uv`,`payed_orders`,`payed_orders_amount`,`payed_buyers`,`www_recharge`,`www_refund`,`withdraw_amount`) values ('20150423','1688.00','325.00','930.00','2610278.08','211.00','1504406.64','2900.56','2321899.11');

/*Table structure for table `audit_multisheet_www` */

CREATE TABLE `audit_multisheet_www` (
  `day_str` varchar(8) DEFAULT NULL,
  `www_ip` decimal(20,2) DEFAULT NULL,
  `www_pv` decimal(20,2) DEFAULT NULL,
  `www_shop_count` decimal(20,2) DEFAULT NULL,
  `www_product_count` decimal(20,2) DEFAULT NULL,
  `www_index_pv` decimal(20,2) DEFAULT NULL,
  `www_index_next_pv` decimal(20,2) DEFAULT NULL,
  `www_index_fw_visit_uv` decimal(20,2) DEFAULT NULL,
  `www_index_fw_next_uv` decimal(20,2) DEFAULT NULL,
  `www_uv` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `audit_multisheet_www` */

insert  into `audit_multisheet_www`(`day_str`,`www_ip`,`www_pv`,`www_shop_count`,`www_product_count`,`www_index_pv`,`www_index_next_pv`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`www_uv`) values ('20150420','110987.00','1481502.00','61550.00','2853277.00','311517.00','149521.00','16204.00','7260.00','104533.00');
insert  into `audit_multisheet_www`(`day_str`,`www_ip`,`www_pv`,`www_shop_count`,`www_product_count`,`www_index_pv`,`www_index_next_pv`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`www_uv`) values ('20150421','107927.00','1478123.00','61550.00','2855857.00','307045.00','144413.00','15650.00','7160.00','95816.00');
insert  into `audit_multisheet_www`(`day_str`,`www_ip`,`www_pv`,`www_shop_count`,`www_product_count`,`www_index_pv`,`www_index_next_pv`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`www_uv`) values ('20150422','101180.00','1417465.00','61550.00','2860890.00','306010.00','155245.00','16143.00','7211.00','92019.00');
insert  into `audit_multisheet_www`(`day_str`,`www_ip`,`www_pv`,`www_shop_count`,`www_product_count`,`www_index_pv`,`www_index_next_pv`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`www_uv`) values ('20150423','96144.00','1484721.00','61550.00','2861594.00','300610.00','158867.00','15733.00','7154.00','83647.00');

/*Table structure for table `index_audit_columns` */

CREATE TABLE `index_audit_columns` (
  `day_str` varchar(8) DEFAULT NULL,
  `ts` datetime DEFAULT NULL,
  `buyer_visit_num_day` decimal(20,2) DEFAULT NULL,
  `seller_visit_num_day` decimal(20,2) DEFAULT NULL,
  `nologin_num` decimal(20,2) DEFAULT NULL,
  `login_seller_1_month` decimal(20,2) DEFAULT NULL,
  `login_seller_3_month` decimal(20,2) DEFAULT NULL,
  `login_seller_6_month` decimal(20,2) DEFAULT NULL,
  `regedit_buyer_day` decimal(20,2) DEFAULT NULL,
  `regedit_buyers` decimal(20,2) DEFAULT NULL,
  `regedit_sellers` decimal(20,2) DEFAULT NULL,
  `www_index_fw_visit_uv` decimal(20,2) DEFAULT NULL,
  `www_index_fw_next_uv` decimal(20,2) DEFAULT NULL,
  `wap_index_fw_visit_uv` decimal(20,2) DEFAULT NULL,
  `wap_index_fw_next_uv` decimal(20,2) DEFAULT NULL,
  `android_pv_num` decimal(20,2) DEFAULT NULL,
  `ios_pv_num` decimal(20,2) DEFAULT NULL,
  `android_ip_num` decimal(20,2) DEFAULT NULL,
  `ios_ip_num` decimal(20,2) DEFAULT NULL,
  `wap_pv` decimal(20,2) DEFAULT NULL,
  `www_pv` decimal(20,2) DEFAULT NULL,
  `www_ip` decimal(20,2) DEFAULT NULL,
  `www_order` decimal(20,2) DEFAULT NULL,
  `www_recharge` decimal(20,2) DEFAULT NULL,
  `www_refund` decimal(20,2) DEFAULT NULL,
  `www_confirm` decimal(20,2) DEFAULT NULL,
  `buy_30day` decimal(20,2) DEFAULT NULL,
  `buy_60day` decimal(20,2) DEFAULT NULL,
  `repeat_buy_30day` decimal(20,2) DEFAULT NULL,
  `repeat_buy_60day` decimal(20,2) DEFAULT NULL,
  `hejihua_pv` decimal(20,2) DEFAULT NULL,
  `hejihua_ip` decimal(20,2) DEFAULT NULL,
  `www_order_app` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `index_audit_columns` */

insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150408','2015-04-09 05:14:38','1560.00','5640.00','134743.00','34049.00','41897.00','47860.00','694.00','380698.00','55984.00','16522.00','7413.00','230.00','153.00','173646.00','39590.00','5439.00','1112.00','20890.00','1558939.00','109945.00','1410.00','2284913.09','4313.12','2394.00','2466.00','3012.00','1466.00','1762.00','71120.00','1039.00','109.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150407','2015-04-08 16:01:52','1707.00','5888.00','133699.00','33057.00','41080.00','46945.00','757.00','380004.00','55944.00','16061.00','7058.00','214.00','149.00','196661.00','37439.00','5723.00','1214.00','25464.00','1423936.00','104809.00','697.00','2013113.21','6411.80','1882.00','2453.00','2990.00','1448.00','1731.00','56567.00','1099.00',NULL);
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150409','2015-04-10 09:46:12','1652.00','5988.00','160060.00','34973.00','42654.00','48807.00','700.00','381398.00','56039.00','16029.00','7376.00','227.00','150.00','173719.00','37196.00','5559.00','1171.00','26512.00','1591398.00','114073.00','1413.00','2639676.42','3488.92','2430.00','2492.00','3064.00','1484.00','1801.00','53405.00','1214.00','85.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150410','2015-04-11 04:29:02','1527.00','7936.00','144164.00','35870.00','43431.00','49657.00','650.00','382048.00','56088.00','16484.00','7960.00','221.00','154.00','160423.00','36254.00','5249.00','1104.00','26641.00','1440791.00','109008.00','844.00','2154565.04','708.06','1789.00','2509.00','3109.00','1489.00','1834.00','52961.00','1108.00','63.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150411','2015-04-12 04:26:06','1234.00','6030.00','129129.00','36468.00','43992.00','50317.00','608.00','382656.00','56088.00','14237.00','6507.00','200.00','130.00','176077.00','34944.00','5739.00','1181.00','31151.00','1360646.00','102737.00','1220.00','1874525.63','2971.63','1564.00','2516.00','3143.00','1490.00','1850.00','48316.00','1188.00','49.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150412','2015-04-13 04:11:17','1135.00','4858.00','136051.00','36799.00','44280.00','50838.00','577.00','383233.00','56088.00','12712.00','5072.00','223.00','167.00','211576.00','36857.00','6123.00','1206.00','35713.00','1340153.00','97434.00','1069.00','2142387.15','3006.66','1860.00','2519.00','3178.00','1501.00','1873.00','47789.00','1104.00','60.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150413','2015-04-14 05:25:38','1558.00','8037.00','169964.00','37602.00','44867.00','51672.00','746.00','383979.00','56167.00','17434.00','8269.00','219.00','163.00','199780.00','38176.00','5960.00','1370.00','30953.00','1740699.00','114448.00','1416.00','2492894.89','1094.90','2085.00','2551.00','3246.00','1530.00','1921.00','70131.00','1173.00','136.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150414','2015-04-15 05:42:17','1572.00','6451.00','196050.00','38568.00','45475.00','52598.00','777.00','384756.00','56215.00','16501.00','7490.00','155.00','95.00','200846.00','35831.00','6249.00','1218.00','27558.00','1722925.00','128091.00','1442.00','2229928.10','997.00','2102.00','2567.00','3308.00','1545.00','1960.00','96929.00','1060.00','227.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150415','2015-04-16 05:21:21','1644.00','6045.00','220789.00','39595.00','45489.00','53529.00','762.00','385518.00','56269.00','16358.00','7487.00','201.00','135.00','197233.00','39452.00','6287.00','1383.00','27125.00','1575960.00','107203.00','1343.00','1881210.27','3354.90','1770.00','2565.00','3364.00','1556.00','1998.00','110211.00','1163.00','168.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150416','2015-04-17 05:21:17','1607.00','6074.00','205339.00','40444.00','46302.00','54409.00','769.00','386287.00','56350.00','16546.00','7495.00','208.00','146.00','182763.00','36548.00','6521.00','1388.00','29549.00','1531930.00','111861.00','1648.00','1541074.26','5611.88','2497.00','2584.00','3430.00','1581.00','2048.00','99328.00','1024.00','133.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150417','2015-04-18 05:30:33','1597.00','5727.00','178422.00','41267.00','47225.00','55285.00','746.00','387033.00','56401.00','15579.00','7061.00','221.00','153.00','188817.00','30240.00','6218.00','1274.00','31854.00','1423816.00','110817.00','1311.00','1738579.77','1707.53','2709.00','2595.00','3488.00','1606.00','2092.00','71813.00','1294.00','90.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150418','2015-04-19 05:10:21','1282.00','4636.00','138662.00','41778.00','47833.00','55885.00','628.00','387661.00','56401.00','13877.00','5840.00','197.00','138.00','199364.00','36343.00','6142.00','1237.00','42871.00','1374847.00','102265.00','1156.00','1627351.34','25477.50','2468.00','2597.00','3553.00','1611.00','2128.00','47340.00','1046.00','96.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150419','2015-04-20 05:02:19','1244.00','3599.00','137157.00','42191.00','48364.00','56466.00','661.00','388322.00','56403.00','12399.00','4473.00','200.00','126.00','206334.00','32537.00','6048.00','1226.00','43422.00','1345158.00','106326.00','1181.00','1401541.89','3020.98','2720.00','2611.00','3613.00','1627.00','2165.00','54506.00','1136.00','79.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150420','2015-04-21 05:22:29','1670.00','5881.00','159902.00','43069.00','49232.00','57366.00','816.00','389138.00','56465.00','16204.00','7260.00','214.00','145.00','198769.00','35939.00','6195.00','1351.00','45437.00','1481502.00','110987.00','1819.00','2527089.84','1403.20','2772.00','2661.00','3706.00','1646.00','2214.00','73140.00','1192.00','96.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150421','2015-04-22 09:16:00','1627.00','6013.00','164770.00','44123.00','50130.00','58221.00','733.00','389871.00','56524.00','15650.00','7160.00','211.00','149.00','205465.00','36492.00','6348.00','1279.00','44892.00','1478123.00','107927.00','1722.00','2459921.02','2945.85','2451.00','2719.00','3804.00','810.00','1205.00','63458.00','1135.00','141.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150422','2015-04-23 16:10:39','1524.00','7101.00','155142.00','45505.00','51180.00','59101.00','731.00','390602.00','56599.00','16143.00','7211.00','187.00','130.00','210869.00','35155.00','6349.00','1274.00','45294.00','1417465.00','101180.00','1398.00','1888601.09','1373.77','2335.00','2743.00','3882.00','812.00','1221.00','43190.00','1292.00','218.00');
insert  into `index_audit_columns`(`day_str`,`ts`,`buyer_visit_num_day`,`seller_visit_num_day`,`nologin_num`,`login_seller_1_month`,`login_seller_3_month`,`login_seller_6_month`,`regedit_buyer_day`,`regedit_buyers`,`regedit_sellers`,`www_index_fw_visit_uv`,`www_index_fw_next_uv`,`wap_index_fw_visit_uv`,`wap_index_fw_next_uv`,`android_pv_num`,`ios_pv_num`,`android_ip_num`,`ios_ip_num`,`wap_pv`,`www_pv`,`www_ip`,`www_order`,`www_recharge`,`www_refund`,`www_confirm`,`buy_30day`,`buy_60day`,`repeat_buy_30day`,`repeat_buy_60day`,`hejihua_pv`,`hejihua_ip`,`www_order_app`) values ('20150423','2015-04-24 06:01:36','1551.00','6235.00','129883.00','46538.00','52138.00','59938.00','654.00','391256.00','56662.00','15733.00','7154.00','197.00','138.00','204835.00','36441.00','6715.00','1318.00','45365.00','1484721.00','96144.00','1688.00','1504406.64','2900.56','2647.00','2753.00','3952.00','812.00','1248.00','42021.00','1229.00','150.00');

/*Table structure for table `schema_audit_index` */

CREATE TABLE `schema_audit_index` (
  `index_name_en` varchar(50) DEFAULT NULL,
  `index_name_cn` varchar(500) DEFAULT NULL,
  `is_fullfill` varchar(50) DEFAULT NULL,
  `seq` bigint(21) NOT NULL,
  `sql_str` varchar(1000) DEFAULT NULL,
  `sql_concrete` varchar(1000) DEFAULT NULL,
  `index_type1` varchar(50) DEFAULT NULL,
  `index_type2` varchar(50) DEFAULT NULL,
  `data_source` varchar(50) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`index_name_en`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `schema_audit_index` */

insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('buyer_visit_num_day','买家访客量（主站）','Y',1,NULL,'一天买家人数，包括全站数据(主站,work,wap)','流量数据','访问量（UV细分）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('seller_visit_num_day','卖家访客量（主站）','Y',2,NULL,'一天卖家人数，包括全站数据(主站,work,wap)','流量数据','访问量（UV细分）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('nologin_num','游客访客量（主站）','Y',3,NULL,'一天游客（未登陆）人数，包括全站数据(主站,work,wap)','流量数据','访问量（UV细分）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('login_seller_1_month','一个月内登陆用户数（卖家）','Y',4,NULL,NULL,'业务数据','卖家登陆未登陆','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('login_seller_3_month','三个月内登陆用户数（卖家）','Y',5,NULL,NULL,'业务数据','卖家登陆未登陆','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('login_seller_6_month','半年内登陆用户数（卖家）','Y',6,NULL,NULL,'业务数据','卖家登陆未登陆','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('regedit_buyer_day','当日新增注册（买家）','Y',7,NULL,NULL,'业务数据','注册量','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('regedit_buyers','总注册量(买家)','Y',8,NULL,NULL,'业务数据','注册量','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('regedit_sellers','总注册量(卖家)','Y',9,NULL,NULL,'业务数据','注册量','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_index_fw_visit_uv','义乌购主页来自站外的UV','Y',10,NULL,NULL,'流量数据','跳出率','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_index_fw_next_uv','义乌购主页来自站外再跳到其他页面的UV','Y',11,NULL,NULL,'流量数据','跳出率','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('wap_index_fw_visit_uv','WAP主页来自站外的UV','Y',12,NULL,NULL,'流量数据','跳出率','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('wap_index_fw_next_uv','WAP主页来自站外的UV再跳转到其他页面的UV','Y',13,NULL,NULL,'流量数据','跳出率','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('android_pv_num','当日android app访问量','Y',14,'select android_pv_num from agg_app_day','当日android移动端义乌购app使用量','流量数据','流量（pv\\ip）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('ios_pv_num','当日iphone app访问量','Y',15,'select ios_pv_num from agg_app_day','当日iphone移动端义乌购app使用量','流量数据','流量（pv\\ip）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('android_ip_num','当日android app访问IP数','Y',16,NULL,NULL,NULL,NULL,NULL);
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('ios_ip_num','当日iphone app访问IP数','Y',17,NULL,NULL,NULL,NULL,NULL);
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('wap_pv','当日移动端页面访问量','Y',18,NULL,'当日移动端wap站点访问量','流量数据','流量（pv\\ip）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_pv','当日主站访问量','Y',19,'select t.TOTALCOUNT from LOG_DAYTOTAL_COUNT t','当日义乌购主站访问量','流量数据','流量（pv\\ip）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_ip','当日主站访问IP量','Y',20,'select t.ipcount as ipcount   from LOG_DAYTOTAL_COUNT t','当日义乌购主站访问IP量','流量数据','流量（pv\\ip）','日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_order','当日主站生成订单数(所有来源)','Y',21,' select count(*) from T_OM_Order o\n  where o.status in (1, 2, 3)\n  and o.create_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.create_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\'\n  and o.update_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\';','当日主站生成订单数(所有来源)','业务数据','订单和购买','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_order_app','当日主站生成订单数（APP来源）','Y',22,' select count(1) num,\'www_order_app\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str from T_OM_Order o\n  where o.status in (0,1, 2, 3)\n  and o.create_time >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.order_id like \'%01\'','当日主站生成订单数（APP来源）','业务数据','订单和购买','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_recharge','当日主站充值金额','Y',23,'select round(nvl(sum(t.trade_amount)/100,0),2) as trade_amount from T_fm_trade t\n where t.trade_code in(100,  200, 501, 108)\n  and (t.amount_source like \'%银行\' or t.amount_source = \'支付宝\' or\n          t.amount_source = \'银联\' or t.amount_source = \'手机支付宝\' or\n          t.amount_source = \'邮政储蓄\' or t.amount_source = \'环迅\' or \n          t.amount_source = \'paypal\')\n  and t.create_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and t.create_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\';\n ',NULL,'业务数据','订单和购买','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_refund','当日主站申请退款金额','Y',24,' select sum(o.total_confer_fee)/100 from T_OM_Order o\n  where o.status = 4\n  and o.update_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\'','当日主站申请退款总金额','业务数据','订单和购买','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('www_confirm','当日主站确认订单数','Y',25,' select count(1) from T_OM_Order o\n  where o.status in (2, 3)\n  and o.update_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\';','当日主站确认收货订单数量','业务数据','订单和购买','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('buy_30day','30天内购买家数','Y',26,NULL,NULL,NULL,NULL,NULL);
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('buy_60day','60天内购买买家数','Y',27,NULL,NULL,NULL,NULL,NULL);
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('repeat_buy_30day','重复购买买家数(30天)','Y',28,'  select round(nvl(a.buyer_id/b.buyertotalcount, 0), 2) as repeat_rate\n  from ( select count(buyer_id) as buyer_id from (\n              select buyer_id as buyer_id\n               from ( select o.buyer_id as buyer_id, o.order_id as order_id\n                           from T_OM_Order o\n                           where o.status in (1, 2, 3) \n                            and o.create_time > to_char(sysdate-30, \'yyyymmdd\')||\'000000\'\n                            and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n                           group by o.buyer_id, o.order_id)\n                            group by buyer_id \n                            having count(buyer_id) > 1 ) )  a, \n            ( select count(distinct oo.buyer_id) as buyertotalcount \n               from t_Om_Order oo\n               where oo.status in (1, 2, 3) \n                and oo.create_time > to_char(sysdate-30, \'yyyymmdd\')||\'000000\'\n                and oo.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\') b;','统计最近30天内，同一个买家生成两个有效订单的买家数量','业务数据','订单和购买','业务数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('repeat_buy_60day','重复购买买家数(60天)','Y',29,' select round(nvl(a.buyer_id/b.buyertotalcount, 0), 2) as repeat_rate\n  from ( select count(buyer_id) as buyer_id from (\n              select buyer_id as buyer_id\n               from ( select o.buyer_id as buyer_id, o.order_id as order_id\n                           from T_OM_Order o\n                           where o.status in (1, 2, 3) \n                            and o.create_time > to_char(sysdate-60, \'yyyymmdd\')||\'000000\'\n                            and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n                           group by o.buyer_id, o.order_id)\n                            group by buyer_id \n                            having count(buyer_id) > 1 ) )  a, \n            ( select count(distinct oo.buyer_id) as buyertotalcount \n               from t_Om_Order oo\n               where oo.status in (1, 2, 3) \n                and oo.create_time > to_char(sysdate-60, \'yyyymmdd\')||\'000000\'\n                and oo.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\') b;','统计最近60天内，同一个买家生成两个有效订单的买家数量',NULL,NULL,NULL);
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('hejihua_pv','当日合计划访问量','Y',30,NULL,'当日合计划访问量',NULL,NULL,'日志数据库');
insert  into `schema_audit_index`(`index_name_en`,`index_name_cn`,`is_fullfill`,`seq`,`sql_str`,`sql_concrete`,`index_type1`,`index_type2`,`data_source`) values ('hejihua_ip','当日合计划访问IP数','Y',31,NULL,'当日合计划合计IP数',NULL,NULL,'日志数据库');

/*Table structure for table `schema_audit_index_sheets` */

CREATE TABLE `schema_audit_index_sheets` (
  `index_key` varchar(500) DEFAULT NULL,
  `index_cn_name` varchar(500) DEFAULT NULL,
  `sheet_sequence` int(11) DEFAULT NULL,
  `is_newly` varchar(500) DEFAULT NULL,
  `is_fullfill` varchar(500) DEFAULT NULL,
  `sequence_in_all` int(11) DEFAULT NULL,
  `statistic_sql` varchar(1000) DEFAULT NULL,
  `index_define` varchar(500) DEFAULT NULL,
  `index_category1` varchar(500) DEFAULT NULL,
  `index_category2` varchar(500) DEFAULT NULL,
  `data_source` varchar(500) DEFAULT NULL,
  `sheet_name` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `schema_audit_index_sheets` */

insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('buyer_visit_num_day','买家访客量（主站）',4,NULL,'Y',1,NULL,'一天买家访问人数，包括全站数据(主站,work,wap)买家登录后，退出记录cookie，下次无论什么状态（除登录卖家账号）访问仍记录为UV','流量数据','访问量（UV细分）','日志数据库','买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('seller_visit_num_day','卖家访客量（主站）',4,NULL,'Y',2,NULL,'一天卖家访问人数，包括全站数据(主站,work,wap)卖家登录后，退出记录cookie，下次无论什么状态访问仍记录为UV','流量数据','访问量（UV细分）','日志数据库','卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('nologin_num','游客访客量（主站）',NULL,NULL,'Y',3,NULL,'一天游客（未登陆）人数，包括全站数据(主站,work,wap)','流量数据','访问量（UV细分）','日志数据库',NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('login_seller_1_month','一个月内登陆用户数（卖家）',7,NULL,'Y',4,NULL,NULL,'业务数据','卖家登陆未登陆','业务数据库','卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('login_seller_3_month','三个月内登陆用户数（卖家）',8,NULL,'Y',5,NULL,NULL,'业务数据','卖家登陆未登陆','业务数据库','卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('login_seller_6_month','半年内登陆用户数（卖家）',9,NULL,'Y',6,NULL,NULL,'业务数据','卖家登陆未登陆','业务数据库','卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('regedit_buyer_day','当日新增注册（买家）',5,NULL,'Y',7,NULL,NULL,'业务数据','注册量','业务数据库','买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('regedit_buyers','总注册量(买家)',6,NULL,'Y',8,NULL,NULL,'业务数据','注册量','业务数据库','买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('regedit_sellers','总注册量(卖家)',6,NULL,'Y',9,NULL,NULL,'业务数据','注册量','业务数据库','卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_index_fw_visit_uv','义乌购主页来自站外的UV',8,NULL,'Y',10,NULL,'修改：访问当前页面并关闭的PV/访问当前页面的PV，也就是用PV计算','流量数据','跳出率','业务数据库','主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_index_fw_next_uv','义乌购主页来自站外再跳到其他页面的UV',9,NULL,'Y',11,NULL,NULL,'流量数据','跳出率','日志数据库','主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('wap_index_fw_visit_uv','WAP主页来自站外的UV',NULL,NULL,'Y',12,NULL,NULL,'流量数据','跳出率','日志数据库',NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('wap_index_fw_next_uv','WAP主页来自站外的UV再跳转到其他页面的UV',NULL,NULL,'Y',13,NULL,NULL,'流量数据','跳出率','日志数据库',NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('android_pv_num','当日android app访问量',NULL,NULL,'Y',14,'select android_pv_num from agg_app_day','当日android移动端义乌购app使用量','流量数据','流量（pv\\ip）','日志数据库',NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('ios_pv_num','当日iphone app访问量',NULL,NULL,'Y',15,'select ios_pv_num from agg_app_day','当日iphone移动端义乌购app使用量','流量数据','流量（pv\\ip）','日志数据库',NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('android_ip_num','当日android app访问IP数',NULL,NULL,'Y',16,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('ios_ip_num','当日iphone app访问IP数',NULL,NULL,'Y',17,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('wap_pv','当日移动端页面访问量',3,NULL,'Y',18,NULL,'当日移动端wap站点访问量','流量数据','流量（pv\\ip）','日志数据库','WAP');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_pv','当日主站访问量',2,NULL,'Y',19,'select t.TOTALCOUNT from LOG_DAYTOTAL_COUNT t','当日义乌购主站访问量','流量数据','流量（pv\\ip）','日志数据库','主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_ip','当日主站访问IP量',1,NULL,'Y',20,'select t.ipcount as ipcount   from LOG_DAYTOTAL_COUNT t','当日义乌购主站访问IP量','流量数据','流量（pv\\ip）','日志数据库','主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_order','当日主站生成订单数(所有来源)',2,NULL,'Y',21,'  select count(1) num,\'www_order\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str from T_OM_Order o\n  where  o.create_time >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'','在当日生成了订单号，统计所有状态，按订单的创建时间计算当天','业务数据','订单和购买','业务数据库','订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_order_app','当日主站生成订单数（APP来源）',2,NULL,'Y',22,' select count(1) num,\'www_order_app\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str from T_OM_Order o\n  where o.status in (0,1, 2, 3)\n  and o.create_time >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.order_id like \'%01\'','当日主站生成订单数（APP来源）','业务数据','订单和购买','业务数据库','细-订单（APP）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_recharge','当日主站充值金额',7,NULL,'Y',23,'select round(nvl(sum(t.trade_amount)/100,0),2) as trade_amount from T_fm_trade t\n where t.trade_code in(100,  200, 501, 108)\n  and (t.amount_source like \'%银行\' or t.amount_source = \'支付宝\' or\n          t.amount_source = \'银联\' or t.amount_source = \'手机支付宝\' or\n          t.amount_source = \'邮政储蓄\' or t.amount_source = \'环迅\' or \n          t.amount_source = \'paypal\')\n  and t.create_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and t.create_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\';\n ',NULL,'业务数据','订单和购买','业务数据库','订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_refund','当日主站申请退款金额',9,NULL,'Y',24,' select sum(o.total_confer_fee)/100 from T_OM_Order o\n  where o.status = 4\n  and o.update_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\'','当日主站申请退款总金额','业务数据','订单和购买','业务数据库','订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_confirm','当日主站确认订单数',NULL,NULL,'Y',25,' select count(1) from T_OM_Order o\n  where o.status in (2, 3)\n  and o.update_time > to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.update_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\';','当日主站确认收货订单数量','业务数据','订单和购买','业务数据库',NULL);
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('buy_30day','30天内购买家数',8,NULL,'Y',26,NULL,NULL,NULL,NULL,NULL,'买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('buy_60day','60天内购买买家数',10,NULL,'Y',27,NULL,NULL,NULL,NULL,NULL,'买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('repeat_buy_30day','重复购买买家数(30天)',9,NULL,'Y',28,'  select round(nvl(a.buyer_id/b.buyertotalcount, 0), 2) as repeat_rate\n  from ( select count(buyer_id) as buyer_id from (\n              select buyer_id as buyer_id\n               from ( select o.buyer_id as buyer_id, o.order_id as order_id\n                           from T_OM_Order o\n                           where o.status in (1, 2, 3) \n                            and o.create_time > to_char(sysdate-30, \'yyyymmdd\')||\'000000\'\n                            and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n                           group by o.buyer_id, o.order_id)\n                            group by buyer_id \n                            having count(buyer_id) > 1 ) )  a, \n            ( select count(distinct oo.buyer_id) as buyertotalcount \n               from t_Om_Order oo\n               where oo.status in (1, 2, 3) \n                and oo.create_time > to_char(sysdate-30, \'yyyymmdd\')||\'000000\'\n                and oo.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\') b;','重复购买买家数(30天),1天1个买家多个订单不算重复购买，也就是买家要有2天及以上购买记录','业务数据','订单和购买','业务数据库','买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('repeat_buy_60day','重复购买买家数(60天)',11,NULL,'Y',29,' select round(nvl(a.buyer_id/b.buyertotalcount, 0), 2) as repeat_rate\n  from ( select count(buyer_id) as buyer_id from (\n              select buyer_id as buyer_id\n               from ( select o.buyer_id as buyer_id, o.order_id as order_id\n                           from T_OM_Order o\n                           where o.status in (1, 2, 3) \n                            and o.create_time > to_char(sysdate-60, \'yyyymmdd\')||\'000000\'\n                            and o.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n                           group by o.buyer_id, o.order_id)\n                            group by buyer_id \n                            having count(buyer_id) > 1 ) )  a, \n            ( select count(distinct oo.buyer_id) as buyertotalcount \n               from t_Om_Order oo\n               where oo.status in (1, 2, 3) \n                and oo.create_time > to_char(sysdate-60, \'yyyymmdd\')||\'000000\'\n                and oo.create_time < to_char(sysdate, \'yyyymmdd\')||\'000000\') b;','重复购买买家数(30天),1天1个买家多个订单不算重复购买，也就是买家要有2天及以上购买记录',NULL,NULL,NULL,'买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('hejihua_pv','当日合计划访问量',3,NULL,'Y',30,NULL,'当日合计划访问量',NULL,NULL,'日志数据库','合计划');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('hejihua_ip','当日合计划访问IP数',2,NULL,'Y',31,NULL,'当日合计划合计IP数',NULL,NULL,'日志数据库','合计划');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_uv','主站的访客总量',3,NULL,'Y',NULL,NULL,'主站的访客总量，',NULL,NULL,NULL,'主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_shop_count','主站的商铺总数',4,'是',NULL,NULL,NULL,'主站的商铺（开通状态）',NULL,NULL,NULL,'主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_product_count','主站的商品总数',5,'是',NULL,NULL,NULL,'主站的商品总数（审核通过）',NULL,NULL,NULL,'主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('buyer_ip','买家IP',2,'是',NULL,NULL,NULL,'买家IP',NULL,NULL,NULL,'买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('buyer_pv','买家pv',3,'是',NULL,NULL,NULL,'买家pv',NULL,NULL,NULL,'买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('buyer_login','买家登录',7,'是',NULL,NULL,NULL,'计算当日登录的买家数',NULL,NULL,NULL,'买家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('order_buyer_uv','订单买家数',3,'是',NULL,NULL,' select count(distinct(SELLER_ID)) from T_OM_Order o\n  where o.create_time >= to_char(sysdate, \'yyyymmdd\')||\'000000\'\n  and o.create_time < to_char(sysdate+1, \'yyyymmdd\')||\'000000\'\n','与当日订单数对应的买家数量，1个买家对应多笔订单，仍记为1',NULL,NULL,NULL,'订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('payed_orders','付款订单数',4,'是',NULL,NULL,' select count(1) num,\'payed_orders\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str\n from T_OM_Order o\n  where o.PAY_TIME >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.PAY_TIME < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n   and o.PAY_STATUS = 2\n   and o.status in (1,2,3)','在当日付款的订单数量，若订单不在当日生成，仍计算入内（包含1=等待卖家发货, 2=等待买家确认收货(已发货), 3=交易完成;付款状态只包含支付完成））',NULL,NULL,NULL,'订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('payed_orders_amount','付款订单交易额',5,'是',NULL,NULL,' select sum(TOTAL_SELL_FEE)/100 num,\'payed_orders_amount\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str\n from T_OM_Order o\n  where o.PAY_TIME >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.PAY_TIME < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n   and o.PAY_STATUS = 2\n   and o.status in (1,2,3)','对应付款订单数的交易总额（包含1=等待卖家发货, 2=等待买家确认收货(已发货), 3=交易完成;付款状态只包含支付完成;总额(=各产品价格和+运费-优惠价)）',NULL,NULL,NULL,'订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('payed_buyers','付款买家数',6,'是',NULL,NULL,' select count(distinct(BUYER_ID)) num,\'payed_buyers\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str\n from T_OM_Order o\n  where o.PAY_TIME >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and o.PAY_TIME < to_char(sysdate, \'yyyymmdd\')||\'000000\'\n   and o.PAY_STATUS = 2\n   and o.status in (1,2,3)','对应付款订单数的付款买家个数，1个买家对应多笔订单，仍记为1',NULL,NULL,NULL,'订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('withdraw_amount','提现金额',8,'是',NULL,NULL,'select sum(TRADE_AMOUNT)/100 num , \'withdraw_amount\' index_name, to_char(sysdate-1, \'yyyymmdd\') day_str \nfrom  t_fm_trade t where t.trade_code = \'101\'\nand t.TRADE_TIME >= to_char(sysdate-1, \'yyyymmdd\')||\'000000\'\n  and t.TRADE_TIME < to_char(sysdate, \'yyyymmdd\')||\'000000\'','当日提现的数额，统计成功的(包括手动提现和自动)',NULL,NULL,NULL,'订单（总）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('seller_ip','卖家IP',2,'是','Y',NULL,NULL,NULL,NULL,NULL,NULL,'卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('seller_pv','卖家PV',3,'是','Y',NULL,NULL,NULL,NULL,NULL,NULL,'卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('seller_login','卖家登录',6,'是',NULL,NULL,NULL,'可以从登录日志里统计，1个卖家一天重复登录，记为1',NULL,NULL,NULL,'卖家');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('hejihua_uv','合计划UV',4,'是','Y',NULL,NULL,'国内合计划访客总数',NULL,NULL,'日志数据库','合计划');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('wap_ip','wap_IP',2,'是',NULL,NULL,NULL,'wap_IP',NULL,NULL,NULL,'WAP');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('wap_uv','wap_UV',4,'是',NULL,NULL,NULL,'wap_UV',NULL,NULL,NULL,'WAP');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('app_buyer_num','APP_买家数',3,'是',NULL,NULL,NULL,'APP,与当日订单数对应的买家数量，1个买家对应多笔订单，仍记为1',NULL,NULL,NULL,'细-订单（APP）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('app_paid_orders_num','APP_付款订单数',4,'是',NULL,NULL,NULL,'APP,在当日付款的订单数量，若订单不在当日生成，仍计算入内。',NULL,NULL,NULL,'细-订单（APP）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('app_paid_orders_amount','APP_交易额',5,'是',NULL,NULL,NULL,'APP,对应付款订单数的交易总额',NULL,NULL,NULL,'细-订单（APP）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('app_paid_buyer_num','APP_付款买家数',6,'是',NULL,NULL,NULL,'APP,对应付款订单数的付款买家个数，1个买家对应多笔订单，仍记为1',NULL,NULL,NULL,'细-订单（APP）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('pc_orders_num','PC端_订单数',2,'是',NULL,NULL,NULL,'pc端，在当日生成了订单号，即统计，（状态包括：未付款、已付款、已发货、退款、关闭、已确认）',NULL,NULL,NULL,'细-订单（PC端）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('pc_orders_buyer','PC端_买家数',3,'是',NULL,NULL,NULL,'PC端,与当日订单数对应的买家数量，1个买家对应多笔订单，仍记为1',NULL,NULL,NULL,'细-订单（PC端）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('pc_paid_orders_num','PC端_付款订单数',4,'是',NULL,NULL,NULL,'PC端,在当日付款的订单数量，若订单不在当日生成，仍计算入内。',NULL,NULL,NULL,'细-订单（PC端）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('pc_paid_orders_amout','PC端_交易额',5,'是',NULL,NULL,NULL,'PC端,对应付款订单数的交易总额',NULL,NULL,NULL,'细-订单（PC端）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('pc_paid_buyers_num','PC端_付款买家数',6,'是',NULL,NULL,NULL,'PC端,对应付款订单数的付款买家个数，1个买家对应多笔订单，仍记为1',NULL,NULL,NULL,'细-订单（PC端）');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_index_pv','主站首页PV',6,'是','Y',NULL,NULL,NULL,NULL,NULL,NULL,'主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('www_index_next_pv','来自首页的PV',7,'是',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'主站');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('hejihua_shop_counts','合计划商铺总数',5,'是','Y',NULL,NULL,NULL,NULL,NULL,'业务数据库','合计划');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('hejihua_product_counts','合计划商品总数',6,'是','Y',NULL,NULL,NULL,NULL,NULL,'业务数据库','合计划');
insert  into `schema_audit_index_sheets`(`index_key`,`index_cn_name`,`sheet_sequence`,`is_newly`,`is_fullfill`,`sequence_in_all`,`statistic_sql`,`index_define`,`index_category1`,`index_category2`,`data_source`,`sheet_name`) values ('app_regit_users_num','APP_注册用户数',1,'是',NULL,NULL,NULL,'在APP上注册的用户数',NULL,NULL,NULL,'细-订单（APP）');

/*Table structure for table `static_index_audit` */

CREATE TABLE `static_index_audit` (
  `num` decimal(20,2) DEFAULT NULL,
  `day_str` varchar(8) DEFAULT NULL,
  `index_name` varchar(50) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `NewIndex1` (`day_str`,`index_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `static_index_audit` */

insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7687.00','20150401','seller_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('121475.00','20150401','nologin_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('18242.00','20150401','www_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('8328.00','20150401','www_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('194.00','20150401','wap_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('118.00','20150401','wap_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('743.00','20150401','regedit_buyer_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('376150.00','20150401','regedit_buyers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('91099.00','20150401','regedit_sellers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('28198.00','20150401','login_seller_1_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36797.00','20150401','login_seller_3_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('42018.00','20150401','login_seller_6_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1621.00','20150402','buyer_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7030.00','20150402','seller_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('141326.00','20150402','nologin_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('17698.00','20150402','www_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('8040.00','20150402','www_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('177.00','20150402','wap_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('158866.00','20150403','nologin_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6133.00','20150403','seller_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('376848.00','20150402','regedit_buyers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('91204.00','20150402','regedit_sellers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('29248.00','20150402','login_seller_1_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('37808.00','20150402','login_seller_3_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('43054.00','20150402','login_seller_6_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5512.00','20150402','android_ip_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('208547.00','20150402','android_pv_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36952.00','20150402','ios_pv_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1284.00','20150402','ios_ip_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('462.00','20150402','www_order','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1.00','20150402','repeat_buy_30day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('0.00','20150402','repeat_buy_60day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1492.00','20150403','buyer_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1582.00','20150402','www_confirm','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('15951.00','20150403','www_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7106.00','20150403','www_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('203.00','20150403','wap_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('129.00','20150403','wap_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('660.00','20150403','regedit_buyer_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('377508.00','20150403','regedit_buyers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('91264.00','20150403','regedit_sellers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('30361.00','20150403','login_seller_1_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('38785.00','20150403','login_seller_3_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('44060.00','20150403','login_seller_6_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1137.00','20150404','buyer_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4160.00','20150404','seller_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('116482.00','20150404','nologin_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('12043.00','20150404','www_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4572.00','20150404','www_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('198.00','20150404','wap_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('115.00','20150404','wap_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('557.00','20150404','regedit_buyer_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('378065.00','20150404','regedit_buyers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('91293.00','20150404','regedit_sellers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('30922.00','20150404','login_seller_1_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39315.00','20150404','login_seller_3_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('44759.00','20150404','login_seller_6_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('982.00','20150405','buyer_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2761.00','20150405','seller_visit_num_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('112469.00','20150405','nologin_num','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('11018.00','20150405','www_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3744.00','20150405','www_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('178.00','20150405','wap_index_fw_visit_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('128.00','20150405','wap_index_fw_next_uv','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('520.00','20150405','regedit_buyer_day','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('378585.00','20150405','regedit_buyers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('91293.00','20150405','regedit_sellers','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('31013.00','20150405','login_seller_1_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39680.00','20150405','login_seller_3_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45263.00','20150405','login_seller_6_month','0000-00-00 00:00:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('618.00','20150406','www_order','2015-04-07 16:35:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1242.00','20150406','ios_ip_num','2015-04-07 17:07:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('40473.00','20150406','ios_pv_num','2015-04-07 17:07:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5644.00','20150406','android_ip_num','2015-04-07 17:07:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('231773.00','20150406','android_pv_num','2015-04-07 17:07:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45927.00','20150406','login_seller_6_month','2015-04-07 13:44:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('40194.00','20150406','login_seller_3_month','2015-04-07 13:44:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('31690.00','20150406','login_seller_1_month','2015-04-07 13:44:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('35405.00','20150406','regedit_sellers','2015-04-07 17:07:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('379247.00','20150406','regedit_buyers','2015-04-07 17:07:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('662.00','20150406','regedit_buyer_day','2015-04-07 13:44:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('116.00','20150406','wap_index_fw_next_uv','2015-04-07 13:44:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('170.00','20150406','wap_index_fw_visit_uv','2015-04-07 13:44:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5547.00','20150406','www_index_fw_next_uv','2015-04-07 13:44:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('13800.00','20150406','www_index_fw_visit_uv','2015-04-07 13:44:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('128968.00','20150406','nologin_num','2015-04-07 13:44:09');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4256.00','20150406','seller_visit_num_day','2015-04-07 13:44:09');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1210.00','20150406','buyer_visit_num_day','2015-04-07 13:44:09');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('126263.00','20150406','www_ip','2015-04-07 13:52:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1856850.00','20150406','www_pv','2015-04-07 13:52:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56934.00','20150406','hejihua_pv','2015-04-07 13:52:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1124.00','20150406','hejihua_ip','2015-04-07 13:52:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('20671.00','20150406','wap_pv','2015-04-07 13:52:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6001.80','20150406','www_refund','2015-04-07 16:35:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1539.00','20150406','www_confirm','2015-04-07 16:35:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1411.00','20150406','repeat_buy_30day','2015-04-07 16:00:41');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1696.00','20150406','repeat_buy_60day','2015-04-07 15:57:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2406.00','20150406','buy_30day','2015-04-07 16:35:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2948.00','20150406','buy_60day','2015-04-07 16:35:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1484222.47','20150406','www_recharge','2015-04-07 16:35:03');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1707.00','20150407','buyer_visit_num_day','2015-04-08 10:57:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5888.00','20150407','seller_visit_num_day','2015-04-08 10:57:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('133699.00','20150407','nologin_num','2015-04-08 10:57:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16061.00','20150407','www_index_fw_visit_uv','2015-04-08 10:57:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7058.00','20150407','www_index_fw_next_uv','2015-04-08 10:57:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('214.00','20150407','wap_index_fw_visit_uv','2015-04-08 10:57:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('149.00','20150407','wap_index_fw_next_uv','2015-04-08 10:57:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('757.00','20150407','regedit_buyer_day','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('380004.00','20150407','regedit_buyers','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('55944.00','20150407','regedit_sellers','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('33057.00','20150407','login_seller_1_month','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('41080.00','20150407','login_seller_3_month','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('46945.00','20150407','login_seller_6_month','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('234317.00','20150407','android_pv_num','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5723.00','20150407','android_ip_num','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('37439.00','20150407','ios_pv_num','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1214.00','20150407','ios_ip_num','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('104809.00','20150407','www_ip','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1423936.00','20150407','www_pv','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56567.00','20150407','hejihua_pv','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1099.00','20150407','hejihua_ip','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('25464.00','20150407','wap_pv','2015-04-08 10:57:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('697.00','20150407','www_order','2015-04-08 17:10:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2013113.21','20150407','www_recharge','2015-04-08 16:01:51');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6411.80','20150407','www_refund','2015-04-08 16:01:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1882.00','20150407','www_confirm','2015-04-08 17:10:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1448.00','20150407','repeat_buy_30day','2015-04-08 17:10:14');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1731.00','20150407','repeat_buy_60day','2015-04-08 17:10:14');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2453.00','20150407','buy_30day','2015-04-08 17:10:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2990.00','20150407','buy_60day','2015-04-08 17:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1560.00','20150408','buyer_visit_num_day','2015-04-09 05:14:29');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5640.00','20150408','seller_visit_num_day','2015-04-09 05:14:29');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('134743.00','20150408','nologin_num','2015-04-09 05:14:29');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16522.00','20150408','www_index_fw_visit_uv','2015-04-09 05:14:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7413.00','20150408','www_index_fw_next_uv','2015-04-09 05:14:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('230.00','20150408','wap_index_fw_visit_uv','2015-04-09 05:14:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('153.00','20150408','wap_index_fw_next_uv','2015-04-09 05:14:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('694.00','20150408','regedit_buyer_day','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('380698.00','20150408','regedit_buyers','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('55984.00','20150408','regedit_sellers','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('34049.00','20150408','login_seller_1_month','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('41897.00','20150408','login_seller_3_month','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('47860.00','20150408','login_seller_6_month','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('213595.00','20150408','android_pv_num','2015-04-09 14:52:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5439.00','20150408','android_ip_num','2015-04-09 14:52:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39590.00','20150408','ios_pv_num','2015-04-09 14:52:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1112.00','20150408','ios_ip_num','2015-04-09 14:52:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('109945.00','20150408','www_ip','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1558939.00','20150408','www_pv','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('71120.00','20150408','hejihua_pv','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1039.00','20150408','hejihua_ip','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('20890.00','20150408','wap_pv','2015-04-09 05:14:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1410.00','20150408','www_order','2015-04-09 14:52:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2284913.09','20150408','www_recharge','2015-04-09 05:14:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4313.12','20150408','www_refund','2015-04-09 05:14:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2394.00','20150408','www_confirm','2015-04-09 14:52:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1466.00','20150408','repeat_buy_30day','2015-04-09 14:52:08');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1762.00','20150408','repeat_buy_60day','2015-04-09 13:28:57');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2466.00','20150408','buy_30day','2015-04-09 13:28:58');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3012.00','20150408','buy_60day','2015-04-09 13:28:58');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('109.00','20150408','www_order_app','2015-04-09 14:52:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1652.00','20150409','buyer_visit_num_day','2015-04-10 09:46:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5988.00','20150409','seller_visit_num_day','2015-04-10 09:46:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('160060.00','20150409','nologin_num','2015-04-10 09:46:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16029.00','20150409','www_index_fw_visit_uv','2015-04-10 09:46:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7376.00','20150409','www_index_fw_next_uv','2015-04-10 09:46:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('227.00','20150409','wap_index_fw_visit_uv','2015-04-10 09:46:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('150.00','20150409','wap_index_fw_next_uv','2015-04-10 09:46:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('700.00','20150409','regedit_buyer_day','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('381398.00','20150409','regedit_buyers','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56039.00','20150409','regedit_sellers','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('34973.00','20150409','login_seller_1_month','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('42654.00','20150409','login_seller_3_month','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('48807.00','20150409','login_seller_6_month','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('211272.00','20150409','android_pv_num','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5559.00','20150409','android_ip_num','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('37196.00','20150409','ios_pv_num','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1171.00','20150409','ios_ip_num','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('114073.00','20150409','www_ip','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1591398.00','20150409','www_pv','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('53405.00','20150409','hejihua_pv','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1214.00','20150409','hejihua_ip','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('26512.00','20150409','wap_pv','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1413.00','20150409','www_order','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('85.00','20150409','www_order_app','2015-04-10 09:46:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2639676.42','20150409','www_recharge','2015-04-10 09:46:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3488.92','20150409','www_refund','2015-04-10 09:46:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2430.00','20150409','www_confirm','2015-04-10 09:46:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1484.00','20150409','repeat_buy_30day','2015-04-10 09:46:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1801.00','20150409','repeat_buy_60day','2015-04-10 09:46:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2492.00','20150409','buy_30day','2015-04-10 09:46:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3064.00','20150409','buy_60day','2015-04-10 09:46:13');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1527.00','20150410','buyer_visit_num_day','2015-04-11 04:28:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7936.00','20150410','seller_visit_num_day','2015-04-11 04:28:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('144164.00','20150410','nologin_num','2015-04-11 04:28:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16484.00','20150410','www_index_fw_visit_uv','2015-04-11 04:28:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7960.00','20150410','www_index_fw_next_uv','2015-04-11 04:28:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('221.00','20150410','wap_index_fw_visit_uv','2015-04-11 04:28:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('154.00','20150410','wap_index_fw_next_uv','2015-04-11 04:28:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('650.00','20150410','regedit_buyer_day','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('382048.00','20150410','regedit_buyers','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56088.00','20150410','regedit_sellers','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('35870.00','20150410','login_seller_1_month','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('43431.00','20150410','login_seller_3_month','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('49657.00','20150410','login_seller_6_month','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('197037.00','20150410','android_pv_num','2015-04-11 17:28:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5249.00','20150410','android_ip_num','2015-04-11 17:28:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36254.00','20150410','ios_pv_num','2015-04-11 17:28:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1104.00','20150410','ios_ip_num','2015-04-11 17:28:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('109008.00','20150410','www_ip','2015-04-11 17:28:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1440791.00','20150410','www_pv','2015-04-11 17:28:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('52961.00','20150410','hejihua_pv','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1108.00','20150410','hejihua_ip','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('26641.00','20150410','wap_pv','2015-04-11 04:29:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('844.00','20150410','www_order','2015-04-11 17:29:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('63.00','20150410','www_order_app','2015-04-11 17:29:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2154565.04','20150410','www_recharge','2015-04-11 04:29:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('708.06','20150410','www_refund','2015-04-11 04:29:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1789.00','20150410','www_confirm','2015-04-11 17:29:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1489.00','20150410','repeat_buy_30day','2015-04-11 17:29:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1834.00','20150410','repeat_buy_60day','2015-04-11 17:29:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2509.00','20150410','buy_30day','2015-04-11 17:29:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3109.00','20150410','buy_60day','2015-04-11 17:29:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1234.00','20150411','buyer_visit_num_day','2015-04-12 04:25:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6030.00','20150411','seller_visit_num_day','2015-04-12 04:25:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('129129.00','20150411','nologin_num','2015-04-12 04:25:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('14237.00','20150411','www_index_fw_visit_uv','2015-04-12 04:25:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6507.00','20150411','www_index_fw_next_uv','2015-04-12 04:25:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('200.00','20150411','wap_index_fw_visit_uv','2015-04-12 04:25:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('130.00','20150411','wap_index_fw_next_uv','2015-04-12 04:25:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('608.00','20150411','regedit_buyer_day','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('382656.00','20150411','regedit_buyers','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56088.00','20150411','regedit_sellers','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36468.00','20150411','login_seller_1_month','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('43992.00','20150411','login_seller_3_month','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('50317.00','20150411','login_seller_6_month','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('211465.00','20150411','android_pv_num','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5739.00','20150411','android_ip_num','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('34944.00','20150411','ios_pv_num','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1181.00','20150411','ios_ip_num','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('102737.00','20150411','www_ip','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1360646.00','20150411','www_pv','2015-04-12 04:26:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('48316.00','20150411','hejihua_pv','2015-04-12 04:26:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1188.00','20150411','hejihua_ip','2015-04-12 04:26:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('31151.00','20150411','wap_pv','2015-04-12 04:26:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1220.00','20150411','www_order','2015-04-12 04:26:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('49.00','20150411','www_order_app','2015-04-12 04:26:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1874525.63','20150411','www_recharge','2015-04-12 04:26:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2971.63','20150411','www_refund','2015-04-12 04:26:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1564.00','20150411','www_confirm','2015-04-12 04:26:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1490.00','20150411','repeat_buy_30day','2015-04-12 04:26:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1850.00','20150411','repeat_buy_60day','2015-04-12 04:26:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2516.00','20150411','buy_30day','2015-04-12 04:26:08');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3143.00','20150411','buy_60day','2015-04-12 04:26:08');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1135.00','20150412','buyer_visit_num_day','2015-04-13 04:11:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4858.00','20150412','seller_visit_num_day','2015-04-13 04:11:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('136051.00','20150412','nologin_num','2015-04-13 04:11:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('12712.00','20150412','www_index_fw_visit_uv','2015-04-13 04:11:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5072.00','20150412','www_index_fw_next_uv','2015-04-13 04:11:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('223.00','20150412','wap_index_fw_visit_uv','2015-04-13 04:11:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('167.00','20150412','wap_index_fw_next_uv','2015-04-13 04:11:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('577.00','20150412','regedit_buyer_day','2015-04-13 04:11:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('383233.00','20150412','regedit_buyers','2015-04-13 04:11:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56088.00','20150412','regedit_sellers','2015-04-13 04:11:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36799.00','20150412','login_seller_1_month','2015-04-13 04:11:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('44280.00','20150412','login_seller_3_month','2015-04-13 04:11:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('50838.00','20150412','login_seller_6_month','2015-04-13 04:11:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('248864.00','20150412','android_pv_num','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6123.00','20150412','android_ip_num','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36857.00','20150412','ios_pv_num','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1206.00','20150412','ios_ip_num','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('97434.00','20150412','www_ip','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1340153.00','20150412','www_pv','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('47789.00','20150412','hejihua_pv','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1104.00','20150412','hejihua_ip','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('35713.00','20150412','wap_pv','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1069.00','20150412','www_order','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('60.00','20150412','www_order_app','2015-04-13 04:11:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2142387.15','20150412','www_recharge','2015-04-13 04:11:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3006.66','20150412','www_refund','2015-04-13 04:11:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1860.00','20150412','www_confirm','2015-04-13 04:11:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1501.00','20150412','repeat_buy_30day','2015-04-13 04:11:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1873.00','20150412','repeat_buy_60day','2015-04-13 04:11:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2519.00','20150412','buy_30day','2015-04-13 04:11:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3178.00','20150412','buy_60day','2015-04-13 04:11:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1558.00','20150413','buyer_visit_num_day','2015-04-14 05:25:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('8037.00','20150413','seller_visit_num_day','2015-04-14 05:25:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('169964.00','20150413','nologin_num','2015-04-14 05:25:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('17434.00','20150413','www_index_fw_visit_uv','2015-04-14 05:25:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('8269.00','20150413','www_index_fw_next_uv','2015-04-14 05:25:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('219.00','20150413','wap_index_fw_visit_uv','2015-04-14 05:25:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('163.00','20150413','wap_index_fw_next_uv','2015-04-14 05:25:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('746.00','20150413','regedit_buyer_day','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('383979.00','20150413','regedit_buyers','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56167.00','20150413','regedit_sellers','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('37602.00','20150413','login_seller_1_month','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('44867.00','20150413','login_seller_3_month','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('51672.00','20150413','login_seller_6_month','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('238443.00','20150413','android_pv_num','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5960.00','20150413','android_ip_num','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('38176.00','20150413','ios_pv_num','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1370.00','20150413','ios_ip_num','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('110354.00','20150413','www_ip','2015-04-14 09:43:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1740699.00','20150413','www_pv','2015-04-14 09:43:26');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('70131.00','20150413','hejihua_pv','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1173.00','20150413','hejihua_ip','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('30953.00','20150413','wap_pv','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1416.00','20150413','www_order','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('136.00','20150413','www_order_app','2015-04-14 05:25:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2492894.89','20150413','www_recharge','2015-04-14 05:25:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1094.90','20150413','www_refund','2015-04-14 05:25:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2085.00','20150413','www_confirm','2015-04-14 05:25:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1530.00','20150413','repeat_buy_30day','2015-04-14 05:25:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1921.00','20150413','repeat_buy_60day','2015-04-14 05:25:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2551.00','20150413','buy_30day','2015-04-14 05:25:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3246.00','20150413','buy_60day','2015-04-14 05:25:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1572.00','20150414','buyer_visit_num_day','2015-04-15 05:41:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6451.00','20150414','seller_visit_num_day','2015-04-15 05:41:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('196050.00','20150414','nologin_num','2015-04-15 05:41:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16501.00','20150414','www_index_fw_visit_uv','2015-04-15 05:41:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7490.00','20150414','www_index_fw_next_uv','2015-04-15 05:41:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('155.00','20150414','wap_index_fw_visit_uv','2015-04-15 05:41:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('95.00','20150414','wap_index_fw_next_uv','2015-04-15 05:41:37');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('777.00','20150414','regedit_buyer_day','2015-04-15 05:41:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('384756.00','20150414','regedit_buyers','2015-04-15 05:41:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56215.00','20150414','regedit_sellers','2015-04-15 05:41:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('38568.00','20150414','login_seller_1_month','2015-04-15 05:41:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45475.00','20150414','login_seller_3_month','2015-04-15 05:41:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('52598.00','20150414','login_seller_6_month','2015-04-15 05:41:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('237075.00','20150414','android_pv_num','2015-04-15 05:41:43');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6249.00','20150414','android_ip_num','2015-04-15 05:41:43');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('35831.00','20150414','ios_pv_num','2015-04-15 05:41:43');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1218.00','20150414','ios_ip_num','2015-04-15 05:41:43');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1722925.00','20150414','www_pv','2015-04-15 05:41:43');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('128091.00','20150414','www_ip','2015-04-15 05:41:57');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('158398.00','20150414','all_ip','2015-04-15 05:42:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2347501.00','20150414','all_pv','2015-04-15 05:42:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('96929.00','20150414','hejihua_pv','2015-04-15 05:42:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1060.00','20150414','hejihua_ip','2015-04-15 05:42:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('27558.00','20150414','wap_pv','2015-04-15 05:42:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1442.00','20150414','www_order','2015-04-15 05:42:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('227.00','20150414','www_order_app','2015-04-15 05:42:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2229928.10','20150414','www_recharge','2015-04-15 05:42:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('997.00','20150414','www_refund','2015-04-15 05:42:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2102.00','20150414','www_confirm','2015-04-15 05:42:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1545.00','20150414','repeat_buy_30day','2015-04-15 05:42:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1960.00','20150414','repeat_buy_60day','2015-04-15 05:42:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2567.00','20150414','buy_30day','2015-04-15 05:42:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3308.00','20150414','buy_60day','2015-04-15 05:42:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1644.00','20150415','buyer_visit_num_day','2015-04-16 05:20:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6045.00','20150415','seller_visit_num_day','2015-04-16 05:20:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('220789.00','20150415','nologin_num','2015-04-16 05:20:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16358.00','20150415','www_index_fw_visit_uv','2015-04-16 05:20:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7487.00','20150415','www_index_fw_next_uv','2015-04-16 05:20:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('201.00','20150415','wap_index_fw_visit_uv','2015-04-16 05:20:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('135.00','20150415','wap_index_fw_next_uv','2015-04-16 05:20:42');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('762.00','20150415','regedit_buyer_day','2015-04-16 05:20:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('385518.00','20150415','regedit_buyers','2015-04-16 05:20:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56269.00','20150415','regedit_sellers','2015-04-16 05:20:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39595.00','20150415','login_seller_1_month','2015-04-16 05:20:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45489.00','20150415','login_seller_3_month','2015-04-16 05:20:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('53529.00','20150415','login_seller_6_month','2015-04-16 05:20:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('236985.00','20150415','android_pv_num','2015-04-16 05:20:48');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6287.00','20150415','android_ip_num','2015-04-16 05:20:48');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39452.00','20150415','ios_pv_num','2015-04-16 05:20:48');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1383.00','20150415','ios_ip_num','2015-04-16 05:20:48');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1575960.00','20150415','www_pv','2015-04-16 05:20:48');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('107203.00','20150415','www_ip','2015-04-16 05:21:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('135980.00','20150415','all_ip','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2029277.00','20150415','all_pv','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('110211.00','20150415','hejihua_pv','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1163.00','20150415','hejihua_ip','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('27125.00','20150415','wap_pv','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1343.00','20150415','www_order','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('168.00','20150415','www_order_app','2015-04-16 05:21:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1881210.27','20150415','www_recharge','2015-04-16 05:21:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3354.90','20150415','www_refund','2015-04-16 05:21:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1770.00','20150415','www_confirm','2015-04-16 05:21:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1556.00','20150415','repeat_buy_30day','2015-04-16 05:21:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1998.00','20150415','repeat_buy_60day','2015-04-16 05:21:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2565.00','20150415','buy_30day','2015-04-16 05:21:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3364.00','20150415','buy_60day','2015-04-16 05:21:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1607.00','20150416','buyer_visit_num_day','2015-04-17 05:20:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6074.00','20150416','seller_visit_num_day','2015-04-17 05:20:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('205339.00','20150416','nologin_num','2015-04-17 05:20:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16546.00','20150416','www_index_fw_visit_uv','2015-04-17 05:20:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7495.00','20150416','www_index_fw_next_uv','2015-04-17 05:20:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('208.00','20150416','wap_index_fw_visit_uv','2015-04-17 05:20:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('146.00','20150416','wap_index_fw_next_uv','2015-04-17 05:20:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('769.00','20150416','regedit_buyer_day','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('386287.00','20150416','regedit_buyers','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56350.00','20150416','regedit_sellers','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('40444.00','20150416','login_seller_1_month','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('46302.00','20150416','login_seller_3_month','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('54409.00','20150416','login_seller_6_month','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('219717.00','20150416','android_pv_num','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6521.00','20150416','android_ip_num','2015-04-17 16:22:24');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36548.00','20150416','ios_pv_num','2015-04-17 16:22:24');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1388.00','20150416','ios_ip_num','2015-04-17 16:22:24');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1531930.00','20150416','www_pv','2015-04-17 05:20:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('111861.00','20150416','www_ip','2015-04-17 05:20:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('140872.00','20150416','all_ip','2015-04-17 05:21:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2023937.00','20150416','all_pv','2015-04-17 05:21:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('99328.00','20150416','hejihua_pv','2015-04-17 05:21:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1024.00','20150416','hejihua_ip','2015-04-17 05:21:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('29549.00','20150416','wap_pv','2015-04-17 05:21:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1648.00','20150416','www_order','2015-04-17 05:21:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('133.00','20150416','www_order_app','2015-04-17 05:21:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1541074.26','20150416','www_recharge','2015-04-17 05:21:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5611.88','20150416','www_refund','2015-04-17 05:21:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2497.00','20150416','www_confirm','2015-04-17 05:21:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1581.00','20150416','repeat_buy_30day','2015-04-17 05:21:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2048.00','20150416','repeat_buy_60day','2015-04-17 05:21:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2584.00','20150416','buy_30day','2015-04-17 05:21:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3430.00','20150416','buy_60day','2015-04-17 05:21:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1597.00','20150417','buyer_visit_num_day','2015-04-18 05:29:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5727.00','20150417','seller_visit_num_day','2015-04-18 05:29:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('178422.00','20150417','nologin_num','2015-04-18 05:29:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('15579.00','20150417','www_index_fw_visit_uv','2015-04-18 05:29:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7061.00','20150417','www_index_fw_next_uv','2015-04-18 05:29:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('221.00','20150417','wap_index_fw_visit_uv','2015-04-18 05:29:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('153.00','20150417','wap_index_fw_next_uv','2015-04-18 05:29:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('746.00','20150417','regedit_buyer_day','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('387033.00','20150417','regedit_buyers','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56401.00','20150417','regedit_sellers','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('41267.00','20150417','login_seller_1_month','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('47225.00','20150417','login_seller_3_month','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('55285.00','20150417','login_seller_6_month','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('188817.00','20150417','android_pv_num','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6218.00','20150417','android_ip_num','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('30240.00','20150417','ios_pv_num','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1274.00','20150417','ios_ip_num','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1423816.00','20150417','www_pv','2015-04-18 05:30:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('110817.00','20150417','www_ip','2015-04-18 05:30:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('138971.00','20150417','all_ip','2015-04-18 05:30:31');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1910085.00','20150417','all_pv','2015-04-18 05:30:31');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('71813.00','20150417','hejihua_pv','2015-04-18 05:30:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1294.00','20150417','hejihua_ip','2015-04-18 05:30:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('31854.00','20150417','wap_pv','2015-04-18 05:30:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1311.00','20150417','www_order','2015-04-18 05:30:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('90.00','20150417','www_order_app','2015-04-18 05:30:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1738579.77','20150417','www_recharge','2015-04-18 05:30:32');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1707.53','20150417','www_refund','2015-04-18 05:30:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2709.00','20150417','www_confirm','2015-04-18 05:30:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1606.00','20150417','repeat_buy_30day','2015-04-18 05:30:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2092.00','20150417','repeat_buy_60day','2015-04-18 05:30:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2595.00','20150417','buy_30day','2015-04-18 05:30:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3488.00','20150417','buy_60day','2015-04-18 05:30:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1282.00','20150418','buyer_visit_num_day','2015-04-19 05:09:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4636.00','20150418','seller_visit_num_day','2015-04-19 05:09:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('138662.00','20150418','nologin_num','2015-04-19 05:09:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('13877.00','20150418','www_index_fw_visit_uv','2015-04-19 05:09:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5840.00','20150418','www_index_fw_next_uv','2015-04-19 05:09:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('197.00','20150418','wap_index_fw_visit_uv','2015-04-19 05:09:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('138.00','20150418','wap_index_fw_next_uv','2015-04-19 05:09:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('628.00','20150418','regedit_buyer_day','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('387661.00','20150418','regedit_buyers','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56401.00','20150418','regedit_sellers','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('41778.00','20150418','login_seller_1_month','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('47833.00','20150418','login_seller_3_month','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('55885.00','20150418','login_seller_6_month','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('199364.00','20150418','android_pv_num','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6142.00','20150418','android_ip_num','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36343.00','20150418','ios_pv_num','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1237.00','20150418','ios_ip_num','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1374847.00','20150418','www_pv','2015-04-19 05:09:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('102265.00','20150418','www_ip','2015-04-19 05:10:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('128111.00','20150418','all_ip','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1842350.00','20150418','all_pv','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('47340.00','20150418','hejihua_pv','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1046.00','20150418','hejihua_ip','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('42871.00','20150418','wap_pv','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1156.00','20150418','www_order','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('96.00','20150418','www_order_app','2015-04-19 05:10:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1627351.34','20150418','www_recharge','2015-04-19 05:10:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('25477.50','20150418','www_refund','2015-04-19 05:10:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2468.00','20150418','www_confirm','2015-04-19 05:10:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1611.00','20150418','repeat_buy_30day','2015-04-19 05:10:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2128.00','20150418','repeat_buy_60day','2015-04-19 05:10:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2597.00','20150418','buy_30day','2015-04-19 05:10:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3553.00','20150418','buy_60day','2015-04-19 05:10:23');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1244.00','20150419','buyer_visit_num_day','2015-04-20 05:01:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3599.00','20150419','seller_visit_num_day','2015-04-20 05:01:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('137157.00','20150419','nologin_num','2015-04-20 05:01:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('12399.00','20150419','www_index_fw_visit_uv','2015-04-20 05:01:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4473.00','20150419','www_index_fw_next_uv','2015-04-20 05:01:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('200.00','20150419','wap_index_fw_visit_uv','2015-04-20 05:01:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('126.00','20150419','wap_index_fw_next_uv','2015-04-20 05:01:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('661.00','20150419','regedit_buyer_day','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('388322.00','20150419','regedit_buyers','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56403.00','20150419','regedit_sellers','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('42191.00','20150419','login_seller_1_month','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('48364.00','20150419','login_seller_3_month','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56466.00','20150419','login_seller_6_month','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('206334.00','20150419','android_pv_num','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6048.00','20150419','android_ip_num','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('32537.00','20150419','ios_pv_num','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1226.00','20150419','ios_ip_num','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1345158.00','20150419','www_pv','2015-04-20 05:01:54');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('106326.00','20150419','www_ip','2015-04-20 05:02:04');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('133483.00','20150419','all_ip','2015-04-20 05:02:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1790869.00','20150419','all_pv','2015-04-20 05:02:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('54506.00','20150419','hejihua_pv','2015-04-20 05:02:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1136.00','20150419','hejihua_ip','2015-04-20 05:02:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('43422.00','20150419','wap_pv','2015-04-20 05:02:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1181.00','20150419','www_order','2015-04-20 05:02:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('79.00','20150419','www_order_app','2015-04-20 05:02:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1401541.89','20150419','www_recharge','2015-04-20 05:02:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3020.98','20150419','www_refund','2015-04-20 05:02:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2720.00','20150419','www_confirm','2015-04-20 05:02:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1627.00','20150419','repeat_buy_30day','2015-04-20 05:02:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2165.00','20150419','repeat_buy_60day','2015-04-20 05:02:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2611.00','20150419','buy_30day','2015-04-20 05:02:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3613.00','20150419','buy_60day','2015-04-20 05:02:20');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('266252.00','20150419','www_index_pv','2015-04-20 09:37:41');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1215.00','20150419','hejihua_shop_counts','2015-04-20 15:15:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39854.00','20150419','hejihua_product_counts','2015-04-20 15:15:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('61550.00','20150419','www_shop_count','2015-04-20 15:15:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2849826.00','20150419','www_product_count','2015-04-20 15:15:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('41.00','20150419','hejihua_uv','2015-04-20 14:35:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1670.00','20150420','buyer_visit_num_day','2015-04-21 05:21:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('5881.00','20150420','seller_visit_num_day','2015-04-21 05:21:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('159902.00','20150420','nologin_num','2015-04-21 05:21:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16204.00','20150420','www_index_fw_visit_uv','2015-04-21 05:21:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7260.00','20150420','www_index_fw_next_uv','2015-04-21 05:21:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('214.00','20150420','wap_index_fw_visit_uv','2015-04-21 05:21:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('145.00','20150420','wap_index_fw_next_uv','2015-04-21 05:21:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('816.00','20150420','regedit_buyer_day','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('389138.00','20150420','regedit_buyers','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56465.00','20150420','regedit_sellers','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('43069.00','20150420','login_seller_1_month','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('49232.00','20150420','login_seller_3_month','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('57366.00','20150420','login_seller_6_month','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('198769.00','20150420','android_pv_num','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6195.00','20150420','android_ip_num','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('35939.00','20150420','ios_pv_num','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1351.00','20150420','ios_ip_num','2015-04-21 05:22:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1481502.00','20150420','www_pv','2015-04-21 17:06:52');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('110987.00','20150420','www_ip','2015-04-21 17:07:01');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('139126.00','20150420','all_ip','2015-04-21 05:22:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2017555.00','20150420','all_pv','2015-04-21 05:22:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('73140.00','20150420','hejihua_pv','2015-04-21 05:22:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1192.00','20150420','hejihua_ip','2015-04-21 05:22:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45437.00','20150420','wap_pv','2015-04-21 05:22:27');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1911.00','20150420','www_order','2015-04-21 15:24:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('129.00','20150420','www_order_app','2015-04-21 15:24:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2527089.84','20150420','www_recharge','2015-04-21 05:22:28');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1403.20','20150420','www_refund','2015-04-21 05:22:29');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2548.00','20150420','www_confirm','2015-04-21 15:24:35');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('795.00','20150420','repeat_buy_30day','2015-04-21 15:24:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1176.00','20150420','repeat_buy_60day','2015-04-21 15:24:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2661.00','20150420','buy_30day','2015-04-21 05:22:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3706.00','20150420','buy_60day','2015-04-21 05:22:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('311517.00','20150420','www_index_pv','2015-04-21 15:24:31');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('89.00','20150420','hejihua_uv','2015-04-21 15:24:31');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('250.00','20150420','payed_buyers','2015-04-21 15:24:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('305.00','20150420','order_buyer_uv','2015-04-21 15:24:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1450.00','20150420','payed_orders','2015-04-21 15:24:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3413241.27','20150420','payed_orders_amount','2015-04-21 15:24:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1215.00','20150420','hejihua_shop_counts','2015-04-21 15:24:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('39967.00','20150420','hejihua_product_counts','2015-04-21 15:24:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('61550.00','20150420','www_shop_count','2015-04-21 15:24:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2853277.00','20150420','www_product_count','2015-04-21 15:24:40');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('149521.00','20150420','www_index_next_pv','2015-04-21 17:07:38');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('104533.00','20150420','www_uv','2015-04-21 17:07:15');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1627.00','20150421','buyer_visit_num_day','2015-04-22 05:36:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6013.00','20150421','seller_visit_num_day','2015-04-22 05:36:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('164770.00','20150421','nologin_num','2015-04-22 05:36:46');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('15650.00','20150421','www_index_fw_visit_uv','2015-04-22 05:36:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7160.00','20150421','www_index_fw_next_uv','2015-04-22 05:36:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('211.00','20150421','wap_index_fw_visit_uv','2015-04-22 05:36:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('149.00','20150421','wap_index_fw_next_uv','2015-04-22 05:36:49');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('733.00','20150421','regedit_buyer_day','2015-04-22 05:36:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('389871.00','20150421','regedit_buyers','2015-04-22 05:36:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56524.00','20150421','regedit_sellers','2015-04-22 05:36:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('44123.00','20150421','login_seller_1_month','2015-04-22 05:36:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('50130.00','20150421','login_seller_3_month','2015-04-22 05:36:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('58221.00','20150421','login_seller_6_month','2015-04-22 05:36:55');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('205465.00','20150421','android_pv_num','2015-04-22 09:15:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6348.00','20150421','android_ip_num','2015-04-22 09:15:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36492.00','20150421','ios_pv_num','2015-04-22 09:15:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1279.00','20150421','ios_ip_num','2015-04-22 09:15:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1478123.00','20150421','www_pv','2015-04-22 09:15:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('107927.00','20150421','www_ip','2015-04-22 09:15:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('95816.00','20150421','www_uv','2015-04-22 09:16:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('144413.00','20150421','www_index_next_pv','2015-04-22 09:16:33');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('136979.00','20150421','all_ip','2015-04-22 05:38:24');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('307045.00','20150421','www_index_pv','2015-04-22 05:38:24');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2022344.00','20150421','all_pv','2015-04-22 05:38:24');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('63458.00','20150421','hejihua_pv','2015-04-22 05:38:25');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1135.00','20150421','hejihua_ip','2015-04-22 05:38:25');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('52.00','20150421','hejihua_uv','2015-04-22 05:38:25');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('44892.00','20150421','wap_pv','2015-04-22 05:38:25');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('238.00','20150421','payed_buyers','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('357.00','20150421','order_buyer_uv','2015-04-22 05:38:26');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1398.00','20150421','payed_orders','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1722.00','20150421','www_order','2015-04-22 05:38:26');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3708764.88','20150421','payed_orders_amount','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('141.00','20150421','www_order_app','2015-04-22 05:38:26');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2459921.02','20150421','www_recharge','2015-04-22 05:38:26');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2945.85','20150421','www_refund','2015-04-22 05:38:26');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2451.00','20150421','www_confirm','2015-04-22 13:52:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1215.00','20150421','hejihua_shop_counts','2015-04-22 05:38:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('40062.00','20150421','hejihua_product_counts','2015-04-22 13:52:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('61550.00','20150421','www_shop_count','2015-04-22 05:38:30');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2855857.00','20150421','www_product_count','2015-04-22 13:52:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('810.00','20150421','repeat_buy_30day','2015-04-22 13:52:16');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1205.00','20150421','repeat_buy_60day','2015-04-22 05:38:31');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2719.00','20150421','buy_30day','2015-04-22 13:52:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3804.00','20150421','buy_60day','2015-04-22 13:52:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1295460.04','20150421','withdraw_amount','2015-04-22 14:09:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('24.00','20150421','app_paid_buyer_num','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('49.00','20150421','app_paid_orders_num','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('214.00','20150421','pc_paid_buyers_num','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1349.00','20150421','pc_paid_orders_num','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1581.00','20150421','pc_orders_num','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('147474.02','20150421','app_paid_orders_amount','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3561290.86','20150421','pc_paid_orders_amout','2015-04-22 16:22:19');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('145326.00','20150422','all_ip','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('306010.00','20150422','www_index_pv','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2075618.00','20150422','all_pv','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('43190.00','20150422','hejihua_pv','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1292.00','20150422','hejihua_ip','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('94.00','20150422','hejihua_uv','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45294.00','20150422','wap_pv','2015-04-23 05:28:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('213.00','20150422','payed_buyers','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('281.00','20150422','order_buyer_uv','2015-04-23 05:28:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('879.00','20150422','payed_orders','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1398.00','20150422','www_order','2015-04-23 05:28:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3391782.02','20150422','payed_orders_amount','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('218.00','20150422','www_order_app','2015-04-23 05:28:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1888601.09','20150422','www_recharge','2015-04-23 05:28:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1373.77','20150422','www_refund','2015-04-23 05:28:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2335.00','20150422','www_confirm','2015-04-23 16:11:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1215.00','20150422','hejihua_shop_counts','2015-04-23 05:28:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('40337.00','20150422','hejihua_product_counts','2015-04-23 16:11:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('61550.00','20150422','www_shop_count','2015-04-23 05:28:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2860890.00','20150422','www_product_count','2015-04-23 16:11:21');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('812.00','20150422','repeat_buy_30day','2015-04-23 05:28:17');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1221.00','20150422','repeat_buy_60day','2015-04-23 16:11:22');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2743.00','20150422','buy_30day','2015-04-23 16:11:23');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3882.00','20150422','buy_60day','2015-04-23 16:11:23');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1524.00','20150422','buyer_visit_num_day','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7101.00','20150422','seller_visit_num_day','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('155142.00','20150422','nologin_num','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('200241.00','20150422','buyer_pv','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4089.00','20150422','buyer_ip','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('200241.00','20150422','seller_pv','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('4089.00','20150422','seller_ip','2015-04-23 10:36:44');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('16143.00','20150422','www_index_fw_visit_uv','2015-04-23 10:36:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7211.00','20150422','www_index_fw_next_uv','2015-04-23 10:36:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('187.00','20150422','wap_index_fw_visit_uv','2015-04-23 10:36:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('130.00','20150422','wap_index_fw_next_uv','2015-04-23 10:36:47');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('731.00','20150422','regedit_buyer_day','2015-04-23 10:36:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('390602.00','20150422','regedit_buyers','2015-04-23 10:36:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56599.00','20150422','regedit_sellers','2015-04-23 10:36:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45505.00','20150422','login_seller_1_month','2015-04-23 10:36:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('51180.00','20150422','login_seller_3_month','2015-04-23 10:36:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('59101.00','20150422','login_seller_6_month','2015-04-23 10:36:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('210869.00','20150422','android_pv_num','2015-04-23 16:10:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6349.00','20150422','android_ip_num','2015-04-23 16:10:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('35155.00','20150422','ios_pv_num','2015-04-23 16:10:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1274.00','20150422','ios_ip_num','2015-04-23 16:10:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1417465.00','20150422','www_pv','2015-04-23 16:10:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('101180.00','20150422','www_ip','2015-04-23 16:10:25');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('92019.00','20150422','www_uv','2015-04-23 16:10:39');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('155245.00','20150422','www_index_next_pv','2015-04-23 16:10:58');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('25.00','20150422','app_paid_buyer_num','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('72.00','20150422','app_paid_orders_num','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('188.00','20150422','pc_paid_buyers_num','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('807.00','20150422','pc_paid_orders_num','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1180.00','20150422','pc_orders_num','2015-04-23 10:37:57');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('292482.55','20150422','app_paid_orders_amount','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3099299.47','20150422','pc_paid_orders_amout','2015-04-23 16:11:05');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1994018.80','20150422','withdraw_amount','2015-04-23 10:37:59');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('340.00','20150422','wap_ip','2015-04-23 14:59:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('535.00','20150422','wap_uv','2015-04-23 14:59:56');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('225.00','20150422','app_regit_users_num','2015-04-23 16:53:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1551.00','20150423','buyer_visit_num_day','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6235.00','20150423','seller_visit_num_day','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('129883.00','20150423','nologin_num','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('195026.00','20150423','buyer_pv','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3477.00','20150423','buyer_ip','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('195026.00','20150423','seller_pv','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3477.00','20150423','seller_ip','2015-04-24 06:00:53');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('15733.00','20150423','www_index_fw_visit_uv','2015-04-24 06:01:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('7154.00','20150423','www_index_fw_next_uv','2015-04-24 06:01:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('197.00','20150423','wap_index_fw_visit_uv','2015-04-24 06:01:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('138.00','20150423','wap_index_fw_next_uv','2015-04-24 06:01:00');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('654.00','20150423','regedit_buyer_day','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('391256.00','20150423','regedit_buyers','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('56662.00','20150423','regedit_sellers','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('46538.00','20150423','login_seller_1_month','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('52138.00','20150423','login_seller_3_month','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('59938.00','20150423','login_seller_6_month','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('204835.00','20150423','android_pv_num','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('6715.00','20150423','android_ip_num','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('36441.00','20150423','ios_pv_num','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1318.00','20150423','ios_ip_num','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1484721.00','20150423','www_pv','2015-04-24 06:01:06');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('96144.00','20150423','www_ip','2015-04-24 06:01:18');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('83647.00','20150423','www_uv','2015-04-24 06:01:36');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('158867.00','20150423','www_index_next_pv','2015-04-24 06:02:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('156318.00','20150423','all_ip','2015-04-24 06:02:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('300610.00','20150423','www_index_pv','2015-04-24 06:02:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2320853.00','20150423','all_pv','2015-04-24 06:02:10');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('42021.00','20150423','hejihua_pv','2015-04-24 06:02:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1229.00','20150423','hejihua_ip','2015-04-24 06:02:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('421.00','20150423','hejihua_uv','2015-04-24 06:02:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('45365.00','20150423','wap_pv','2015-04-24 06:02:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('338.00','20150423','wap_ip','2015-04-24 06:02:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('538.00','20150423','wap_uv','2015-04-24 06:02:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('19.00','20150423','app_paid_buyer_num','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('63.00','20150423','app_paid_orders_num','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('150.00','20150423','www_order_app','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('193.00','20150423','pc_paid_buyers_num','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('211.00','20150423','payed_buyers','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('325.00','20150423','order_buyer_uv','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('867.00','20150423','pc_paid_orders_num','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('930.00','20150423','payed_orders','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1538.00','20150423','pc_orders_num','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1688.00','20150423','www_order','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('114137.55','20150423','app_paid_orders_amount','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2496140.53','20150423','pc_paid_orders_amout','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2610278.08','20150423','payed_orders_amount','2015-04-24 06:02:34');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('195.00','20150423','app_regit_users_num','2015-04-24 06:02:45');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1504406.64','20150423','www_recharge','2015-04-24 06:02:51');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2900.56','20150423','www_refund','2015-04-24 06:03:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2321899.11','20150423','withdraw_amount','2015-04-24 06:03:02');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2647.00','20150423','www_confirm','2015-04-24 06:03:07');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1215.00','20150423','hejihua_shop_counts','2015-04-24 06:03:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('40380.00','20150423','hejihua_product_counts','2015-04-24 06:03:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('61550.00','20150423','www_shop_count','2015-04-24 06:03:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2861594.00','20150423','www_product_count','2015-04-24 06:03:11');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('812.00','20150423','repeat_buy_30day','2015-04-24 06:03:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('1248.00','20150423','repeat_buy_60day','2015-04-24 06:03:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('2753.00','20150423','buy_30day','2015-04-24 06:03:12');
insert  into `static_index_audit`(`num`,`day_str`,`index_name`,`ts`) values ('3952.00','20150423','buy_60day','2015-04-24 06:03:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
