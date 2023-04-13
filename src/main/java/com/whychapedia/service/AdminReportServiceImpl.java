package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminReportMapper;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Service
public class AdminReportServiceImpl implements AdminReportService {

	@Autowired
	AdminReportMapper adminReportMapper;
	
	@Override
	public List<ReportVo> adminReportList() {
		List<ReportVo> adminReportList = adminReportMapper.adminReportList();
		return adminReportList;
	}

	@Override
	public List<ReportVo> adminReportListAll() {
		List<ReportVo> adminReportListAll = adminReportMapper.adminReportListAll();
		return adminReportListAll;
	}

	
	
	
	@Override
	public ReportVo adminReportSelectOne(int id) {
		ReportVo reportVo = adminReportMapper.adminReportSelectOne(id);
		return reportVo;
	}

	@Override
	public CommentVo adminCommentSelectOne(int id) {
		CommentVo commentVo = adminReportMapper.adminCommentSelectOne(id);
		return commentVo;
	}

}
