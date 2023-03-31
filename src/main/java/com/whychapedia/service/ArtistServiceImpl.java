package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.ArtistMapper;

@Service
public class ArtistServiceImpl implements ArtistService {
	
	@Autowired
	ArtistMapper artistMapper;
	
	//해당 감독 고유번호로 감독 이름 불러오기
	@Override
	public String selectDirectorName(int DirectorId) {
		String directorName=artistMapper.selectOneDirectortName(DirectorId);
		return directorName;
	}

}
