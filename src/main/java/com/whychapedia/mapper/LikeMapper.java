package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;

@Mapper
public interface LikeMapper {

	//좋아요 많이 받은 사람 "theNum"만큼 가져오기
	List<Integer> selectTopLikeList(int theNum);

	//코멘트 좋아요 추가
	int insertLikeOne(int comment_id, int user_id);

	//코멘트 좋아요 삭제
	int deleteLikeOne(int comment_id, int user_id);

	//코멘트 좋아요 1개 가져오기
	int selectCommentOneLike(int comment_id);

	//해당감독 좋아요 추가
	int insertDirectorLike(int user_id, int director_id);

	//해당 감독 좋아용 수 가져오기
	int selectDirectorLikeList(int director_id);

	//해당 감독 좋아요 삭제
	int deleteDirectorLike(int user_id, int director_id);
	
	//해당 유저가 해당 감독 좋아요 눌렀는지 체크
	int checkDirectorLike(int user_id, int director_id);

	//해당 배우 좋아요 수 가져오기
	int selectActorLikeList(int actor_id);
	
	//해당 유저가 해당 배우 좋아요 눌렀는지 체크
	int checkActorLike(int user_id, int actor_id);

	//해당 배우 좋아요 추가
	int insertActorLike(int user_id, int actor_id);
	
	//해당 배우 좋아요 삭제
	int deleteActorLike(int user_id, int actor_id);

	//해당 유저가 해당 배우 좋아요 갯수 가져오기
	int selectActorLikeCount(int user_id, int actor_id);
	
	//코멘트 좋아요 list
	List<LikeVo> selectCommentLikeList(List<CommentVo> commentVolist);

	//reply like 추가
	int insertReplyLike(int reply_id, int user_id);

	//reply like 삭제
	int deleteReplyLike(int reply_id, int user_id);

	//reply like 수
	int selectReplyLike(int reply_id);

	//콜렉션 좋아요 추가
	void insertCollectionLike(int collection_id, int user_id);

	//콜렉션 좋아요 삭제 
	void deleteCollectionLike(int collection_id, int user_id);
	
	//콜렉션 좋아요 수 가져오기
	int selectCollectionLikeCount(int collection_id);

	//콜렉션 좋아요 list 가져오기
	List<LikeVo> selectCollectionLikeList(int collection_id);

	//코멘트 상세페이지 해당 코멘트 좋아요 list 가져오기
	List<LikeVo> selectCommentLikeOne(int comment_id);



	


}
