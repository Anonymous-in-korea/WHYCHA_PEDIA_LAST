package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	//admin login
	@GetMapping("admin/whycha_pedia_admin")
	public String admin_login() {
		return "admin/0_login/admin_login";
	}

	@RequestMapping("admin/whycha_pedia_admin")
	public String admin_login(Model model) {
		return "admin/0_login/admin_login";
	}

	
	
	//admin index page
	@GetMapping("admin/admin_index")
	public String admin_index() {
		return "admin/admin_index";
	}
	
	
	
	//admin page (my_admin)
	@GetMapping("admin/8_admin/admin/my_admin_info")
	public String my_admin_info() {
		return "admin/8_admin/admin/my_admin_info";
	}

	@GetMapping("admin/8_admin/admin/my_admin_modify")
	public String my_admin_modify() {
		return "admin/8_admin/admin/my_admin_modify";
	}
	
	
	
	//admin page (admin)
	@GetMapping("admin/8_admin/hradmin/admin_create")
	public String admin_create() {
		return "admin/8_admin/hradmin/admin_create";
	}
	
	@GetMapping("admin/8_admin/hradmin/admin_search")
	public String admin_search() {
		return "admin/8_admin/hradmin/admin_search";
	}

	@GetMapping("admin/8_admin/hradmin/admin_modify")
	public String admin_modify() {
		return "admin/8_admin/hradmin/admin_modify";
	}

	@GetMapping("admin/8_admin/hradmin/admin_detail")
	public String admin_detail() {
		return "admin/8_admin/hradmin/admin_detail";
	}
	
}
