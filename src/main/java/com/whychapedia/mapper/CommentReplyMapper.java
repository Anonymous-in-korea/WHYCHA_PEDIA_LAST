package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;

@Mapper
public interface CommentReplyMapper {

	List<CommentReplyVo> selectReply(int comment_id);

	//reply 저장
	int insertReply(int comment_id, int user_id, String reply_content);
	//reply 삭제
	int deleteReply(int reply_id);
}
