package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieDirectorMapper;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGenreVo;

@Service
public class MovieDirectorServiceImpl implements MovieDirectorService {
	@Autowired
	MovieDirectorVo movieDirectorVo;
	
	@Autowired
	MovieDirectorMapper movieDirectorMapper;

	@Override
	public List<MovieDirectorVo> selectTheDirector(int movie_id) {
		List<MovieDirectorVo> selectTheDirector=movieDirectorMapper.selectAllDirector(movie_id);
		return selectTheDirector;
	}
	
	

}
