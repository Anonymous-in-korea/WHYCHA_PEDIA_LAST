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
	//컬렉션_movie vo 생성 ( collection_id,movie_id,movie_post_url 들어가 있음)
	List<MovieCollectionVo> selectCollectionVoWithMoviePostUrlList(List<CollectionVo> collectionVoList);
	//업뎃한 콜렉션에 디폴트로 영화 한개 넣기
	int insertDefaultMovie(int collection_id);
	//해당 컬렉션 속 영화 삭제
	int deleteMovieInCollection(int movie_id, Integer collectionId);
	//해당 컬렉션 속 영화 등록
	int insertMovieInCollection(int movie_id, Integer collectionId);
	//하나의 콜렉션 속 하나의 moviePosturl 가져오기
	String selectMovieUlrWithCollectionList(int id);

}
