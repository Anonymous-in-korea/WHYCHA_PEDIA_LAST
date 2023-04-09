package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

public interface CollectionService {
	//#해당 user_id 컬렉션 정보 가져오기 
	public List<CollectionVo> selectCollectionList(int user_id);

	public CollectionVo selectOneCollection(int collection_id);
	//검색어로 관련 컬렉션 리스트 가져오기
	public List<CollectionVo> selectSearchCollectionList(String searchKeyword);
	//#해당 user_id 컬렉션 정보 가져오기 
	public List<CollectionVo> collectionList(int user_id);
	//collection_movie vo의 movie post url을 배열 값으로 collectionVoList에 넣음
	public List<CollectionVo> insertMoviePostUrlArray(List<MovieCollectionVo> movieCollectionVoList,
			List<CollectionVo> collectionVoList);
}
