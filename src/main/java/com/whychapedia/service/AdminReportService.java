package com.whychapedia.service;

import java.util.List;
import java.util.Map;

import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.ReportVo;

public interface AdminReportService {

	public List<ReportVo> adminReportList();

	public Map<String, Object> adminReportListAll(int page, int datatableSelector);
	public Map<String, Object> adminReportListAll_searchWord(int page, String searchWord, int datatableSelector);

	
	
	public ReportVo adminReportSelectOne(int id, int movie_id); // comment_reply 1개 정보 가져오기

	public ReportVo adminReportReplyWriter(int id); // 신고된 코멘트 작성자

	public ReportVo adminName(int id, int admin_id); // 처리한 관리자이름

	public AdminVo adminIdSelectOne(String admin_name); // admin_id 가져오기

	public void adminReportResult(int admin_id, int id, int report_result); // 신고사항 처리하기

}
