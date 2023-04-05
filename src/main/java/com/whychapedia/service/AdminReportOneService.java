package com.whychapedia.service;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

public interface AdminReportOneService {

	public ReportVo adminReportSelectOne(int id);

	public CommentVo adminCommentSelectOne(int id);

}
