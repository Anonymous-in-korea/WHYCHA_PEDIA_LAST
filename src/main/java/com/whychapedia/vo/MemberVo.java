package com.whychapedia.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberVo {

	private int id;
	private String user_email, user_pw, user_name, user_desc, user_pic_url;
	private Timestamp regi_date;
	private int is_block;
	
}
