package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminAnnouncementInputMapper;

@Service
public class AdminAnnouncementInputServiceImpl implements AdminAnnouncementInputService {

	@Autowired
	AdminAnnouncementInputMapper adminAnnouncementInputMapper;
	
	@Override
	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi) {
		
		adminAnnouncementInputMapper.adminAnnouncementInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);

	}

	@Override
	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi) {
		
		adminAnnouncementInputMapper.adminAnnouncementDirectInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
		
	}

}
