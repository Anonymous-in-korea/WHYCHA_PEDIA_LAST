package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.StarRateVo;

@Mapper
public interface StarRateMapper {

	//별점 높은 영화 10개 뽑아오기 	
	public List<StarRateVo> selectMovieTop(int limit);
	//영화 별점 넣기(처음)
	public int insertStarRate(int id,int user_id, int movie_id, double star_rate);
	//영화 별점 삭제
	public int deleteStarRate(int user_id, int movie_id);
	//한명 별점 들고오기
	public int selectMyStarRate(int user_id, int movie_id);
	//평가했는지 안했는지 확인하기
	public int selectIsRating(int user_id, int movie_id);
	//마지막 별점 고유번호 가져오기
	public int selectLastId();
	//별점 바꾸기
	public int updateStarRate(double star_rate, int movie_id, int user_id);
	//별점 그래프 정보 가져오기
	public int selectStarRateGraph(double score1,double score2,int movie_id);
	//코멘트 1개에 대한 별점 1개 
	public StarRateVo selectStarRateOne(CommentVo cvo);
	//코멘트 별점 리스트
	public List<StarRateVo> starRateList(List<CommentVo> commentVolist);

}
