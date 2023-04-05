package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminReportOneMapper;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.ReportVo;

@Service
public class AdminReportOneServiceImpl implements AdminReportOneService {

	@Autowired
	AdminReportOneMapper adminReportOneMapper;
	
	@Override
	public ReportVo adminReportSelectOne(int id) {
		ReportVo reportVo = adminReportOneMapper.adminReportSelectOne(id);
		return reportVo;
	}

	@Override
	public CommentVo adminCommentSelectOne(int id) {
		CommentVo commentVo = adminReportOneMapper.adminCommentSelectOne(id);
		return commentVo;
	}

}
