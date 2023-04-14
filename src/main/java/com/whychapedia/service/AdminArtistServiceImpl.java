package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminArtistMapper;
import com.whychapedia.vo.ArtistVo;
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

	@Override //감독입력
	public void directorInput(String director_post_url, String director_name) {
		adminArtistMapper.directorInput(director_post_url, director_name);
	}

	@Override //배우입력
	public void actorInput(String actor_post_url, String actor_name) {
		adminArtistMapper.actorInput(actor_post_url, actor_name);
		
	}

	
	
	@Override //감독정보 가져오기
	public ArtistVo directorDetailView(int director_id) {
		ArtistVo artistVo = adminArtistMapper.directorDetailView(director_id);
		return artistVo;
	}

	@Override //배우정보 가져오기
	public ArtistVo actorDetailView(int actor_id) {
		ArtistVo artistVo = adminArtistMapper.actorDetailView(actor_id);
		return artistVo;
	}

	
	
	@Override //감독정보 수정하기
	public void directorModify(int director_id, String artist_post_url, String artist_name) {
		adminArtistMapper.directorModify(director_id, artist_post_url, artist_name);
	}

	@Override //배우정보 수정하기
	public void actorModify(int actor_id, String artist_post_url, String artist_name) {
		adminArtistMapper.actorModify(actor_id, artist_post_url, artist_name);
	}

}
