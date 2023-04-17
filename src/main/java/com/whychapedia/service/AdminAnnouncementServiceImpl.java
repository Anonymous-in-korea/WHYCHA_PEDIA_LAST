package com.whychapedia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminAnnouncementMapper;
import com.whychapedia.vo.AnnouncementVo;

@Service
public class AdminAnnouncementServiceImpl implements AdminAnnouncementService {

	@Autowired
	AdminAnnouncementMapper adminAnnouncementMapper;
	@Autowired
	AnnouncementVo announcementVo;

	// NOTICE_LIST ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override // admin 페이지 공지사항 리스트 메서드
	public List<AnnouncementVo> adminAnnouncementList() {
		List<AnnouncementVo> adminAnnouncementList = adminAnnouncementMapper.adminAnnouncementList();
		return adminAnnouncementList;
	}


	
	@Override //검색어가 없을 때 ANNOUNCEMENT_LIST 메서드 ---------------------------------------------
	public Map<String, Object> adminAnnouncementListAll(int page, int datatableSelector) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = adminAnnouncementMapper.selectCount();
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		List<AnnouncementVo> adminAnnouncementList = adminAnnouncementMapper.adminAnnouncementListAll(startRow, endRow);
		
		map.put("adminAnnouncementList", adminAnnouncementList);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//-----------------------------------------------------------------------------------

	
	
	@Override //검색어가 있을 때 ANNOUNCEMENT_LIST 메서드 ---------------------------------------------
	public Map<String, Object> adminAnnouncementListAll_searchWord(int page, String searchWord, int datatableSelector) {
		
		HashMap<String, Object> map = pageMethod_searchWord(page, searchWord, datatableSelector);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<AnnouncementVo> adminAnnouncementList = adminAnnouncementMapper.adminAnnouncementListAll_searchWord(startRow, endRow, searchWord);
		
		map.put("adminAnnouncementList", adminAnnouncementList);
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
		
		int listCount = adminAnnouncementMapper.selectCount_searchWord(searchWord);
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
	
	// NOTICE_LIST ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_VIEW ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public AnnouncementVo adminAnnouncementSelectOne(int id) {
		announcementVo = adminAnnouncementMapper.adminAnnouncementSelectOne(id);
		return announcementVo;
	}

	@Override
	public void adminAnnouncementUpdateOne(int id, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementUpdateOne(id, is_regi);
	}
	
	@Override
	public void adminAnnouncementDeleteOne(int id) {
		adminAnnouncementMapper.adminAnnouncementDeleteOne(id);
	}
	// NOTICE_VIEW ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_CREATE ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
	}

	@Override
	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementDirectInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
	}
	// NOTICE_CREATE ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_MODIFY ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
	}

	@Override
	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementDirectModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
	}
	// NOTICE_MODIFY ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


}
