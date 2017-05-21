package cn.com.zlqf.camera.utils;

import org.apache.commons.io.FilenameUtils;
import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.StorageClient1;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerServer;
import org.springframework.core.io.ClassPathResource;

public class FastDFSUtils {

    static {
	// 1、加载配置文件
	ClassPathResource resource = new ClassPathResource("fdfs_client.conf");
	// 2、对文件初始化
	try {
	    ClientGlobal.init(resource.getClassLoader().getResource("fdfs_client.conf").getPath());
	} catch (Exception e) {
	    throw new RuntimeException(e);
	}
    }

    public static String uploadPicToFastDFS(byte[] file_buff, String filename) throws Exception {
	// 3、创建跟踪服务器的客户端
	TrackerClient trackerClient = new TrackerClient();
	// 4、根据跟踪服务器的客户端获取跟踪服务器
	TrackerServer trackerServer = trackerClient.getConnection();
	// 5、根据跟踪服务器获取存储服务器的客户端
	StorageClient1 storageClient1 = new StorageClient1(trackerServer, null);
	// 6、附件上传
	String file_ext_name = FilenameUtils.getExtension(filename);
	// 附件的url地址 group1/M00/00/01/wKjIgFWOYc6APpjAAAD-qk29i78248.jpg 目录打散
	String path = storageClient1.upload_file1(file_buff, file_ext_name, null);
	return path;
    }
}
