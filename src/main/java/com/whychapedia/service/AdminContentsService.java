package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieVo;

public interface AdminContentsService {

	public List<MovieVo> adminContentsList();

	public List<ArtistVo> adminArtistList();

}
