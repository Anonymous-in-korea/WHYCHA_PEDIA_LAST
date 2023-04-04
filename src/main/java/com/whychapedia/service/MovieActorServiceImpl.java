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

}
