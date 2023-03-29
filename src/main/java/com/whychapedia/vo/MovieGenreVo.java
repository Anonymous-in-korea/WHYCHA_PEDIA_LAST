package com.whychapedia.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MovieGenreVo {
	private int id; // 장르-무비 고유 아이디 
	private int movie_id;
	private int genre_id;
	private String genre_kor;

}
