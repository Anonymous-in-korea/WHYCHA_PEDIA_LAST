package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminReportListMapper;
import com.whychapedia.vo.ReportVo;

@Service
public class AdminReportListServiceImpl implements AdminReportListService {

	@Autowired
	AdminReportListMapper adminReportListMapper;
	
	@Override
	public List<ReportVo> adminReportList() {
		List<ReportVo> adminReportList = adminReportListMapper.adminReportList();
		return adminReportList;
	}

}
