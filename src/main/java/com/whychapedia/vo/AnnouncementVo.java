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
	private Date announcement_date;
	private int announcement_import; // 안중요:1 중요:2
	
}
