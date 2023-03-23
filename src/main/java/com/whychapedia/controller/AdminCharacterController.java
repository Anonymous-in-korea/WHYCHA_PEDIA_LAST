package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminCharacterController {

	@GetMapping("admin/5_character/character_manage")
	public String character_manage() {
		return "admin/5_character/character_manage";
	}

	@GetMapping("admin/5_character/character_input")
	public String character_input() {
		return "admin/5_character/character_input";
	}

	@GetMapping("admin/5_character/character_detail")
	public String character_detail() {
		return "admin/5_character/character_detail";
	}

	@GetMapping("admin/5_character/character_modify")
	public String character_modify() {
		return "admin/5_character/character_modify";
	}
	
}
