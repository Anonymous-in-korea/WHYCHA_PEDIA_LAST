package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CommentReplyMapper;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MovieVo;

@Service
public class CommentReplyServiceImpl implements CommentReplyService {
	@Autowired
	CommentReplyMapper commentReplyMapper;
	

	@Override
	public List<CommentReplyVo> selectCommentReplyList(int comment_id) {
		List<CommentReplyVo> commReList = commentReplyMapper.selectReply(comment_id);
		System.out.println("commentReply userlist: "+commReList);
		return commReList;
	}
	
	@Override // 해당 코멘트에 내가 쓴 REPLY 가져오기
	public CommentReplyVo selectMyCommentReply(int comment_id, int user_id_myReply) {
		CommentReplyVo myReply = commentReplyMapper.selectMyCommentReply(comment_id, user_id_myReply);
		return myReply;
	}

	@Override // 해당 코멘트가 작성된 영화정보 가져오기
	public MovieVo selectCommentMovie(int movie_id) {
		MovieVo movieVo = commentReplyMapper.selectCommentMovie(movie_id);
		return movieVo;
	}

	
	//reply 저장하기
	@Override
	public int insertReply(int comment_id, int user_id, String reply_content) {
		int result = commentReplyMapper.insertReply(comment_id, user_id, reply_content);
		return result;
	}

	//reply 삭제하기
	@Override
	public int deleteReply(int reply_id) {
		int result = commentReplyMapper.deleteReply(reply_id);
		return result;
	}

	@Override //reply 수정하기
	public int modifyReply(int id, int comment_id, int user_id, String reply_content) {
		int result = commentReplyMapper.modifyReply(id, comment_id, user_id, reply_content);
		return result;
	}



}
