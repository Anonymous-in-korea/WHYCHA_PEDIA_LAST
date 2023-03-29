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
public class AdminVo {
	private int id;
	private int admin_position;
	private String admin_name;
	private String admin_eamil;
	private String admin_pw;
	private int is_block; // 1=정상 2=block 
	private Date regi_date;
	private Date retire_date;

}

