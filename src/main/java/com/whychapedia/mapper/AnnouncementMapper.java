package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AnnouncementVo;

@Mapper
public interface AnnouncementMapper {

	public List<AnnouncementVo> selectAnnouncementList();

	public int selectCount();

}
