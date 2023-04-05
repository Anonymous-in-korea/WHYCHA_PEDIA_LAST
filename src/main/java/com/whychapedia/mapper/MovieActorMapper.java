package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieActorVo;

@Mapper
public interface MovieActorMapper {

	List<MovieActorVo> selectAllActor(int movie_id);
	
	List<MovieActorVo> selectSearchActorAll(String searchKeyword);
	

}