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
}
