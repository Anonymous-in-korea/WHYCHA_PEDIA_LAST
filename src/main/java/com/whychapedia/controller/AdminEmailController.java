package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.AdminMailService;
import com.whychapedia.service.MemberService;
import com.whychapedia.vo.MemberVo;

@Controller
public class AdminEmailController {

	@Autowired
	HttpSession session;
	@Autowired
	AdminMailService adminMailService;
	@Autowired
	MemberService memberService;
	
	@PostMapping("sendEmail")
	@ResponseBody
	public String sendEmail(String userEmail,String userName) {
		
		System.out.println("EmailController userEmail : "+userEmail);
		System.out.println("EmailController userName : "+userName);
		
		List<MemberVo> emailMemberList = new ArrayList<>();
		
		//텍스트 이메일발송
//		MemberVo memberVo = adminMailService.emailSend(userEmail, userName);
		
		//html 이메일발송
		//String pwCode = adminMailService.mailSend2(userEmail, userName);
		//파일포함 이메일발송
		//String pwCode = adminMailService.mailSend3(userEmail, userName);
		
		return null;
	}
	
	
	//감독 알림 유저 찾기
	@GetMapping("admin/7_email/member_director_email_send")
	public String member_director_email_send(@RequestParam int director_id,Model model) {
		System.out.println("director_id"+director_id);
		//해당 감독을 컬렉션에 담은 유저 리스트(block 회원 제외)
		List<MemberVo>collectionArtistUser= new ArrayList<>();
		collectionArtistUser=memberService.selectCollectionDirectorUser(director_id);
		System.out.println(collectionArtistUser);
		
		if(collectionArtistUser!=null) {
			//이메일 발송
			for (MemberVo user : collectionArtistUser) {
				 sendEmail(user.getUser_email(), user.getUser_name());
			}
		}
		
		
		model.addAttribute("collectionArtistUser", collectionArtistUser);
		return "admin/7_email/member_manage_email";
	}
	
	
	//배우 알림 유저 찾기
	@GetMapping("admin/7_email/member_actor_email_send")
	public String member_actor_email_send(@RequestParam int actor_id,Model model) {
		System.out.println("actor_id"+actor_id);
		//해당 배우을 컬렉션에 담은 유저 리스트 (block 회원 제외)
		List<MemberVo>collectionArtistUser= new ArrayList<>();
		collectionArtistUser=memberService.selectCollectionActorUser(actor_id);
		System.out.println(collectionArtistUser);
		
		if(collectionArtistUser!=null) {
			//이메일 발송
			for (MemberVo user : collectionArtistUser) {
				 sendEmail(user.getUser_email(), user.getUser_name());
			}
		}

		
		model.addAttribute("collectionArtistUser", collectionArtistUser); 	
		return "admin/7_email/member_manage_email";
	}
		
	
	
	
	
}
