package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieDirectorVo;

@Mapper
public interface MovieDirectorMapper {

	List<MovieDirectorVo> selectAllDirector(int movie_id);

	List<MovieDirectorVo> selectSearchDirectorAll(String searchKeyword);

}