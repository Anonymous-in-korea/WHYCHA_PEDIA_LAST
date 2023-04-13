package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

public interface AdminReportService {

	public List<ReportVo> adminReportList();

	public List<ReportVo> adminReportListAll();

	
	
	public ReportVo adminReportSelectOne(int id);

	public CommentVo adminCommentSelectOne(int id);

}
