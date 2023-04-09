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
public class MovieCollectionVo {
	private int id; //movie_collection 고유 아이디
	private int movie_id;
	private int collection_id;
	private String movie_post_url;
}
