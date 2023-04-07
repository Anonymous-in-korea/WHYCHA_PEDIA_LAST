package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;

@Mapper
public interface AdminArtistMapper {

	public List<ArtistVo> actorSelectAll();

	public List<ArtistVo> directorSelectAll();

}
