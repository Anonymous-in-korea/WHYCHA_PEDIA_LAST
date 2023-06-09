package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.WatchListVo;

public interface WatchListService {
	
	int selectIsWatch(int watch_list_type,int movie_id, int user_id);

	int selectCountWatchList(int type, int user_id);

	int deleteWatchList(int type,int user_id, int movie_id);

	int insertWatchList(int type, int user_id, int movie_id);

	
	

	

}