package com.whychapedia.service;

import java.util.Map;

import com.whychapedia.vo.ArtistVo;

public interface AdminArtistService {

	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	public Map<String, Object> directorSelectAll(int page, int datatableSelector);
	public Map<String, Object> directorSelectAll_searchWord(int page, String searchWord, int datatableSelector);

	public Map<String, Object> actorSelectAll(int page, int datatableSelector);
	public Map<String, Object> actorSelectAll_searchWord(int page, String searchWord, int datatableSelector);
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
