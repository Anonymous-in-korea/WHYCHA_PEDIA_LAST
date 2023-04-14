package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface MovieOttMapper {

	List<MovieOttVo> selectMovieTop(int ott_id, int movie_num);

	List<MovieOttVo> selectAllOtt(int movie_id);
	
	List<MovieOttVo> selectActorPersonMovieOtt(List<MovieVo> actorPersonMovieList, int actor_id);

	List<MovieOttVo> selectDirectorPersonMovieOtt(List<MovieVo> directorPersonMovieList, int director_id);

}
