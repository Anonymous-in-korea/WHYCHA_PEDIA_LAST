package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MovieVo;

public interface CommentReplyService {

	List<CommentReplyVo> selectCommentReplyList(int comment_id);

	CommentReplyVo selectMyCommentReply(int comment_id, int user_id_myReply); // 해당 코멘트에 내가 쓴 REPLY 가져오기

	MovieVo selectCommentMovie(int movie_id); // 해당 코멘트가 작성된 영화정보 가져오기

	//reply 저장하기
	int insertReply(int comment_id, int user_id, String reply_content);

	//reply 삭제하기 
	int deleteReply(int reply_id);

	//reply 수정하기
	int modifyReply(int id, int comment_id, int user_id, String reply_content);

	//해당 comment에 대한 reply 모두 삭제하기
	int deleteCommentReplyAll(int comment_id);


}
