package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.LikeVo;

public interface LikeService {

	List<Integer> selectLikeTop(int theNum);

	int theLike(List<Integer> directorLikeTop);

	//해당 유저가 좋아하는 배우 id 전체 가져오기
	List<LikeVo> selectActor_like_id(int sessionId);

	//해당 유저가 좋아하는 감독 id 전체 가져오기
	List<LikeVo> selectDirector_like_id(int sessionId);

}
