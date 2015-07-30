SELECT * FROM hongkong_purchase_shanghai

REPLACE INTO  hongkong_purchase_shanghai VALUES('20120101','1222.01','15.2')

TRUNCATE TABLE hongkong_purchase_shanghai


SELECT CONCAT('1|000300|',DATE_FORMAT(t2.trade_day,'%Y%m%d'),'|',(t2.low_p-t1.low_p)*100/t1.low_p )
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'hs300' AND t2.index_name = 'hs300_future'
ORDER BY t1.trade_day


SELECT *
FROM future_index_day t1
WHERE t1.index_name = 'hs300_future'
ORDER BY t1.trade_day

hongkong_purchase_shanghai_detail

SELECT * FROM hongkong_purchase_shanghai_detail
ORDER BY trade_time  DESC 

REPLACE INTO  hongkong_purchase_shanghai_detail VALUES('2015/07/24 11:34','1222.01','15.2')

TRUNCATE TABLE hongkong_purchase_shanghai_detail




-- 显示净买入数据

SELECT t1.*,t1.buy_amount-t2.buy_amount min_buy,t1.sell_amount-t2.sell_amount  min_sell
,t1.buy_amount-t2.buy_amount-t1.sell_amount+t2.sell_amount net_buy 
,t1.buy_amount/t1.sell_amount ratio
FROM 
hongkong_purchase_shanghai_detail t1,hongkong_purchase_shanghai_detail t2
WHERE TIME_TO_SEC(t1.trade_time) -TIME_TO_SEC(t2.trade_time)=60
AND DATE_FORMAT(t2.trade_time,'%Y%m%d') = DATE_FORMAT(t1.trade_time,'%Y%m%d')
 AND t1.trade_time > '20150727'  AND t1.trade_time < '20150728' 
  AND t2.trade_time > '20150727'  AND t2.trade_time < '20150728' 
-- order by net_buy desc 
ORDER BY t1.trade_time 
 DESC 

-- 显示当天净买入数据

SELECT t1.*,t1.buy_amount-t2.buy_amount min_buy,t1.sell_amount-t2.sell_amount  min_sell
,t1.buy_amount-t2.buy_amount-t1.sell_amount+t2.sell_amount net_buy 
,t1.buy_amount/t1.sell_amount ratio
FROM 
hongkong_purchase_shanghai_detail t1,hongkong_purchase_shanghai_detail t2
WHERE TIME_TO_SEC(t1.trade_time) -TIME_TO_SEC(t2.trade_time)=60
AND DATE_FORMAT(t2.trade_time,'%Y%m%d') = DATE_FORMAT(t1.trade_time,'%Y%m%d')
 AND t1.trade_time > DATE_FORMAT(NOW(),'%Y%m%d')
  AND t2.trade_time > DATE_FORMAT(NOW(),'%Y%m%d') 
-- order by net_buy desc 
ORDER BY t1.trade_time 
 DESC 

-- 查询获得不符合时间条件的数据

SELECT t.*,DATE_FORMAT(t.trade_time,'%k-%i') FROM hongkong_purchase_shanghai_detail t
WHERE DATE_FORMAT(trade_time,'%k')<9 OR  DATE_FORMAT(trade_time,'%k')>15 OR
( DATE_FORMAT(trade_time,'%k')=15  AND DATE_FORMAT(trade_time,'%i')<>0)
OR (DATE_FORMAT(trade_time,'%k')=9 AND DATE_FORMAT(trade_time,'%i')<30 )
OR (DATE_FORMAT(trade_time,'%k')=11 AND DATE_FORMAT(trade_time,'%i')>30 )
OR DATE_FORMAT(trade_time,'%k')=12


DELETE   FROM hongkong_purchase_shanghai_detail 
WHERE DATE_FORMAT(trade_time,'%k')<9 OR  DATE_FORMAT(trade_time,'%k')>15  OR
( DATE_FORMAT(trade_time,'%k')=15  AND DATE_FORMAT(trade_time,'%i')<>0)
OR (DATE_FORMAT(trade_time,'%k')=9 AND DATE_FORMAT(trade_time,'%i')<30 )
OR (DATE_FORMAT(trade_time,'%k')=11 AND DATE_FORMAT(trade_time,'%i')>30 )


SELECT *  FROM hongkong_purchase_shanghai_detail 
GROUP BY DATE_FORMAT(trade_time,'%Y%m%d')