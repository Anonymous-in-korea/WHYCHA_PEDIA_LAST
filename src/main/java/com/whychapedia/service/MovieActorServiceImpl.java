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

	//해당검색어를 가지고 관련 배우 가져오기
	@Override
	public List<MovieActorVo> selectSearchActorAll(String searchKeyword) {
		List<MovieActorVo> actorSearchlist= movieActorMapper.selectSearchActorAll(searchKeyword);
		System.err.println("selectSearchActorAll_list_size : "+actorSearchlist.size());
		System.out.println(actorSearchlist);
		return actorSearchlist;
	}
}
