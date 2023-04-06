package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMemberController {

	@GetMapping("admin/6_member/member_manage")
	public String member_manage(Model model) {
		return "admin/6_member/member_manage";
	}

	@GetMapping("admin/6_member/member_detail")
	public String member_detail() {
		return "admin/6_member/member_detail";
	}
	
}
