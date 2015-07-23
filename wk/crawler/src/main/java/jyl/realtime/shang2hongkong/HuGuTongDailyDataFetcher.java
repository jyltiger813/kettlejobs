package jyl.realtime.shang2hongkong;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.TreeMap;

import jyl.util.crawler.JSCssModeDealer;
import jyl.util.crawler.SimpleCrawler;
import jyl.util.jdbc.DatabaseHelper;
import jyl.util.time.DateTimeUtil;

import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;

public class HuGuTongDailyDataFetcher {
	Connection con;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HuGuTongDailyDataFetcher fetcher = new HuGuTongDailyDataFetcher();
		//fetcher.test1();
		fetcher.test2();
		//fetcher.dealOneDayBeforeNdays(90);
	//	fetcher.dealOneDay("20150722");
	}

	private void test2() {
		// TODO Auto-generated method stub
		String url = "http://cctv.cntv.cn/lm/xinwenlianbo/20130710.shtml";
			String xpath = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/font";
		//String content = Test.getDataNoDealJSCSS(url,xpath);
		String content = SimpleCrawler.getContent(url,"gbk");
		System.out.println("content:"+content);
	}

	private void test1() {
		// TODO Auto-generated method stub
		//http://www.hkex.com.hk/chi/csm/dailystat/d20150610c.htm
				String url = "http://cctv.cntv.cn/lm/xinwenlianbo/20130710.shtml";
				TreeMap<String,String> params = new TreeMap<String,String>();	
				String xpathName1 = "shanghai_share_buy";
									///html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]
				String xpathValue1 = "/html/body/div[2]/div/div/div/div/div[1]/div[4]/div[1]/div[1]/div[3]/div[1]/ul[1]/li[2]/a";
				String xpathName2 = "shanghai_share_sell";
				String xpathValue2 = "/html/body/div[2]/div/div/div/div/div[1]/div[4]/div[1]/div[1]/div[3]/div[1]/ul[1]/li[3]/a";
			/*	String xpathName3 = "time_transaction";
				String xpathValue3 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/b/text()";
			*/	params.put(xpathName1, xpathValue1);
				params.put(xpathName2, xpathValue2);
			//	params.put(xpathName3, xpathValue3);
				try {
					TreeMap<String,String> values = JSCssModeDealer.getDataDealNOJSCSSXpaths(params,url);
					//{shanghai_share_buy=RMB1,208 Mil, shanghai_share_sell=RMB1,012 Mil, time_transaction=02/07/2015 (10:00)}
					String value1 = values.get("shanghai_share_buy");
					String value2 = values.get("shanghai_share_sell");
				//	String value3 = values.get("time_transaction");
					
			
					System.out.println(values.size());
				} catch (FailingHttpStatusCodeException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
	}

	private void dealOneDayBeforeNdays(int dNum) {
		// TODO Auto-generated method stub
		Calendar cal = Calendar.getInstance();
		cal = DateTimeUtil.getNdayBefore(cal, 89);
		for(int i=0;i<dNum;i++){
		String dayStr = DateTimeUtil.getDateStrEight(cal);
		DateTimeUtil.getYesterDayNotWeekend(cal);
		try {
			dealOneDay(dayStr);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		}

	private void dealOneDay(String string) {
		// TODO Auto-generated method stub
		//http://www.hkex.com.hk/chi/csm/dailystat/d20150610c.htm
		String url = "http://www.hkex.com.hk/chi/csm/dailystat/d"+string+"c.htm";
		TreeMap<String,String> params = new TreeMap<String,String>();	
		String xpathName1 = "shanghai_share_buy";
							///html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]
		String xpathValue1 = "/html/body/table[1]/tbody/tr[6]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/font/text()";
		String xpathName2 = "shanghai_share_sell";
		String xpathValue2 = "/html/body/table[1]/tbody/tr[6]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/font/text()";
	/*	String xpathName3 = "time_transaction";
		String xpathValue3 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/b/text()";
	*/	params.put(xpathName1, xpathValue1);
		params.put(xpathName2, xpathValue2);
	//	params.put(xpathName3, xpathValue3);
		try {
			TreeMap<String,String> values = JSCssModeDealer.getDataDealJSCSSXpaths(params,url);
			//{shanghai_share_buy=RMB1,208 Mil, shanghai_share_sell=RMB1,012 Mil, time_transaction=02/07/2015 (10:00)}
			String value1 = values.get("shanghai_share_buy");
			String value2 = values.get("shanghai_share_sell");
		//	String value3 = values.get("time_transaction");
			
			String updateSqlStr = "REPLACE INTO  hongkong_purchase_shanghai VALUES('"
					+string+"','"+value1.replace(",", "")+"','"+value2.replace(",", "")+"')";
			setConnection();
			DatabaseHelper.excuteSqlStrsSustainCon(updateSqlStr, con);
			System.out.println(values.size());
		} catch (FailingHttpStatusCodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setConnection() {
		// TODO Auto-generated method stub
		try {
			if(con==null||con.isClosed())
			{
				con =  DatabaseHelper.getDefaultCon();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
