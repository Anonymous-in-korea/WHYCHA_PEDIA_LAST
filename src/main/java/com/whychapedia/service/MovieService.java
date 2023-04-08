package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

public interface MovieService {

	
	List<MovieVo> selectTopAllMovie(List<Integer> TopMovieIDList);

	MovieVo selectOneMovie(int movie_id);

	List<MovieVo> selectAllMovieofTheDirector(int theDirectorId);

	List<MovieVo> selectTopRateMovieList(int movie_num);

	List<MovieVo> selectMovieInCollectionList(List<MovieCollectionVo> movieCollectionVoList);

	List<MovieVo> selectMovieWithSameGenre(int num,int genre_id);

	List<MovieVo> insertStarRateInfo(List<MovieVo> movieInCollectionVoList, List<StarRateVo> ratedList);

	

}
