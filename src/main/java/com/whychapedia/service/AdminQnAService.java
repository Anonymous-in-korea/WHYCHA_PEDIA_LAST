package com.whychapedia.service;

import java.util.List;
import java.util.Map;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

public interface AdminQnAService {

	public List<QuestionListVo> adminQnAList(); //adminController에서 사용

	public Map<String, Object> adminQnAListAll(int page, int datatableSelector);
	public Map<String, Object> adminQnAListAll_searchWord(int page, String searchWord, int datatableSelector);
	public List<AnswerListVo> adminAnswerList();
	
	
	
	
	public QuestionListVo adminQnASelectOne(int id);

	public AnswerListVo adminAnswerSelectOne(int id);
	
	public QuestionListVo adminQnAReplySelectOne(int id);


}
