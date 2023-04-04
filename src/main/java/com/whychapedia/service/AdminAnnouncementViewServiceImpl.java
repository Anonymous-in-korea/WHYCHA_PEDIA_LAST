package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminAnnouncementViewMapper;
import com.whychapedia.vo.AnnouncementVo;

@Service
public class AdminAnnouncementViewServiceImpl implements AdminAnnouncementViewService {

	@Autowired
	AdminAnnouncementViewMapper adminAnnouncementViewMapper;
	@Autowired
	AnnouncementVo announcementVo;
	
	@Override
	public AnnouncementVo adminAnnouncementSelectOne(int id) {
		announcementVo = adminAnnouncementViewMapper.adminAnnouncementSelectOne(id);
		return announcementVo;
	}

}
