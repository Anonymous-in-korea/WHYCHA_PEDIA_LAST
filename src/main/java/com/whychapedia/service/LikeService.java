package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.LikeVo;

public interface LikeService {

	List<Integer> selectLikeTop(int theNum);

	int theLike(List<Integer> directorLikeTop);


	//코멘트 좋아요 추가
	int insertCommentLike(int user_id, int comment_id);
	
	//코멘트 좋아요 삭제하기
	int deleteCommentLike(int comment_id, int user_id);

	//코멘트에 대한 좋아요 수
	int selectCommentOneLike(int comment_id);

	//해당 감독 좋아요 추가
	int insertDirectorLike(int user_id, int director_id);
	
	//해당 감독 좋아요 삭제
	int deleteDirectorLike(int user_id, int director_id);

	//해당 감독 좋아요 수
	int selectDirectorLikeList(int director_id);

	//해당 배우 좋아요 수
	int selectActorLikeList(int actor_id);

	//해당 배우 좋아요 추가
	int insertActorLike(int user_id, int actor_id);
	//해당 배우 좋아요 삭제
	int deleteActorLike(int user_id, int actor_id);

	//해당 유저가 해당 배우를 좋아요 헸는지 체크
	boolean checkActorLike(int user_id, int actor_id);


	

}
