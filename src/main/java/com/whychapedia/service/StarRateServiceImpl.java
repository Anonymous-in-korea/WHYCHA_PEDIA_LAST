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
	public List<Integer> selectStarTop10(int limit) {
		System.out.println("시작: StarRateServiceImpl:selectStarTop10All");
		List<StarRateVo> StarTop10MovieList= starRateMapper.selectMovieTop10(limit);
		List<Integer>StarTop10MovieIDList= new ArrayList<>();
		for (StarRateVo starRateVo : StarTop10MovieList) {
		    StarTop10MovieIDList.add(starRateVo.getMovie_id());
		}
		System.out.println("첫번쨰 영화 아이디:"+StarTop10MovieIDList.get(0));
		System.out.println("StarTop10MovieIDList 길이:"+StarTop10MovieIDList.size());		
		System.out.println("끝: StarRateServiceImpl:selectStarTop10All");
		return StarTop10MovieIDList;
	}


	



}
