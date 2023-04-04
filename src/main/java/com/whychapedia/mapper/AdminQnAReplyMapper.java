package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Mapper
public interface AdminQnAReplyMapper {

	public QuestionListVo adminQnAReplySelectOne(int id);

	public AnswerListVo adminAnswerSelectOne(int id);

}
