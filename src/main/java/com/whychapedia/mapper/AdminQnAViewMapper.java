package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Mapper
public interface AdminQnAViewMapper {

	public QuestionListVo adminQnASelectOne(int id);

	public AnswerListVo adminAnswerSelectOne(int id);

}
