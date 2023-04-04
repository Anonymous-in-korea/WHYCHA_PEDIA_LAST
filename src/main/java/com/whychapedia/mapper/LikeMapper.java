package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.LikeVo;

@Mapper
public interface LikeMapper {

	List<Integer> selectTopLikeList(int theNum);

	
	List<LikeVo> selectActor_like_id(int sessionId);


	List<LikeVo> selectDirector_like_id(int sessionId);

}
