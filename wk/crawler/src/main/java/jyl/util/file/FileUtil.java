package jyl.util.file;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;

public class FileUtil {

	public static HashMap<String,RandomAccessFile> files = new HashMap<String,RandomAccessFile>();
	

	public static void append2File(String filePath, String content) {
		// TODO Auto-generated method stub
		
		  RandomAccessFile randomFile = files.get(filePath);
		  
			  
			try {
				if(randomFile==null)
				
				randomFile = new RandomAccessFile(filePath, "rw");
					
				
				files.put(filePath, randomFile);

				try{
		        long fileLength = randomFile.length();   
					}catch(java.io.IOException e)
		        {
					e.printStackTrace();
					randomFile = new RandomAccessFile(filePath, "rw");
					files.put(filePath, randomFile);
			}
		        //将写文件指针移到文件尾。    
				 long fileLength = randomFile.length();   
		        randomFile.seek(fileLength);  
		        randomFile.write(content.getBytes("gb2312"));
		     //   randomFile.write((System.getProperty("line.separator") + "测试测试").getBytes());
		   //     randomFile.w
		    //    randomFile.writeChars("测试");
		  
		      //  randomFile.writeBytes("测试测");    
		  
		      //  randomFile.close();    
		  
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}    
			  
		        // 文件长度，字节数    
		  
	}

	private static void test1() {
		// TODO Auto-generated method stub
		  RandomAccessFile randomFile;
		try {
			randomFile = new RandomAccessFile("f:/t1.txt", "rw");

	        long fileLength = randomFile.length();    
	  
	        //将写文件指针移到文件尾。    
	  
	        randomFile.seek(fileLength);  
	        randomFile.write("测试".getBytes("gb2312"));
	     //   randomFile.write((System.getProperty("line.separator") + "测试测试").getBytes());
	   //     randomFile.w
	    //    randomFile.writeChars("测试");
	  
	      //  randomFile.writeBytes("测试测");    
	  
	        randomFile.close();    
	  
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
		  
	        // 文件长度，字节数    
	  
	        
	  
	}
	
	

}
