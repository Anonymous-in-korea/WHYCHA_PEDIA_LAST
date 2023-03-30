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
public class MovieOttVo {
	private int id; // movie_ott 고유번호 
	private int movie_id;
	private int ott_id;
	private Date regi_date;
	private int ott_rank; // 기본 0(순위밖)
	private String provider_name; // ott 이름 
	private String path_url; // 해당 ott 접속 경로 url
	private String logo_url; // 해당 ott 로고 url

}
