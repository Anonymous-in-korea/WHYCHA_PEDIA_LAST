package com.whychapedia.service;

import java.util.List;
import java.util.StringJoiner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieCountryMapper;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieGenreVo;

@Service
public class MovieCountryServiceImpl implements MovieCountryService {

	@Autowired
	MovieCountryVo movieCountryVo;
	
	@Autowired
	MovieCountryMapper movieCountryMapper;
	
	//해당 영화 나라 가져오기
	@Override
	public List<MovieCountryVo> selectTheCountry(int movie_id) {
		List<MovieCountryVo> movieCountryVoList=movieCountryMapper.selectAllCountry(movie_id);
		return movieCountryVoList;
	}
	
	//해당 영화 나라 합쳐서 String으로 변환 
	@Override
	public String countryListToString(List<MovieCountryVo> movieCountryVoList) {
		StringJoiner joiner = new StringJoiner("/");
		if (movieCountryVoList != null) {
		    for (MovieCountryVo movieCountryVo : movieCountryVoList) {
		        joiner.add(movieCountryVo.getName_kor());
		    }
		}
		//나라가 null일 경우 빈공백 반환
		String countryListToString=joiner.toString();
		return countryListToString;
	}

	//검색된 영화의 영화 국가 리스트 가져오기
	@Override
	public List<MovieCountryVo> selectSearchMovieCountryAll() {
		List<MovieCountryVo> movieSearchCountrylist= movieCountryMapper.selectSearchMovieCountryAll();
		return movieSearchCountrylist;
	}

	//유저가 선호하는 나라 3개 가져오기
	@Override
	public List<MovieCountryVo> selectPreferenceCountry(int user_id) {
		List<MovieCountryVo> selectPreferenceCountry=movieCountryMapper.selectPreferenceCountry(user_id);
		System.out.println("여기:"+selectPreferenceCountry);
		return selectPreferenceCountry;
	}

}
