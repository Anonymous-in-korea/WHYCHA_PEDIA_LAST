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

}
