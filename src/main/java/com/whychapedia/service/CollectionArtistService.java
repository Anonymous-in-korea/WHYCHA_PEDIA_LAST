package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionArtistVo;

public interface CollectionArtistService {

	
	//해당 유저가 구독하는 배우 id 전체 가져오기
	List<CollectionArtistVo> selectActor_like_id(int user_id);

	//해당 유저가 구독하는 감독 id 전체 가져오기
	List<CollectionArtistVo> selectDirector_like_id(int user_id);
}
