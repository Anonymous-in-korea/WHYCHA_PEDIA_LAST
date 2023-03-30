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
public class MovieVo {
	private int id; // 영화 고유 아이디 
	private String movie_kor_title;
	private String movie_original_title;
	private String movie_desc;
	private String movie_grade;
	private String movie_total_audience;
	private Date movie_release_date;
	private int movie_running_time;
	private float movie_rating;
	private String movie_post_url;
	private String background_post_url;
	private Date regi_date;
	private int admin_id;

}
