package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminContentsController {

	@GetMapping("admin/3_contents/movie_list")
	public String movie() {
		return "admin/3_contents/movie_list";
	}

	@GetMapping("admin/3_contents/movie_view")
	public String movie_view() {
		return "admin/3_contents/movie_view";
	}

	@GetMapping("admin/3_contents/movie_write")
	public String movie_write() {
		return "admin/3_contents/movie_write";
	}

	@GetMapping("admin/3_contents/movie_modify")
	public String movie_modify() {
		return "admin/3_contents/movie_modify";
	}
	
}
