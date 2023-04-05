package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieOttVo;

public interface MovieOttService {

	List<Integer> selectOttTop(int ott_id, int limit);

	List<MovieOttVo> selectTheOtt(int movie_id);

}
