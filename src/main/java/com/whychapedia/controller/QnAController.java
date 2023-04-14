package com.whychapedia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.whychapedia.service.AnswerListService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.QuestionListService;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.MemberVo;
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
	MemberVo memberVo;
	@Autowired 
	MemberService memberService;
	@Autowired 
	HttpSession session;

	  //qna메인페이지
	  @RequestMapping(value = "QnA/QnA_SY", method = RequestMethod.GET)
	  public String QnA_SY(@RequestParam(required = false) Integer id , Model model) {
		  if (id == null) {
	          // id가 null인 경우 처리
	          return "redirect:/"; // 로그인 페이지로 이동하도록 처리
	      }
		  Integer sessionId = (Integer) session.getAttribute("sessionId");
	      return "QnA/QnA_SY";
	  }
	  
	  //qna 해당sessionId의 문의내역페이지 
	  @RequestMapping(value = "QnA/QnA_Mylist_SY", method = RequestMethod.GET)
	  public String getQnaListByPage(@RequestParam(required = false) Integer id, @RequestParam(defaultValue = "1") int page, @RequestParam(required = false) Integer start,
              @RequestParam(required = false) Integer end,Model model) {
		  if (id == null) {
			  // id가 null인 경우 처리
			  return "redirect:/"; // 로그인 페이지로 이동하도록 처리
		  }
		  if (start == null || end == null) {
	          start = (page - 1) * 5;
	          end = start + 5 - 1;
	      }
		 
		  List<QuestionListVo> qnaListByPage = questionlistService.getQnaListByPage(id,page,start,end);// 해당 id로 전체 게시글 가져오기
		  int totalCount = questionlistService.getTotalCount(id);//전체 게시글 수 
		  int maxPage = (int) Math.ceil((double) totalCount / 5);//최대 페이지수
		  int startPage = (int) Math.floor((double) (page - 1) / 5) * 5 + 1;//시작페이지
		  int endPage = startPage + 4;//끝페이지
		  if (endPage > maxPage) {
			  endPage = maxPage;
		  }
		  model.addAttribute("sessionId", id);
		  model.addAttribute("startPage", startPage);
		  model.addAttribute("endPage", endPage);
		  model.addAttribute("maxPage", maxPage);
		  model.addAttribute("totalCount", totalCount);
		  model.addAttribute("sessionId", id);
		  model.addAttribute("qnaListByPage", qnaListByPage);
		  model.addAttribute("page", page);
		  model.addAttribute("start", start);
		  model.addAttribute("end", end);
		  System.out.println("startPage : "+startPage);
		  System.out.println("endPage : "+endPage);
		  System.out.println("maxPage : "+maxPage);
		  System.out.println("totalCount : "+totalCount);
		  System.out.println("qnaListByPage : "+qnaListByPage);
		  System.out.println("page : "+page);
		  System.out.println("start : "+start);
		  System.out.println("end : "+end);
		  return "QnA/QnA_Mylist_SY";
	  }
	  
	  //문의글쓰기
	  @GetMapping("QnA/QnA_Write_SY") 
	  public String QnA_Write_SY() { 
		  return "QnA/QnA_Write_SY"; 
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
	  @PostMapping("QnA/QnA_Write_SY")
	  public String QnA_Write_SY(QuestionListVo questionListVo,@RequestParam(required = false) Integer id,Model model) { 
		
		  if (id == null) {
			  // id가 null인 경우 처리
			  return "redirect:/"; // 로그인 페이지로 이동하도록 처리
		  }
		  questionListVo= questionlistService.insertQuestionList(questionListVo,id);
		  model.addAttribute("sessionId", id);
	      model.addAttribute("questionListVo",questionListVo); 
	      System.out.println("questionListVo: "+questionListVo);
		  return "redirect:/QnA/QnA_Mylist_SY"; 
	  }
	  

}
