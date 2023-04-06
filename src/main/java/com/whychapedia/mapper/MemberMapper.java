package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MemberVo;

@Mapper
public interface MemberMapper {

	public MemberVo memberSelectOne(String user_email, String user_pw); // 로그인 메서드

	public MemberVo memberIdCheck(String user_email); // 회원가입 ID체크 메서드

	public void memberInsertOne(String user_name, String user_email, String user_pw); // 회원가입 메서드
	
	//코멘트 해당 유저 정보 1개 들고오기
	public MemberVo commentMemberOne(CommentVo cvo);

	//코멘트list에 해당하는 유저 list 가져오기
	public List<MemberVo> commentUserList(List<CommentVo> commentVolist);

	//댓글 userList가져오기
	public List<MemberVo> commReplyUserList(List<CommentReplyVo> replyList);
	
}
