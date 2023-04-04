package com.whychapedia.mapper;



import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnswerListVo;


@Mapper
public interface AnswerListMapper {

	//questionId에 해당하는 답변 가지고 오기
	AnswerListVo selectAnswerOne(int questionId);



}
