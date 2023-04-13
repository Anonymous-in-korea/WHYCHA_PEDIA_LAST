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

	//해당 user_id 컬렉션 vo 가져오기
	List<CollectionVo> collectionList(int user_id);

	//검색어로 관련 컬렉션 리스트 가져오기(USER정보 포함)
	List<CollectionVo> collectionSearchList(String searchKeyword);
	
	//영화 컬렉션 개수
	int selectCollectionCount(int user_id);
	
	//콜렉션 넣기
	int insertCollection(int user_id, String collection_name, String collection_desc);

	//해당 유저의 가장 최근 업뎃한 컬렉션 가져오기
	CollectionVo selectLatestUpdate(int user_id);

}
