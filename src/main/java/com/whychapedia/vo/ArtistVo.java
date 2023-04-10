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
public class ArtistVo {
	private int id;
	private String director_name;
	private String actor_name;
	private String actor_post_url;
	private String director_post_url;
	private String actor_role;
	private String diretor_role;
	private int search_count; // 출연 횟수
	private String represent_movie; //대표작
	private String represent_movie_post;//대표작 포스터
	private int highest_rating; //평점 높은 대표작
	private int total_like; //like 총 개수
	private int represent_movie_id;//대표작 고유 번호
	

}
