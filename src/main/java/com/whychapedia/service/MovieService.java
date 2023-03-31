package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

public interface MovieService {

	
	List<MovieVo> selectTopAllMovie(List<Integer> TopMovieIDList);

	MovieVo selectOneMovie(int movie_id);

	List<MovieVo> selectAllMovieofTheDirector(int theDirectorId);

	

}
