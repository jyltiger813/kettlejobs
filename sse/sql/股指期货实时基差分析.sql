SELECT * FROM future_sz50_realtime  ORDER BY trade_time DESC 

ALTER TABLE `future_sz50_realtime` ADD INDEX index_trade_time ( `trade_time` )

DROP INDEX index_trade_time ON future_sz50_realtime


SELECT COUNT(1) FROM future_sz50_realtime

-- 10点前最低基差

SELECT * FROM 
future_sz50_realtime WHERE trade_time >=  '2015-07-08 00:00:00'
AND trade_time<  '2015-07-08 10:00:00'
ORDER BY price DESC 


SELECT * FROM 
future_sz50_realtime WHERE trade_time >=  '2015-07-08 00:00:00'
AND trade_time<  '2015-07-08 10:00:00'
ORDER BY trade_time 


-- 某一天上证50按分钟统计开仓数

SELECT * FROM 
future_sz50_realtime WHERE trade_time >=  '2015-07-10 00:00:00'
AND trade_time<  '2015-07-11 00:00:00'
ORDER BY trade_time DESC 


SELECT * FROM 
future_sz50_realtime WHERE trade_time >= '2015-07-09 00:00:00' 
AND trade_time< '2015-07-10 00:00:00'
ORDER BY trade_time DESC 

SELECT t2.vol/t1.vol ratio,t1.*,t2.* FROM (

SELECT SUM(vol) vol, DATE_FORMAT(trade_time,'%Y%m%d%H%i') m,trade_time t FROM 
future_sz50_realtime WHERE trade_time >= '2015-07-09 00:00:00' 
AND trade_time< '2015-07-09 13:39:00'
GROUP BY m)t1,
(SELECT SUM(vol) vol, DATE_FORMAT(trade_time,'%Y%m%d%H%i') m FROM 
future_sz50_realtime WHERE trade_time >= '2015-07-09 00:00:00' 
AND trade_time< '2015-07-09 13:39:00' AND trade_type = '多平'
GROUP BY m)t2
WHERE t1.m = t2.m 
ORDER BY ratio DESC 

-- 0.26017437720972053  0.22739525629024915


SELECT t2.vol/t1.vol ratio,t1.*,t2.* FROM (

SELECT SUM(vol) vol, DATE_FORMAT(trade_time,'%Y%m%d%H%i') m,trade_time t FROM 
future_sz50_realtime WHERE trade_time >= '2015-07-10 00:00:00' 
AND trade_time< '2015-07-10 13:00:00'
)t1,
(SELECT SUM(vol) vol, DATE_FORMAT(trade_time,'%Y%m%d%H%i') m FROM 
future_sz50_realtime WHERE trade_time >= '2015-07-10 00:00:00' 
AND trade_time< '2015-07-10 13:00:00' AND trade_type = '多平'
)t2
ORDER BY ratio DESC 

-- 上证50实时数据

SELECT * FROM 
sz50_realtime


-- 创建上证50分钟累计表
-- 
DROP TABLE min_sz50;
CREATE TABLE  min_sz50
AS 
SELECT STR_TO_DATE(DATE_FORMAT(trade_time,'%Y%m%d%H%i'),'%Y%m%d%H%i') trade_time ,SUM(price*vol)/SUM(vol) price, SUM(vol) vol FROM 
sz50_realtime
GROUP BY 
DATE_FORMAT(trade_time,'%Y%m%d%H%i')
ORDER BY trade_time DESC 

SELECT * FROM min_sz50_future

SELECT * FROM sz50_realtime

-- 中国石油实时数据

SELECT * FROM 
zgsy_realtime


-- 创建中国石油分钟累计表
DROP TABLE  min_zgsy;

CREATE TABLE  min_zgsy
AS 
SELECT STR_TO_DATE(DATE_FORMAT(trade_time,'%Y%m%d%H%i'),'%Y%m%d%H%i') trade_time,SUM(price*vol)/SUM(vol) price, SUM(vol) vol FROM 
zgsy_realtime
GROUP BY 
DATE_FORMAT(trade_time,'%Y%m%d%H%i')
ORDER BY trade_time DESC 

SELECT * FROM zgsy_realtime


