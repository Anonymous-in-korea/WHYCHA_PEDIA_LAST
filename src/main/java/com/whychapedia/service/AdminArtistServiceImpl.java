package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminArtistMapper;
import com.whychapedia.vo.ArtistVo;

@Service
public class AdminArtistServiceImpl implements AdminArtistService {

	@Autowired
	ArtistVo artistVo;
	@Autowired
	AdminArtistMapper adminArtistMapper;
	
	@Override
	public List<ArtistVo> actorSelectAll() {
		List<ArtistVo> actorVo = adminArtistMapper.actorSelectAll();
		return actorVo;
	}

	@Override
	public List<ArtistVo> directorSelectAll() {
		List<ArtistVo> directorVo = adminArtistMapper.directorSelectAll();
		return directorVo;
	}

}
