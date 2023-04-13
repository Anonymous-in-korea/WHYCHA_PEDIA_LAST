package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

public interface AdminQnAService {

	public List<QuestionListVo> adminQnAList(); //adminController에서 사용

	public List<QuestionListVo> adminQnAListAll();

	public List<AnswerListVo> adminAnswerList();
	
	public QuestionListVo adminQnASelectOne(int id);

	public AnswerListVo adminAnswerSelectOne(int id);
	
	public QuestionListVo adminQnAReplySelectOne(int id);

}
