package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;

@Mapper
public interface CollectionMapper {

	//해당 user_id 컬렉션 vo 가져오기
	List<CollectionVo> collectionList(int user_id);

}
