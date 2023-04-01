package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MemberMapper;
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

}
