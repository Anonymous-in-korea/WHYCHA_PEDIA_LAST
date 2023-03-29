package com.whychapedia.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class QuestionListVo {
	private int id; // 질문 고유 아이디 
	private String question_title;
	private String quesiton_content;
	private String question_file_url;
	private int user_id;
	private Date regi_date;
	private int processing_statu;  // 1번 미처리 2번 처리 

}
