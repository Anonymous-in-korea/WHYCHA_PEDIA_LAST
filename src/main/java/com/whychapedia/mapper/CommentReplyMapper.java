package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;

@Mapper
public interface CommentReplyMapper {

	List<CommentReplyVo> selectReply(CommentVo cvo);

}
