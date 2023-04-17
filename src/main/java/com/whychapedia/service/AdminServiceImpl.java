package com.whychapedia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminMapper;
import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.QuestionListVo;

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

	
	@Override //검색어가 없을 때 ADMIN_MEMBER_LIST 메서드 ---------------------------------------------
	public Map<String, Object> adminMemberList(int page, int datatableSelector) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = adminMemberMapper.selectCount();
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		List<AdminVo> adminMemberList = adminMemberMapper.adminMemberList(startRow, endRow);
		
		map.put("adminMemberList", adminMemberList);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//-----------------------------------------------------------------------------------

	
	
	@Override //검색어가 있을 때 ADMIN_MEMBER_LIST 메서드 ---------------------------------------------
	public Map<String, Object> adminMemberList_searchWord(int page, String searchWord, int datatableSelector) {
		
		HashMap<String, Object> map = pageMethod_searchWord(page, searchWord, datatableSelector);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<AdminVo> adminMemberList = adminMemberMapper.adminMemberList_searchWord(startRow, endRow, searchWord);
		
		map.put("adminMemberList", adminMemberList);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//-----------------------------------------------------------------------------------

	// 페이지 처리 (검색어) -------------------------------------------------------------------------
	public HashMap<String, Object> pageMethod_searchWord(int page, String searchWord, int datatableSelector) {
		HashMap<String, Object> map = new HashMap<>();
		
		System.out.println("pageMethod의 page : " + page);
		
		int listCount = adminMemberMapper.selectCount_searchWord(searchWord);
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}// 페이지 처리 (검색어) -------------------------------------------------------------------------
	
	
	
	

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
