package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface MovieDirectorMapper {

	List<MovieDirectorVo> selectAllDirector(int movie_id);
	//해당 영화의 감독전체 가져오기 
	List<MovieDirectorVo> selectMovieDirectorList(int movie_id);
	//해당 감독영화 리스트로 감독의 역할 가져오기
	List<MovieDirectorVo> selectDirectorPersonMovieRolelist(List<MovieVo> directorPersonMovieList, int id);



}