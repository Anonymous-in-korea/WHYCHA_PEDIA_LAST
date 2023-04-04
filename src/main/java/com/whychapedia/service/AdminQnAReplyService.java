package com.whychapedia.service;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

public interface AdminQnAReplyService {

	public QuestionListVo adminQnAReplySelectOne(int id);

	public AnswerListVo adminAnswerSelectOne(int id);

}
