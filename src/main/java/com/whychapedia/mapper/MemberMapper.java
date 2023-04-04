package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MemberVo;

@Mapper
public interface MemberMapper {

	public MemberVo memberSelectOne(String user_email, String user_pw); // 로그인 메서드

	public MemberVo memberIdCheck(String user_email); // 회원가입 ID체크 메서드

	public void memberInsertOne(String user_name, String user_email, String user_pw); // 회원가입 메서드
	
}
