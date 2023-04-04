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
public class AnnouncementVo {
	private int id; // 공지 고유 아이디 
	private String announcement_title;
	private String announcement_content;
	private String announcement_url;
	private int admin_id;
	private String admin_name;
	private Date announcement_date;
	private int announcement_important; // 안중요:1 중요:2
	private Date update_date; // 공지사항 등록날짜
	private int is_regi; // 공지사항 등록여부 바로등록:2 일반등록:1
	
}
