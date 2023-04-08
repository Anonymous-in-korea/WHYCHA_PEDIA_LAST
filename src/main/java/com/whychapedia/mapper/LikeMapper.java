package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.LikeVo;

@Mapper
public interface LikeMapper {

	//좋아요 많이 받은 사람 "theNum"만큼 가져오기
	List<Integer> selectTopLikeList(int theNum);

	
	List<LikeVo> selectActor_like_id(int sessionId);


	List<LikeVo> selectDirector_like_id(int sessionId);

	

	


}
