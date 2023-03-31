package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LikeMapper {

	List<Integer> selectTopLikeList(int theNum);

}
