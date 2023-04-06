package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;

public interface CommentReplyService {

	List<CommentReplyVo> selectCommentReplyList(CommentVo cvo);

}
