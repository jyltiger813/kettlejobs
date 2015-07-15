package jyl.sse.datarobot;

import jyl.util.robust.RobustUtil;

public class RealTimeHistoryDataOoutput {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	//	outputOnePage();
		outputOneIndex();
	}

	private static void outputOneIndex() {
		// TODO Auto-generated method stub
		
		for(int i= 0;i<50;i++)
		{
		RobustUtil.delay(2000);
		outputOnePage();
		RobustUtil.keyPageUp();
		}
	}

	private static void outputOnePage() {
		// TODO Auto-generated method stub
		RobustUtil.delay(2000);
		//移动到操作，明细数据导出
		RobustUtil.loopAreaExistColor(1401,473 , 1411,490,-4144960);
		RobustUtil.mouseMoveAndLefClick(1365,851);
		RobustUtil.mouseMoveAndLefClick(1418,829);
		
		//循环判断某一区域是否存在颜色
		RobustUtil.loopAreaExistColor(1401,473 , 1411,490,-4144960);
		//导出 868,532
		RobustUtil.mouseMoveAndLefClick(868,532);
		//判断某一区块颜色不再发生变化
	//	arerColorNotChanged(1401,473 , 1411,490);
		//arerColorNotChanged(1401,473 , 1411,490);
		RobustUtil.lineColorNotChanged(1401,473 , 1461,510);
		//RobustUtil.lineColorNotChanged(1401,473 , 1411,490);
		//842,497点击确定
		RobustUtil.mouseMoveAndLefClick(938,499);
		//1401,473  1438,490    时间字体颜色白色  4144960
		//mouseMoveAndPrintColour(1401,473 , 1411,490);
		//areaExistColor(1401,473 , 1411,490,4144960);
		
	}

}
