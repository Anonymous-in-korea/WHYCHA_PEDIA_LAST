package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AdminUserService;
import com.whychapedia.vo.MemberVo;

@Controller
public class AdminUserController {

	@Autowired
	MemberVo memberVo;
	@Autowired
	AdminUserService adminUserService;
	
	
	@GetMapping("admin/6_member/member_manage")
	public String member_manage(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "30") int datatableSelector, @RequestParam(defaultValue = "") String searchWord) {
		
		System.out.println("datatableSelector : " + datatableSelector);
		System.out.println("searchWord : " + searchWord);
		
		int now_page = 0;
		int listCount = 0;
		int maxPage = 0;
		int startPage = 0;
		int endPage = 0;
		int startRow = 0;
		int endRow = 0;
		
		Map<String, Object> userSelectAll = new HashMap<>();
		
		if ( searchWord.equals("영화제목으로 검색") || searchWord.equals("") ) {
			
			userSelectAll = adminUserService.userMemberSelectAll(page, datatableSelector);

			now_page = (int) userSelectAll.get("page");
			listCount = (int) userSelectAll.get("listCount");
			maxPage = (int) userSelectAll.get("maxPage");
			startPage = (int) userSelectAll.get("startPage");
			endPage = (int) userSelectAll.get("endPage");
			startRow = (int) userSelectAll.get("startRow");
			endRow = (int) userSelectAll.get("endRow");
			
		} else {
			userSelectAll = adminUserService.userMemberSelectAll_searchWord(page, searchWord, datatableSelector);
			System.out.println("입력된 영화검색어 : " + searchWord);

			now_page = (int) userSelectAll.get("page");
			listCount = (int) userSelectAll.get("listCount");
			maxPage = (int) userSelectAll.get("maxPage");
			startPage = (int) userSelectAll.get("startPage");
			endPage = (int) userSelectAll.get("endPage");
			startRow = (int) userSelectAll.get("startRow");
			endRow = (int) userSelectAll.get("endRow");
		}
		
		System.out.println("maxPage : " + maxPage);
		
		@SuppressWarnings("unchecked")
		List<MemberVo> memberVo = (List<MemberVo>) userSelectAll.get("userList");
		if ( memberVo.size() != 0 ) {
			model.addAttribute("memberVo", memberVo);
			model.addAttribute("now_page", now_page);
			model.addAttribute("listCount", listCount);
			model.addAttribute("maxPage", maxPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			System.out.println("USER_List size : " + memberVo.size());
			System.out.println("USER_ID : " + memberVo.get(0).getId());
		}
		
		
		model.addAttribute("datatableSelector", datatableSelector);
		
		return "admin/6_member/member_manage";
	}

	@GetMapping("admin/6_member/member_detail")
	public String member_detail(Model model, @RequestParam String id) {
		
		memberVo = adminUserService.userMemberSelectOne(id);
		if ( memberVo != null ) { model.addAttribute("memberVo", memberVo); }
		
		return "admin/6_member/member_detail";
	}
	
	@GetMapping("member_block")
	public String member_block(@RequestParam String id) {
		int block_id = Integer.parseInt(id);
		int result = adminUserService.userMemberSelectBlock(block_id);
		return "redirect:admin/6_member/member_manage";
	}

	@GetMapping("member_normal")
	public String member_normal(@RequestParam String id) {
		int block_id = Integer.parseInt(id);
		int result = adminUserService.userMemberSelectNormal(block_id);
		return "redirect:admin/6_member/member_manage";
	}
	
}
