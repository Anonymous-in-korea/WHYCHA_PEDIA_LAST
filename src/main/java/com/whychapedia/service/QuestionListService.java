package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.QuestionListVo;

public interface QuestionListService {

	//해당 페이지 넘버에 대한 게시글 가져오기
	public List<QuestionListVo> getQnaListByPage(int sessionId, int page,Integer start, Integer end);
    // question id 하나 가지고 해당하는 행 전체 가져오기
	public QuestionListVo selectQuestionOne(int questionId);

	//게시글 저장
	public void insertQuestionList(QuestionListVo questionListVo);

	//전체 데이터 수를 가져오기
	public int getTotalCount(int sessionId);




	

	


}
