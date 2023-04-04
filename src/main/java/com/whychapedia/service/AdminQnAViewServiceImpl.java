package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminQnAViewMapper;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Service
public class AdminQnAViewServiceImpl implements AdminQnAViewService {

	@Autowired
	AdminQnAViewMapper adminQnAViewMapper;
	
	@Override
	public QuestionListVo adminQnASelectOne(int id) {
		QuestionListVo questionListVo = adminQnAViewMapper.adminQnASelectOne(id);
		return questionListVo;
	}

	@Override
	public AnswerListVo adminAnswerSelectOne(int id) {
		AnswerListVo answerLostVo = adminQnAViewMapper.adminAnswerSelectOne(id);
		return answerLostVo;
	}

}
