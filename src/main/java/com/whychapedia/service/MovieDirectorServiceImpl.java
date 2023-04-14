package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieDirectorMapper;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieVo;

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
	
	
	//해당 감독 아이디로 영화 역할 가져오기
	@Override
	public List<MovieDirectorVo> selectDirectorPersonMovieRolelist(List<MovieVo> directorPersonMovieList, int director_id) {
		List<MovieDirectorVo> directorPersonMovieRolelist = movieDirectorMapper.selectDirectorPersonMovieRolelist(directorPersonMovieList,director_id);
		
		return directorPersonMovieRolelist;
	}

	//해당 영화의 감독전체 가져오기 
	@Override
	public List<MovieDirectorVo> selectMovieDirectorList(int movie_id) {
		
		List<MovieDirectorVo> oneMovieDirectorList= movieDirectorMapper.selectMovieDirectorList(movie_id);
		return oneMovieDirectorList;
	}
	

	

}