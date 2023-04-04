package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.AdminVo;

@Mapper
public interface AdminMemberMapper {

	public AdminVo adminSelectOne(String admin_email, String admin_pw); // admin 로그인 메서드

}
