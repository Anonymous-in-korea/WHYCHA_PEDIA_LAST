package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieCountryVo;

@Mapper
public interface MovieCountryMapper {
	//해당 영화 나라 정보 가져오기
	List<MovieCountryVo> selectAllCountry(int movie_id);
	
	List<MovieCountryVo> selectSearchMovieCountryAll();
	
	//선호하는 나라 가져오기
	List<MovieCountryVo> selectPreferenceCountry(int user_id);
}
