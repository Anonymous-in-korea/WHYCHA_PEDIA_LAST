package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AnswerListMapper;
import com.whychapedia.vo.AnswerListVo;

@Service
public class AnswerListServiceImpl implements AnswerListService {

	
	@Autowired
	AnswerListMapper answerListMapper;
	
	@Override// question id 하나 가지고 해당하는 행 전체 가져오기
	public AnswerListVo selectAnswerOne(int questionId) {
		AnswerListVo answerListVo = answerListMapper.selectAnswerOne(questionId);
		
		
		return answerListVo;
	}

}
