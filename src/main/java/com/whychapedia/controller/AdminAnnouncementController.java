package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AdminAnnouncementService;
import com.whychapedia.vo.AnnouncementVo;

@Controller
public class AdminAnnouncementController {

	@Autowired
	AnnouncementVo announcementVo;
	@Autowired
	AdminAnnouncementService adminAnnouncementService;
	
	// ANNOUNCEMENT_LIST --------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/1_notice/notice_list")
	public String notice_list(Model model) {
		
		int result = 0;
		List<AnnouncementVo> adminAnnouncementListAll = adminAnnouncementService.adminAnnouncementListAll();
		if ( adminAnnouncementListAll != null ) {
			model.addAttribute("adminAnnouncementListAll", adminAnnouncementListAll);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/1_notice/notice_list";
	}
	// ANNOUNCEMENT_LIST --------------------------------------------------------------------------------------------------------------------------------------------------------

	
	
	// ANNOUNCEMENT_VIEW --------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/1_notice/notice_view")
	public String notice_view(Model model, @RequestParam int id) {
		
		int result = 0;
		announcementVo = adminAnnouncementService.adminAnnouncementSelectOne(id);
		if ( announcementVo != null ) {
			model.addAttribute("announcementVo", announcementVo);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/1_notice/notice_view";
	}
	
	@GetMapping("admin/1_notice/notice_update") // 공지 등록하기 메서드
	public String notice_update(Model model, @RequestParam int id, @RequestParam int is_regi) {
		
		System.out.println("id : " + id);
		System.out.println("is_regi : " + is_regi);
		
		 adminAnnouncementService.adminAnnouncementUpdateOne(id, is_regi); 
		
		return "redirect:/admin/1_notice/notice_list";
	}
	
	@GetMapping("admin/1_notice/notice_view_delete") // 공지 삭제하기 메서드
	public String notice_view_delete(Model model, @RequestParam int id) {
		
		adminAnnouncementService.adminAnnouncementDeleteOne(id);
		
		return "redirect:/admin/1_notice/notice_list";
	}
	// ANNOUNCEMENT_VIEW --------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// ANNOUNCEMENT_WRITE --------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/1_notice/notice_write")
	public String notice_write() {
		return "admin/1_notice/notice_write";
	}
	
	@PostMapping("admin/1_notice/notice_write")
	public String notice_write(Model model, @RequestParam String announcement_title, @RequestParam String announcement_content, @RequestParam String announcement_url, @RequestParam int admin_id,
			@RequestParam String important_select, @RequestParam int is_regi) {
		
		int important = 1;
		if ( important_select.equals("general_notice") ) { important = 1; } else { important = 2; }
		System.out.println("important_select : " + important_select);
		System.out.println("important : " + important);
		
		if ( important == 1 ) {
			adminAnnouncementService.adminAnnouncementInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
		} else {
			adminAnnouncementService.adminAnnouncementDirectInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
		}
		
		return "redirect:/admin/1_notice/notice_list";
	}
	// ANNOUNCEMENT_WRITE --------------------------------------------------------------------------------------------------------------------------------------------------------

	
	
	// ANNOUNCEMENT_MODIFY --------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/1_notice/notice_modify")
	public String notice_modify(Model model, @RequestParam int id) {
		
		int result = 0;
		announcementVo = adminAnnouncementService.adminAnnouncementSelectOne(id);
		if ( announcementVo != null ) {
			model.addAttribute("announcementVo", announcementVo);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/1_notice/notice_modify";
	}
	
	@PostMapping("admin/1_notice/notice_modify")
	public String notice_nodify(Model model, @RequestParam int id, @RequestParam String announcement_title, @RequestParam String announcement_content, @RequestParam(defaultValue = "") String announcementUrl,
			@RequestParam int admin_id, @RequestParam String important_select, @RequestParam int is_regi) {
		
		int announcement_important = 1;
		if ( important_select.equals("general_notice") ) {
			announcement_important = 1;
		} else {
			announcement_important = 2;
		}
		System.out.println("important_select : " + important_select);
		System.out.println("important : " + announcement_important);
		
		String announcement_url = "";
		if ( announcementUrl.equals("입력할 이미지의 URL을 입력하세요.") || announcementUrl.equals("") ) { announcement_url = "0"; }
		
		if ( announcement_important == 1 ) {
			adminAnnouncementService.adminAnnouncementModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
		} else {
			adminAnnouncementService.adminAnnouncementDirectModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
		}
		
		return "redirect:/admin/1_notice/notice_list";
	}
	// ANNOUNCEMENT_MODIFY --------------------------------------------------------------------------------------------------------------------------------------------------------
	
}
