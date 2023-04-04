package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminQnAListMapper;
import com.whychapedia.vo.AnnouncementVo;
import com.whychapedia.vo.QuestionListVo;

@Service
public class AdminQnAListServiceImpl implements AdminQnAListService {

	@Autowired
	AdminQnAListMapper adminQnAListMapper;
	
	@Override
	public List<QuestionListVo> adminQnAList() {
		List<QuestionListVo> adminQnAList = adminQnAListMapper.adminQnAList();
		return adminQnAList;
	}

}
