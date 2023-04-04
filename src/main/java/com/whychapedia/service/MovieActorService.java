package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieActorVo;


public interface MovieActorService {

	List<MovieActorVo> selectTheActor(int movie_id);

}
