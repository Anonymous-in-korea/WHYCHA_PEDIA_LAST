package com.whychapedia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminReportMapper;
import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.ReportVo;

@Service
public class AdminReportServiceImpl implements AdminReportService {

	@Autowired
	AdminReportMapper adminReportMapper;
	
	// REPORT_PAGE ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public List<ReportVo> adminReportList() {
		List<ReportVo> adminReportList = adminReportMapper.adminReportList();
		return adminReportList;
	}

	@Override //검색어가 없을 때 REPORT_LIST 메서드 ------------------------------------------------------------------------------------------------
	public Map<String, Object> adminReportListAll(int page, int datatableSelector) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = adminReportMapper.selectCount();
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		List<ReportVo> adminReportListAll = adminReportMapper.adminReportListAll(startRow, endRow);
		
		map.put("adminReportListAll", adminReportListAll);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	} //검색어가 없을 때 REPORT_LIST 메서드 ---------------------------------------------------------------------------------------------------------

	@Override //검색어가 있을 때 REPORT_LIST 메서드 --------------------------------------------------------------------------------------------------
	public Map<String, Object> adminReportListAll_searchWord(int page, String searchWord, int datatableSelector) {
		
		HashMap<String, Object> map = pageMethod(page, searchWord, datatableSelector);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<ReportVo> adminReportListAll = adminReportMapper.adminReportListAll_searchWord(startRow, endRow, searchWord);
		
		map.put("adminReportListAll", adminReportListAll);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	} //검색어가 있을 때 REPORT_LIST 메서드 ----------------------------------------------------------------------------------------------------------
	
	
	// 페이지 처리 -------------------------------------------------------------------------
	public HashMap<String, Object> pageMethod(int page, String searchWord, int datatableSelector) {
		HashMap<String, Object> map = new HashMap<>();
		
		System.out.println("pageMethod의 page : " + page);
		System.out.println("pageMethod의 datatableSelector : " + datatableSelector);
		
		int listCount = adminReportMapper.selectCount_searchWord(searchWord);
		System.out.println("listCount : " + listCount);
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		System.out.println("startRow : " + startRow);
		System.out.println("endRow : " + endRow);
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}// 페이지 처리 -------------------------------------------------------------------------
	// REPORT_PAGE ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	
	
	// REPORT_REPLY ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override // comment_reply 1개 정보 가져오기
	public ReportVo adminReportSelectOne(int id, int movie_id) {
		ReportVo reportVo = adminReportMapper.adminReportSelectOne(id, movie_id);
		return reportVo;
	}

	@Override // 신고된 코멘트 작성자
	public ReportVo adminReportReplyWriter(int id) {
		ReportVo replyWriter = adminReportMapper.adminReportReplyWriter(id);
		return replyWriter;
	}

	@Override // 처리한 관리자이름
	public ReportVo adminName(int id, int admin_id) {
		ReportVo adminName = adminReportMapper.adminName(id, admin_id);
		return adminName;
	}

	@Override // admin_id 가져오기
	public AdminVo adminIdSelectOne(String admin_name) {
		AdminVo adminId = adminReportMapper.adminIdSelectOne(admin_name);
		return adminId;
	}
	
	@Override // 신고사항 처리하기
	public void adminReportResult(int admin_id, int id, int report_result) {
		adminReportMapper.adminReportResult(admin_id, id, report_result);
	}
	// REPORT_REPLY ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



	
}
