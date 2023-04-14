package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.StarRateMapper;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Service
public class StarRateServiceImpl implements StarRateService {
	
	@Autowired
	StarRateVo starRateVo;

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
	public double selectMyStarRate(int user_id,int movie_id) {
		double star_rate=starRateMapper.selectMyStarRate(user_id,movie_id);
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

	//해당 영화 모든 유저의 별점 그래프 가져오기 
	@Override
	public List<Integer> starRateGraph(int movie_id) {
		List<Integer> starRateGraph=new ArrayList<>();
		for(int i=0;i<5;i++) {
			starRateGraph.add(starRateMapper.selectStarRateGraph(i+0.5,i+1,movie_id));
		};
		
		return starRateGraph;
	}
	
	//별점 전체 개수 구하기
	@Override
	public int totalStarRateNumber(List<Integer> movieStarRateGraph) {
		int totalStarRateNumber=0;
		 for (int rate : movieStarRateGraph) {
		        totalStarRateNumber += rate;
		    }
		return totalStarRateNumber;
	}
	
	//별점 백분율
	@Override
	public List<Double> movieStarRateGraphScale(List<Integer> movieStarRateGraph, int totalStarRateNumber) {
		List<Double> movieStarRateGraphScale=new ArrayList<>();
		for(int i=0;i<5;i++) {
			movieStarRateGraphScale.add((double)movieStarRateGraph.get(i)/totalStarRateNumber);
		};
		return movieStarRateGraphScale;
	}

	//평가했는지 안했는지 check & update
	@Override
	public List<StarRateVo> selectAllOfIsRated(int loginId, List<MovieVo> movieInCollectionVoList) {
		List<StarRateVo> starRateList = new ArrayList<>();
		for (MovieVo movieVo : movieInCollectionVoList) {
		    //평가했는지 안했는지 check
		    if (selectIsRating(loginId,movieVo.getId())==1) {
		    	double userScore = selectMyStarRate(loginId,movieVo.getId());
		    	starRateVo = new StarRateVo();
		    	starRateVo.setScore(userScore);
		    	starRateVo.setMovie_id(movieVo.getId());
		    	starRateVo.setUser_id(loginId);
		    	starRateVo.setIsChecked(1);
		    	starRateList.add(starRateVo);
		    }else {
		    	starRateVo = new StarRateVo();
		    	starRateVo.setMovie_id(movieVo.getId());
		    	starRateVo.setUser_id(loginId);
		    	starRateVo.setIsChecked(0);
		    	starRateList.add(starRateVo);
		    }
		    }
		return starRateList;
	}

	
	//코멘트 1개 클릭시 페이지에 들어갈 별점 1개
	@Override
	public StarRateVo selectStarRateOne(CommentVo cvo) {
		StarRateVo starOne = starRateMapper.selectStarRateOne(cvo);
		return starOne;
	}
	
	//코멘트 list에 대한 별점LIST
	@Override
	public List<StarRateVo> starRatelist(List<CommentVo> commentVolist) {
		List<StarRateVo> starRatelist = starRateMapper.starRateList(commentVolist);
		return starRatelist;
	}

	//해당 유저의 별점 정보 LIST
	@Override
	public List<StarRateVo> selectStarRateOnePerson(int user_id) {
		List<StarRateVo> selectStarRateOnePerson=starRateMapper.selectStarRateOnePerson(user_id);
		return selectStarRateOnePerson;
	}

	//해당 유저의 많이 준 별점/평균 별점/총 별점 개수 반환 
	@Override
	public StarRateVo selectOnePersonStarRateInfo(int user_id) {
		//해당 유저의 총 별점 개수/평균 별점
		starRateVo=starRateMapper.selectOnePersonAvgAndTotalCount(user_id);
		//해당 유저의 많이 준 별점 반환 
		StarRateVo freScoreVo=starRateMapper.selectFrequencyScore(user_id);
		//Vo에 넣어주기
		starRateVo.setMostFreq(freScoreVo.getScore());
		
		return starRateVo;
	}

	//해당 유저의 별점 그래프 가져오기 
	@Override
	public List<StarRateVo> starGraphOfUser(StarRateVo starRateVo,int user_id) {
		List<StarRateVo> starGraphOfUser=starRateMapper.starGraphOfUser(user_id);
		int total=starRateVo.getTotal_count();
		System.out.println("total"+total);
		for (StarRateVo starRate : starGraphOfUser) {
			System.out.println(starRate.getFrequency());
			double frequencyScale=(double)starRate.getFrequency()/total;
			System.out.println("frequencyScale"+frequencyScale);
			starRate.setFrequencyScale(frequencyScale);
		}
		return starGraphOfUser;
	}

	//유저의 총 감상 시간
	@Override
	public StarRateVo totalWatchedTime(int user_id) {
		starRateVo=starRateMapper.selectTotalWatchedTime(user_id);
		int hour=(int)((starRateVo.getWatched_time_min())/60);
		starRateVo.setWatched_time_hr(hour);
		return starRateVo;
	}

	//유저가 평가한 영화 총 개수 들고오기
	@Override
	public int selectRatedCount(int sessionId) {
		starRateVo=starRateMapper.selectOnePersonAvgAndTotalCount(sessionId);
		int ratedCount=starRateVo.getTotal_count();
		return ratedCount;
	}

	//평가한 영화 중 높은 score top theNum만큼 가져오기 영화
	@Override
	public List<StarRateVo> selectTopRatedMovieOfUser(int theNum,int user_id) {
		List<StarRateVo> topRatedMovieOfUserList=starRateMapper.selectTopRatedMovieOfUser(theNum,user_id);	
		return topRatedMovieOfUserList;
	}
	











	



}
