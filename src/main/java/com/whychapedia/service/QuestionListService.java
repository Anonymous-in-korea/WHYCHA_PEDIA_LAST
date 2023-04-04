package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.QuestionListVo;

public interface QuestionListService {
	
	//전체 게시글 가져오기
	public List<QuestionListVo> selectQuestionListAll(int sessionId);

    // question id 하나 가지고 해당하는 행 전체 가져오기
	public QuestionListVo selectQuestionOne(int questionId);

	//게시글 저장
	public void insertQuestionList(QuestionListVo questionListVo);



	

	


}
