package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

public interface StarRateService {

	List<Integer> selectStarTop(int limit);

	int insertStarRate(int id,int user_id, int movie_id, double star_rate);

	int deleteStarRate(int user_id, int movie_id);

	int selectMyStarRate(int user_id, int movie_id);

	int selectIsRating(int user_id, int movie_id);

	int selectLastId();

	int updateStarRate(double star_rate, int movie_id, int user_id);

	List<Integer> StarRateGraph(int movie_id);

	int totalStarRateNumber(List<Integer> movieStarRateGraph);


	List<StarRateVo> selectAllOfIsRated(int loginId, List<MovieVo> movieInCollectionVoList);

	//코멘트에 해당하는 별점 1개
	StarRateVo selectStarRateOne(CommentVo cvo);

	//코멘트 해당하는 별점 리스트
	List<StarRateVo> starRatelist(List<CommentVo> commentVolist);



}
