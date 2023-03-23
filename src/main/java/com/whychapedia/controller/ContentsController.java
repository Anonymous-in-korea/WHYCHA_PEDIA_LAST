package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContentsController {
	
	@GetMapping("contents")
	public String contents() {
		return "contents_sy";
	}

	@GetMapping("content_info_page")
	public String content_info_page() {
		return "content_info_page";
	}
	
	@GetMapping("search_page")
	public String search_page() {
		return "search_page";
	}
	
	@GetMapping("comment_reply")
	public String comment_reply() {
		return "comment_reply";
	}
	
}
