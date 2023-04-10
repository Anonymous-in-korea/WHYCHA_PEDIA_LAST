package com.whychapedia.service;

import java.util.List;


import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieVo;


public interface MovieGenreService {

	List<MovieGenreVo> selectTheGenre(int movie_id);

	String genreListToString(List<MovieGenreVo> movieGenreVoList);

	//선호 장르 3개 가져오기
	List<MovieGenreVo> selectPreferenceGenre(int user_id);

	
}
