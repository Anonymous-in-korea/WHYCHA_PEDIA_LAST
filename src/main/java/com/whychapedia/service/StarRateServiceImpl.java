package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.StarRateMapper;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.StarRateVo;

@Service
public class StarRateServiceImpl implements StarRateService {
	
	@Autowired
	StarRateVo starRateVO;

	@Autowired
	StarRateMapper starRateMapper;

	//별점 높은 영화 10개 뽑아오기 	
	@Override
	public List<Integer> selectStarTop(int limit) {
		System.out.println("시작: StarRateServiceImpl:selectStarTop10All");
		List<StarRateVo> StarTop10MovieList= starRateMapper.selectMovieTop(limit);
		List<Integer>StarTop10MovieIDList= new ArrayList<>();
		for (StarRateVo starRateVo : StarTop10MovieList) {
		    StarTop10MovieIDList.add(starRateVo.getMovie_id());
		}
		System.out.println("첫번쨰 영화 아이디:"+StarTop10MovieIDList.get(0));
		System.out.println("StarTop10MovieIDList 길이:"+StarTop10MovieIDList.size());		
		System.out.println("끝: StarRateServiceImpl:selectStarTop10All");
		return StarTop10MovieIDList;
	}

	//영화 별점 넣기(처음 넣기)
	@Override
	public int insertStarRate(int id,int user_id, int movie_id, double star_rate) {
		int result=starRateMapper.insertStarRate(id,user_id,movie_id,star_rate);	
		return result;
	}
	
	//평가했는지 안했는지 확인하기
	@Override
	public int selectIsRating(int user_id, int movie_id) {
		int IsRating=starRateMapper.selectIsRating(user_id,movie_id);
		return IsRating;
	}
	
	
	//영화 별점 삭제하기
	@Override
	public int deleteStarRate(int user_id, int movie_id) {
		int result=starRateMapper.deleteStarRate(user_id,movie_id);
		return result;
	}

	//한명 별점 들고오기
	@Override
	public int selectMyStarRate(int user_id,int movie_id) {
		int star_rate=starRateMapper.selectMyStarRate(user_id,movie_id);
		return star_rate;
	}
	
	//마지막 별점 고유 번호 들고오기
	@Override
	public int selectLastId() {
		int id=starRateMapper.selectLastId();
		return id;
	}

	//별점 바꾸기
	@Override
	public int updateStarRate(double star_rate, int movie_id, int user_id) {
		System.out.println("updateStarRate");
		int result=starRateMapper.updateStarRate(star_rate,movie_id,user_id);
		System.out.println("updateStarRate"+result);
		return result;
	}

	@Override
	public List<StarRateVo> starRatelist(List<CommentVo> commentVolist) {
		List<StarRateVo> starRatelist = starRateMapper.starRate(commentVolist);
		System.out.println("starRateService starRatelist : "+starRatelist);
		return starRatelist;
	}
	
	//코멘트에 해당하는 별점 1개 가져오기
	@Override
	public StarRateVo starRateOne(CommentVo cvo) {
		StarRateVo starOne = starRateMapper.selectStarRateOne(cvo);
		return starOne;
	}


}
