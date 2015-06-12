package jyl.util.sound;

import java.applet.AudioClip;
import java.awt.Toolkit;

public class SoundUtil {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int i=0;i<10;i++)
		{
			try {
				Thread.sleep(1000);
				Toolkit.getDefaultToolkit().beep();
	           

			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
	}

}
