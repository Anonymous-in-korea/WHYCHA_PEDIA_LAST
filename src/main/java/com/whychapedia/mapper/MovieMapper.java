package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface MovieMapper {
	// 서로 다른 영화 아이디가 담긴 list를 받아서 해당 영화 # 개 넣기 (불러올 영화 번호를 알고 있는 상태)
	List<MovieVo> selectTopMovie(List<Integer> topMovieIdList);
	// 주어진 movie_id에 대한 한개의 영화 정보 들고오기
	MovieVo selectOneMovie(int movie_id);
	// 감독 아이디 한 개로 그에 해당하는 movie_vo list 받아오기 	
	List<MovieVo> selectAllMovieofTheDirector(int theDirectorId);
	// movie_num만큼 평점 높은 영화 가져오기 
	List<MovieVo> selectTopRateMovieList(int movie_num);
	//컬렉션_영화vo 가져와서 해당 영화 정보 모두 가져오기 (list) 
	List<MovieVo> selectMovieInCollectionList(List<MovieCollectionVo> movieCollectionVoList);
	//해당 영화 같은 장르 영화 리스트 #개 가져오기
	List<MovieVo> selectMovieWithSameGenre(int num, int genre_id);
	//검색해서 관련 영화 리스트 가져오기
	List<MovieVo> selectSearchMovieAll(String searchKeyword);
	//해당 배우 id 의 출연영화 정보 가져오기
	List<MovieVo> selectActorPersonMovieAll(int actor_id);
	//해당 감독 id 의 출연영화 정보 가져오기
	List<MovieVo> selectDirectorPersonMovieAll(int director_id);
	//유저가 평가한 영화 모두 들고오기 + 영화 정보까지 다 들고 오기
	List<MovieVo> selectMovieStarRate(int user_id);
	//유저가 보는 중인 영화 모두 들고오기 + 영화 정보까지 다 들고 오기
	List<MovieVo> selectMovieWatchList(int type, int user_id);
	//유저가 보는 중인 or 보고싶은 영화 모두 들고오기 + 영화 정보까지 다 들고 오기 (부분 개수만 들고오기)
	List<MovieVo> selectPartOfMovieStarRate(int theNum, int user_id);
	//평가할 영화 (랜덤 기준으로) 들고 오기(10)개만
	List<MovieVo> selectMovieRandomRate(int user_id);
	//평가할 영화 (개봉일 기준으로) 들고 오기 (10개만)
	List<MovieVo> selectMovieReleaseRate(int user_id);
	//평가할 영화 (평점 높은 기준으로)들고 오기 (10개만)
	List<MovieVo> selectMovieHighRate(int user_id);
	//두 사람이 모두 높게 평가한 영화 가져오기
	List<MovieVo> selectHighScoreForBothUser(int user_id, int loginId);
	//평가할 영화 (평점 높은 순 ) 들고 오기 (리스트에 없는)
	List<MovieVo> selectMovieHighRateNotInList(int user_id, List<Integer> movieIdList);
	//평가할 영화 (개봉순) 들고 오기 (리스트에 없는)
	List<MovieVo> selectMovieReleaseRateNotInList(int user_id, List<Integer> movieIdList);
	// 평가할 영화 (랜덤 기준으로) 들고 오기 (리스트에 없는)
	List<MovieVo> selectMovieRandomRateNotInList(int user_id, List<Integer> movieIdList);


	

}
