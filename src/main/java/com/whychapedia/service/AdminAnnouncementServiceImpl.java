package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminAnnouncementMapper;
import com.whychapedia.vo.AnnouncementVo;

@Service
public class AdminAnnouncementServiceImpl implements AdminAnnouncementService {

	@Autowired
	AdminAnnouncementMapper adminAnnouncementMapper;
	
	@Autowired
	AnnouncementVo announcementVo;
	
	@Override // admin 페이지 공지사항 리스트 메서드
	public List<AnnouncementVo> adminAnnouncementList() {
		List<AnnouncementVo> adminAnnouncementList = adminAnnouncementMapper.adminAnnouncementList();
		return adminAnnouncementList;
	}

}
