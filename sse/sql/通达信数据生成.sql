-- 通达信数据生成

SELECT t1.stock_code,t1.stock_name,t1.trade_date,t1.loan_monny_margin,
t2.trade_date,t2.loan_monny_margin 
,(t2.loan_monny_margin - t1.loan_monny_margin )/t1.loan_monny_margin *100
FROM loan_monny_loan_stock_detail_sum t1,loan_monny_loan_stock_detail_sum t2
WHERE 
-- t1.trade_date = t2.trade_date and 
t1.stock_code = t2.stock_code
AND t1.stock_code = '999999'
AND TIMESTAMPDIFF(DAY,t1.trade_date ,t2.trade_date )= 1; 


0|999999|20150505|15.000
0|999999|19900101|12.000
0|999999|20150506|23.000

drop table shibo_data

select * from shibo_data order by statistic_day desc 

-- shibor一年利率变化率


-- shibor隔夜利率变化率



-- 生成融资余额的通达信自定义数据

-- 融资余额变化率

SELECT CONCAT('1|999999|',DATE_FORMAT(t2.trade_date,'%Y%m%d'),'|',
(t2.loan_monny_margin - t1.loan_monny_margin )/t1.loan_monny_margin *100)
FROM(
SELECT @rownum:=@rownum+1 rownum, trade_date,loan_monny_margin FROM
(SELECT @rownum:=0,trade_date,loan_monny_margin 
FROM loan_monny_loan_stock_detail_sum  t2 WHERE t2.stock_code = '999999' ORDER BY trade_date ) t)t1,
(
SELECT @rownum:=@rownum+1 rownum, trade_date,loan_monny_margin FROM
(SELECT @rownum:=0,trade_date,loan_monny_margin 
FROM loan_monny_loan_stock_detail_sum  t2 WHERE t2.stock_code = '999999' ORDER BY trade_date ) t)t2
WHERE t2.rownum = t1.rownum+1
order by t1.trade_date desc 


-- 融资余额数 当日融资买入与融资余额比

-- 融资买入与当日上证成交金额比

-- 本日融资余额(元)	

select * from loan_monny_loan_stock_detail_sum order by trade_date desc 

-- 本日融资买入额(元)
select * from loan_monny_loan_stock_detail_sum order by trade_date desc

-- 导出数据  换行符号为\r\n



-- 生成ipo核准数据

SELECT CONCAT('1|999999|',DATE_FORMAT(audit_date,'%Y%m%d'),'|',
audit_company_num) FROM day_data_ipo_hezhun
 ORDER BY audit_date
 
 SELECT * FROM day_data_ipo_hezhun

 
 -- shibor一年期利率变化率数据
 
 
 select * from shibo_data order by statistic_day desc  
 
 
 SELECT CONCAT('1|999999|',DATE_FORMAT(t2.statistic_day,'%Y%m%d'),'|',
(t2.one_year - t1.one_year )/t1.one_year *100)
FROM(
SELECT @rownum:=@rownum+1 rownum, statistic_day,one_year FROM
(SELECT @rownum:=0,statistic_day,one_year 
FROM shibo_data  t2 ORDER BY statistic_day ) t)t1,
(
SELECT @rownum:=@rownum+1 rownum, statistic_day,one_year FROM
(SELECT @rownum:=0,statistic_day,one_year 
FROM shibo_data  t2  ORDER BY statistic_day ) t)t2
WHERE t2.rownum = t1.rownum+1
order by t1.statistic_day desc 


-- shibor一天期利率变化率数据
 
 
 select * from shibo_data order by statistic_day desc  
 
 
 SELECT CONCAT('1|999999|',DATE_FORMAT(t2.statistic_day,'%Y%m%d'),'|',
(t2.one_day - t1.one_day )/t1.one_day *100)
FROM(
SELECT @rownum:=@rownum+1 rownum, statistic_day,one_day FROM
(SELECT @rownum:=0,statistic_day,one_day 
FROM shibo_data  t2 ORDER BY statistic_day ) t)t1,
(
SELECT @rownum:=@rownum+1 rownum, statistic_day,one_day FROM
(SELECT @rownum:=0,statistic_day,one_day 
FROM shibo_data  t2  ORDER BY statistic_day ) t)t2
WHERE t2.rownum = t1.rownum+1
order by t1.statistic_day desc 



-- 生成申购数据



SELECT CONCAT('1|999999|',day_str,'|',num )from (
select COUNT(1) num,DATE_FORMAT(apply_day,'%Y%m%d') day_str
 from day_data_ipo_detail
 GROUP BY DATE_FORMAT(apply_day,'%Y%m%d'))t
 
 
 order by apply_day desc

-- 生成网上发行日数据


SELECT CONCAT('1|999999|',day_str,'|',num )from (
select COUNT(1) num,DATE_FORMAT(ipo_day,'%Y%m%d') day_str
 FROM day_data_ipo_detail where ipo_day is not null 
GROUP BY DATE_FORMAT(ipo_day,'%Y%m%d')
 ORDER BY DATE_FORMAT(ipo_day,'%Y%m%d'))t


-- 生成shibo数据
SELECT * FROM shibo_data

SELECT CONCAT('1|999999|',DATE_FORMAT(statis_day,'%Y%m%d'),'|',
one_night_rate) FROM shibo_data
 ORDER BY statis_day

-- ipo 明细数据

SELECT * FROM day_data_ipo_detail ORDER BY apply_day DESC 

-- 
SELECT * FROM shibo_data