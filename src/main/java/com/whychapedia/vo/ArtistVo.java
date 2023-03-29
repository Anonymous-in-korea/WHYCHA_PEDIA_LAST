package com.whychapedia.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ArtistVo {
	private int id;
	private String artist_name; //actor,director
	private String artist_post_url;

}
