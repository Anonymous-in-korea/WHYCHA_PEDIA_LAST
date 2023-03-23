package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminNoticeController {

	@GetMapping("admin/1_notice/notice_list")
	public String notice_list() {
		return "admin/1_notice/notice_list";
	}

	@GetMapping("admin/1_notice/notice_view")
	public String notice_view() {
		return "admin/1_notice/notice_view";
	}

	@GetMapping("admin/1_notice/notice_write")
	public String notice_write() {
		return "admin/1_notice/notice_write";
	}
	@RequestMapping("admin/1_notice/notice_write")
	public String notice_write(Model model) {
		return "";
	}

	@GetMapping("admin/1_notice/notice_modify")
	public String notice_modify() {
		return "admin/1_notice/notice_modify";
	}
	
}
