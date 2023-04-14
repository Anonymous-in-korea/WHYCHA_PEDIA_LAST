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

import com.whychapedia.service.AdminReportService;
import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.ReportVo;

@Controller
public class AdminReportController {

	@Autowired
	AdminReportService adminReportService;
	@Autowired
	ReportVo reportVo;
	
	
	// REPORT_PAGE ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/4_comment/reported/report_page")
	public String report_page(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "30") int datatableSelector, @RequestParam(defaultValue = "") String searchWord) {
		
		System.out.println("datatableSelector : " + datatableSelector);
		System.out.println("searchWord : " + searchWord);
		
		int now_page = 0;
		int listCount = 0;
		int maxPage = 0;
		int startPage = 0;
		int endPage = 0;
		int startRow = 0;
		int endRow = 0;
		
		Map<String, Object> adminReport = new HashMap<>();
		if ( searchWord.equals("영화제목으로 검색") || searchWord.equals("") ) {
			adminReport = adminReportService.adminReportListAll(page, datatableSelector);
			
			now_page = (int) adminReport.get("page");
			listCount = (int) adminReport.get("listCount");
			maxPage = (int) adminReport.get("maxPage");
			startPage = (int) adminReport.get("startPage");
			endPage = (int) adminReport.get("endPage");
			startRow = (int) adminReport.get("startRow");
			endRow = (int) adminReport.get("endRow");
			
		} else {
			adminReport = adminReportService.adminReportListAll_searchWord(page, searchWord, datatableSelector);

			now_page = (int) adminReport.get("page");
			listCount = (int) adminReport.get("listCount");
			maxPage = (int) adminReport.get("maxPage");
			startPage = (int) adminReport.get("startPage");
			endPage = (int) adminReport.get("endPage");
			startRow = (int) adminReport.get("startRow");
			endRow = (int) adminReport.get("endRow");
		}
		
		System.out.println("maxPage : " + maxPage);
		
		@SuppressWarnings("unchecked")
		List<ReportVo> adminReportListAll = (List<ReportVo>) adminReport.get("adminReportListAll");
		if ( adminReportListAll != null ) {
			model.addAttribute("adminReportListAll", adminReportListAll);
			model.addAttribute("now_page", now_page);
			model.addAttribute("listCount", listCount);
			model.addAttribute("maxPage", maxPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
		}
		System.out.println("ReportList size : " + adminReportListAll.size());
		System.out.println("reportID : " + adminReportListAll.get(0).getId());

		model.addAttribute("datatableSelector", datatableSelector);
		
		return "admin/4_comment/reported/report_page";
	}
	// REPORT_PAGE ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	
	// REPORT_REPLY ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/4_comment/reported/report_reply")
	public String report_reply(Model model, @RequestParam int id, @RequestParam int movie_id) {
		
		reportVo = adminReportService.adminReportSelectOne(id, movie_id); // comment_reply 1개 정보 가져오기
		ReportVo replyWriter = adminReportService.adminReportReplyWriter(reportVo.getId()); // 신고된 코멘트 작성자
		ReportVo adminName = adminReportService.adminName(reportVo.getId(), reportVo.getAdmin_id()); // 처리한 관리자이름
		if ( reportVo != null && replyWriter != null ) {
			model.addAttribute("reportVo", reportVo);
			model.addAttribute("replyWriter", replyWriter);
			model.addAttribute("adminName", adminName);
		}
		
		return "admin/4_comment/reported/report_reply";
	}
	@PostMapping("admin/4_comment/reported/report_reply")
	public String report_reply(Model model, @RequestParam int id, @RequestParam String reportResult, @RequestParam String admin_name) {
		
		int report_result = Integer.parseInt(reportResult);
		
		AdminVo adminId = adminReportService.adminIdSelectOne(admin_name);
		
		adminReportService.adminReportResult(adminId.getId(), id, report_result);
		
		return "redirect:/admin/4_comment/reported/report_page";
	}
	// REPORT_REPLY ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
}
