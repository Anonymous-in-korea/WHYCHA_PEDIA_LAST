package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.StarRateVo;

public interface StarRateService {

	List<Integer> selectStarTop(int limit);

	void insertStarRate(int user_id, int movie_id, int star_rate);

	void deleteStarRate(int user_id, int movie_id);

	int selectMyStarRate(int user_id, int movie_id);

}
