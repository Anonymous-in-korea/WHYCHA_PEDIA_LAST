package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminArtistMapper;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

@Service
public class AdminArtistServiceImpl implements AdminArtistService {

	@Autowired
	AdminArtistMapper adminArtistMapper;
	
	@Override
	public List<MovieActorVo> actorSelectAll() {
		List<MovieActorVo> actorVo = adminArtistMapper.actorSelectAll();
		
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieActorVo> NoRepeatActorVo = new ArrayList<>();
		for (MovieActorVo movieVo : actorVo) {
		    if (movieIdSet.add(movieVo.getId())) {
		    	NoRepeatActorVo.add(movieVo);
		    }
		}
		
		return NoRepeatActorVo;
	}

	@Override
	public List<MovieDirectorVo> directorSelectAll() {
		List<MovieDirectorVo> directorVo = adminArtistMapper.directorSelectAll();
		
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieDirectorVo> NoRepeatDirectorVo = new ArrayList<>();
		for (MovieDirectorVo movieVo : directorVo) {
		    if (movieIdSet.add(movieVo.getId())) {
		    	NoRepeatDirectorVo.add(movieVo);
		    }
		}
		
		return NoRepeatDirectorVo;
	}

}
