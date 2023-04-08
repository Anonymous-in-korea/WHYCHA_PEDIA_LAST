package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;

@Mapper
public interface CollectionMapper {

	//해당 user_id 컬렉션 vo 가져오기
	List<CollectionVo> selectCollectionList(int user_id);
	//해당 컬렉션_id의 컬렉션 정보 가져오기
	CollectionVo selectOneCollection(int collection_id);

}
