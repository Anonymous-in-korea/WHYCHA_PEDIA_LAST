package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieActorVo;

@Mapper
public interface MovieActorMapper {

	List<MovieActorVo> selectAllActor(int movie_id);
	//해당 movie 의 actor_role받아오기
	List<MovieActorVo> selectActorPersonMovieRolelist(int id);

}
