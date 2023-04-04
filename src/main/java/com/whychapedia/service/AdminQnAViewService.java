package com.whychapedia.service;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

public interface AdminQnAViewService {

	public QuestionListVo adminQnASelectOne(int id);

	public AnswerListVo adminAnswerSelectOne(int id);

}
