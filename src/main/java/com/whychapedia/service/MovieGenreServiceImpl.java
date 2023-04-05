package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

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


	//해당 영화 장르 가져오기
	@Override
	public List<MovieGenreVo> selectTheGenre(int movie_id) {
		List<MovieGenreVo> movieGenreVoList=movieGenreMapper.selectAllGenre(movie_id);
		return movieGenreVoList;
	}

	//해당 영화 장르 합쳐서 String으로 변환 
	@Override
	public String genreListToString(List<MovieGenreVo> movieGenreVoList) {
		StringJoiner joiner = new StringJoiner("/");
		if (movieGenreVoList != null) {
		    for (MovieGenreVo movieGenreVo : movieGenreVoList) {
		        joiner.add(movieGenreVo.getGenre_kor());
		    }
		}
		//장르가 null일 경우 빈공백 반환
		String genreListToString=joiner.toString();
		return genreListToString;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	 * //영화 10개 장르 가져오기
	 * 
	 * @Override public List<MovieGenreVo> selectTop10Genre(List<Integer>
	 * Movie10IDList) {
	 * System.out.println("시작: MovieGenreServiceImpl:selectTop10Genre");
	 * List<MovieGenreVo>
	 * movieGenreTop10List=movieGenreMapper.selectTop10Genre(Movie10IDList);
	 * System.out.println("첫번쨰 영화 아이디:"+movieGenreTop10List.get(0).getGenre_kor());
	 * System.out.println("StarTop10MovieIDList 길이:"+movieGenreTop10List.size());
	 * System.out.println("끝: MovieGenreServiceImpl:selectTop10Genre"); return
	 * movieGenreTop10List; }
	 */







}
