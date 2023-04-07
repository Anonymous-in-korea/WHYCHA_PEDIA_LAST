package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminContentsMapper;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieVo;

@Service
public class AdminContentsServiceImpl implements AdminContentsService {

	@Autowired
	AdminContentsMapper adminContentsMapper;
	
	@Override
	public List<MovieVo> adminContents() {
		List<MovieVo> adminContentsList = adminContentsMapper.adminContents();
		return adminContentsList;
	}

	@Override
	public MovieDirectorVo adminDirector(int id) {
		MovieDirectorVo adminDirector = adminContentsMapper.adminDirector(id);
		return adminDirector;
	}

	@Override
	public List<MovieDirectorVo> adminDirectorName(int director_id) {
		List<MovieDirectorVo> adminDirectorName = adminContentsMapper.adminDirectorName(director_id);
		return adminDirectorName;
	}

	@Override
	public List<MovieActorVo> adminActor(int id) {
		List<MovieActorVo> adminActor = adminContentsMapper.adminActor(id);
		return adminActor;
	}

	@Override
	public List<MovieActorVo> adminActorName(int actor_id) {
		List<MovieActorVo> adminActorName = adminContentsMapper.adminActorName(actor_id);
		return adminActorName;
	}

}
