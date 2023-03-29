package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
	@GetMapping("myPage/userPage_SY")
	public String userPage_SY() {
		return "myPage/userPage_SY";
	}
	
	@GetMapping("myPage/my_analysis_HY")
	public String my_analysis_HY() {
		return "myPage/my_analysis_HY";
	}

	
	
	
}
