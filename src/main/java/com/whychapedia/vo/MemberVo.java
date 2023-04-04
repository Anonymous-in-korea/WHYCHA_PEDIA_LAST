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
public class MemberVo {
	private int id;
	private String user_email;
	private String user_pw;
	private String user_name;
	private String user_desc;
	private String user_pic_url;
	private Date regi_date;
	private int is_block; // 1=정상 회원 2=block 회원
}
