package com.whychapedia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.MemberService;
import com.whychapedia.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	@Autowired
	HttpSession session;
	
	@PostMapping("/login")
	public String login(Model model, @RequestParam String user_email, @RequestParam String user_pw) {
		System.out.println("로그인 email : " + user_email);
		System.out.println("로그인 pw : " + user_pw);
		int result = 0;
		MemberVo memberVo = memberService.memberSelectOne(user_email, user_pw);
		if ( memberVo != null ) {
			model.addAttribute("memberVo", memberVo);
			session.setAttribute("sessionId", memberVo.getUser_name());
			session.setAttribute("sessionId", memberVo.getUser_pic_url());
			result = 1;
		}
		System.out.println("memberVo result : " + result);
		return "index";
	}
	
}
