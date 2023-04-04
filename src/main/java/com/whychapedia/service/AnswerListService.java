package com.whychapedia.service;


import com.whychapedia.vo.AnswerListVo;

public interface AnswerListService {

    // question id 하나 가지고 해당하는 답변 가져오기
	AnswerListVo selectAnswerOne(int questionId);


}
