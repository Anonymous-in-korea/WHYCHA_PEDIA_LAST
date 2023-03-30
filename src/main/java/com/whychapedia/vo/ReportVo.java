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
	private Date regi_date; //신고일
	private String report_reason; 
	private int admin_id;
	private Date processing_date; // 처리일
	private int report_result; // 처리전:0 블라인드:1 문제없음:2 스포일러:3 

}
