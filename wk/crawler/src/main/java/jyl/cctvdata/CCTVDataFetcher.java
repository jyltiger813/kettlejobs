package jyl.cctvdata;

import java.util.Calendar;

import jyl.util.crawler.SimpleCrawler;
import jyl.util.time.DateTimeUtil;

public class CCTVDataFetcher {

	public static void main(String args[]){
		CCTVDataFetcher fet = new CCTVDataFetcher();
	 fet.dealDataFrom2("2013-07-10","2015-07-22");
		//fet.dealOneDay("20140520");
	}



private void dealDataFrom2(String string, String string2) {
		// TODO Auto-generated method stub
	Calendar begin = DateTimeUtil.getCalendarByStr(string);
	Calendar end = DateTimeUtil.getCalendarByStr(string2);
	int failureTime = 0;
	while(end.after(begin))
	{
		String dayStr = DateTimeUtil.getDateStrEight(begin);
		
		try {
			dealOneDay(dayStr);
			failureTime = 0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(failureTime<=3){
				try {
					Thread.sleep(500);
				} catch (InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			begin = DateTimeUtil.getYesterDay(begin);
			failureTime++;
			}else
			{
				System.out.println(dayStr+"failureTime");
			}
			//e.printStackTrace();
		}
	
		begin = DateTimeUtil.getNextDay(begin);
	}
}



private void dealOneDay(String string) {
		// TODO Auto-generated method stub
	String url = "http://cctv.cntv.cn/lm/xinwenlianbo/"+string+".shtml";
	String xpath = "/html/body/table[4]/tbody/tr/td[2]/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/font";
	//String content = Test.getDataNoDealJSCSS(url,xpath);
	String content = SimpleCrawler.getContent(url,"gbk");
	String content2 = SimpleCrawler.getContent(url,"utf-8");
	String [] rows = content.split("'");
//	System.out.println("content:"+content);
	for(String row : rows)
	{
		if(row.contains("访华"))
			System.out.println(string+":"+row);
	}
	String [] rows1 = content2.split(">");
//	System.out.println("content:"+content);
	for(String row : rows1)
	{
		if(row.contains("访华"))
			System.out.println(string+":"+row.replace("</a", ""));
	}
	}
}
