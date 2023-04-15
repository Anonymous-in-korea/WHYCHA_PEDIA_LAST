package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnnouncementVo;

@Mapper
public interface AdminAnnouncementMapper {

	
	// NOTICE_LIST ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public List<AnnouncementVo> adminAnnouncementList();

	public List<AnnouncementVo> adminAnnouncementListAll();
	// NOTICE_LIST ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_VIEW ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public AnnouncementVo adminAnnouncementSelectOne(int id);

	public void adminAnnouncementUpdateOne(int id, int is_regi);
	
	public void adminAnnouncementDeleteOne(int id);
	// NOTICE_VIEW ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_CREATE ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);

	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);
	// NOTICE_CREATE ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// NOTICE_MODIFY ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);
	// NOTICE_MODIFY ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


}
