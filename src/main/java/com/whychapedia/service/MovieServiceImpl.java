package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieMapper;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;


@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired
	MovieVo movieVo;
	@Autowired
	MovieMapper movieMapper;
	
	
	// 서로 다른 영화 아이디가 담긴 list를 받아서 해당 영화 # 개 넣기 (불러올 영화 번호를 알고 있는 상태) 
	@Override
	public List<MovieVo> selectTopAllMovie(List<Integer> TopMovieIDList) {
		System.out.println("시작: MovieServiceImpl:selectTopAllMovie");
		List<MovieVo> selectPickedMovie= movieMapper.selectTopMovie(TopMovieIDList);
		System.out.println("첫번쨰 영화 제목:"+selectPickedMovie.get(0).getMovie_kor_title());
		System.out.println("마지막 영화 제목:"+selectPickedMovie.get(9).getMovie_kor_title());
		System.out.println("selectMovie 길이:"+selectPickedMovie.size());		
		System.out.println("끝: MovieServiceImpl:selectTopAllMovie");
		
		return selectPickedMovie;
	}

	// 주어진 movie_id에 대한 한개의 영화 정보 들고오기
	@Override
	public MovieVo selectOneMovie(int movie_id) {
		movieVo=movieMapper.selectOneMovie(movie_id);
		return movieVo;
	}

	
	// 감독_id를 받아서 그 감독의 영화를 모두 불러오기
	@Override
	public List<MovieVo> selectAllMovieofTheDirector(int theDirectorId) {
		System.out.println("시작: MovieServiceImpl:selectAllMovieofTheDirector");
		List<MovieVo> selectAllMovieofTheDirector=movieMapper.selectAllMovieofTheDirector(theDirectorId);
		System.out.println("첫번쨰 영화 제목:"+selectAllMovieofTheDirector.get(0).getMovie_kor_title());
		System.out.println("selectAllMovieofTheDirector 길이:"+selectAllMovieofTheDirector.size());	
		System.out.println("끝: MovieServiceImpl:selectAllMovieofTheDirector");
		return selectAllMovieofTheDirector;
	}
	



}
