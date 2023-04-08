package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminUserMapper;
import com.whychapedia.vo.MemberVo;

@Service
public class AdminUserServiceImpl implements AdminUserService {

	@Autowired
	MemberVo memberVo;
	@Autowired
	AdminUserMapper adminUserMapper;
	
	@Override
	public List<MemberVo> userMemberSelectAll() {
		List<MemberVo> memberVo = adminUserMapper.userMemberSelectAll();
		return memberVo;
	}

	@Override
	public MemberVo userMemberSelectOne(String id) {
		memberVo = adminUserMapper.userMemberSelectOne(id);
		return memberVo;
	}

	@Override
	public int userMemberSelectBlock(int block_id) {
		int result = adminUserMapper.userMemberSelectBlock(block_id);
		return result;
	}

	@Override
	public int userMemberSelectNormal(int block_id) {
		int result = adminUserMapper.userMemberSelectNormal(block_id);
		return result;
	}
	
}
