package com.whychapedia.service;

import com.whychapedia.vo.MemberVo;

public interface MemberService {
	
	public MemberVo memberSelectOne(String user_email, String user_pw); // 로그인 메서드

	public MemberVo user_email_check(String user_email); // 회원가입 ID체크 메서드

	public void memberInsertOne(String user_name, String user_email, String user_pw); // 회원가입 메서드

	public MemberVo selectOneMember(int user_id);

}
