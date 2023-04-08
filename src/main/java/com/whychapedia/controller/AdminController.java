package com.whychapedia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.AdminAnnouncementService;
import com.whychapedia.service.AdminMemberService;
import com.whychapedia.service.AdminQnAListService;
import com.whychapedia.service.AdminReportListService;
import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.AnnouncementVo;
import com.whychapedia.vo.QuestionListVo;
import com.whychapedia.vo.ReportVo;

@Controller
public class AdminController {

	@Autowired
	AdminVo adminVo;
	@Autowired
	AdminMemberService adminMemberService;
	
	@Autowired
	AnnouncementVo announcementVo;
	@Autowired
	AdminAnnouncementService adminAnnouncementService;
	
	@Autowired
	QuestionListVo queationListVo;
	@Autowired
	AdminQnAListService adminQnAListService;
	
	@Autowired
	ReportVo reportVo;
	@Autowired
	AdminReportListService adminReportListService;

	@Autowired
	HttpSession session;
	
	//admin login
	@GetMapping("admin/whycha_pedia_admin_login")
	public String admin_login() {
		return "admin/0_login/admin_login";
	}

	
	
	//admin index login before
	@GetMapping("admin/admin_index")
	public String admin_index(Model model) {
		
		// admin 페이지 공지사항 리스트 메서드
		List<AnnouncementVo> adminAnnouncementList = adminAnnouncementService.adminAnnouncementList();
		model.addAttribute("adminAnnouncementList", adminAnnouncementList);

		// admin 페이지 QnA 리스트 메서드
		List<QuestionListVo> adminQnAList = adminQnAListService.adminQnAList();
		model.addAttribute("adminQnAList", adminQnAList);

		// admin 페이지 신고사항 리스트 메서드
		List<ReportVo> adminReportList = adminReportListService.adminReportList();
		model.addAttribute("adminReportList", adminReportList);
		
		return "admin/admin_index";
	}
	
	//admin index login after
	@RequestMapping("admin/admin_index")
	public String admin_index(Model model, @RequestParam String admin_email, @RequestParam String admin_pw) {
		
		int result = 0;
		adminVo = adminMemberService.adminSelectOne(admin_email, admin_pw);
		if ( adminVo != null ) {
			session.setAttribute("adminSessionId", adminVo.getId());
			session.setAttribute("adminSessionEmail", adminVo.getAdmin_email());
			session.setAttribute("adminSessionName", adminVo.getAdmin_name());
			session.setAttribute("adminSessionPosition", adminVo.getAdmin_position());
			result = 1;
			model.addAttribute("result", result);
		} else {
			model.addAttribute("result", result);
			return "admin/0_login/admin_login";
		}
		
		if ( result == 1 ) {
			// admin 페이지 공지사항 리스트 메서드
			List<AnnouncementVo> adminAnnouncementList = adminAnnouncementService.adminAnnouncementList();
			model.addAttribute("adminAnnouncementList", adminAnnouncementList);

			// admin 페이지 QnA 리스트 메서드
			List<QuestionListVo> adminQnAList = adminQnAListService.adminQnAList();
			model.addAttribute("adminQnAList", adminQnAList);

			// admin 페이지 신고사항 리스트 메서드
			List<ReportVo> adminReportList = adminReportListService.adminReportList();
			model.addAttribute("adminReportList", adminReportList);
		}
		
		return "admin/admin_index";
	}
	
	
	//------------------------------------------------------------- 접속한 관리자 계정관련 start -------------------------------------------------------------------------
	
