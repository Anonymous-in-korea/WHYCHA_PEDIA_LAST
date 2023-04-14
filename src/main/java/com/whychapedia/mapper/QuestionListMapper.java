package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.QuestionListVo;

@Mapper
public interface QuestionListMapper {


	//해당 페이지의 리스트 가져오기
	public List<QuestionListVo> getQnaListByPage(int sessionId, int page,Integer start, Integer end);

	// question id 하나 가지고 해당하는 행 전체 가져오기
	public QuestionListVo selectQuestionOne(int questionId);

	//questionList저장
	public QuestionListVo insertQuestionList(QuestionListVo questionListVo, int sessionId);
	
	//	전체 게시판 데이터 수를 가져오기
	public int getTotalCount(int sessionId);

	




	


	

	
}
