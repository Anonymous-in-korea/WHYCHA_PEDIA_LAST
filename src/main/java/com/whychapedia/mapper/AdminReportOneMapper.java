package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Mapper
public interface AdminReportOneMapper {

	public ReportVo adminReportSelectOne(int id);

	public CommentVo adminCommentSelectOne(int id);

}
