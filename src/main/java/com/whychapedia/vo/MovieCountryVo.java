package com.whychapedia.vo;


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
public class MovieCountryVo {
	private int id; // movie_country 고유번호 
	private int movie_id;
	private int country_id;
	private String name_kor; // 나라 한국 이름 
	private int search_count;//선호 횟수
	

}
