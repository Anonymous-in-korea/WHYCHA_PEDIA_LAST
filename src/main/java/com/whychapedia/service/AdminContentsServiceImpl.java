package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminContentsMapper;
import com.whychapedia.vo.MovieVo;

@Service
public class AdminContentsServiceImpl implements AdminContentsService {

	@Autowired
	AdminContentsMapper adminContentsMapper;
	
	@Override
	public List<MovieVo> adminContentsList() {
		List<MovieVo> adminContentsList = adminContentsMapper.adminContentsList();
		return adminContentsList;
	}

}
