package jyl.realtime.compare;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.TreeMap;

import jyl.util.time.DateTimeUtil;



public class SinaStockDataFetcher {

	URL url = null;
	String urlStr = "http://hq.sinajs.cn/list=sh000001,sh000016,CFF_RE_IH1507";
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//http://hq.sinajs.cn/list=sh000016,sh601857
		//MainDispatcher
		SinaStockDataFetcher fetcher = new SinaStockDataFetcher();
		try {
			CompareBean resultBean =	fetcher.getDatas();
			System.out.println("bean:"+resultBean);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private CompareBean getDatas() throws IOException {
		// TODO Auto-generated method stub
	
		if(url==null)
			url = new URL (urlStr);
		InputStreamReader isr = null;
		URLConnection ucon = url.openConnection();
		ucon.setConnectTimeout(5000);
//		System.out.println("timeout"+ucon.getReadTimeout());
			try {
				isr = new InputStreamReader(ucon.getInputStream(),"GBK");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("url:"+urlStr);

			}
		StringBuffer contentBuffer = new StringBuffer();
		BufferedReader bfr = new BufferedReader(isr);
		String temp = bfr.readLine();
		long beigin = System.currentTimeMillis();
		while(temp!=null)
		{
			if( System.currentTimeMillis()-beigin>1000)//等待时间超过一秒
			{
				System.out.println("使用时间超过1秒,url:"+urlStr);
				throw new RuntimeException();
			}
			contentBuffer.append(temp);
			 temp = bfr.readLine();
		}
		System.out.println("urlStr:"+urlStr);
		System.out.println("content:"+contentBuffer.toString());
		//System.out.println("contentStr:"+contentBuffer.toString());
	/*	while (bfr.ready()) {
			row = bfr.readLine();
		}*/
		
		return parseAndSaveDatas(contentBuffer.toString());
	
	}

	private CompareBean parseAndSaveDatas(String string) {
		// TODO Auto-generated method stub
		String [] trades = string.split(";");
		CompareBean bean = new CompareBean();
		if(trades.length>1)
		{
			
			/*
			 * var hq_str_sh000016="上证50,3368.999,3370.383,3326.198,3383.488,3313.590,0,0,77400705,121644021215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2015-06-11,11:21:34,00";
var hq_str_sh601857="中国石油,12.96,12.98,12.76,12.98,12.71,12.76,12.77,103250669,1326235656,139900,12.76,882405,12.75,448200,12.74,1714500,12.73,1163800,12.72,77662,12.77,72800,12.78,61400,12.79,160037,12.80,36110,12.81,2015-06-11,11:21:34,00";
			 */
			//处理上证数据
			String []strs = trades[0].split("=");
			String StockCode = strs[0].substring(strs[0].length()-6, strs[0].length());
			System.out.println("StockCode:"+StockCode);
			String [] tradePro = strs[1].split(",");
			 if(tradePro.length<9)
				 return null;//无数据跳过该次循环
			 //处理时间  
			 	String timeStr = tradePro[30]+" "+ tradePro[31];
				
				System.out.println("timeStr:"+timeStr);
			 float currentPriceSZ = Float.parseFloat(tradePro[3]);
			 bean.setCurrentPriceSZ(currentPriceSZ);
			 Long amountSZ= Long.parseLong(tradePro[9]);
			 bean.setCurrentAmountSZ(amountSZ);
			 System.out.println("currentPriceSZ:"+currentPriceSZ);
			
			 //处理上证50
			  String []strs1 = trades[1].split("=");
			 
				String [] tradePro1 = strs1[1].split(",");
				 if(tradePro1.length<9)
					 return null;//无数据跳过该次循环
				  float currentPrice50= Float.parseFloat(tradePro1[3]);
				  System.out.println("currentPrice50:"+currentPrice50);
				  String StockCode1 = strs1[0].substring(strs1[0].length()-6, strs[0].length());
					System.out.println("StockCode:"+StockCode1);
					 Long amount50= Long.parseLong(tradePro1[9]);
					 bean.setCurrentAmount50(amount50);
					  bean.setCurrentPrice50(currentPrice50);
				  //处理上证50期指
					 String []strs2 = trades[2].split("=");
						String StockCode2 = strs2[0].substring(strs2[0].length()-6, strs[0].length());
						System.out.println("StockCode2:"+StockCode2);
						String [] tradePro2 = strs2[1].split(",");
						 if(tradePro1.length<9)
							 return null;//无数据跳过该次循环
						 
						  float currentPrice50F= Float.parseFloat(tradePro2[3]);
						  bean.setCurrentPrice50F(currentPrice50F);
						  System.out.println("currentPrice50:"+currentPrice50F);
					  //13：1371608，持仓量
						//  14：1611074，成交量
						//  Long volumn50F= Long.parseLong(tradePro2[14]);
						//  Long volumn50FHod= Long.parseLong(tradePro2[13]);
							/* bean.setCurrentAmount50F(volumn50F);
							 bean.setCurrentVol50FHold(volumn50FHod);*/
				  
			  /*float BeginToday= Float.parseFloat(tradePro[1]);
			  float ClosedYes = Float.parseFloat(tradePro[2]);
			  float CloseToday= Float.parseFloat(tradePro[3]);
			  float Maxprice= Float.parseFloat(tradePro[4]);
			  float Minprice= Float.parseFloat(tradePro[5]);
			  Long Volumn= Long.parseLong(tradePro[8]);
			  Double Amount= Double.parseDouble(tradePro[9]);
			  String timeStr = tradePro[tradePro.length-3];
			  Timestamp TradeDate = new Timestamp(DateTimeUtil.getCalendarByStr(timeStr).getTimeInMillis());
		*/	  return bean;	
		}
		else return null;
		
		
	}

}
