package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MemberVo;

@Mapper
public interface AdminUserMapper {

	public List<MemberVo> userMemberSelectAll();

	public MemberVo userMemberSelectOne(String id);

	public int userMemberSelectBlock(int block_id);

	public int userMemberSelectNormal(int block_id);

}
