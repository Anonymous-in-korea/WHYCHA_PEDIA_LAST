package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminMapper;
import com.whychapedia.vo.AdminVo;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMemberMapper;
	@Autowired
	AdminVo adminVo;
	
	@Override // admin 로그인 메서드
	public AdminVo adminSelectOne(String admin_email, String admin_pw) {
		adminVo = adminMemberMapper.adminSelectOne(admin_email, admin_pw);
		return adminVo;
	}

	@Override // admin 계정 전체 가져오기 메서드
	public List<AdminVo> adminMemberList() {
		List<AdminVo> adminMemberList = adminMemberMapper.adminMemberList();
		return adminMemberList;
	}

	@Override // admin 계정생성 메서드
	public int adminMemberInsert(String admin_email, String admin_pw, String admin_name, int admin_position) {
		int result = adminMemberMapper.adminMemberInsert(admin_email, admin_pw, admin_name, admin_position);
		return result;
	}

	@Override // admin_email 중복체크 메서드
	public int admin_email_check(String admin_email_check) {
		int result = adminMemberMapper.admin_email_check(admin_email_check);
		return result;
	}

	@Override // admin 계정 상세페이지 메서드
	public AdminVo adminMemberSelectOne(int id) {
		adminVo = adminMemberMapper.adminMemberSelectOne(id);
		return adminVo;
	}

	@Override // admin 계정삭제 메서드
	public int adminMemberDelete(int id) {
		int result = adminMemberMapper.adminMemberDelete(id);
		return result;
	}

	@Override // admin 계정수정 메서드
	public int adminMemberModify(int id, String admin_email, String admin_pw, String admin_name, int admin_position) {
		int result = adminMemberMapper.adminMemberModify(id, admin_email, admin_pw, admin_name, admin_position);
		return result;
	}

	@Override
	public int adminMemberPwUpdate(int id, String admin_pw) {
		int result = adminMemberMapper.adminMemberPwUpdate(id, admin_pw);
		return result;
	}


}