	//admin page (my_admin)
	@GetMapping("admin/8_admin/admin/my_admin_info")
	public String my_admin_info(Model model) {
		
		int id = (Integer)session.getAttribute("adminSessionId");
		adminVo = adminMemberService.adminMemberSelectOne(id);
		if ( adminVo != null ) {
			model.addAttribute("adminVo", adminVo);
		}
		
		return "admin/8_admin/admin/my_admin_info";
	}

	
	@GetMapping("admin/8_admin/admin/my_admin_modify")
	public String my_admin_modify(Model model, @RequestParam String id) {
		model.addAttribute("id", id);
		return "admin/8_admin/admin/my_admin_modify";
	}
	@RequestMapping("admin/8_admin/admin/my_admin_modify")
	public String my_admin_modify(Model model, @RequestParam String admin_pw, @RequestParam String adminSessionId) {
		
		int id = Integer.parseInt(adminSessionId);
		System.out.println("id : " + id);
		int result = adminMemberService.adminMemberPwUpdate(id, admin_pw);
		System.out.println("result : " + result);
		if ( result == 1 ) { return "admin/0_login/admin_login"; }
		else { return "admin/8_admin/admin/my_admin_modify"; }
		
	}
	
	//------------------------------------------------------------- 접속한 관리자 계정관련 end -------------------------------------------------------------------------
	
	
	
	
	//------------------------------------------------------------- 관리자 계정관련 start -------------------------------------------------------------------------
	
	//admin page (admin)
	@GetMapping("admin/8_admin/hradmin/admin_search")
	public String admin_search(Model model) {
		
		int result = 0;
		List<AdminVo> adminMemberList = adminMemberService.adminMemberList();
		if ( adminMemberList != null ) {
			model.addAttribute("adminMemberList", adminMemberList);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/8_admin/hradmin/admin_search";
	}

	
	@GetMapping("admin/8_admin/hradmin/admin_create")
	public String admin_create() {
		return "admin/8_admin/hradmin/admin_create";
	}
	@ResponseBody
	@RequestMapping("admin/8_admin/hradmin/admin_email_checkId")
	public int checkId(Model model, @RequestParam String admin_email_check) {
		System.out.println("ajax에서 넘어온 admin_email : " + admin_email_check);
		int result = adminMemberService.admin_email_check(admin_email_check);
		return result;
	}
	@PostMapping("admin/8_admin/hradmin/admin_create")
	public String admin_create(Model model, @RequestParam String admin_email, @RequestParam String admin_pw, @RequestParam String admin_name, @RequestParam String admin_position_select) {
		
		int admin_position = Integer.parseInt(admin_position_select);
		int result = adminMemberService.adminMemberInsert(admin_email, admin_pw, admin_name, admin_position);
		
		return "redirect:admin_search";
	}
	

	@GetMapping("admin/8_admin/hradmin/admin_detail")
	public String admin_detail(Model model, @RequestParam int id) {
		
		int result = 0;
		adminVo = adminMemberService.adminMemberSelectOne(id);
		if ( adminVo != null ) {
			model.addAttribute("adminVo", adminVo);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/8_admin/hradmin/admin_detail";
	}
	@RequestMapping("admin/8_admin/hradmin/admin_delete")
	public String admin_delete(Model model, @RequestParam int id) {
		
		System.out.println("삭제할 Member ID : " + id);
		int result = adminMemberService.adminMemberDelete(id);
		if ( result == 1 ) { model.addAttribute("result", result); }
		
		return "redirect:admin_search";
	}

	
	@GetMapping("admin/8_admin/hradmin/admin_modify")
	public String admin_modify(Model model, @RequestParam int id) {
		
		int result = 0;
		adminVo = adminMemberService.adminMemberSelectOne(id);
		if ( adminVo != null ) {
			model.addAttribute("adminVo", adminVo);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/8_admin/hradmin/admin_modify";
	}
	@RequestMapping("admin/8_admin/hradmin/admin_modify")
	public String admin_modify(Model model, @RequestParam String modify_id, @RequestParam String admin_email, @RequestParam String admin_pw, @RequestParam String admin_name, @RequestParam String admin_position_select) {
		
		int id = Integer.parseInt(modify_id);
		int admin_position = Integer.parseInt(admin_position_select);
		int result = adminMemberService.adminMemberModify(id, admin_email, admin_pw, admin_name, admin_position);
		
		return "redirect:admin_search";
	}
	
	//------------------------------------------------------------- 관리자 계정관련 end -------------------------------------------------------------------------
	
	
	
	
	
	@GetMapping("admin_logout")
	public String admin_logout() {
		session.invalidate();
		return "redirect:admin/whycha_pedia_admin_login";
	}
	
}
