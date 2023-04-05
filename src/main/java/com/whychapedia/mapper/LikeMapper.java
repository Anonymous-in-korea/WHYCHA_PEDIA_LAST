package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;

@Mapper
public interface LikeMapper {

	List<Integer> selectTopLikeList(int theNum);

	
	List<LikeVo> selectActor_like_id(int sessionId);


	List<LikeVo> selectDirector_like_id(int sessionId);
	
	//코맨트 likeVolist가져오기
	List<LikeVo> selectCommentLike(List<CommentVo> commentVolist);

	//코멘트 좋아요 추가
	int insertLikeOne(int user_id, int comment_id);
	//코멘트 좋아요 삭제
	int deleteLikeOne(int comment_id, int user_id);

}
