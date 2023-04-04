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
public class MovieActorVo {
	private int id; // 무비-배우 고유 아이디 
	private int movie_id;
	private int actor_id;
	private String actor_role;
	private String actor_name;
	private String actor_post_url;

}
