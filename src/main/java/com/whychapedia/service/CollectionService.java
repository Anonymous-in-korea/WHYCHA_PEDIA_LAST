package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;

public interface CollectionService {
	//#해당 user_id 컬렉션 정보 가져오기 
	public List<CollectionVo> selectCollectionList(int user_id);

	public CollectionVo selectOneCollection(int collection_id);

}
