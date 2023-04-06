package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.StarRateVo;

public interface StarRateService {

	List<Integer> selectStarTop(int limit);

	int insertStarRate(int id,int user_id, int movie_id, double star_rate);

	int deleteStarRate(int user_id, int movie_id);

	int selectMyStarRate(int user_id, int movie_id);

	int selectIsRating(int user_id, int movie_id);

	int selectLastId();

	int updateStarRate(double star_rate, int movie_id, int user_id);

	//코멘트 작성한 유저에 해당하는 영화 별점list 가져오기
	List<StarRateVo> starRatelist(List<CommentVo> commentVolist);

	//코멘트 1개에 해당하는 영화 별점 가져오기
	StarRateVo starRateOne(CommentVo cvo);


}
