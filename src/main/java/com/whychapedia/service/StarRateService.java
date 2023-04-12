package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;
import com.whychapedia.vo.WatchListVo;

public interface StarRateService {

	List<Integer> selectStarTop(int limit);

	int insertStarRate(int id,int user_id, int movie_id, double star_rate);

	int deleteStarRate(int user_id, int movie_id);

	int selectMyStarRate(int user_id, int movie_id);

	int selectIsRating(int user_id, int movie_id);

	int selectLastId();

	int updateStarRate(double star_rate, int movie_id, int user_id);

	List<Integer> starRateGraph(int movie_id);


	List<StarRateVo> selectAllOfIsRated(int loginId, List<MovieVo> movieInCollectionVoList);

	//코멘트에 해당하는 별점 1개
	StarRateVo selectStarRateOne(CommentVo cvo);

	//코멘트 해당하는 별점 리스트
	List<StarRateVo> starRatelist(List<CommentVo> commentVolist);

	List<StarRateVo> selectStarRateOnePerson(int user_id);

	StarRateVo selectOnePersonStarRateInfo(int user_id);

	List<StarRateVo> starGraphOfUser(StarRateVo starRateVo, int user_id);
	
	StarRateVo totalWatchedTime(int user_id);

	List<Double> movieStarRateGraphScale(List<Integer> movieStarRateGraph, int totalStarRateNumber);

	int totalStarRateNumber(List<Integer> movieStarRateGraph);

	int selectRatedCount(int sessionId);

	List<StarRateVo> selectTopRatedMovieOfUser(int theNum,int user_id);


	

	



}
