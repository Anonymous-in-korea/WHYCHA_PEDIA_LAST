package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnnouncementVo;

@Mapper
public interface AdminAnnouncementMapper {

	public List<AnnouncementVo> adminAnnouncementList();

	public List<AnnouncementVo> adminAnnouncementListAll();

}
