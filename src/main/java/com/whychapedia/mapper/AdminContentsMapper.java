package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface AdminContentsMapper {

	public List<MovieVo> adminContentsList();

	public List<ArtistVo> adminArtistList();

}
