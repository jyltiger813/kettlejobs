package jyl.util.crawler;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Set;

import com.gargoylesoftware.htmlunit.CookieManager;
import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.Page;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.WebRequest;
import com.gargoylesoftware.htmlunit.html.HtmlImageInput;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlRadioButtonInput;
import com.gargoylesoftware.htmlunit.html.HtmlTextInput;
import com.gargoylesoftware.htmlunit.util.Cookie;

public class Test {
	public static void main(String args[])
	{
		try {
			Test.test2();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FailingHttpStatusCodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static void test2() throws FailingHttpStatusCodeException, IOException {
		// TODO Auto-generated method stub
		//String url = "http://query.sse.com.cn/commonQuery.do?jsonCallBack=jsonpCallback53630&isPagination=true&sqlId=COMMON_SSE_XXPL_JYXXPL_DZJYXX_L&stockId=&startDate=2015-05-29&endDate=2015-05-29";
		String  url="http://www.sse.com.cn/disclosure/diclosure/block/";//想采集的网址
        String refer="http://www.sse.com.cn/disclosure/diclosure/block/";
        URL link=new URL(url); 
        WebClient wc=new WebClient();
        WebRequest request=new WebRequest(link); 
        request.setCharset("UTF-8");
    //    request.setProxyHost("120.120.120.x");
    //    request.setProxyPort(8080);
        request.setAdditionalHeader("Referer", refer);//设置请求报文头里的refer字段
        ////设置请求报文头里的User-Agent字段
        request.setAdditionalHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
        //wc.addRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
        //wc.addRequestHeader和request.setAdditionalHeader功能应该是一样的。选择一个即可。
        //其他报文头字段可以根据需要添加
       // wc.getCookieManager().setCookiesEnabled(true);//开启cookie管理
        wc.getOptions().setJavaScriptEnabled(true);//开启js解析。对于变态网页，这个是必须的
        wc.getOptions().setCssEnabled(false);//开启css解析。对于变态网页，这个是必须的。
        wc.getOptions().setThrowExceptionOnFailingStatusCode(false);
        wc.getOptions().setThrowExceptionOnScriptError(false);
        wc.getOptions().setTimeout(10000);
        HtmlPage page=null;
        page = wc.getPage(request);
       /* if(page==null)
        {
            System.out.println("采集 "+url+" 失败!!!");
            return ;
        }
        String content=page.asText();//网页内容保存在content里
        if(content==null)
        {
            System.out.println("采集 "+url+" 失败!!!");
            return ;
        }
        System.out.println("content "+content);*/
        
        
        
     //   final WebClient webClient = new WebClient(); 
        //1.获取某个待测页面  
        final HtmlPage page1 = wc.getPage(url); 
        //2.获取页面上的表单  
     //   final HtmlForm form = page1.get
        //3.获取页面上的各个元素  
        
      //  List<?> hbList = page.getByXPath("//div");
        try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        String checkButton = "/html/body/table/tbody/tr/td[2]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/div/div/div[3]/span[2]/input[1]";
      //  String diveXpath = "/html/body/table/tbody/tr/td[2]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/div/div/div[3]/div[1]";
       // HtmlDivision hb = (HtmlDivision)hbList.get(0);
        String startInput = "/html/body/table/tbody/tr/td[2]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/div/div/div[3]/div[1]/span/input[1]";
        String endInput = "/html/body/table/tbody/tr/td[2]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/div/div/div[3]/div[1]/span/input[2]";
        String goInput = "/html/body/table/tbody/tr/td[2]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/div/div/div[3]/div[1]/span/input[3]";
        HtmlTextInput startInput1 =  (HtmlTextInput)(page.getByXPath(startInput).get(0));
        HtmlTextInput endInput2 =  (HtmlTextInput)(page.getByXPath(endInput).get(0));
        HtmlImageInput goInputB = (HtmlImageInput)(page.getByXPath(goInput).get(0));
        
        HtmlRadioButtonInput radioInput = (HtmlRadioButtonInput)( page.getByXPath(checkButton));
        
        startInput1.setValueAttribute("2015-05-29");
        endInput2.setValueAttribute("2015-05-29");
        radioInput.setChecked(true);
        final Page result = goInputB.click();
        try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       String resultstr =  result.getWebResponse().getContentAsString();
       System.out.println("url:"+result.getUrl());
        System.out.println("test:"+resultstr);
        
        
      //  List<?> inputList = page.getByXPath("//input");
    //    HtmlDivision input1 = (HtmlDivision)inputList.get(0);
     //   String text = input1.getTextContent();
       // System.out.println("text:"+text);
        
        
      /*  final HtmlTextInput beginTime = form.getInputByName("bulktradestartdate");
        final HtmlTextInput endTime = form.getInputByName("bulktradeenddate");

        final HtmlSubmitInput button = form.getInputByName("bulktradestartdate"); 
        final HtmlTextInput textField = form.getInputByName("username"); 
        final HtmlPasswordInput pass= form.getInputByName("pass"); 
        //4.给元素赋值  
        textField.setValueAttribute("我是张三"); 
        pass.setValueAttribute("routon"); 
        //5.提交  
        button.click(); 
        */
	}

	private static void test1() throws FailingHttpStatusCodeException, IOException {
		// TODO Auto-generated method stub
		String  url="http://outofmemory.cn/";//想采集的网址
        String refer="http://open-open.com/";
        URL link=new URL(url); 
        WebClient wc=new WebClient();
        WebRequest request=new WebRequest(link); 
        request.setCharset("UTF-8");
    //    request.setProxyHost("120.120.120.x");
    //    request.setProxyPort(8080);
        request.setAdditionalHeader("Referer", refer);//设置请求报文头里的refer字段
        ////设置请求报文头里的User-Agent字段
        request.setAdditionalHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
        //wc.addRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
        //wc.addRequestHeader和request.setAdditionalHeader功能应该是一样的。选择一个即可。
        //其他报文头字段可以根据需要添加
        wc.getCookieManager().setCookiesEnabled(true);//开启cookie管理
        wc.getOptions().setJavaScriptEnabled(true);//开启js解析。对于变态网页，这个是必须的
        wc.getOptions().setCssEnabled(true);//开启css解析。对于变态网页，这个是必须的。
        wc.getOptions().setThrowExceptionOnFailingStatusCode(false);
        wc.getOptions().setThrowExceptionOnScriptError(false);
        wc.getOptions().setTimeout(10000);
        
        //设置cookie。如果你有cookie，可以在这里设置
      /*  Set<Cookie> cookies=null;
        Iterator<Cookie> i = cookies.iterator();
        while (i.hasNext()) 
        {
            wc.getCookieManager().addCookie(i.next());
        }*/
        //准备工作已经做好了
        HtmlPage page=null;
        page = wc.getPage(request);
        if(page==null)
        {
            System.out.println("采集 "+url+" 失败!!!");
            return ;
        }
        String content=page.asText();//网页内容保存在content里
        if(content==null)
        {
            System.out.println("采集 "+url+" 失败!!!");
            return ;
        }
        //搞定了
        CookieManager CM = wc.getCookieManager(); //WC = Your WebClient's name
        Set<Cookie> cookies_ret = CM.getCookies();//返回的Cookie在这里，下次请求的时候可能可以用上啦。
	}

}


