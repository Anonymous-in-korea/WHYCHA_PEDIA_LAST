package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

public interface MovieCollectionService {

	List<MovieCollectionVo> selectCollectionVoList(List<CollectionVo> CollectionVoList);

	List<MovieCollectionVo> selectCollectionVoPartList(List<MovieCollectionVo> CollectionVoList, int the_num);

	List<MovieCollectionVo> selectOneCollectionVoList(int collection_id);

	List<MovieCollectionVo> selectCollectionVoWithMoviePostUrlList(List<CollectionVo> collectionVoList);



}
