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
public class AdminVo {
	private int id;
	private int admin_position; // 1=전체관리자  2=컨텐츠관리자  3=보드관리자  4=유저관리자
	private String admin_name;
	private String admin_email;
	private String admin_pw;
	private int is_block; // 1=정상 2=block 
	private Date regi_date;
	private Date retire_date;

}

