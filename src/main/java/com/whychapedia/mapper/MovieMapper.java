package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieVo;

@Mapper
public interface MovieMapper {
	//영화 10개 가져오기 
	List<MovieVo> select10Movie(List<Integer> movieTop10List);

}
