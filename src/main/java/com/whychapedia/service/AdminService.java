package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.AdminVo;

public interface AdminService {

	public AdminVo adminSelectOne(String admin_email, String admin_pw); // admin 로그인 메서드

	public List<AdminVo> adminMemberList(); // admin 계정 전체 가져오기 메서드

	public int admin_email_check(String admin_email_check); // admin_email 중복체크 메서드

	public int adminMemberInsert(String admin_email, String admin_pw, String admin_name, int admin_position); // admin 계정생성 메서드

	public AdminVo adminMemberSelectOne(int id); // admin 계정 상세페이지 메서드

	public int adminMemberDelete(int id); // admin 계정삭제 메서드

	public int adminMemberModify(int id, String admin_email, String admin_pw, String admin_name, int admin_position); // admin 계정수정 메서드

	public int adminMemberPwUpdate(int id, String admin_pw); // my_admin 비밀번호 수정 메서드

}
