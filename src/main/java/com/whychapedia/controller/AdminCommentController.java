package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AdminReportListService;
import com.whychapedia.service.AdminReportOneService;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Controller
public class AdminCommentController {

	@Autowired
	AdminReportListService adminReportListService;
	@Autowired
	AdminReportOneService adminReportOneService;
	@Autowired
	ReportVo reportVo;
	@Autowired
	CommentVo commentVo;
	
	@GetMapping("admin/4_comment/reported/report_page")
	public String report_page(Model model) {
		
		int result = 0;
		List<ReportVo> adminReportListAll = adminReportListService.adminReportListAll();
		List<CommentVo> adminCommentListAll = adminReportListService.adminCommentListAll();
		if ( adminReportListAll != null ) {
			model.addAttribute("adminReportListAll", adminReportListAll);
			model.addAttribute("adminCommentListAll", adminCommentListAll);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/4_comment/reported/report_page";
	}
	
	@GetMapping("admin/4_comment/reported/report_reply")
	public String report_reply(Model model, @RequestParam int id) {
		
		reportVo = adminReportOneService.adminReportSelectOne(id);
		commentVo = adminReportOneService.adminCommentSelectOne(id);
		if ( reportVo != null ) {
			model.addAttribute("reportVo", reportVo);
			model.addAttribute("commentVo", commentVo);
		}
		
		return "admin/4_comment/reported/report_reply";
	}
	
}
