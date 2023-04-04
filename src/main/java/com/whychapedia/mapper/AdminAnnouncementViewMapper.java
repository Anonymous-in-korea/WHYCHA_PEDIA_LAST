package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnnouncementVo;

@Mapper
public interface AdminAnnouncementViewMapper {

	public AnnouncementVo adminAnnouncementSelectOne(int id);
	
}
