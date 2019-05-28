-- etf份额数据
etl_bond_day_detail


SELECT trade_date,SUM(bond_volumn) FROM 
sse.etl_bond_day_detail
GROUP BY trade_date

SELECT * FROM etl_bond_day_detail
WHERE trade_date ='20150717' AND bond_name = '50ETF'

SELECT * FROM etl_bond_day_detail
WHERE trade_date ='20150717' AND bond_name LIKE '%300%'

SELECT * FROM etl_bond_day_detail
WHERE trade_date ='20150717' AND bond_name LIKE '%500%'



 SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT SUM(bond_volumn)  num,DATE_FORMAT(trade_date,'%Y%m%d') day_str
FROM
sse.etl_bond_day_detail 
GROUP BY trade_date)t
UNION 
 SELECT CONCAT('1|000016|',day_str,'|',num )FROM (
SELECT SUM(bond_volumn)  num,DATE_FORMAT(trade_date,'%Y%m%d') day_str
FROM
sse.etl_bond_day_detail WHERE   bond_name = '50ETF'
GROUP BY trade_date)t
UNION 
 SELECT CONCAT('1|000300|',day_str,'|',num )FROM (
SELECT SUM(bond_volumn)  num,DATE_FORMAT(trade_date,'%Y%m%d') day_str
FROM
sse.etl_bond_day_detail WHERE  bond_name LIKE '%300%'
GROUP BY trade_date)t
UNION 
 SELECT CONCAT('1|000905|',day_str,'|',num )FROM (
SELECT SUM(bond_volumn)  num,DATE_FORMAT(trade_date,'%Y%m%d') day_str
FROM  
sse.etl_bond_day_detail WHERE  bond_name LIKE '%500%'
GROUP BY trade_date)t


