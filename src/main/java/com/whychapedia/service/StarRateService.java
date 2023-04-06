package com.whychapedia.service;

import java.util.List;

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



}
