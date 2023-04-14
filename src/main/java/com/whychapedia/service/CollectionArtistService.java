package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionArtistVo;

public interface CollectionArtistService {

	
	//해당 유저가 구독하는 배우 id 전체 가져오기
	List<CollectionArtistVo> selectActor_like_id(int user_id);
	//해당 유저가 구독하는 감독 id 전체 가져오기
	List<CollectionArtistVo> selectDirector_like_id(int user_id);
	//보관함 배우 #
	int selectActorCount(int user_id);
	//보관함 감독 #
	int selectDirectorCount(int user_id);
	
	//해당 유저가 해당 감독 컬렉션에 넣었는지 확인
	boolean checkCollectionDirector(int user_id, int director_id);
	//해당 감독 구독컬렉션 추가하기
	int insertCollectionDirector(int user_id, int director_id);

	//해당 감독 구독 컬렉션 삭제하기
	int deleteCollectionDirector(int user_id, int director_id);
	//해당 배우 컬렉션 추가하기
	int insertCollectionActor(int user_id, int actor_id);
	//해당 배우 컬렉션 삭제하기
	int deleteCollectionActor(int user_id, int actor_id);
}
