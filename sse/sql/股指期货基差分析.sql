-- 股指期货基差分析 hs300 hs300_future

SELECT * FROM future_index_day ORDER BY trade_day DESC 

TRUNCATE  future_index_day

-- 收盘价基差
-- 沪深300 hs300 hs300_future

SELECT t1.trade_day,t1.close_p,t2.close_p,(t2.close_p-t1.close_p)/t1.close_p rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'hs300' AND t2.index_name = 'hs300_future'
ORDER BY t1.trade_day DESC 

-- 中证500 zz500 zz500_future
SELECT t1.trade_day,t1.close_p,t2.close_p,(t2.close_p-t1.close_p)/t1.close_p rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'zz500' AND t2.index_name = 'zz500_future'
ORDER BY t1.trade_day DESC 

-- 上证50 sz50 sz50_future
SELECT t1.trade_day,t1.close_p,t2.close_p,(t2.close_p-t1.close_p)/t1.close_p rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'sz50' AND t2.index_name = 'sz50_future'
ORDER BY t1.trade_day DESC 



-- 最高价基差

SELECT t1.trade_day,t1.high_price,t2.high_price,(t2.high_price-t1.high_price)/t1.high_price rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'hs300' AND t2.index_name = 'hs300_future'
ORDER BY t1.trade_day DESC 

-- 中证500 zz500 zz500_future
SELECT t1.trade_day,t1.high_price,t2.high_price,(t2.high_price-t1.high_price)/t1.high_price rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'zz500' AND t2.index_name = 'zz500_future'
ORDER BY t1.trade_day DESC 

-- 上证50 sz50 sz50_future
SELECT t1.trade_day,t1.high_price,t2.high_price,(t2.high_price-t1.high_price)/t1.high_price rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'sz50' AND t2.index_name = 'sz50_future'
ORDER BY t1.trade_day DESC 

-- 最低价基差


SELECT t1.trade_day,t1.low_p,t2.low_p,(t2.low_p-t1.low_p)/t1.close_p rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'hs300' AND t2.index_name = 'hs300_future'
ORDER BY t1.trade_day DESC 

-- 中证500 zz500 zz500_future
SELECT t1.trade_day,t1.low_p,t2.low_p,(t2.low_p-t1.low_p)/t1.close_p rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'zz500' AND t2.index_name = 'zz500_future'
ORDER BY t1.trade_day DESC 

-- 上证50 sz50 sz50_future
SELECT t1.trade_day,t1.low_p,t2.low_p,(t2.low_p-t1.low_p)/t1.close_p rtio
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'sz50' AND t2.index_name = 'sz50_future'
ORDER BY t1.trade_day DESC 
-- 上证指数分析

-- 通达信自定义数据生成
-- 收盘价基差


SELECT CONCAT('1|000300|',DATE_FORMAT(t2.trade_day,'%Y%m%d'),'|',(t2.close_p-t1.close_p)/t1.close_p )
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'hs300' AND t2.index_name = 'hs300_future'
UNION ALL
SELECT CONCAT('1|000905|',DATE_FORMAT(t2.trade_day,'%Y%m%d'),'|',(t2.close_p-t1.close_p)/t1.close_p )
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'zz500' AND t2.index_name = 'zz500_future'
UNION ALL
SELECT CONCAT('1|000016|',DATE_FORMAT(t2.trade_day,'%Y%m%d'),'|',(t2.close_p-t1.close_p)/t1.close_p )
FROM future_index_day t1,future_index_day t2
WHERE t1.trade_day = t2.trade_day AND t1.index_name = 'sz50' AND t2.index_name = 'sz50_future'


