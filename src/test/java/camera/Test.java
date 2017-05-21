package camera;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

import cn.com.zlqf.camera.utils.FastDFSUtils;

public class Test {
    public static void main(String[] args) throws Exception {
	//group1/M00/00/00/wKgJgFkdE16APDTtAB1Wkt3agog8510460
	BufferedInputStream bis = new BufferedInputStream(new FileInputStream(new File("d:\\jinsihou.jpg")));
	int available = bis.available();
	byte[] buffer = new byte[available];
	bis.read(buffer);
	bis.close();
	String url = FastDFSUtils.uploadPicToFastDFS(buffer, "ceshi.jpg");
	System.out.println(url);
    }
}
