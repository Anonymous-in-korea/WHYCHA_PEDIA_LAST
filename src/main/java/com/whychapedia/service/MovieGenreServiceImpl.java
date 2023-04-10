package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieGenreMapper;
import com.whychapedia.vo.MovieCountryVo;
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

	//해당 유저 선호 장르 3개 가져오기
	@Override
	public List<MovieGenreVo> selectPreferenceGenre(int user_id) {
		List<MovieGenreVo> selectPreferenceGenre=movieGenreMapper.selectPreferenceGenre(user_id);
		System.out.println("여기:"+selectPreferenceGenre);
		return selectPreferenceGenre;
	}
	
	
	
	
	
	
	
	
	
	
	
	







}
