package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminAnnouncementModifyMapper;

@Service
public class AdminAnnouncementModifyServiceImpl implements AdminAnnouncementModifyService {

	@Autowired
	AdminAnnouncementModifyMapper adminAnnouncementModifyMapper;
	
	@Override
	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi) {
		adminAnnouncementModifyMapper.adminAnnouncementModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
	}

	@Override
	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi) {
		adminAnnouncementModifyMapper.adminAnnouncementDirectModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
	}

	@Override
	public void adminAnnouncementUpdateOne(int id, int is_regi) {
		adminAnnouncementModifyMapper.adminAnnouncementUpdateOne(id, is_regi);
	}

}
