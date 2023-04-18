package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;

public interface LikeService {

	List<Integer> selectLikeTop(int theNum);

	int theLike(List<Integer> directorLikeTop);


	//코멘트 좋아요 추가
	int insertCommentLike(int comment_id, int user_id);
	
	//코멘트 좋아요 삭제하기
	int deleteCommentLike(int comment_id, int user_id);

	//코멘트에 대한 좋아요 수
	int selectCommentOneLike(int comment_id);
	
	//코멘트 상세페이지에(comment_reply_GC) 들어갔을때 해당 코멘트 좋아요 list 
	List<LikeVo> selectCommentLikeOne(int comment_id);
	
	//해당 코멘트 좋아요 list
	List<LikeVo> selectCommentLikeList(List<CommentVo> commentVolist);

	//해당 감독 좋아요 추가
	int insertDirectorLike(int user_id, int director_id);
	
	//해당 감독 좋아요 삭제
	int deleteDirectorLike(int user_id, int director_id);

	//해당 감독 좋아요 수
	int selectDirectorLikeList(int director_id);
	
	//해당 유저가 해당 감독을 좋아요 헸는지 체크	
	int checkDirectorLike(int user_id, int director_id);

	//해당 배우 좋아요 수
	int selectActorLikeList(int actor_id);

	//해당 배우 좋아요 추가
	int insertActorLike(int user_id, int actor_id);
	
	//해당 배우 좋아요 삭제
	int deleteActorLike(int user_id, int actor_id);

	//해당 유저가 해당 배우를 좋아요 헸는지 체크
	int checkActorLike(int user_id, int actor_id);

	//콜렉션 좋아요 추가
	int insertCollectionLike(int collection_id, int user_id);

	//콜렉션 좋아요 삭제 
	int deleteCollectionLike(int collection_id, int user_id);

	//reply insert
	int insertReplyLike(int reply_id, int user_id);
	
	//reply delete
	int deleteReplyLike(int reply_id, int user_id);
	
	//reply like 수
	int selectReplyLike(int reply_id);

	//콜렉션 좋아요 list
	List<LikeVo> selectCollectionLikeList(int collection_id);
	
	//코맨트 좋아요 모두 삭제
	int deleteCommentLikeAll(int comment_id);

	//코맨트 좋아요 댓글 모두 삭제
	int deleteCommentReplyLikeAll(int comment_id);

	

	

}
