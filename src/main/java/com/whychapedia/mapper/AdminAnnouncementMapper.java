package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnnouncementVo;

@Mapper
public interface AdminAnnouncementMapper {

	public List<AnnouncementVo> adminAnnouncementList();

	public List<AnnouncementVo> adminAnnouncementListAll();
	
	//-------------------------------------------------------------------------------------------
	
	
	
	public AnnouncementVo adminAnnouncementSelectOne(int id);
	
	//-------------------------------------------------------------------------------------------
	
	
	
	public void adminAnnouncementDeleteOne(int id);
	
	//-------------------------------------------------------------------------------------------
	
	
	
	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);

	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);
	
	//-------------------------------------------------------------------------------------------
	
	
	
	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementUpdateOne(int id, int is_regi);

}
