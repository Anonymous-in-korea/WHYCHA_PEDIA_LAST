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
	
	@Override
	public List<MovieVo> selectTop10All(List<Integer> movieTop10List) {
		System.out.println("시작: MovieServiceImpl:selectTop10All");
		List<MovieVo> select10Movie= movieMapper.select10Movie(movieTop10List);
		System.out.println("첫번쨰 영화 제목:"+select10Movie.get(0).getMovie_kor_title());
		System.out.println("마지막 영화 제목:"+select10Movie.get(9).getMovie_kor_title());
		System.out.println("select10Movie 길이:"+select10Movie.size());		
		System.out.println("끝: MovieServiceImpl:selectTop10All");
		
		return select10Movie;
	}
	



}
