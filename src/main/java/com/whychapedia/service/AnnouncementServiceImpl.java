package com.whychapedia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AnnouncementMapper;
import com.whychapedia.vo.AnnouncementVo;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {
	@Autowired
	AnnouncementMapper announcementMapper;
	
	@Override
	public Map<String, Object> selectAnnouncementList() {
		Map<String, Object> map = new HashMap<>();
		List<AnnouncementVo> list = announcementMapper.selectAnnouncementList();
		int listCount = announcementMapper.selectCount();
		map.put("list", list);
		map.put("count", listCount);
		return map;
	}
}
