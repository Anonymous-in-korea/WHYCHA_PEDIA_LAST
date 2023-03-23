package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminCommentController {

	@GetMapping("admin/4_comment/reported/report_page")
	public String report_page() {
		return "admin/4_comment/reported/report_page";
	}
	
	@GetMapping("admin/4_comment/reported/report_reply")
	public String report_reply() {
		return "admin/4_comment/reported/report_reply";
	}
	
}
