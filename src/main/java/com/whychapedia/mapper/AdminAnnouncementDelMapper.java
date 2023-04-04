package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminAnnouncementDelMapper {

	public void adminAnnouncementDeleteOne(int id);

}
