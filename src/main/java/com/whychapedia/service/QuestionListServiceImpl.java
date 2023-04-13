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


	
	
	@Override//게시글 전체 가져오기
	public List<QuestionListVo> selectQuestionListAll(int page, int sessionId) {

	
	    int start = (page - 1) * 5;
	    List<QuestionListVo> list = questionListMapper.selectQuestionListAll(sessionId, start, 5);
	    return list;
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
