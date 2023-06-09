package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.CollectionArtistVo;
import com.whychapedia.vo.LikeVo;

public interface ArtistService {

	String selectDirectorName(int DirectorId);
	
	
	//좋아하는 배우id리스트를 가지고 actor정보 전부 가져오기
	List<ArtistVo> selectActorAll(List<CollectionArtistVo> actorLike_list);
	
	//좋아하는 감독id리스트를 가지고 director정보 전부 가져오기
	List<ArtistVo> selectDirectorAll(List<CollectionArtistVo> directorLike_list);


	//해당검색어를 가지고 관련 배우 가져오기
	List<ArtistVo> selectSearchActorAll(String searchKeyword);

	//해당검색어를 가지고 관련 감독 가져오기
	List<ArtistVo> selectSearchDirectorAll(String searchKeyword);


	//해당 배우id를 가지고 해당배우 정보 가져오기
	ArtistVo selectActorOnelist(int actor_id);
	//해당 감독id를 가지고 해당감독 정보 가져오기
	ArtistVo selectDirectorOnelist(int director_id);

	//선호 배우 3명 
	List<ArtistVo> selectPreferenceActor(int user_id);

	//선호 감독 3명 
	List<ArtistVo> selectPreferenceDirector(int user_id);


}
