-- 
DROP DATABASE sse 

SELECT * FROM loan_monny_loan_stock_analysis_sse_sum


CREATE DATABASE sse DEFAULT CHARSET UTF8

-- 融资融券查询
TRUNCATE TABLE loan_monny_loan_stock_detail_sum

SELECT * FROM loan_monny_loan_stock_detail_sum

-- 融资数与前一天变化率表

SELECT t1.stock_code,t1.stock_name,t1.trade_date,t1.loan_monny_margin,
t2.trade_date,t2.loan_monny_margin 
,(t2.loan_monny_margin - t1.loan_monny_margin )/t1.loan_monny_margin *100
FROM loan_monny_loan_stock_detail_sum t1,loan_monny_loan_stock_detail_sum t2
WHERE 
-- t1.trade_date = t2.trade_date and 
t1.stock_code = t2.stock_code
AND t1.stock_code = '999999'
AND TIMESTAMPDIFF(DAY,t1.trade_date ,t2.trade_date )= 1; 


SET character_set_client = utf8;

