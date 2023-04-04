package com.whychapedia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.whychapedia.service.AnswerListService;
import com.whychapedia.service.QuestionListService;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Controller
public class QnAController {
	
	@Autowired 
	QuestionListService questionlistService;
	@Autowired
	AnswerListService answerlistService;
	@Autowired
	QuestionListVo questionListVo;
	@Autowired
	AnswerListVo answerListVo;
	@Autowired 
	HttpSession session;
	
	  @GetMapping("QnA/QnA_SY") 
	  public String QnA_SY() {
		  return "QnA/QnA_SY";
		  }
	  
	  @GetMapping("QnA/QnA_Write_SY") 
	  public String QnA_Write_SY() { 
		  return "QnA/QnA_Write_SY"; 
		 }
	  
	  //전체 게시글 가져오기 
	  @GetMapping("QnA/QnA_Mylist_SY") 
	  public String QnA_Mylist_SY(Model model) {
	  List<QuestionListVo> list=questionlistService.selectQuestionListAll(6);
	  System.out.println("QnA_Mylist_SY_list_size"+list.size());
	  model.addAttribute("list",list); 
	  return "QnA/QnA_Mylist_SY"; 
	  }
	  
	  //문의/답변
	  @GetMapping("/QnA/QnA_Answer_SY")
	  public String QnA_Answer_SY(@RequestParam("id") int questionId, Model model) { 
	 // questionId 확인 
	  System.out.println(questionId);
	  questionListVo = questionlistService.selectQuestionOne(questionId);
	  System.out.println(questionListVo.getQuestion_content());
	  model.addAttribute("questionListVo",questionListVo); 
	  answerListVo= answerlistService.selectAnswerOne(questionId);
	  System.out.println(answerListVo != null ? answerListVo.getAnswer_content() : "처리중입니다.");
	  //System.out.println(answerListVo.getAnswer_content());
	  model.addAttribute("answerListVo",answerListVo); 
	  return "QnA/QnA_Answer_SY"; 
	 }
	  
	  //새 질문 등록하기
	  @PostMapping("/QnA/QnA_Write_SY")
	  public String QnA_Write_SY(QuestionListVo questionListVo,Model model,HttpSession session) { 
		  //sessionId가져오기
		  //int sessionId = (int) session.getAttribute("sessionId");
		  //sessionId  questionListVo 에 set해주기
		  //questionListVo.setUser_id(sessionId);
		 questionlistService.insertQuestionList(questionListVo);
		 model.addAttribute("questionListVo",questionListVo); 
		  return "redirect:/QnA/QnA_Mylist_SY"; 
	  }
	  

}
