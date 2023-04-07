package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MemberVo;

public interface AdminUserService {

	public List<MemberVo> userMemberSelectAll();

	public MemberVo userMemberSelectOne(String id);

	public int userMemberSelectBlock(int block_id);

	public int userMemberSelectNormal(int block_id);

}
