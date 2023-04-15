package com.whychapedia.service;

import java.util.List;
import java.util.Map;

import com.whychapedia.vo.AnnouncementVo;

public interface AnnouncementService {

	//공지사항 가져오기
		List<AnnouncementVo> selectAnnouncementList();
}
