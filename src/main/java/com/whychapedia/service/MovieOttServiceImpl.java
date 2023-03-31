package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieOttMapper;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.StarRateVo;

@Service
public class MovieOttServiceImpl implements MovieOttService {
	
	@Autowired
	MovieOttVo movieOttVo;
	@Autowired
	MovieOttMapper movieOttMapper;
	
	@Override //#개 영화 가져오기
	public List<Integer> selectOttTop(int ott_id, int limit) {
		System.out.println("시작: MovieOttServiceImpl:selectOttTop10");
		List<MovieOttVo> OttTop10List= movieOttMapper.selectMovieTop(ott_id,limit);
		System.out.println("OttTop10List"+OttTop10List.get(0).getMovie_id());
		List<Integer>OTT10MovieIDList= new ArrayList<>();
		for (MovieOttVo movieOttVo : OttTop10List) {
		    OTT10MovieIDList.add(movieOttVo.getMovie_id());
		}
		System.out.println("OTT10MovieIDList 길이:"+OTT10MovieIDList.size());	
		System.out.println("끝: MovieOttServiceImpl:selectOttTop10");
		return OTT10MovieIDList;
	}

}
