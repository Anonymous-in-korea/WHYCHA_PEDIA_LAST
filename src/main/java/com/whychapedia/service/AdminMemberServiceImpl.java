package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminMemberMapper;
import com.whychapedia.vo.AdminVo;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	AdminMemberMapper adminMemberMapper;
	@Autowired
	AdminVo adminVo;
	
	@Override // admin 로그인 메서드
	public AdminVo adminSelectOne(String admin_email, String admin_pw) {
		adminVo = adminMemberMapper.adminSelectOne(admin_email, admin_pw);
		return adminVo;
	}

}
