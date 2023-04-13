package com.whychapedia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.AdminMailService;

@Controller
public class AdminEmailController {

	@Autowired
	HttpSession session;
	@Autowired
	AdminMailService adminMailService;
	
	@PostMapping("sendEmail")
	@ResponseBody
	public String sendEmail(String userEmail,String userName) {
		System.out.println("EmailController userEmail : "+userEmail);
		System.out.println("EmailController userName : "+userName);
		//텍스트 이메일발송
		String pwCode = adminMailService.mailSend(userEmail, userName);
		//html 이메일발송
		//String pwCode = adminMailService.mailSend2(userEmail, userName);
		//파일포함 이메일발송
		//String pwCode = adminMailService.mailSend3(userEmail, userName);
		session.setAttribute("sessionPwCode", pwCode);
		return pwCode;
	}
	
	@GetMapping("admin/7_email/member_manage_email")
	public String send_email() {
		
		
		
		return "admin/7_email/member_manage_email";
	}
	
}
