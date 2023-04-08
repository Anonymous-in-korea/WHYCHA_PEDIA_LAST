package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.LikeVo;

public interface LikeService {

	List<Integer> selectLikeTop(int theNum);

	int theLike(List<Integer> directorLikeTop);

	//해당 유저가 좋아하는 배우 id 전체 가져오기
	List<LikeVo> selectActor_like_id(int sessionId);

	//해당 유저가 좋아하는 감독 id 전체 가져오기
	List<LikeVo> selectDirector_like_id(int sessionId);

	//코멘트 좋아요 추가
	int insertCommentLike(int user_id, int comment_id);
	
	//코멘트 좋아요 삭제하기
	int deleteCommentLike(int comment_id, int user_id);

	//코멘트에 대한 좋아요 수
	int selectCommentOneLike(int comment_id);

	
	

}
