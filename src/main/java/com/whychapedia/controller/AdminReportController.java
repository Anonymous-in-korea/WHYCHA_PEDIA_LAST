package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AdminReportService;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Controller
public class AdminReportController {

	@Autowired
	AdminReportService adminReportService;
	@Autowired
	ReportVo reportVo;
	@Autowired
	CommentVo commentVo;
	
	@GetMapping("admin/4_comment/reported/report_page")
	public String report_page(Model model) {
		
		List<ReportVo> adminReportListAll = adminReportService.adminReportListAll();
		if ( adminReportListAll != null ) {
			model.addAttribute("adminReportListAll", adminReportListAll);
		}
		
		return "admin/4_comment/reported/report_page";
	}
	
	@GetMapping("admin/4_comment/reported/report_reply")
	public String report_reply(Model model, @RequestParam int id) {
		
		reportVo = adminReportService.adminReportSelectOne(id);
		commentVo = adminReportService.adminCommentSelectOne(id);
		if ( reportVo != null ) {
			model.addAttribute("reportVo", reportVo);
			model.addAttribute("commentVo", commentVo);
		}
		
		return "admin/4_comment/reported/report_reply";
	}
	
}
