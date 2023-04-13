package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Mapper
public interface AdminReportMapper {

	public List<ReportVo> adminReportList();

	public List<ReportVo> adminReportListAll();

	
	
	public ReportVo adminReportSelectOne(int id);

	public CommentVo adminCommentSelectOne(int id);

}
