package com.whychapedia.service;

import com.whychapedia.vo.MemberVo;

public interface AdminMailService {

	MemberVo emailSend(String userEmail, String userName);

}
