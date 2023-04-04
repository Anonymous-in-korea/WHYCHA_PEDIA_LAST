package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CollectionMapper;
import com.whychapedia.vo.CollectionVo;

@Service
public class CollectionServiceImpl implements CollectionService {
	@Autowired
	CollectionMapper collectionMapper;
	
	

	//#해당 user_id 컬렉션 정보 가져오기 
	@Override
	public List<CollectionVo> collectionList(int user_id) {
		List<CollectionVo> collectionList =collectionMapper.collectionList(user_id);
		return collectionList;
	}

}
