package com.whychapedia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AnnouncementMapper;
import com.whychapedia.vo.AnnouncementVo;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {
	@Autowired
	AnnouncementMapper announcementMapper;
	
	//공지사항 가져오기
	@Override
	public List<AnnouncementVo> selectAnnouncementList() {
		List<AnnouncementVo> list = announcementMapper.selectAnnouncementList();
		return list;
	}
}
