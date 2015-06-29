package jyl.util.crawler;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;



import org.xml.sax.SAXException;

/**
 * 类描述：   
 * 创建人：jinyongliang
 * 创建时间：2013-8-5 上午07:24:50   
 * 修改人：jyl   
 * 修改时间：2013-8-5 上午07:24:50   
 * 修改备注：   
 * @version 
 */
public class SimpleCrawler {
	public static void main(String args[])
	{
		String url = "http://sc.hkex.com.hk/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
		String xpath = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/font";
		//String content = Test.getDataNoDealJSCSS(url,xpath);
		String content = SimpleCrawler.getContent(url,"gbk");
		System.out.println("content:"+content);
	}

	

	/**
	 * @param string
	 */
	/**
	 * @param urlStr
	 * @return
	 */
	public static String getContent(String urlStr,String charSet) {
		// TODO Auto-generated method stub
		StringBuffer sbd = new StringBuffer();
		try {
			URL url = new URL(urlStr);
			InputStreamReader isr = null;
			URLConnection ucon = url.openConnection();
			//String outtime =  SseControl.getConfig().get("timeout");
			ucon.setConnectTimeout(50000);
//		System.out.println("timeout"+ucon.getReadTimeout());
				isr = new InputStreamReader(ucon.getInputStream(),charSet);
			BufferedReader bfr = new BufferedReader(isr);
			// System.out.println(str+";3");//注释
			boolean isEnterOuterBlock = false;
			boolean isEnterInnerBlock = false;
			try {
				Thread.sleep(300);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int i =0;
			while (bfr.ready()) {
				sbd.append(bfr.readLine());
}
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sbd.toString();
	
}
	
	
}
