package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieOttVo;

@Mapper
public interface MovieOttMapper {

	List<MovieOttVo> selectMovieTop(int ott_id, int movie_num);

}
