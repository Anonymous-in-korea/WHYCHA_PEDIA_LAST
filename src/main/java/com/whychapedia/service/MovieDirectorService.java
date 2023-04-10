package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieDirectorVo;

public interface MovieDirectorService {

	List<MovieDirectorVo> selectTheDirector(int movie_id);

	////해당 영화의 감독전체 가져오기 
	List<MovieDirectorVo> selectMovieDirectorList(int movie_id);
	

}