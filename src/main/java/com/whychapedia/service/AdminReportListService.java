package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

public interface AdminReportListService {

	public List<ReportVo> adminReportList();

	public List<ReportVo> adminReportListAll();

	public List<CommentVo> adminCommentListAll();

}
