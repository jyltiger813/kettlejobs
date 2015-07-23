package jyl.util.crawler;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.TreeMap;

import org.w3c.dom.Text;

import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.WebRequest;
import com.gargoylesoftware.htmlunit.html.DomText;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

public class JSCssModeDealer {
	public static TreeMap<String,WebClient> webclient = new TreeMap<String,WebClient> ();
	public static TreeMap<String,URL> urls = new TreeMap<String,URL> ();

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//JSCssModeDealer.testHGT();
		JSCssModeDealer.testHGT1();

	}
	
	private static void testHGT1() {
		// TODO 一次性获取3个xpath的数据
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

	public static TreeMap<String, String> getDataDealJSCSSXpaths(TreeMap<String, String> params, String url) throws FailingHttpStatusCodeException, IOException {
		// TODO Auto-generated method stub
		TreeMap<String, String> result = new TreeMap<String, String>();
		
		/*WebClient
		urls  */
		  URL link= urls.get(url);
		  if(link==null)
		  {
			  link = new URL(url); 
			  urls.put(url, link);
		  }
	      WebClient wc=webclient.get(url);
	      if(wc==null)
	      {
	    	 wc =  new WebClient();
	    	 webclient.put(url, wc);
	      }
	      WebRequest request=new WebRequest(link); 
	      request.setCharset("UTF-8");
	  //    request.setProxyHost("120.120.120.x");
	  //    request.setProxyPort(8080);
	     // request.setAdditionalHeader("Referer", refer);//设置请求报文头里的refer字段
	      ////设置请求报文头里的User-Agent字段
	      request.setAdditionalHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
	      //wc.addRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
	      //wc.addRequestHeader和request.setAdditionalHeader功能应该是一样的。选择一个即可。
	      //其他报文头字段可以根据需要添加
	     // wc.getCookieManager().setCookiesEnabled(true);//开启cookie管理
	      wc.getOptions().setJavaScriptEnabled(true);//开启js解析。对于变态网页，这个是必须的
	      wc.getOptions().setCssEnabled(false);//开启css解析。对于变态网页，这个是必须的。
	      HtmlPage page=null;
	      page = wc.getPage(request);
	      //HtmlFont
	     // Object obj = page.getByXPath(xpath);
	      for(String xpathName : params.keySet()){
	      ArrayList<Text> list = (ArrayList<Text>)page.getByXPath(params.get(xpathName));
	      Text ht =list.get(0);
	      result.put(xpathName, ht.getTextContent());
	      com.gargoylesoftware.htmlunit.html.HtmlBold ad = null;	
	      }
	//   String xpathStr =  ht.getFirstChild().getCanonicalXPath();
	  // System.out.println("xpathStr:"+xpathStr);
		return result;
	}

	
	public static TreeMap<String, String> getDataDealNOJSCSSXpaths(TreeMap<String, String> params, String url) throws FailingHttpStatusCodeException, IOException {
		// TODO Auto-generated method stub
		TreeMap<String, String> result = new TreeMap<String, String>();
		
		/*WebClient
		urls  */
		  URL link= urls.get(url);
		  if(link==null)
		  {
			  link = new URL(url); 
			  urls.put(url, link);
		  }
	      WebClient wc=webclient.get(url);
	      if(wc==null)
	      {
	    	 wc =  new WebClient();
	    	 webclient.put(url, wc);
	      }
	      WebRequest request=new WebRequest(link); 
	      request.setCharset("UTF-8");
	  //    request.setProxyHost("120.120.120.x");
	  //    request.setProxyPort(8080);
	     // request.setAdditionalHeader("Referer", refer);//设置请求报文头里的refer字段
	      ////设置请求报文头里的User-Agent字段
	      request.setAdditionalHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
	      //wc.addRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
	      //wc.addRequestHeader和request.setAdditionalHeader功能应该是一样的。选择一个即可。
	      //其他报文头字段可以根据需要添加
	     // wc.getCookieManager().setCookiesEnabled(true);//开启cookie管理
	      wc.getOptions().setJavaScriptEnabled(false);//开启js解析。对于变态网页，这个是必须的
	      wc.getOptions().setCssEnabled(false);//开启css解析。对于变态网页，这个是必须的。
	      HtmlPage page=null;
	      page = wc.getPage(request);
	      //HtmlFont
	     // Object obj = page.getByXPath(xpath);
	      for(String xpathName : params.keySet()){
	      ArrayList<Text> list = (ArrayList<Text>)page.getByXPath(params.get(xpathName));
	      Text ht =list.get(0);
	      result.put(xpathName, ht.getTextContent());
	      com.gargoylesoftware.htmlunit.html.HtmlBold ad = null;	
	      }
	//   String xpathStr =  ht.getFirstChild().getCanonicalXPath();
	  // System.out.println("xpathStr:"+xpathStr);
		return result;
	}

	
	private static void testHGT() {
		// TODO 沪股通测试
		String url = "http://sc.hkex.com.hk/gb/www.hkex.com.hk/chi/csm/chinaConnect.asp?LangCode=tc";
		//String xpath = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/font";
	    String xpath = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/font/text()"; 
		String content;
		try {
			content = JSCssModeDealer.getDataDealJSCSS(url,xpath);
			System.out.println("content:"+content);
		} catch (FailingHttpStatusCodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static String getDataDealJSCSS(String url, String xpath) throws FailingHttpStatusCodeException, IOException {
		// TODO Auto-generated method stub
		String result = "";
		
		
		  URL link=new URL(url); 
	      WebClient wc=new WebClient();
	      WebRequest request=new WebRequest(link); 
	      request.setCharset("UTF-8");
	  //    request.setProxyHost("120.120.120.x");
	  //    request.setProxyPort(8080);
	     // request.setAdditionalHeader("Referer", refer);//设置请求报文头里的refer字段
	      ////设置请求报文头里的User-Agent字段
	      request.setAdditionalHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
	      //wc.addRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
	      //wc.addRequestHeader和request.setAdditionalHeader功能应该是一样的。选择一个即可。
	      //其他报文头字段可以根据需要添加
	     // wc.getCookieManager().setCookiesEnabled(true);//开启cookie管理
	      wc.getOptions().setJavaScriptEnabled(true);//开启js解析。对于变态网页，这个是必须的
	      wc.getOptions().setCssEnabled(false);//开启css解析。对于变态网页，这个是必须的。
	      HtmlPage page=null;
	      page = wc.getPage(request);
	      //HtmlFont
	     // Object obj = page.getByXPath(xpath);
	      ArrayList<DomText> list = (ArrayList<DomText>)page.getByXPath(xpath);
	      DomText ht =(DomText) list.get(0);
	//   String xpathStr =  ht.getFirstChild().getCanonicalXPath();
	  // System.out.println("xpathStr:"+xpathStr);
	    result =   ht.getTextContent();
	    	  
		return result;
	}


}
