package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

public interface MovieService {


	List<MovieVo> selectTop10All(List<Integer> starRateTop10MovieIDList);

	

}
