package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieVo;

@Mapper
public interface AdminContentsMapper {

	public List<MovieVo> adminContents();

	public MovieDirectorVo adminDirector(int id);

	public List<MovieDirectorVo> adminDirectorName(int director_id);

	public List<MovieActorVo> adminActor(int id);

	public List<MovieActorVo> adminActorName(int actor_id);

}
