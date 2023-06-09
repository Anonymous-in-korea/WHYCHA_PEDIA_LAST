package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.whychapedia.service.AdminService;
import com.whychapedia.service.AdminQnAService;
import com.whychapedia.service.AdminReportService;
import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.AnnouncementVo;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;
import com.whychapedia.vo.ReportVo;

@Controller
public class AdminController {

	@Autowired
	AdminVo adminVo;
	@Autowired
	AdminService adminMemberService;
	
	@Autowired
	AnnouncementVo announcementVo;
	@Autowired
	AdminAnnouncementService adminAnnouncementService;
	
	@Autowired
	QuestionListVo queationListVo;
	@Autowired
	AdminQnAService adminQnAService;
	
	@Autowired
	ReportVo reportVo;
	@Autowired
	AdminReportService adminReportService;

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
		List<QuestionListVo> adminQnAList = adminQnAService.adminQnAList();
		model.addAttribute("adminQnAList", adminQnAList);

		// admin 페이지 신고사항 리스트 메서드
		List<ReportVo> adminReportList = adminReportService.adminReportList();
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
			List<QuestionListVo> adminQnAList = adminQnAService.adminQnAList();
			model.addAttribute("adminQnAList", adminQnAList);

			// admin 페이지 신고사항 리스트 메서드
			List<ReportVo> adminReportList = adminReportService.adminReportList();
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
	public String admin_search(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "30") int datatableSelector, @RequestParam(defaultValue = "") String searchWord) {
		
		System.out.println("datatableSelector : " + datatableSelector);
		System.out.println("searchWord : " + searchWord);
		
		int now_page = 0;
		int listCount = 0;
		int maxPage = 0;
		int startPage = 0;
		int endPage = 0;
		int startRow = 0;
		int endRow = 0;
		
		Map<String, Object> adminMember = new HashMap<>();
		
		if ( searchWord.equals("영화제목으로 검색") || searchWord.equals("") ) {
			
			adminMember = adminMemberService.adminMemberList(page, datatableSelector);

			now_page = (int) adminMember.get("page");
			listCount = (int) adminMember.get("listCount");
			maxPage = (int) adminMember.get("maxPage");
			startPage = (int) adminMember.get("startPage");
			endPage = (int) adminMember.get("endPage");
			startRow = (int) adminMember.get("startRow");
			endRow = (int) adminMember.get("endRow");
			
		} else {
			adminMember = adminMemberService.adminMemberList_searchWord(page, searchWord, datatableSelector);
			System.out.println("입력된 영화검색어 : " + searchWord);

			now_page = (int) adminMember.get("page");
			listCount = (int) adminMember.get("listCount");
			maxPage = (int) adminMember.get("maxPage");
			startPage = (int) adminMember.get("startPage");
			endPage = (int) adminMember.get("endPage");
			startRow = (int) adminMember.get("startRow");
			endRow = (int) adminMember.get("endRow");
		}
		
		System.out.println("maxPage : " + maxPage);
		
		int result = 0;
		
		@SuppressWarnings("unchecked")
		List<AdminVo> adminMemberList = (List<AdminVo>) adminMember.get("adminMemberList");
		if ( adminMemberList.size() != 0 ) {
			result = 1;
			model.addAttribute("result", result);
			model.addAttribute("adminMemberList", adminMemberList);
			model.addAttribute("now_page", now_page);
			model.addAttribute("listCount", listCount);
			model.addAttribute("maxPage", maxPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			System.out.println("QnAList size : " + adminMemberList.size());
			System.out.println("QnA_ID : " + adminMemberList.get(0).getId());
		}
		
		model.addAttribute("datatableSelector", datatableSelector);
		
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
