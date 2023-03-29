package com.whychapedia.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MovieCollectionVo {
	private int id; //movie_collection 고유 아이디
	private int movie_id;
	private int collection_id;
}
