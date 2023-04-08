package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieActorVo;


public interface MovieActorService {

	List<MovieActorVo> selectTheActor(int movie_id);
	//해당 movie 의 actor_role받아오기
	List<MovieActorVo> selectActorPersonMovieRolelist(int id);

}