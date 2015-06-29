-- 美联储会议时间  fr_meeting

-- 中国人民银行利率变化  financial_policy

SELECT * FROM financial_policy


fr_meeting

-- 股票增发按上市日汇总

SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT SUM(collect_money) num,DATE_FORMAT(DATE_ADD(publish_date,INTERVAL 1 YEAR),'%Y%m%d') day_str
 FROM increment_ipo_detail 
WHERE publish_style <> '吸收合并'
GROUP BY day_str)t
ORDER BY num DESC


DATE_ADD("1997-12-31 23:59:59",INTERVAL 1 DAY); 
-- 通达信_增发发行日

SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT SUM(collect_money) num,DATE_FORMAT(publish_date,'%Y%m%d') day_str
 FROM increment_ipo_detail 
WHERE publish_style <> '吸收合并'
GROUP BY day_str)t
ORDER BY day_str

-- 通达信_增发解冻日

SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT SUM(collect_money) num,DATE_FORMAT(publish_date,'%Y%m%d') day_str
 FROM increment_ipo_detail 
WHERE publish_style <> '吸收合并'
GROUP BY day_str)t
ORDER BY day_str

-- 网上增发

SELECT * 
 FROM increment_ipo_detail 
WHERE publish_style LIKE '%网上%'


GROUP BY date_str
ORDER BY date_str DESC 


SELECT * FROM increment_ipo_detail
-- where  publish_style = '吸收合并'
ORDER BY
-- seq_num
publish_date DESC


TRUNCATE TABLE increment_ipo_detail

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

DROP TABLE shibo_data

SELECT * FROM shibo_data ORDER BY statistic_day DESC 

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
ORDER BY t1.trade_date DESC 


-- 融资余额数 当日融资买入与融资余额比

-- 融资买入与当日上证成交金额比

-- 本日融资余额(元)	

SELECT * FROM loan_monny_loan_stock_detail_sum ORDER BY trade_date DESC 

-- 本日融资买入额(元)
SELECT * FROM loan_monny_loan_stock_detail_sum ORDER BY trade_date DESC

-- 导出数据  换行符号为\r\n



-- 生成ipo核准数据

SELECT CONCAT('1|999999|',DATE_FORMAT(audit_date,'%Y%m%d'),'|',
audit_company_num) FROM day_data_ipo_hezhun
 ORDER BY audit_date DESC
 
 SELECT * FROM day_data_ipo_hezhun ORDER BY audit_date DESC

 
 -- shibor一年期利率变化率数据
 
 
 SELECT * FROM shibo_data ORDER BY statistic_day DESC  
 
 
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
ORDER BY t1.statistic_day DESC 


-- shibor一天期利率变化率数据
 
 
 SELECT * FROM shibo_data ORDER BY statistic_day DESC  
 
 
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
ORDER BY t1.statistic_day DESC 



-- 生成申购数据



SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT COUNT(1) num,DATE_FORMAT(apply_day,'%Y%m%d') day_str
 FROM day_data_ipo_detail
 GROUP BY DATE_FORMAT(apply_day,'%Y%m%d'))t
 
 -- 生成申购数据(募集资金)



SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT SUM(ipo_num*ipo_price) num,DATE_FORMAT(apply_day,'%Y%m%d') day_str
 FROM day_data_ipo_detail
 GROUP BY DATE_FORMAT(apply_day,'%Y%m%d'))t
 ORDER BY num DESC 
 
 
 -- 通达信数据（利率调整）
 
 SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT adjust_point num,DATE_FORMAT(open_day_after,'%Y%m%d') day_str
 FROM financial_policy
 WHERE policy_type = '利率调整')t

-- 通达信数据_美联储会议

SELECT * FROM fr_meeting


SELECT CONCAT('1|999999|',day_str,'|',1 )FROM (
SELECT SUM(ipo_num*ipo_price) num,DATE_FORMAT(open_dayu_after,'%Y%m%d') day_str
 FROM fr_meeting
 GROUP BY DATE_FORMAT(open_dayu_after,'%Y%m%d'))t
 
-- 申购数据

SELECT * FROM 
financial_policy

-- 生成申购金额数 
SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT SUM(ipo_amount) num,DATE_FORMAT(ipo_day,'%Y%m%d') day_str
 FROM day_data_ipo_detail
 GROUP BY DATE_FORMAT(ipo_day,'%Y%m%d'))t
 ORDER BY day_str DESC 

 
SELECT COUNT(1) num,stock_code
 FROM day_data_ipo_detail
 GROUP BY stock_code 
 ORDER BY num DESC 



SELECT * FROM day_data_ipo_detail
WHERE stock_code = '300436'

 
 ORDER BY apply_day DESC

-- 生成网上发行日数据


SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT COUNT(1) num,DATE_FORMAT(ipo_day,'%Y%m%d') day_str
 FROM day_data_ipo_detail WHERE ipo_day IS NOT NULL 
GROUP BY DATE_FORMAT(ipo_day,'%Y%m%d')
 ORDER BY DATE_FORMAT(ipo_day,'%Y%m%d'))t
 
 SELECT * FROM day_data_ipo_detail ORDER BY ipo_day DESC 

 SELECT * FROM day_data_ipo_detail 
 WHERE ipo_day = '20141209'
 
 
 SELECT CONCAT('1|999999|',day_str,'|',num )FROM (
SELECT AVG(net_apply_success_ratio) num,DATE_FORMAT(ipo_day,'%Y%m%d') day_str
 FROM day_data_ipo_detail WHERE ipo_day IS NOT NULL 
GROUP BY DATE_FORMAT(ipo_day,'%Y%m%d')
 ORDER BY DATE_FORMAT(ipo_day,'%Y%m%d'))t
 ORDER BY day_str DESC 
 
 
  SELECT * FROM day_data_ipo_detail 
 WHERE ipo_day = '20141203'
 


-- 生成shibo数据
SELECT * FROM shibo_data

SELECT CONCAT('1|999999|',DATE_FORMAT(statis_day,'%Y%m%d'),'|',
one_night_rate) FROM shibo_data
 ORDER BY statis_day

-- ipo 明细数据

SELECT * FROM day_data_ipo_detail ORDER BY apply_day DESC 

-- 
SELECT * FROM shibo_data