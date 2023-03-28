package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContentsController {
	
	@GetMapping("contents/contents_GC")
	public String contents() {
		return "contents/contents_GC";
	}
	
	@GetMapping("contents/contents_info_page")
	public String contents_info_page() {
		return "contents/contents_info_page_GC";
	}
	
}
