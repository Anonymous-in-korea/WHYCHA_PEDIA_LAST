package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

public interface AdminArtistService {

	public List<MovieActorVo> actorSelectAll();

	public List<MovieDirectorVo> directorSelectAll();

}
