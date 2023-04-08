package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

@Mapper
public interface AdminArtistMapper {

	public List<MovieActorVo> actorSelectAll();

	public List<MovieDirectorVo> directorSelectAll();

}
