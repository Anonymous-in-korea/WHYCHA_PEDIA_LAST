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
	private String artist_post_url;
	private String actor_post_url;
	private String director_post_url;
	private String actor_role;
	private String diretor_role;

}
