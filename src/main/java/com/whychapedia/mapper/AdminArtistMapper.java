package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

@Mapper
public interface AdminArtistMapper {

	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	public List<MovieDirectorVo> directorSelectAll(int startRow, int endRow);
	public List<MovieDirectorVo> directorSelectAll_searchWord(int startRow, int endRow, String searchWord);

	public int director_selectCount();
	public int director_selectCount_searchWord(String searchWord);
	
	
	
	public List<MovieActorVo> actorSelectAll(int startRow, int endRow);
	public List<MovieActorVo> actorSelectAll_searchWord(int startRow, int endRow, String searchWord);

	public int actor_selectCount();
	public int actor_selectCount_searchWord(String searchWord);
	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------

	
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------
	public void directorInput(String director_post_url, String director_name); //감독 입력

	public void actorInput(String actor_post_url, String actor_name); //배우 입력
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------

	
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------
	public ArtistVo directorDetailView(int director_id); //감독정보 가져오기

	public ArtistVo actorDetailView(int actor_id); //배우정보 가져오기

	public void directorModify(int id, String director_post_url, String director_name); //감독정보 수정하기

	public void actorModify(int id, String actor_post_url, String actor_name); //배우정보 수정하기
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------



}
