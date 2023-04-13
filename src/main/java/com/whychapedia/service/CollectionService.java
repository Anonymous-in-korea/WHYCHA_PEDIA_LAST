package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

public interface CollectionService {
	//#해당 user_id 컬렉션 정보 가져오기 
	public List<CollectionVo> selectCollectionList(int user_id);
	//해당 collection_id의 컬렉션 vo 가져오기 (좋아요/코멘트 # 가져옴)
	public CollectionVo selectOneCollection(int collection_id);
	//검색어로 관련 컬렉션 리스트 가져오기
	public List<CollectionVo> selectSearchCollectionList(String searchKeyword);
	//#해당 user_id 컬렉션 정보 가져오기 
	public List<CollectionVo> collectionList(int user_id);
	//collection_movie vo의 movie post url을 배열 값으로 collectionVoList에 넣음
	public List<CollectionVo> insertMoviePostUrlArray(List<MovieCollectionVo> movieCollectionVoList,List<CollectionVo> collectionVoList);
	//해당 유저 아이디의 콜렉션 개수
	public int selectCollectionCount(int user_id);
	//컬렉션 넣기
	public int insertCollection(int user_id, String collection_name, String collection_desc);
	//해당 유저의 가장 최근 업뎃한 컬렉션 가져오기
	public CollectionVo selectLatestUpdate(int user_id);

}
