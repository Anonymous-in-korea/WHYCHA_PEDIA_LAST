package com.whychapedia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	
	
	//admin page (my_admin)
	@GetMapping("admin/8_admin/admin/my_admin_info")
	public String my_admin_info() {
		return "admin/8_admin/admin/my_admin_info";
	}

	@GetMapping("admin/8_admin/admin/my_admin_modify")
	public String my_admin_modify() {
		return "admin/8_admin/admin/my_admin_modify";
	}
	
	
	
	//admin page (admin)
	@GetMapping("admin/8_admin/hradmin/admin_create")
	public String admin_create() {
		return "admin/8_admin/hradmin/admin_create";
	}
	
	@GetMapping("admin/8_admin/hradmin/admin_search")
	public String admin_search() {
		return "admin/8_admin/hradmin/admin_search";
	}

	@GetMapping("admin/8_admin/hradmin/admin_modify")
	public String admin_modify() {
		return "admin/8_admin/hradmin/admin_modify";
	}

	@GetMapping("admin/8_admin/hradmin/admin_detail")
	public String admin_detail() {
		return "admin/8_admin/hradmin/admin_detail";
	}
	
}
