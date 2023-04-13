package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.WatchListMapper;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;
import com.whychapedia.vo.WatchListVo;

@Service
public class WatchListServiceImpl implements WatchListService {
	
	@Autowired
	WatchListVo watchListVo;
	
	@Autowired
	WatchListMapper watchListMapper;
	
	//해당 영화 해당 유저 보고싶어요 check
	@Override
	public int selectIsWatch(int watch_list_type,int movie_id, int user_id) {
		int isWatch=watchListMapper.selectIsWatch(watch_list_type,movie_id,user_id);
		return isWatch;
	}
	
	//보는 중 개수&보고싶어요 개수 가져오기
	@Override
	public int selectCountWatchList(int type, int user_id) {
		int selectCountWatchList=watchListMapper.selectCountWatchList(type,user_id);
		return selectCountWatchList;
	}

	//watch_list 삭제
	@Override
	public int deleteWatchList(int type, int user_id, int movie_id) {
		int deleteWatchList=watchListMapper.deleteWatchList(type,user_id,movie_id);
		return deleteWatchList;
	}

	//watch_list 등록
	@Override
	public int insertWatchList(int type, int user_id, int movie_id) {
		int insertWatchList=watchListMapper.insertWatchList(type,user_id,movie_id);
		return insertWatchList;
	}
	




}