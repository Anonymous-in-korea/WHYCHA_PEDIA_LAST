package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;

public interface MovieOttService {

	List<Integer> selectOttTop(int ott_id, int limit);

	List<MovieOttVo> selectTheOtt(int movie_id);
	//해당 배우가 출연한 영화 리스트의 영화 ott가져오기
	List<MovieOttVo> selectActorPersonMovieOtt(List<MovieVo> actorPersonMovieList, int actor_id);
	//해당 감독이 출연한 영화 리스트의 영화 ott가져오기
	List<MovieOttVo> selectDirectorPersonMovieOtt(List<MovieVo> directorPersonMovieList, int director_id);

}
