package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.StarRateMapper;
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

	//영화 별점 넣기
	@Override
	public int insertStarRate(int user_id, int movie_id, double star_rate) {
		int result=starRateMapper.insertStarRate(user_id,movie_id,star_rate);	
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



	



}
