package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieVo;

public interface AdminContentsService {

	public List<MovieVo> adminContents();

	
	
	public MovieDirectorVo adminDirector(int id);

	public List<MovieDirectorVo> adminDirectorName(int director_id);

	
	
	public List<MovieActorVo> adminActor(int id);

	public List<MovieActorVo> adminActorName(int actor_id);

}
