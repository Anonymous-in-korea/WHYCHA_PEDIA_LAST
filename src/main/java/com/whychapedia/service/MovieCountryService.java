package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieCountryVo;

public interface MovieCountryService {

	List<MovieCountryVo> selectTheCountry(int movie_id);

	String countryListToString(List<MovieCountryVo> movieCountryVoList);

	List<MovieCountryVo> selectSearchMovieCountryAll();

	List<MovieCountryVo> selectPreferenceCountry(int user_id);
}
