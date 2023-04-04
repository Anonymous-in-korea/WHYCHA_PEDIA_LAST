package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

@Mapper
public interface MovieCollectionMapper {

	//와이챠 피디아 무비_컬레션 각각의 vo 데리고 오기 즉, 각 컬렉션마다 영화 아이디 불러오기
	List<MovieCollectionVo> selectCollectionVoList(List<CollectionVo> collectionVoList);

}
