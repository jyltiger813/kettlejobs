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