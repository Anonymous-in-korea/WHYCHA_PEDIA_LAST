package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieGenreVo;

@Mapper
public interface MovieGenreMapper {
	
	//해당 영화 장르 가져오기
	List<MovieGenreVo> selectAllGenre(int movie_id);

	//해당 유저 선호 장르 3개 가져오기
	List<MovieGenreVo> selectPreferenceGenre(int user_id);
	
	
	

}
