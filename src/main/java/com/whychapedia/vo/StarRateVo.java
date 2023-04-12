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
public class StarRateVo {
	private int id; //고유번호
	private double score; //별점
	private int movie_id;
	private int user_id;
	private Date regi_date; //별점 등록일 
	private int isChecked; //별점 등록했는지 안했는지 
	private int avg_score; //평균 별점
	private int frequency; //해당 별점 개수
	private double mostFreq;//많이 준 별점
	private int total_count;// 총 별점 개수
	private double frequencyScale; //많이 준 별점 비율
	private int watched_time_min;//분
	private int watched_time_hr;//시간
	private String movie_post_url; 
	private String movie_kor_title;
	private float movie_rating;

}
