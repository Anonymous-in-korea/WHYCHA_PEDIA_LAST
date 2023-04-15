package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CollectionArtistMapper;
import com.whychapedia.vo.CollectionArtistVo;

@Service
public class CollectionArtistServiceImpl implements CollectionArtistService {
	@Autowired
	CollectionArtistVo collectionArtistVo;
	@Autowired
	CollectionArtistMapper collectionArtistMapper;

	@Override	//해당 유저가 구독하는 배우 id 전체 가져오기
	public List<CollectionArtistVo> selectActor_like_id(int user_id) {
		List<CollectionArtistVo> actorLike_list= collectionArtistMapper.selectActor_like_id(user_id);
		System.out.println("selectActor_like_id_list_size : "+actorLike_list.size());
		return actorLike_list;
	}

	@Override//해당 유저가 구독하는 감독 id 전체 가져오기
	public List<CollectionArtistVo> selectDirector_like_id(int user_id) {
		List<CollectionArtistVo> directorLike_list= collectionArtistMapper.selectDirector_like_id(user_id);
		System.out.println("selectDirector_like_id_list_size : "+directorLike_list.size());
		return directorLike_list;
	}
	
	//보관함 배우 #
	@Override
	public int selectActorCount(int user_id) {
		int actorCount=collectionArtistMapper.selectActorCount(user_id);
		return actorCount;
	}

	//보관함 감독 #
	@Override
	public int selectDirectorCount(int user_id) {
		int directorCount=collectionArtistMapper.selectDirectorCount(user_id);
		return directorCount;
	}
	
	
		//해당 유저가 해당 감독을 컬렉션에 넣었는지 확인
		@Override
		public int checkCollectionDirector(int user_id, int director_id) {
			 int collectCount = collectionArtistMapper.checkCollectionDirector(user_id, director_id);
			  return collectCount;
		}
		
		//해당 유저가 해당 배우를 컬렉션에 넣었는지 확인
		@Override
		public int checkCollectionActor(int user_id, int actor_id) {
			 int collectCount = collectionArtistMapper.checkCollectionActor(user_id, actor_id);
			return collectCount;
		}	
		
		
		

		//해당 감독 구독컬렉션 추가하기 //ajax로 해당 유저의 감독컬레션 추가하기
		@Override
		public int insertCollectionDirector(int user_id, int director_id) {
			int collectionDirectorResult= collectionArtistMapper.insertCollectionDirector(user_id,director_id);
			
			return collectionDirectorResult;
		}

		//해당 감독 구독 컬렉션 취소하기// //ajax로 해당 유저의 감독컬레션 취소하기
		@Override
		public int deleteCollectionDirector(int user_id, int director_id) {

			int collectionDirectorDeleteResult= collectionArtistMapper.deleteCollectionDirector(user_id,director_id);
			
			return collectionDirectorDeleteResult;
		}

		//해당 배우 구독컬렉션 추가하기 //ajax로 해당 유저의 배우컬레션 추가하기
		@Override
		public int insertCollectionActor(int user_id, int actor_id) {
			int collectionActorResult= collectionArtistMapper.insertCollectionActor(user_id,actor_id);
			
			return collectionActorResult;
		}
		//해당 배우 구독 컬렉션 취소하기// //ajax로 해당 유저의 배우컬레션 취소하기
		@Override
		public int deleteCollectionActor(int user_id, int actor_id) {
			int collectionActorDeleteResult= collectionArtistMapper.deleteCollectionActor(user_id,actor_id);
			
			return collectionActorDeleteResult;
		}


	
}
