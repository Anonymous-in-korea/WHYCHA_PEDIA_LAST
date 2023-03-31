package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieVo;

@Mapper
public interface MovieMapper {
	// 서로 다른 영화 아이디가 담긴 list를 받아서 해당 영화 # 개 넣기 (불러올 영화 번호를 알고 있는 상태)
	List<MovieVo> selectTopMovie(List<Integer> topMovieIdList);
	// 주어진 movie_id에 대한 한개의 영화 정보 들고오기
	MovieVo selectOneMovie(int theMovieId);
	// 감독 아이디 한 개로 그에 해당하는 movie_vo 받아오기 	
	List<MovieVo> selectAllMovieofTheDirector(int theDirectorId);

}