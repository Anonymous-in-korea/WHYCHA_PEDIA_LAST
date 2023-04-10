package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieActorMapper;
import com.whychapedia.vo.MovieActorVo;



@Service
public class MovieActorServiceImpl implements MovieActorService {

	@Autowired
	MovieActorVo movieActorVo;
	
	@Autowired
	MovieActorMapper movieActorMapper;
	
	//해당 영화 출연진 List
	@Override
	public List<MovieActorVo> selectTheActor(int movie_id) {
		List<MovieActorVo> selectTheActor=movieActorMapper.selectAllActor(movie_id);
		return selectTheActor;
	}
	//해당 배우 아이디로 영화역할 가져오기
	@Override
	public List<MovieActorVo> selectActorPersonMovieRolelist(int id) {
		List<MovieActorVo> actorPersonMovieRolelist = movieActorMapper.selectActorPersonMovieRolelist(id);
		
		return actorPersonMovieRolelist;
	}
	
	//해당 영화의 배우전체 가져오기
		@Override
		public List<MovieActorVo> selectoneMovieActorList(int movie_id) {
			List<MovieActorVo> oneMovieActorList= movieActorMapper.selectoneMovieActorList(movie_id);
			return oneMovieActorList;
		}

}