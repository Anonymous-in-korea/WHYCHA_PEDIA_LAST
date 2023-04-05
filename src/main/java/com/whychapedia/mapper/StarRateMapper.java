package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.StarRateVo;

@Mapper
public interface StarRateMapper {

	//별점 높은 영화 10개 뽑아오기 	
	public List<StarRateVo> selectMovieTop(int limit);
	//영화 별점 넣기
	public int insertStarRate(int user_id, int movie_id, double star_rate);
	//영화 별점 삭제
	public int deleteStarRate(int user_id, int movie_id);
	//한명 별점 들고오기
	public int selectMyStarRate(int user_id, int movie_id);
	//평가했는지 안했는지 확인하기
	public int selectIsRating(int user_id, int movie_id);

}
