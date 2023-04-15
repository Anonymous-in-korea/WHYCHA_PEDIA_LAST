package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface AdminUserMapper {

	public List<MemberVo> userMemberSelectAll(int startRow, int endRow);

	public List<MovieVo> userMemberSelectAll_searchWord(int startRow, int endRow, String searchWord);

	public int selectCount();
	
	public int selectCount_searchWord(String searchWord);
	
	
	
	
	
	public MemberVo userMemberSelectOne(String id);

	public int userMemberSelectBlock(int block_id);

	public int userMemberSelectNormal(int block_id);




}
