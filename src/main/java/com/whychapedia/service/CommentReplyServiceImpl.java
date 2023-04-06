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
	CommentReplyMapper commReMapper;
	

	@Override
	public List<CommentReplyVo> selectCommentReplyList(CommentVo cvo) {
		List<CommentReplyVo> commReList = commReMapper.selectReply(cvo);
		System.out.println("commentReply userlist: "+commReList);
		return commReList;
	}

}
