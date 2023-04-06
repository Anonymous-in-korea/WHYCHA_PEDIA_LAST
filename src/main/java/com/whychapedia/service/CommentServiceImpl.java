package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CommentMapper;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.StarRateVo;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	CommentMapper commentMapper;
	
	//해당하는 영화의 comment 10개 가져오기
	@Override
	public List<CommentVo> commentSelect10(int movie_id1) {
		List<CommentVo> commentlist = commentMapper.commentSelect10(movie_id1);
		return commentlist;
	}

	@Override
	public List<Integer> replyCount(List<CommentVo> commentVolist) {
		List<Integer> commentId = new ArrayList<>();
		for(int i=0; i<commentVolist.size();i++) {
			commentId.add(commentVolist.get(i).getId());
		}
		List<Integer> replyCount = commentMapper.replyCount(commentId);
//		System.out.println("commentService replyCount : "+replyCount);
		return replyCount;
	}

	@Override
	public CommentVo selectCommentOne(int comment_id) {
		CommentVo cvo = commentMapper.selectCommentOne(comment_id);
		return cvo;
	}
}
