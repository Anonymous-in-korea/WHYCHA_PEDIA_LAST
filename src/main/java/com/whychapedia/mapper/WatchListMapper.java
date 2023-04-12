package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.WatchListVo;

@Mapper
public interface WatchListMapper {
	
	//해당 영화 해당 유저 보고싶어요 check
	int selectIsWatch(int watch_list_type,int movie_id, int user_id);

	//해당 유저 보고 싶은 or 보는중 작품 개수
	int selectCountWatchList(int type, int user_id);

}