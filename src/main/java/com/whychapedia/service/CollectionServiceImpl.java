package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CollectionMapper;
import com.whychapedia.mapper.MovieCollectionMapper;
import com.whychapedia.mapper.MovieMapper;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;

@Service
public class CollectionServiceImpl implements CollectionService {
	@Autowired
	CollectionMapper collectionMapper;
	
	@Autowired
	MovieCollectionMapper movieCollectionMapper;
	
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
		List<CollectionVo> collectionSearchList= collectionMapper.collectionSearchList(searchKeyword);
		return collectionSearchList;
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

	//영화 컬렉션 개수
	@Override
	public int selectCollectionCount(int user_id) {
		int collectionCount=collectionMapper.selectCollectionCount(user_id);
		return collectionCount;
	}

	//콜렉션 넣기
	@Override
	public int insertCollection(int user_id, String collection_name, String collection_desc) {
		int result=collectionMapper.insertCollection(user_id,collection_name,collection_desc);
		return result;
	}

	//해당 유저의 가장 최근 업뎃한 컬렉션 가져오기
	@Override
	public CollectionVo selectLatestUpdate(int user_id) {
		collectionVo=collectionMapper.selectLatestUpdate(user_id);
		return collectionVo;
	}

	//해당 유저의 해당 영화가 들어가 있는 콜렉션
	@Override
	public List<CollectionVo> selectCollectionMovieIn(int user_id, int movie_id) {
		List<CollectionVo> collectionMovieIn=collectionMapper.selectCollectionMovieIn(user_id,movie_id);
		return collectionMovieIn;
	}

	//해당 유저의 해당 영화가 들어가 있지않은 콜렉션
	@Override
	public List<CollectionVo> selectCollectionMovieNotIn(int user_id, int movie_id) {
		//해당 영화가 들어가 있지 않은 컬렉션 가져옴 
		List<CollectionVo> collectionMovieNotIn=collectionMapper.selectCollectionMovieNotIn(user_id,movie_id);
		//해당 컬렉션에 영화 한개씩 넣기
		for(CollectionVo collectionVo : collectionMovieNotIn ) {
			collectionVo.setMovie_post_url(movieCollectionMapper.selectMovieUlrWithCollectionList(collectionVo.getId()));
		}

		return collectionMovieNotIn;
	}



}
