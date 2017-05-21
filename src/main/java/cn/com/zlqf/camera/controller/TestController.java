package cn.com.zlqf.camera.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.com.zlqf.camera.utils.FastDFSUtils;

@Controller
public class TestController {

    @RequestMapping("/upload")
    public @ResponseBody Map<String, String> test(HttpServletRequest request, MultipartFile file) {
	Map<String, String> map = new HashMap<>();
	try {
	    String imgUrl = FastDFSUtils.uploadPicToFastDFS(file.getBytes(), file.getOriginalFilename());
	    System.out.println(imgUrl);
	} catch (Exception e) {
	    map.put("state", "err");
	    return map;
	}
	map.put("state", "ok");
	return map;
    }

    @RequestMapping("/test")
    public String toTestPage() {
	return "test";
    }
}
