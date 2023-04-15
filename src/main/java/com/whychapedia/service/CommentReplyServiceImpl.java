package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CommentReplyMapper;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;

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

}
