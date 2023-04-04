package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnswerListVo;
import com.whychapedia.vo.QuestionListVo;

@Mapper
public interface AdminQnAListMapper {

	public List<QuestionListVo> adminQnAList();

	public List<QuestionListVo> adminQnAListAll();

	public List<AnswerListVo> adminAnswerList();

}
