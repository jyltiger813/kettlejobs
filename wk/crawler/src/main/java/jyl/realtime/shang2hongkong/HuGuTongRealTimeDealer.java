package jyl.realtime.shang2hongkong;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.TreeMap;

import jyl.util.crawler.JSCssModeDealer;
import jyl.util.file.FileUtil;
import jyl.util.jdbc.DatabaseHelper;
import jyl.util.time.DateTimeUtil;

import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;

public class HuGuTongRealTimeDealer {
	Connection con;
	public static void main(String args[])
	{
		jyl.realtime.shang2hongkong.HuGuTongRealTimeDealer dealer = new HuGuTongRealTimeDealer();
		//dealer.dealDatas();
		//RMB1,110 Mil RMB1,198 Mil 24/07/2015 (11:34) 
		//dealer.flushData2DB("RMB1,110 Mil", "RMB1,198 Mil", "24/07/2015 (11:34)");
		dealer.dealDatasTmp();
	//java.util.Calendar.getInstance().toString();
	}

	public  void dealDatasTmp() {
		// TODO Auto-generated method stub
		String fileName = "f:/loanbuy/"+DateTimeUtil.getDateStrEight(Calendar.getInstance())+".txt";
		while(true)
		{
			try {
				Thread.sleep(20000);
				
				String content = fethcerCurrentDataOneTime();
				System.out.println("content:"+content);
				if(content!=null&&content.length()>20)
				FileUtil.append2File(fileName,content+"\r\n");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void dealDatas() {
		// TODO Auto-generated method stub
		fethcerCurrentData();
	}

	private void fethcerCurrentData() {
		// TODO Auto-generated method stub
		TreeMap<String,String> params = new TreeMap<String,String>();	
		String xpathName1 = "shanghai_share_buy";
							///html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]
		String xpathValue1 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/font/text()";
		String xpathName2 = "shanghai_share_sell";
		String xpathValue2 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/font/text()";
		String xpathName3 = "time_transaction";
		String xpathValue3 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/b/text()";
		//String url = "http://sc.hkex.com.hk/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
		String url = "http://203.78.5.9/chi/csm/chinaConnect.asp?LangCode=tc";
		//http://www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc
		params.put(xpathName1, xpathValue1);
		params.put(xpathName2, xpathValue2);
		params.put(xpathName3, xpathValue3);
		try {
			TreeMap<String,String> values = JSCssModeDealer.getDataDealJSCSSXpaths(params,url);
		//	TreeMap<String,String> values = JSCssModeDealer.getDataDealNOJSCSSXpaths(params,url);
			System.out.println(values.size());
		} catch (FailingHttpStatusCodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private  String fethcerCurrentDataOneTime() {
		// TODO Auto-generated method stub
		TreeMap<String,String> params = new TreeMap<String,String>();	
		String xpathName1 = "shanghai_share_buy";
							///html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]
		String xpathValue1 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/font/text()";
		String xpathName2 = "shanghai_share_sell";
		String xpathValue2 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/font/text()";
		String xpathName3 = "time_transaction";
		String xpathValue3 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/b/text()";
		String url = "http://203.78.5.9/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
		//String url = "http://sc.hkex.com.hk/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
		params.put(xpathName1, xpathValue1);
		params.put(xpathName2, xpathValue2);
		params.put(xpathName3, xpathValue3);
		try {
			TreeMap<String,String> values = JSCssModeDealer.getDataDealJSCSSXpaths(params,url);
			//{shanghai_share_buy=RMB1,208 Mil, shanghai_share_sell=RMB1,012 Mil, time_transaction=02/07/2015 (10:00)}
			String value1 = values.get("shanghai_share_buy");
			String value2 = values.get("shanghai_share_sell");
			String value3 = values.get("time_transaction");
			System.out.println(values.size());
			
			try {
				flushData2DB(value1,value2,value3);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return value1+" "+value2+" "+value3+" ";
		} catch (FailingHttpStatusCodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	//RMB1,110 Mil RMB1,198 Mil 24/07/2015 (11:34) 
	private  void flushData2DB(String hongkong_buy, String hongkong_sell, String trade_time) {
		// TODO Auto-generated method stub
		if(hongkong_buy.contains("-"))
			return ;
		String buyamount = hongkong_buy.split(" ")[0].
				replace("RMB", "").replace(",", "");
		
		String sellamount = hongkong_sell.split(" ")[0].
				replace("RMB", "").replace(",", "");
		
		String trade_time_daypart = trade_time.split(" ")[0].trim();
		String dayStrs[] = trade_time_daypart.split("/");
		String day_str = dayStrs[2]+"-"+dayStrs[1]+"-"+dayStrs[0];
		
		String time_part = trade_time.split(" ")[1].trim()
				.replace("(", "").replace(")", "");
		
		/*
		 * 时间范围是否在交易访问内
		 */
		String []hourMin = time_part.split(":");
		Integer hour = Integer.parseInt(hourMin[0]);
		Integer min = Integer.parseInt(hourMin[1]);
		if(hour<9||hour>15||(hour==9&&min<30)||(hour==11&&min>30)||(hour==15&&min!=0))
			return;
		
		String replaceSqlStr = "REPLACE INTO  hongkong_purchase_shanghai_detail VALUES('"+
				day_str+" "+time_part+"','"+ buyamount+"','"+sellamount+"')";
			
		setConnection();
		try {
			DatabaseHelper.excuteSqlStrsSustainCon(replaceSqlStr, con);
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
