package com.whychapedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminAnnouncementDelMapper;

@Service
public class AdminAnnouncementDelServiceImpl implements AdminAnnouncementDelService {

	@Autowired
	AdminAnnouncementDelMapper adminannouncementDelMapper;
	
	@Override
	public void adminAnnouncementDeleteOne(int id) {
		adminannouncementDelMapper.adminAnnouncementDeleteOne(id);
	}

}
