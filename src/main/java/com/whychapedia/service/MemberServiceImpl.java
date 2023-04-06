package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MemberMapper;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	MemberVo memberVo;

	@Override // 로그인 메서드
	public MemberVo memberSelectOne(String user_email, String user_pw) {
		memberVo = memberMapper.memberSelectOne(user_email, user_pw);
		return memberVo;
	}

	@Override // 회원가입 ID체크 메서드
	public MemberVo user_email_check(String user_email) {
		memberVo = memberMapper.memberIdCheck(user_email);
		return memberVo;
	}

	@Override // 회원가입 메서드
	public void memberInsertOne(String user_name, String user_email, String user_pw) {
		memberMapper.memberInsertOne(user_name, user_email, user_pw);
	}
	
	@Override //코멘트 작성한 멤버 1명 가져오기
	public MemberVo commentUserOne(CommentVo cvo) {
		memberVo = memberMapper.commentMemberOne(cvo);
		System.out.println("memberservice user_url : "+memberVo.getUser_pic_url() + "memberservice user_name : "+memberVo.getUser_name());
		return memberVo;
	}
	
	@Override //불러온 코멘트에 해당하는 userlist가져오기
	public List<MemberVo> commentUser(List<CommentVo> commentVolist) {
		List<MemberVo> mvoList = memberMapper.commentUserList(commentVolist);
		System.out.println("memberService commentUserList : "+ mvoList);
		return mvoList;
	}

	@Override //댓글 userlist가져오기
	public List<MemberVo> selectReplyuserList(List<CommentReplyVo> replyList) {
		List<MemberVo> mvoReplyList = memberMapper.commReplyUserList(replyList);
		return mvoReplyList;
	}

}
