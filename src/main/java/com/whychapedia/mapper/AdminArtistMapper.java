package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

@Mapper
public interface AdminArtistMapper {

	public List<MovieActorVo> actorSelectAll();

	public List<MovieDirectorVo> directorSelectAll();

	public void directorInput(String director_post_url, String director_name); //감독 입력

	public void actorInput(String actor_post_url, String actor_name); //배우 입력

	public ArtistVo directorDetailView(String director_id); //감독정보 가져오기

	public ArtistVo actorDetailView(String actor_id); //배우정보 가져오기

	public void directorModify(String director_id, String artist_post_url, String artist_name); //감독정보 수정하기

	public void actorModify(String actor_id, String artist_post_url, String artist_name); //배우정보 수정하기

}
