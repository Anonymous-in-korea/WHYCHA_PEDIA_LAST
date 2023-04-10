package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieActorVo;


public interface MovieActorService {

	List<MovieActorVo> selectTheActor(int movie_id);
	//해당 movie 의 actor_role받아오기
	List<MovieActorVo> selectActorPersonMovieRolelist(int id);
	////해당 영화의 배우전체 가져오기 
	List<MovieActorVo> selectoneMovieActorList(int movie_id);

}