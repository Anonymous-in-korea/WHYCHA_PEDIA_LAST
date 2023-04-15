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
	//해당 영화의 코멘트에 해당하는 reply list
	@Override
	public List<Integer> replyCount(List<CommentVo> commentVolist) {
		List<Integer> commentId = new ArrayList<>();
		for(int i=0; i<commentVolist.size();i++) {
			commentId.add(commentVolist.get(i).getId());
		}
		List<Integer> replyCount = commentMapper.replyCount(commentId);
		return replyCount;
	}

	@Override
	public CommentVo selectCommentOne(int comment_id) {
		CommentVo cvo = commentMapper.selectCommentOne(comment_id);
		return cvo;
	}
	
	//내가 쓴 코멘트 가져오기
	@Override
	public CommentVo selectMyCommentOne(int id, int movie_id) {
		CommentVo myCommentVo = commentMapper.selectMyCommentOne(id, movie_id);
		return myCommentVo;
	}

	//내가 쓴 코멘트 수정하기
	@Override
	public void myCommentModify(int user_id, int movie_id, String comment_content) {
		commentMapper.myCommentModify(user_id, movie_id, comment_content);
	}

	//영화 상세페이지 코멘트 2개 가져오기 
	@Override
	public List<CommentVo> selectCommentList2(int movie_id) {
		List<CommentVo> commentList2 = commentMapper.selectCommentTow(movie_id);
		return commentList2;
	}
	
	//해당 영화의 코멘트 총 개수(content page)
	@Override
	public int selectCommentAll(int movie_id) {
		int commentCount = commentMapper.selectCommentAll(movie_id);
		return commentCount;
	}
	
}
