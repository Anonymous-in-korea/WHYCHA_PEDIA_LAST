package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface MovieActorMapper {

	List<MovieActorVo> selectAllActor(int movie_id);
	//해당 movie 의 actor_role받아오기
	List<MovieActorVo> selectActorPersonMovieRolelist(List<MovieVo> actorPersonMovieList, int actor_id);
	//해당 영화의 배우전체 가져오기
		List<MovieActorVo> selectoneMovieActorList(int movie_id);

}
