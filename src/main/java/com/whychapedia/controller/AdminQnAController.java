package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminQnAController {

	@GetMapping("admin/2_qna/QnA_list")
	public String QnA_list() {
		return "admin/2_qna/QnA_list";
	}

	@GetMapping("admin/2_qna/QnA_view")
	public String QnA_view() {
		return "admin/2_qna/QnA_view";
	}

	@GetMapping("admin/2_qna/QnA_reply")
	public String QnA_reply() {
		return "admin/2_qna/QnA_reply";
	}
	
}
