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

	// NOTICE_LIST ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override // admin 페이지 공지사항 리스트 메서드
	public List<AnnouncementVo> adminAnnouncementList() {
		List<AnnouncementVo> adminAnnouncementList = adminAnnouncementMapper.adminAnnouncementList();
		return adminAnnouncementList;
	}

	@Override
	public List<AnnouncementVo> adminAnnouncementListAll() {
		List<AnnouncementVo> adminAnnouncementListAll = adminAnnouncementMapper.adminAnnouncementListAll();
		return adminAnnouncementListAll;
	}
	// NOTICE_LIST ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_VIEW ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public AnnouncementVo adminAnnouncementSelectOne(int id) {
		announcementVo = adminAnnouncementMapper.adminAnnouncementSelectOne(id);
		return announcementVo;
	}

	@Override
	public void adminAnnouncementUpdateOne(int id, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementUpdateOne(id, is_regi);
	}
	
	@Override
	public void adminAnnouncementDeleteOne(int id) {
		adminAnnouncementMapper.adminAnnouncementDeleteOne(id);
	}
	// NOTICE_VIEW ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_CREATE ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
	}

	@Override
	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementDirectInputOne(admin_id, announcement_title, announcement_content, announcement_url, important, is_regi);
	}
	// NOTICE_CREATE ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_MODIFY ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@Override
	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
	}

	@Override
	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi) {
		adminAnnouncementMapper.adminAnnouncementDirectModifyOne(id, announcement_title, announcement_content, announcement_url, admin_id, announcement_important, is_regi);
	}
	// NOTICE_MODIFY ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


}
