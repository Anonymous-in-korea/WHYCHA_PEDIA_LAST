package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieMapper;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;


@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired
	MovieVo movieVo;
	@Autowired
	MovieMapper movieMapper;
	
	
	// 서로 다른 영화 아이디가 담긴 list를 받아서 해당 영화 # 개 넣기 (불러올 영화 번호를 알고 있는 상태) 
	@Override
	public List<MovieVo> selectTopAllMovie(List<Integer> TopMovieIDList) {
		System.out.println("시작: MovieServiceImpl:selectTopAllMovie");
		List<MovieVo> selectPickedMovie= movieMapper.selectTopMovie(TopMovieIDList);
		System.out.println("첫번쨰 영화 제목:"+selectPickedMovie.get(0).getMovie_kor_title());
		System.out.println("마지막 영화 제목:"+selectPickedMovie.get(9).getMovie_kor_title());
		System.out.println("selectMovie 길이:"+selectPickedMovie.size());		
		System.out.println("끝: MovieServiceImpl:selectTopAllMovie");
		
		return selectPickedMovie;
	}

	// 주어진 movie_id에 대한 한개의 영화 정보 들고오기
	@Override
	public MovieVo selectOneMovie(int movie_id) {
		movieVo=movieMapper.selectOneMovie(movie_id);
		return movieVo;
	}

	
	// 감독_id를 받아서 그 감독의 영화를 모두 불러오기
	@Override
	public List<MovieVo> selectAllMovieofTheDirector(int theDirectorId) {
		System.out.println("시작: MovieServiceImpl:selectAllMovieofTheDirector");
		List<MovieVo> selectAllMovieofTheDirector=movieMapper.selectAllMovieofTheDirector(theDirectorId);
		System.out.println("첫번쨰 영화 제목:"+selectAllMovieofTheDirector.get(0).getMovie_kor_title());
		System.out.println("selectAllMovieofTheDirector 길이:"+selectAllMovieofTheDirector.size());	
		System.out.println("끝: MovieServiceImpl:selectAllMovieofTheDirector");
		return selectAllMovieofTheDirector;
	}
	
	// movie_num만큼 평점 높은 영화 가져오기 
	@Override
	public List<MovieVo> selectTopRateMovieList(int movie_num) {
		System.out.println("시작: MovieServiceImpl:selectTopRateMovieList");
		List<MovieVo> selectAllMovieofTheDirector=movieMapper.selectTopRateMovieList(movie_num);
		System.out.println("끝: MovieServiceImpl:selectTopRateMovieList");
		return selectAllMovieofTheDirector;
	}
	
	//컬렉션_영화vo 가져와서 해당 영화 정보 모두 가져오기 (list) 
	@Override
	public List<MovieVo> selectMovieInCollectionList(List<MovieCollectionVo> movieCollectionVoList) {
		List<MovieVo> selectMovieInCollectionList=movieMapper.selectMovieInCollectionList(movieCollectionVoList);
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieVo> NoRepeatselectMovieInCollectionList = new ArrayList<>();
		for (MovieVo movieVo : selectMovieInCollectionList) {
		    if (movieIdSet.add(movieVo.getId())) {
		        NoRepeatselectMovieInCollectionList.add(movieVo);
		    }
		}

		return NoRepeatselectMovieInCollectionList;
	}

	//해당 영화 같은 장르 영화 리스트 #개 가져오기
	@Override
	public List<MovieVo> selectMovieWithSameGenre(int num,int genre_id) {
		List<MovieVo> selectMovieWithSameGenre=movieMapper.selectMovieWithSameGenre(num,genre_id);
		return selectMovieWithSameGenre;
	}

	//영화에 개인 평가 점수와 평가했는지 안했는지 넣기
	@Override
	public List<MovieVo> insertStarRateInfo(List<MovieVo> movieInCollectionVoList, List<StarRateVo> ratedList) {
		List<MovieVo> updatedMovieList = new ArrayList<>();
		 for (MovieVo movie : movieInCollectionVoList) {
		        updatedMovieList.add(movie);
		    }
		 for (StarRateVo rating : ratedList) {
			 for(MovieVo movie : updatedMovieList) {
				 if(movie.getId()==rating.getMovie_id()) {
					 movie.setScoreOfUser(rating.getScore());
					 movie.setIs_checked(rating.getIsChecked());
					 break;
				 }
			 }
		 }
		return updatedMovieList;
	}
	
	//검색해서 관련 영화 리스트 가져오기
	@Override
	public List<MovieVo> selectSearchMovieAll(String searchKeyword) {
		List<MovieVo> movieSearchlist = movieMapper.selectSearchMovieAll(searchKeyword);
		return movieSearchlist;
	}
	
	//해당 배우 id로 배우 정보 가져오기
	@Override
	public List<MovieVo> selectActorPersonMovieAll(int actor_id) {
		List<MovieVo> actorPersonMovieList= movieMapper.selectActorPersonMovieAll(actor_id);
		
		return actorPersonMovieList;
	}
	///해당 감독 id로 감독 정보 가져오기
	@Override
	public List<MovieVo> selectDirectorPersonMovieAll(int director_id) {
		List<MovieVo> directorPersonMovieList= movieMapper.selectDirectorPersonMovieAll(director_id);
		
		return directorPersonMovieList;
	}

	
	//유저가 평가한 영화 모두 들고오기 + 영화 정보까지 다 들고 오기
	@Override
	public List<MovieVo> selectMovieStarRate(int user_id) {
		List<MovieVo> selectMovieStarRate=movieMapper.selectMovieStarRate(user_id);
		return selectMovieStarRate;
	}

	//유저가 보는 중인 or 보고싶은 영화 모두 들고오기 + 영화 정보까지 다 들고 오기
	@Override
	public List<MovieVo> selectMovieWatchList(int type, int user_id) {
		List<MovieVo> movieWatchList=movieMapper.selectMovieWatchList(type,user_id);
		return movieWatchList;
	}
	
	//유저가 보는 중인 or 보고싶은 영화 모두 들고오기 + 영화 정보까지 다 들고 오기 (부분 개수만 들고오기)
	@Override
	public List<MovieVo> selectPartOfMovieStarRate(int theNum, int user_id) {
		List<MovieVo> selectPartOfMovieStarRate=movieMapper.selectPartOfMovieStarRate(theNum,user_id);
		return selectPartOfMovieStarRate;
	}
	
	//평가할 영화 (랜덤 기준으로)들고 오기(10)개만
	@Override
	public List<MovieVo> selectMovieRandomRate(int user_id) {
		List<MovieVo> movieRandomRate=movieMapper.selectMovieRandomRate(user_id);
		return movieRandomRate;
	}

	//평가할 영화 (개봉일 기준으로)들고 오기 (10개만)
	@Override
	public List<MovieVo> selectMovieReleaseRate(int user_id) {
		List<MovieVo> movieReleaseRate=movieMapper.selectMovieReleaseRate(user_id);
		return movieReleaseRate;
	}

	//평가할 영화 (평점 높은 기준으로)들고 오기 (10개만)
	@Override
	public List<MovieVo> selectMovieHighRate(int user_id) {
		List<MovieVo> movieHighRate=movieMapper.selectMovieHighRate(user_id);
		return movieHighRate;
	}

	//두 사람이 모두 높게 평가한 영화 가져오기
	@Override
	public List<MovieVo> selectHighScoreForBothUser(int user_id, int loginId) {
		List<MovieVo> highScoreForBothUser=movieMapper.selectHighScoreForBothUser(user_id,loginId);
		return highScoreForBothUser;
	}

	//평가할 영화 (평점 높은 순 ) 들고 오기 (리스트에 없는)
	@Override
	public List<MovieVo> selectMovieHighRateNotInList(int user_id, List<Integer> movieIdList) {
		List<MovieVo> movieHighRateNotInList=movieMapper.selectMovieHighRateNotInList(user_id,movieIdList);
		return movieHighRateNotInList;
	}

	// 평가할 영화 (개봉순) 들고 오기 (리스트에 없는)
	@Override
	public List<MovieVo> selectMovieReleaseRateNotInList(int user_id, List<Integer> movieIdList) {
		List<MovieVo> movieReleaseRateNotInList=movieMapper.selectMovieReleaseRateNotInList(user_id,movieIdList);
		return movieReleaseRateNotInList;
	}
	
	// 평가할 영화 (랜덤 기준으로) 들고 오기 (리스트에 없는)
	@Override
	public List<MovieVo> selectMovieRandomRateNotInList(int user_id, List<Integer> movieIdList) {
		List<MovieVo> movieRandomRateNotInList=movieMapper.selectMovieRandomRateNotInList(user_id,movieIdList);
		return movieRandomRateNotInList;
	}




	

}
