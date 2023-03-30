package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieGenreVo;

@Mapper
public interface MovieGenreMapper {
	
	//영화 10개 장르 가져오기
	List<MovieGenreVo> selectTop10Genre(List<Integer> Movie10IDList);

}
