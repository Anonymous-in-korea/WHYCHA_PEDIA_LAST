package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

public interface AdminArtistService {

	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	public List<MovieDirectorVo> directorSelectAll();

	public List<MovieActorVo> actorSelectAll();
	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	
	
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------
	public void directorInput(String director_post_url, String director_name); //감독 입력

	public void actorInput(String actor_post_url, String actor_name); //배우 입력
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------
	
	
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------
	public ArtistVo directorDetailView(int director_id); //감독 정보가져오기

	public ArtistVo actorDetailView(int actor_id); //배우 정보가져오기

	public void directorModify(int id, String director_post_url, String director_name); //감독정보 수정하기

	public void actorModify(int id, String actor_post_url, String actor_name); //배우정보 수정하기
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------

}
