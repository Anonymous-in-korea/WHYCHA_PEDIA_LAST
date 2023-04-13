package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AdminQnAService;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Controller
public class AdminQnAController {

	@Autowired
	QuestionListVo questionListVo;
	@Autowired
	AnswerListVo answerListVo;
	@Autowired
	AdminQnAService adminQnAService;

	
	
	@GetMapping("admin/2_qna/QnA_list")
	public String QnA_list(Model model) {
		
		int result = 0;
		List<QuestionListVo> adminQnAListAll = adminQnAService.adminQnAListAll();
		List<AnswerListVo> adminAnswerList = adminQnAService.adminAnswerList();
		if ( adminQnAListAll != null && adminAnswerList != null ) {
			model.addAttribute("adminQnAListAll", adminQnAListAll);
			model.addAttribute("adminAnswerList", adminAnswerList);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/2_qna/QnA_list";
	}

	
	
	@GetMapping("admin/2_qna/QnA_view")
	public String QnA_view(Model model, @RequestParam int id) {
		
		questionListVo = adminQnAService.adminQnASelectOne(id);
		answerListVo = adminQnAService.adminAnswerSelectOne(id);
		if ( questionListVo != null ) {
			model.addAttribute("questionListVo", questionListVo);
			model.addAttribute("answerListVo", answerListVo);
		}
		
		return "admin/2_qna/QnA_view";
	}

	
	
	@GetMapping("admin/2_qna/QnA_reply")
	public String QnA_reply(Model model, @RequestParam int id) {
		
		questionListVo = adminQnAService.adminQnAReplySelectOne(id);
		answerListVo = adminQnAService.adminAnswerSelectOne(id);
		if ( questionListVo != null ) {
			model.addAttribute("questionListVo", questionListVo);
			model.addAttribute("answerListVo", answerListVo);
		} else {
			model.addAttribute("QnA_view_fail", "QnA를 가져오는데 실패했습니다.");
			return "admin/2_qna/QnA_list";
		}
		
		return "admin/2_qna/QnA_reply";
	}
	
}
