SELECT * FROM future_sz50_realtime



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



