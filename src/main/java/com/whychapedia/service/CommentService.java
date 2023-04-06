package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.StarRateVo;

public interface CommentService {
	//코멘트 10개 가져오기
	List<CommentVo> commentSelect10(int movie_id1);
	
	//코멘트에 해당하는 reply개수 가져오기
	List<Integer> replyCount(List<CommentVo> commentVolist);

	//코멘트 1개 가져오기 
	CommentVo selectCommentOne(int comment_id);
	
}
