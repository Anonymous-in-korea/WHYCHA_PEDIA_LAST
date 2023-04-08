package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieCountryVo;

@Mapper
public interface MovieCountryMapper {

	List<MovieCountryVo> selectAllCountry(int movie_id);
	List<MovieCountryVo> selectSearchMovieCountryAll();
}
