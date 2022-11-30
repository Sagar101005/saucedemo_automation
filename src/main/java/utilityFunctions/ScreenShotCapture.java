package utilityFunctions;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class ScreenShotCapture extends InitializeDriver{
	
	public static String  takeScreenShot(String testCaseName) throws IOException{
		//String strPath="Screenshot/";
		TakesScreenshot ts=(TakesScreenshot)driver;
		File screenShotFile=ts.getScreenshotAs(OutputType.FILE);
		FileUtils.copyFile(screenShotFile,new File(testCaseName+".png"));
		
		return testCaseName+".png";
	 }
	
	
	

}