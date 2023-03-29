package com.whychapedia.service;

import com.whychapedia.vo.MemberVo;

public interface MemberService {
	
	public MemberVo memberSelectOne(String user_email, String user_pw);

}
