package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonController {

	@GetMapping("person_detail")
	public String personDetail() {
		return "person_detail_GC";
	}
	
}
