package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieCountryVo;

public interface MovieCountryService {

	List<MovieCountryVo> selectTheCountry(int movie_id);

}
