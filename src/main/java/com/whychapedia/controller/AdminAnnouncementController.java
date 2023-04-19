package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String notice_list(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "30") int datatableSelector, @RequestParam(defaultValue = "") String searchWord) {
		
		System.out.println("datatableSelector : " + datatableSelector);
		System.out.println("searchWord : " + searchWord);
		
		int now_page = 0;
		int listCount = 0;
		int maxPage = 0;
		int startPage = 0;
		int endPage = 0;
		int startRow = 0;
		int endRow = 0;
		
		Map<String, Object> adminAnnouncement = new HashMap<>();
		
		if ( searchWord.equals("영화제목으로 검색") || searchWord.equals("") ) {
			
			adminAnnouncement = adminAnnouncementService.adminAnnouncementListAll(page, datatableSelector);

			now_page = (int) adminAnnouncement.get("page");
			listCount = (int) adminAnnouncement.get("listCount");
			maxPage = (int) adminAnnouncement.get("maxPage");
			startPage = (int) adminAnnouncement.get("startPage");
			endPage = (int) adminAnnouncement.get("endPage");
			startRow = (int) adminAnnouncement.get("startRow");
			endRow = (int) adminAnnouncement.get("endRow");
			
		} else {
			adminAnnouncement = adminAnnouncementService.adminAnnouncementListAll_searchWord(page, searchWord, datatableSelector);
			System.out.println("입력된 영화검색어 : " + searchWord);

			now_page = (int) adminAnnouncement.get("page");
			listCount = (int) adminAnnouncement.get("listCount");
			maxPage = (int) adminAnnouncement.get("maxPage");
			startPage = (int) adminAnnouncement.get("startPage");
			endPage = (int) adminAnnouncement.get("endPage");
			startRow = (int) adminAnnouncement.get("startRow");
			endRow = (int) adminAnnouncement.get("endRow");
		}
		
		System.out.println("maxPage : " + maxPage);
		
		int result = 0;
		
		@SuppressWarnings("unchecked")
		List<AnnouncementVo> adminAnnouncementListAll = (List<AnnouncementVo>) adminAnnouncement.get("adminAnnouncementList");
		if ( adminAnnouncementListAll.size() != 0 ) {
			result = 1;
			model.addAttribute("result", result);
			model.addAttribute("adminAnnouncementListAll", adminAnnouncementListAll);
			model.addAttribute("now_page", now_page);
			model.addAttribute("listCount", listCount);
			model.addAttribute("maxPage", maxPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			System.out.println("컨텐츠List size : " + adminAnnouncementListAll.size());
			System.out.println("컨텐츠ID : " + adminAnnouncementListAll.get(0).getId());
		}
		
		model.addAttribute("datatableSelector", datatableSelector);
		
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
		System.out.println("result : " + result);
		
		return "admin/1_notice/notice_view";
	}
	
	@GetMapping("admin/1_notice/notice_update") // 공지 등록하기 메서드
	public String notice_update(Model model, @RequestParam int id, @RequestParam int is_regi) {
		
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
