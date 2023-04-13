package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.AnnouncementVo;

public interface AdminAnnouncementService {

	public List<AnnouncementVo> adminAnnouncementList(); // admin 페이지 공지사항 리스트 메서드
	public List<AnnouncementVo> adminAnnouncementListAll();
	
	// --------------------------------------------------------------------------------------------------------------------------------
	
	public AnnouncementVo adminAnnouncementSelectOne(int id);
	
	// --------------------------------------------------------------------------------------------------------------------------------
	
	public void adminAnnouncementDeleteOne(int id);
	
	// --------------------------------------------------------------------------------------------------------------------------------
	
	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);

	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);
	
	//-----------------------------------------------------------------------------------------------------------------------------------
	
	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementUpdateOne(int id, int is_regi);

}
