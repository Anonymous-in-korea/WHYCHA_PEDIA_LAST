package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MemberMapper;
import com.whychapedia.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;

	@Override
	public MemberVo memberSelectOne(String user_email, String user_pw) {
		MemberVo memberVo = memberMapper.memberSelectOne(user_email, user_pw);
		return memberVo;
	}

}
