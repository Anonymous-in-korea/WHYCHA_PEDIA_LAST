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
	
	List<MovieVo> selectSearchMovieAll(String searchKeyword);

	List<MovieVo> selectActorPersonMovieAll(int actor_id);
	
	List<MovieVo> selectDirectorPersonMovieAll(int director_id);
	
	List<MovieVo> selectMovieStarRate(int user_id);

	List<MovieVo> selectMovieWatchList(int type, int user_id);

	List<MovieVo> selectPartOfMovieStarRate(int theNum, int user_id);

	List<MovieVo> selectMovieRandomRate(int user_id);

	List<MovieVo> selectMovieReleaseRate(int user_id);

	List<MovieVo> selectMovieHighRate(int user_id);

	List<MovieVo> selectHighScoreForBothUser(int user_id, int loginId);







	

}
