package com.whychapedia.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MovieActorVo {
	private int id; // 무비-배우 고유 아이디 
	private int movie_id;
	private int actor_id;
	private String actor_role;

}
