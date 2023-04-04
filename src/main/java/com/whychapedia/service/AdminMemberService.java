package com.whychapedia.service;

import com.whychapedia.vo.AdminVo;

public interface AdminMemberService {

	public AdminVo adminSelectOne(String admin_email, String admin_pw); // admin 로그인 메서드

}
