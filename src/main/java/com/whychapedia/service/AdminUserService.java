package com.whychapedia.service;

import java.util.Map;

import com.whychapedia.vo.MemberVo;

public interface AdminUserService {

	public Map<String, Object> userMemberSelectAll(int page, int datatableSelector);

	public Map<String, Object> userMemberSelectAll_searchWord(int page, String searchWord, int datatableSelector);

	
	public MemberVo userMemberSelectOne(String id);

	public int userMemberSelectBlock(int block_id);

	public int userMemberSelectNormal(int block_id);


}
