package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

public interface AdminQnAListService {

	public List<QuestionListVo> adminQnAList();

	public List<QuestionListVo> adminQnAListAll();

	public List<AnswerListVo> adminAnswerList();

}
