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
public class ReportVo {
	private int id; // report 고유 아이디
	private int comment_id;
	private int reported_by_user; // 신고한 사람 아이디
	private String user_name;
	private Date regi_date; //신고일
	private String reported_reason; 
	private int admin_id;
	private String admin_name;
	private Date processing_date; // 처리일
	private int report_result; // 처리전:0 블라인드:1 문제없음:2 스포일러:3 
	
	private int movie_id;
	private int user_id;
	private int is_blind;
	private int is_spoil;
	private String movie_kor_title;
	private String comment_content;

}
