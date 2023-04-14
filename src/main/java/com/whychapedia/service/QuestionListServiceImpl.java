package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AnswerListMapper;
import com.whychapedia.mapper.QuestionListMapper;
import com.whychapedia.vo.QuestionListVo;

@Service
public class QuestionListServiceImpl implements QuestionListService {
	

	@Autowired
	QuestionListMapper questionListMapper;
	@Autowired
    AnswerListMapper answerListMapper;


	//해당 페이지 넘버에 대한 게시글 가져오기
	@Override
	public List<QuestionListVo> getQnaListByPage(int sessionId, int page,Integer start, Integer end) {
		List<QuestionListVo> qnaListByPage = questionListMapper.getQnaListByPage(sessionId,page,start,end);
		return qnaListByPage;
	}
  

	@Override // question id 하나 가지고 해당하는 행 전체 가져오기
	public QuestionListVo selectQuestionOne(int questionId) {
		QuestionListVo questionListVo = questionListMapper.selectQuestionOne(questionId);
		return questionListVo;
	}

	//@Override //새 질문 등록 
	public void insertQuestionList(QuestionListVo questionListVo) {
		questionListMapper.insertQuestionList(questionListVo);
		
	}

	//전체 게시판 데이터 수를 가져오기
	@Override
	public int getTotalCount(int sessionId) {
		return questionListMapper.getTotalCount(sessionId);
	}






}
