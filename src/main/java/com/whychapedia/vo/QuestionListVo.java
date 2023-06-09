package com.whychapedia.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class QuestionListVo {
	private int id; // 질문 고유 아이디 
	private String question_title;
	private String question_content;
	private String question_file_url;
	private int user_id;
	private String user_name;
	private Date regi_date;
	private int processing_statu;  // 1번 미처리 2번 처리 

}
