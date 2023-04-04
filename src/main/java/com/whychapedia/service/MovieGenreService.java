package com.whychapedia.service;

import java.util.List;


import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieVo;


public interface MovieGenreService {

	List<MovieGenreVo> selectTheGenre(int movie_id);

	//영화 10개 장르 가져오기
	//List<MovieGenreVo> selectTop10Genre(List<Integer> Movie10IDList);
}
