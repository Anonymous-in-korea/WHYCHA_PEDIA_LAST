package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminAnnouncementModifyMapper {

	public void adminAnnouncementModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementDirectModifyOne(int id, String announcement_title, String announcement_content, String announcement_url, int admin_id, int announcement_important, int is_regi);

	public void adminAnnouncementUpdateOne(int id, int is_regi);

}
