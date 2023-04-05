package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Mapper
public interface AdminReportListMapper {

	public List<ReportVo> adminReportList();

	public List<ReportVo> adminReportListAll();

	public List<CommentVo> adminCommentListAll();

}
