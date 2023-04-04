package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminAnnouncementInputMapper {

	public void adminAnnouncementInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);

	public void adminAnnouncementDirectInputOne(int admin_id, String announcement_title, String announcement_content, String announcement_url, int important, int is_regi);

}
