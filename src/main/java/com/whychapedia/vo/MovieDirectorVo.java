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
public class MovieDirectorVo {
	private int id; // 무비-감독 고유 아이디 
	private int movie_id;
	private int director_id;
	private String director_name;
	private String director_post_url;
}
