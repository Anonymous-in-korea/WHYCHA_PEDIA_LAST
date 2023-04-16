package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface CommentReplyMapper {

	List<CommentReplyVo> selectReply(int comment_id);

	CommentReplyVo selectMyCommentReply(int comment_id, int user_id_myReply); // 해당 코멘트에 내가 쓴 REPLY 가져오기

	MovieVo selectCommentMovie(int movie_id); // 해당 코멘트가 작성된 영화정보 가져오기

	
	//reply 저장
	int insertReply(int comment_id, int user_id, String reply_content);
	//reply 삭제
	int deleteReply(int reply_id);
	
	int modifyReply(int id, int comment_id, int user_id, String reply_content); // reply 수정하기


}
