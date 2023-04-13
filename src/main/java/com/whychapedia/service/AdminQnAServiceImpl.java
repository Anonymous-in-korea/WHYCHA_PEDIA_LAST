package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminQnAMapper;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Service
public class AdminQnAServiceImpl implements AdminQnAService {

	@Autowired
	AdminQnAMapper adminQnAMapper;
	
	@Override
	public List<QuestionListVo> adminQnAList() {
		List<QuestionListVo> adminQnAList = adminQnAMapper.adminQnAList();
		return adminQnAList;
	}

	@Override
	public List<QuestionListVo> adminQnAListAll() {
		List<QuestionListVo> adminQnAListAll = adminQnAMapper.adminQnAListAll();
		return adminQnAListAll;
	}

	@Override
	public List<AnswerListVo> adminAnswerList() {
		List<AnswerListVo> adminAnswerList = adminQnAMapper.adminAnswerList();
		return adminAnswerList;
	}
	
	@Override
	public QuestionListVo adminQnASelectOne(int id) {
		QuestionListVo questionListVo = adminQnAMapper.adminQnASelectOne(id);
		return questionListVo;
	}

	@Override
	public AnswerListVo adminAnswerSelectOne(int id) {
		AnswerListVo answerLostVo = adminQnAMapper.adminAnswerSelectOne(id);
		return answerLostVo;
	}
	
	@Override
	public QuestionListVo adminQnAReplySelectOne(int id) {
		QuestionListVo questionListVo = adminQnAMapper.adminQnAReplySelectOne(id);
		return questionListVo;
	}

}
