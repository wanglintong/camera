package cn.com.zlqf.camera.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class TestController {
	
	@RequestMapping("/upload")
	public @ResponseBody Map<String,String> test(HttpServletRequest request,MultipartFile file) {
		Map<String,String> map = new HashMap<>();
		String path = request.getSession().getServletContext().getRealPath("uploads");  
		File newFile = new File(path,file.getOriginalFilename());
		try {
			file.transferTo(newFile);
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
