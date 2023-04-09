package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CollectionMapper;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

@Service
public class CollectionServiceImpl implements CollectionService {
	@Autowired
	CollectionMapper collectionMapper;
	
	@Autowired
	CollectionVo collectionVo;
	
	

	//#해당 user_id 컬렉션 정보 가져오기 
	@Override
	public List<CollectionVo> selectCollectionList(int user_id) {
		List<CollectionVo> collectionList = collectionMapper.selectCollectionList(user_id);
		return collectionList;
	}


	//해당 컬렉션_id의 컬렉션 정보 가져오기
	@Override
	public CollectionVo selectOneCollection(int collection_id) {
		collectionVo = collectionMapper.selectOneCollection(collection_id);
		return collectionVo;
	}


	//#해당 user_id 컬렉션 정보 가져오기 
	@Override
	public List<CollectionVo> collectionList(int user_id) {
		List<CollectionVo> collectionList =collectionMapper.collectionList(user_id);
		return collectionList;
	}

	//검색어로 관련 컬렉션 리스트 가져오기
	@Override
	public List<CollectionVo> selectSearchCollectionList(String searchKeyword) {
		List<CollectionVo> collectionSearchlist= collectionMapper.collectionSearchlist(searchKeyword);
		return collectionSearchlist;
	}

	//collection_movie vo의 movie post url을 배열 값으로 collectionVoList에 넣음
	@Override
	public List<CollectionVo> insertMoviePostUrlArray(List<MovieCollectionVo> movieCollectionVoList,
			List<CollectionVo> collectionVoList) {
		List<CollectionVo> updateCollectionVoList=collectionVoList;
		
		
		for (CollectionVo collection : collectionVoList) {
		   
		    List<String> moviePostUrls = new ArrayList<>();
		    for (MovieCollectionVo movieCollection : movieCollectionVoList) {
		        
		        if (movieCollection.getCollection_id() == collection.getId()) {
		           
		            moviePostUrls.add(movieCollection.getMovie_post_url());
		        }
		    }
		    
		    collection.setMovie_post_urls(moviePostUrls);
		}

		return updateCollectionVoList;
	}
}
