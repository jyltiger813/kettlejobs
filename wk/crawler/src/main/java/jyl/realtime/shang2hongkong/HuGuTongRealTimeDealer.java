package jyl.realtime.shang2hongkong;

import java.io.IOException;
import java.util.TreeMap;

import jyl.util.crawler.JSCssModeDealer;
import jyl.util.file.FileUtil;

import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;

public class HuGuTongRealTimeDealer {
	public static void main(String args[])
	{
		HuGuTongRealTimeDealer dealer = new HuGuTongRealTimeDealer();
		//dealer.dealDatas();
		dealer.dealDatasTmp();
	}

	private void dealDatasTmp() {
		// TODO Auto-generated method stub
		while(true)
		{
			try {
				Thread.sleep(20000);
				
				String content = fethcerCurrentDataOneTime();
				System.out.println("content:"+content);
				if(content!=null&&content.length()>20)
				FileUtil.append2File("f:/loanbuy20150703.txt",content+"\r\n");
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
		String url = "http://sc.hkex.com.hk/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
		params.put(xpathName1, xpathValue1);
		params.put(xpathName2, xpathValue2);
		params.put(xpathName3, xpathValue3);
		try {
			TreeMap<String,String> values = JSCssModeDealer.getDataDealJSCSSXpaths(params,url);
			System.out.println(values.size());
		} catch (FailingHttpStatusCodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private String fethcerCurrentDataOneTime() {
		// TODO Auto-generated method stub
		TreeMap<String,String> params = new TreeMap<String,String>();	
		String xpathName1 = "shanghai_share_buy";
							///html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]
		String xpathValue1 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/font/text()";
		String xpathName2 = "shanghai_share_sell";
		String xpathValue2 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/font/text()";
		String xpathName3 = "time_transaction";
		String xpathValue3 = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/b/text()";
		String url = "http://sc.hkex.com.hk/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
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

}
