package cn.com.zlqf.camera.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping({"/","/cameraDistribution"})
	public String cameraDistribution() {
		return "cameraDistribution";
	}
	
	@RequestMapping("/photoIdentification")
	public String photoIdentification() {
		return "photoIdentification";
	}
	
	@RequestMapping("/historicalData")
	public String historicalData() {
		return "historicalData";
	}
}
