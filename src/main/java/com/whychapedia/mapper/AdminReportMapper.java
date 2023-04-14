package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AdminVo;
import com.whychapedia.vo.ReportVo;

@Mapper
public interface AdminReportMapper {

	// REPORT_PAGE ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public List<ReportVo> adminReportList();

	public List<ReportVo> adminReportListAll(int startRow, int endRow);
	public List<ReportVo> adminReportListAll_searchWord(int startRow, int endRow, String searchWord);

	public int selectCount(); //페이지 카운트
	public int selectCount_searchWord(String searchWord); //페이지 카운트
	// REPORT_PAGE ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	// REPORT_REPLY ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public ReportVo adminReportSelectOne(int id, int movie_id); // comment_reply 1개 정보 가져오기

	public ReportVo adminReportReplyWriter(int id); // 신고된 코멘트 작성자

	public ReportVo adminName(int id, int admin_id); // 처리한 관리자이름

	public AdminVo adminIdSelectOne(String admin_name); // admin_id 가져오기
	
	public void adminReportResult(int admin_id, int id, int report_result); // 신고사항 처리하기
	// REPORT_REPLY ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



	
}
