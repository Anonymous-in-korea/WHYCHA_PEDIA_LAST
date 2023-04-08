package com.whychapedia.controller;

import java.util.List;

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
	public String member_manage(Model model) {
		
		List<MemberVo> memberVo = adminUserService.userMemberSelectAll();
		System.out.println("리스트 사이즈 : " + memberVo.size());
		if ( memberVo != null ) { model.addAttribute("memberVo", memberVo); }
		
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
