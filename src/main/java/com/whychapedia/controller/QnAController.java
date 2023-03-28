package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnAController {

	@GetMapping("QnA/QnA_SY")
	public String QnA_SY() {
		return "QnA/QnA_SY";
	}

	@GetMapping("QnA/QnA_Answer_SY")
	public String QnA_Answer_SY() {
		return "QnA/QnA_Answer_SY";
	}
	
}
