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
	
	//해당검색어를 가지고 관련 감독 가져오기
	@Override
	public List<MovieDirectorVo> selectSearchDirectorAll(String searchKeyword) {
		List<MovieDirectorVo> directorSearchlist= movieDirectorMapper.selectSearchDirectorAll(searchKeyword);
		System.err.println("selectSearchDirectorAll_list_size : "+directorSearchlist.size());
		System.out.println(directorSearchlist);
		return directorSearchlist;
	}
	

}