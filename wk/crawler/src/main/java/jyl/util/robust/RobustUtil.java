package jyl.util.robust;

import java.awt.AWTException;
import java.awt.Color;
import java.awt.Robot;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;

public class RobustUtil {
	static Robot rb 	 ;
    static int internal = 100;
	static {
		try {
			rb =  new Robot();
		} catch (AWTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//leftMouseClick();
		test1();
	}
	public static void test1() {
		// TODO Auto-generated method stub
		rb.delay(2000);
		//移动到操作，明细数据导出
		mouseMoveAndLefClick(1365,851);
		mouseMoveAndLefClick(1418,829);
		
		//循环判断某一区域是否存在颜色
		loopAreaExistColor(1401,473 , 1411,490,-4144960);
		//导出 868,532
		mouseMoveAndLefClick(868,532);
		//判断某一区块颜色不再发生变化
	//	arerColorNotChanged(1401,473 , 1411,490);
		//arerColorNotChanged(1401,473 , 1411,490);
		lineColorNotChanged(1401,473 , 1411,490);
		lineColorNotChanged(1401,473 , 1411,490);
		//842,497点击确定
		mouseMoveAndLefClick(938,499);
		//1401,473  1438,490    时间字体颜色白色  4144960
		//mouseMoveAndPrintColour(1401,473 , 1411,490);
		//areaExistColor(1401,473 , 1411,490,4144960);
		
		
	}
	public static void lineColorNotChanged(int xleft, int jtop, int xright, int jbottom)  {
		// TODO Auto-generated method stub
		
		Color []datas = new Color[xright-xleft];
		boolean isStop = false;
		//System.out.println("outofwhile");
		rb.delay(2000);
		while (!isStop) {
			//System.out.println("begin");
			
			isStop = true;
			//只要有一个不一致就表明为不一致
			for (int i = xleft; i < xright; i++) {
				rb.delay(100);
				int j = jtop +(i-xleft)*(jbottom-jtop)/(xright-xleft);
					Color col = rb.getPixelColor(i,  j);
					if (!col.equals(datas[i-xleft])) {
						isStop = false;
					datas[i-xleft] = col;
				}
			}
			
		System.out.println("after");
		}
		
	}
	public static void arerColorNotChanged(int xleft, int jtop, int xright, int jbottom) {
		// TODO Auto-generated method stub
	
		Color [][] datas = new Color[xright-xleft][jbottom-jtop];
		/*rb.mouseMove(xPosition,yPosition);
		rb.delay(2000);
		rb.mouseMove(xPosition+xScope,yPosition+yScope);
		rb.delay(10000);*/
		boolean isStop = false;
		//System.out.println("outofwhile");
		while (!isStop) {
			//System.out.println("begin");
			rb.delay(internal);
			isStop = true;
			//只要有一个不一致就表明为不一致
			for (int i = xleft; i < xright; i++) {
				for (int j = jtop; j < jbottom; j++) {
					Color col = rb.getPixelColor(i,  j);
					if (!col.equals(datas[i-xleft][j-jtop])) {
						isStop = false;
					}
					datas[i-xleft][j-jtop] = col;
				}
			}
			
		System.out.println("after");
			/*rb.mouseMove(xPosition+xScope,yPosition+yScope);
			rb.delay(1000);*/
		}	
	}
	public static void loopAreaExistColor(int i, int j, int k, int l, int m) {
		// TODO Auto-generated method stub
		mouseMove(i,  j);
		while(!areaExistColor( i,  j,  k,  l,  m))
				{
			//mouseMove(i,  j);
			 rb.delay(internal);
				}
	}
	public static boolean  areaExistColor(int xleft, int jtop, int xright, int jbottom, int colorInt) {
		// TODO Auto-generated method stub
		for(int i =xleft;i<xright;i++)
		{
			System.out.println("");
			for(int j =jtop;j<jbottom;j++)
			{
				Color col = rb.getPixelColor(i, j);
				System.out.print(col.getRGB());
				
			if(col.getRGB()==colorInt)
			{
				System.out.println("exist");
				return true;
				
			}
			}
		}
		return false;
	}
	/*
	 * i,j  左上角x y坐标;k,l 右下角x y 坐标 
	 */
	public static void mouseMoveAndPrintColour(int xleft, int jtop, int xright, int jbottom) {
		// TODO Auto-generated method stub
		mouseMove(xleft,jtop);
		for(int i =xleft;i<xright;i++)
		{
			System.out.println("");
			for(int j =jtop;j<jbottom;j++)
			{
				Color col = rb.getPixelColor(i, j);
			int rgb = col.getRGB();
			System.out.print(rgb);
			}
		}
		rb.delay(1000);
		mouseMove(xright,jbottom);
	}
	public static void mouseMoveAndLefClick(int i, int j) {
		// TODO Auto-generated method stub
		mouseMove(i,j);
		rb.delay(internal);
		leftMouseClick();
	}
	public static void mouseMove(int i, int j) {
		// TODO Auto-generated method stub
		rb.mouseMove(i, j);
	}
	public static void leftMouseClick() {
		// TODO Auto-generated method stub
		rb.delay(internal);
		rb.mousePress(InputEvent.BUTTON1_DOWN_MASK);
		rb.delay(internal);
		rb.mouseRelease(InputEvent.BUTTON1_MASK);
		rb.delay(internal);
	}
	public static void delay(int i) {
		// TODO Auto-generated method stub
		rb.delay(i);
	}
	public static void keyPageUp() {
		// TODO Auto-generated method stub
		rb.keyPress(KeyEvent.VK_PAGE_UP);
		rb.delay(internal );
		rb.keyRelease(KeyEvent.VK_PAGE_UP);
		rb.delay(internal );
	}

}
