package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public String QnA_list(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "30") int datatableSelector, @RequestParam(defaultValue = "") String searchWord) {
		
		System.out.println("datatableSelector : " + datatableSelector);
		System.out.println("searchWord : " + searchWord);
		
		int now_page = 0;
		int listCount = 0;
		int maxPage = 0;
		int startPage = 0;
		int endPage = 0;
		int startRow = 0;
		int endRow = 0;
		
		Map<String, Object> adminQnA = new HashMap<>();
		
		if ( searchWord.equals("영화제목으로 검색") || searchWord.equals("") ) {
			
			adminQnA = adminQnAService.adminQnAListAll(page, datatableSelector);

			now_page = (int) adminQnA.get("page");
			listCount = (int) adminQnA.get("listCount");
			maxPage = (int) adminQnA.get("maxPage");
			startPage = (int) adminQnA.get("startPage");
			endPage = (int) adminQnA.get("endPage");
			startRow = (int) adminQnA.get("startRow");
			endRow = (int) adminQnA.get("endRow");
			
		} else {
			adminQnA = adminQnAService.adminQnAListAll_searchWord(page, searchWord, datatableSelector);
			System.out.println("입력된 영화검색어 : " + searchWord);

			now_page = (int) adminQnA.get("page");
			listCount = (int) adminQnA.get("listCount");
			maxPage = (int) adminQnA.get("maxPage");
			startPage = (int) adminQnA.get("startPage");
			endPage = (int) adminQnA.get("endPage");
			startRow = (int) adminQnA.get("startRow");
			endRow = (int) adminQnA.get("endRow");
		}
		
		System.out.println("maxPage : " + maxPage);
		
		int result = 0;
		
		@SuppressWarnings("unchecked")
		List<AnswerListVo> adminAnswerList = adminQnAService.adminAnswerList();
		model.addAttribute("adminAnswerList", adminAnswerList);
		
		List<QuestionListVo> adminQnAListAll = (List<QuestionListVo>) adminQnA.get("adminQnAListAll");
		if ( adminQnAListAll.size() != 0 ) {
			result = 1;
			model.addAttribute("result", result);
			model.addAttribute("adminQnAListAll", adminQnAListAll);
			model.addAttribute("now_page", now_page);
			model.addAttribute("listCount", listCount);
			model.addAttribute("maxPage", maxPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			System.out.println("QnAList size : " + adminQnAListAll.size());
			System.out.println("QnA_ID : " + adminQnAListAll.get(0).getId());
		}
		
		model.addAttribute("datatableSelector", datatableSelector);
		
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
