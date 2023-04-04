package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieDirectorVo;

public interface MovieDirectorService {

	List<MovieDirectorVo> selectTheDirector(int movie_id);

}