-- 创建50股指期货分钟累计表 ]
DROP TABLE min_sz50_future;
CREATE TABLE  min_sz50_future
AS
SELECT STR_TO_DATE(DATE_FORMAT(trade_time,'%Y%m%d%H%i'),'%Y%m%d%H%i') trade_time,SUM(price*vol)/SUM(vol) price, SUM(vol) vol,SUM(addhold) addhold FROM 
future_sz50_realtime
GROUP BY 
DATE_FORMAT(trade_time,'%Y%m%d%H%i')
ORDER BY trade_time DESC 

-- 计算上证50股指期货的分钟的基差

DROP TABLE min_ji_cha;

CREATE TABLE min_ji_cha
AS 
SELECT t1.trade_time ,t1.price-t2.price ji_cha,t1.vol,t1.addhold,SUM(t1.price*t1.vol)/SUM(t1.vol) price
FROM 
min_sz50_future t1,min_sz50 t2
WHERE t1.trade_time = t2.trade_time
GROUP BY trade_time
ORDER BY t1.trade_time DESC 


SELECT * FROM min_ji_cha

-- 计算一天的最大基差、最小基差、加权基差，加权平均指数

CREATE TABLE  day_sz50_jicha AS 
SELECT t.* ,max_jicha/jiaquan_price max_ratio,
min_jicha/jiaquan_price min_ratio,jia_quan_jicha/jiaquan_price jiaquan_ratio
FROM (
SELECT  STR_TO_DATE(DATE_FORMAT(trade_time,'%Y%m%d'),'%Y%m%d') trade_time,
MAX(ji_cha) max_jicha,
MIN(ji_cha) min_jicha,
SUM(ji_cha*vol)/SUM(vol) jia_quan_jicha,SUM(price*vol)/SUM(vol) jiaquan_price,SUM(addhold) hold_share
FROM 
min_ji_cha
GROUP BY DATE_FORMAT(trade_time,'%Y%m%d'))t
ORDER BY trade_time DESC 

SELECT trade_time,max_ratio,min_ratio,jiaquan_ratio FROM day_sz50_jicha

SELECT * FROM day_sz50_jicha

-- 最大基差出现时间

SELECT t.* ,max_jicha/jiaquan_price max_ratio,t2.trade_time,
min_jicha/jiaquan_price min_ratio,jia_quan_jicha/jiaquan_price jiaquan_ratio
FROM (
SELECT  STR_TO_DATE(DATE_FORMAT(trade_time,'%Y%m%d'),'%Y%m%d') trade_time,
MAX(ji_cha) max_jicha,
MIN(ji_cha) min_jicha,
SUM(ji_cha*vol)/SUM(vol) jia_quan_jicha,SUM(price*vol)/SUM(vol) jiaquan_price
FROM 
min_ji_cha
GROUP BY DATE_FORMAT(trade_time,'%Y%m%d'))t,min_ji_cha t2
WHERE DATE_FORMAT(t.trade_time,'%Y%m%d') =  DATE_FORMAT(t2.trade_time,'%Y%m%d')
AND t.max_jicha = t2.ji_cha
ORDER BY t.trade_time DESC 

-- 最小基差出现时间

SELECT t.* ,max_jicha/jiaquan_price max_ratio,t2.trade_time,
min_jicha/jiaquan_price min_ratio,jia_quan_jicha/jiaquan_price jiaquan_ratio
FROM (
SELECT  STR_TO_DATE(DATE_FORMAT(trade_time,'%Y%m%d'),'%Y%m%d') trade_time,
MAX(ji_cha) max_jicha,
MIN(ji_cha) min_jicha,
SUM(ji_cha*vol)/SUM(vol) jia_quan_jicha,SUM(price*vol)/SUM(vol) jiaquan_price
FROM 
min_ji_cha
GROUP BY DATE_FORMAT(trade_time,'%Y%m%d'))t,min_ji_cha t2
WHERE DATE_FORMAT(t.trade_time,'%Y%m%d') =  DATE_FORMAT(t2.trade_time,'%Y%m%d')
AND t.max_jicha = t2.ji_cha
ORDER BY t.trade_time DESC 


SELECT * FROM min_ji_cha

-- 百分比坐标计算（股指期货不进行相关计算）

-- 一共两个图
1.分时走势（不包括股指期货）
2.基差走势图

-- TODO add_hold_sum计算 得用存储过程来计算了，暂时不处理

SELECT * FROM future_sz50_realtime
