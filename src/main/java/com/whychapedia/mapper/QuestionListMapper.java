package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.QuestionListVo;

@Mapper
public interface QuestionListMapper {

	 // 게시글 목록
	public List<QuestionListVo> selectQuestionListAll(int sessionId,int page,int i);

	// question id 하나 가지고 해당하는 행 전체 가져오기
	public QuestionListVo selectQuestionOne(int questionId);

	//questionList저장
	public void insertQuestionList(QuestionListVo questionListVo);
	
	//	전체 게시판 데이터 수를 가져오기
	public int getTotalCount(int sessionId);




	


	

	
}
