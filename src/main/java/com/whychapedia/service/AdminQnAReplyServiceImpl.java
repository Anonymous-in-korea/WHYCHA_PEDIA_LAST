package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminQnAReplyMapper;
import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Service
public class AdminQnAReplyServiceImpl implements AdminQnAReplyService {

	@Autowired
	AdminQnAReplyMapper adminQnAReplyMapper;
	
	@Override
	public QuestionListVo adminQnAReplySelectOne(int id) {
		QuestionListVo questionListVo = adminQnAReplyMapper.adminQnAReplySelectOne(id);
		return questionListVo;
	}

	@Override
	public AnswerListVo adminAnswerSelectOne(int id) {
		AnswerListVo answerListVo = adminQnAReplyMapper.adminAnswerSelectOne(id);
		return answerListVo;
	}

}
