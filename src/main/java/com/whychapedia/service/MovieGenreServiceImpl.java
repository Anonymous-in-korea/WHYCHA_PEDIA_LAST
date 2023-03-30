package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieGenreMapper;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.StarRateVo;

@Service
public class MovieGenreServiceImpl implements MovieGenreService {
	

	@Autowired
	MovieGenreVo movieGenreVo;
	
	@Autowired
	MovieGenreMapper movieGenreMapper;
	
	//영화 10개 장르 가져오기 
	@Override
	public List<MovieGenreVo> selectTop10Genre(List<Integer> Movie10IDList) {
		System.out.println("시작: MovieGenreServiceImpl:selectTop10Genre");
		List<MovieGenreVo> movieGenreTop10List=movieGenreMapper.selectTop10Genre(Movie10IDList);
		System.out.println("첫번쨰 영화 아이디:"+movieGenreTop10List.get(0).getGenre_kor());
		System.out.println("StarTop10MovieIDList 길이:"+movieGenreTop10List.size());	
		System.out.println("끝: MovieGenreServiceImpl:selectTop10Genre");
		return movieGenreTop10List;
	}







}
