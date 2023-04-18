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

	//내 코멘트 가져오기
	CommentVo selectMyCommentOne(int id, int movie_id);
	
	//내 코멘트 수정하기
	int myCommentModify(int user_id, int movie_id, String comment_content);

	//내 코멘트 등록하기
	int myCommentInsert(int user_id, int movie_id, String comment_content);
	
	//내 코멘트 삭제하기
	int myCommentDelete(int user_id, int movie_id);

	//영화 상세페이지 코멘트 2개 가져오기 
	List<CommentVo> selectCommentList2(int movie_id);

	//해당 영화의 코멘트 총 개수(content page)
	int selectCommentAll(int movie_id);



	

	
}
