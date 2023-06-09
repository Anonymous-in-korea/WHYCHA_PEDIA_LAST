package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieVo;

public interface MovieDirectorService {

	List<MovieDirectorVo> selectTheDirector(int movie_id);

	////해당 영화의 감독전체 가져오기 
	List<MovieDirectorVo> selectMovieDirectorList(int movie_id);
	
	//해당 movie의 director_role받아오기
	List<MovieDirectorVo> selectDirectorPersonMovieRolelist(List<MovieVo> directorPersonMovieList, int director_id);
	

}