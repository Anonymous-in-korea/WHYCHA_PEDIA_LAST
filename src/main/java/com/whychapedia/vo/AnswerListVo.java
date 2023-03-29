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
public class AnswerListVo {
	private int id; // 무비-배우 고유 아이디
	private int question_id;
	private String answer_content;
	private String answer_file_url;
	private Date regi_date;
	private int admin_id;

}
