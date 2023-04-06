package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WatchListMapper {
	
	//해당 영화 해당 유저 보고싶어요 check
	int selectIsWatch(int watch_list_type,int movie_id, int user_id);

}
