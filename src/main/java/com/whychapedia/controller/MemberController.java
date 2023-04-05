package com.whychapedia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.MemberService;
import com.whychapedia.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	HttpSession session;

	@RequestMapping("/")
	public String login(Model model, @RequestParam String user_email, @RequestParam String user_pw) {
		int result = 0;
		MemberVo memberVo = memberService.memberSelectOne(user_email, user_pw);
		if ( memberVo != null ) {
			session.setAttribute("sessionId", memberVo.getId());
			session.setAttribute("sessionEmail", memberVo.getUser_email());
			session.setAttribute("sessionName", memberVo.getUser_name());
			session.setAttribute("sessionUserPic", memberVo.getUser_pic_url());
			result = 1;
			System.out.println("user_email : " + memberVo.getUser_email());
			System.out.println("user_name : " + memberVo.getUser_name());
		}
		model.addAttribute("result", result);
		
		/*
		 * , @RequestParam(value = "redirectUrl", required = false) String redirectUrl
		 */
		/*
		 * if (redirectUrl != null && !redirectUrl.isEmpty()) { return "redirect:" +
		 * redirectUrl; } else { return "redirect:/"; }
		 */
		
		return "index_SH";
	}
	
	@RequestMapping("join")
	public String join(Model model, @RequestParam String user_name, @RequestParam String user_email, @RequestParam String user_pw) {
		
		int check = 0;
		MemberVo memberVo = memberService.user_email_check(user_email);
		if ( memberVo == null ) { check = 1; }
		
		if ( check == 1 ) {
			memberService.memberInsertOne(user_name, user_email, user_pw);
			model.addAttribute("check", "1");
			model.addAttribute("insert_success", "회원가입이 완료되었습니다. 가입하신 E-MAIL과 PW로 로그인해주세요.");
		} else {
			model.addAttribute("check", "0");
			model.addAttribute("insert_fail", "입력하신 E-MAIL이 이미 사용중입니다. 다시 입력해주세요.");
		}
		
		return "index_SH";
	}
	
}
