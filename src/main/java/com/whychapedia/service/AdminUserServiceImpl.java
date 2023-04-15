package com.whychapedia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminUserMapper;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieVo;

@Service
public class AdminUserServiceImpl implements AdminUserService {

	@Autowired
	MemberVo memberVo;
	@Autowired
	AdminUserMapper adminUserMapper;
	
	
	@Override //검색어가 없을 때 MOVIE_LIST 메서드 ---------------------------------------------
	public Map<String, Object> userMemberSelectAll(int page, int datatableSelector){
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = adminUserMapper.selectCount();
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		List<MemberVo> userList = adminUserMapper.userMemberSelectAll(startRow, endRow);
		
		map.put("userList", userList);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//-----------------------------------------------------------------------------------

	
	
	@Override //검색어가 있을 때 MOVIE_LIST 메서드 ---------------------------------------------
	public Map<String, Object> userMemberSelectAll_searchWord(int page, String searchWord, int datatableSelector) {
		
		HashMap<String, Object> map = pageMethod_searchWord(page, searchWord, datatableSelector);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<MovieVo> adminContentsList = adminUserMapper.userMemberSelectAll_searchWord(startRow, endRow, searchWord);
		
		map.put("adminContentsList", adminContentsList);
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
		
		int listCount = adminUserMapper.selectCount_searchWord(searchWord);
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
	

	
	
	@Override
	public MemberVo userMemberSelectOne(String id) {
		memberVo = adminUserMapper.userMemberSelectOne(id);
		return memberVo;
	}

	@Override
	public int userMemberSelectBlock(int block_id) {
		int result = adminUserMapper.userMemberSelectBlock(block_id);
		return result;
	}

	@Override
	public int userMemberSelectNormal(int block_id) {
		int result = adminUserMapper.userMemberSelectNormal(block_id);
		return result;
	}
	
}
