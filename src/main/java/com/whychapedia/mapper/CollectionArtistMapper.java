package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionArtistVo;

@Mapper
public interface CollectionArtistMapper {
	//해당 유저가 구독하는 배우 id 전체 가져오기
	List<CollectionArtistVo> selectActor_like_id(int user_id);


	//해당 유저가 구독하는 감독 id 전체 가져오기
	List<CollectionArtistVo> selectDirector_like_id(int user_id);

	//보관함 배우 #
	int selectActorCount(int user_id);

	//보관함 감독 #
	int selectDirectorCount(int user_id);
	
	//구독하는 감독 컬렉션 추가하기 //ajax로 해당 유저의 감독컬레션 추가하기
	int insertCollectionDirector(int user_id, int director_id);

	//구독하는 감독 컬렉션 취소하기 //ajax로 해당 유저의 감독컬레션 취소하기
	int deleteCollectionDirector(int user_id, int director_id);

	//구독하는 배우 컬렉션 추가하기 //ajax로 해당 유저의 배우컬레션 추가하기
	int insertCollectionActor(int user_id, int actor_id);

	//구독하는 배우 컬렉션 취소하기 //ajax로 해당 유저의 배우컬레션 취소하기
	int deleteCollectionActor(int user_id, int actor_id);

	//해당 유저가 해당 감독을 구독하는지 체크
	int checkCollectionDirector(int user_id, int director_id);

}
