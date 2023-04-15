package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;

public interface CommentReplyService {

	List<CommentReplyVo> selectCommentReplyList(int comment_id);

	//reply 저장하기
	int insertReply(int comment_id, int user_id, String reply_content);

	//reply 삭제하기 
	int deleteReply(int reply_id);
}
