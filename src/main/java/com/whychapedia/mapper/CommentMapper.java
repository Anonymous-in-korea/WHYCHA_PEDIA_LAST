package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.StarRateVo;

@Mapper
public interface CommentMapper {
	//코멘트 10개 가져오기
	List<CommentVo> commentSelect10(int movie_id1);

//	List<Integer> likeCount(List<Integer> commentId);

	List<Integer> replyCount(List<Integer> commentId);

	CommentVo selectCommentOne(int comment_id);
}
