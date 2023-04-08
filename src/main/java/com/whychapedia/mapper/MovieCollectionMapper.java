package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

@Mapper
public interface MovieCollectionMapper {

	//컬렉션 list에 담긴 영화 list 가져오기 
	List<MovieCollectionVo> selectCollectionVoList(List<CollectionVo> collectionVoList);
	//컬렉션에 담긴 영화 list 가져오기
	List<MovieCollectionVo> selectOneCollectionVoList(int collection_id);

}
