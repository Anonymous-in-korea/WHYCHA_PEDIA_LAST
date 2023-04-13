package com.whychapedia.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGalleryTrailerVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;

public interface AdminContentsService {

	// List ------------------------------------------------------------------------------------------------------
	public Map<String, Object> adminContents(int page);
	public Map<String, Object> adminContents_searchWord(int page, String searchWord);
	
	public List<MovieDirectorVo> adminDirectorName(int director_id);
	public List<MovieActorVo> adminActorName(int actor_id);
	public List<MovieCountryVo> adminCountryName(int country_id);
	public List<MovieGenreVo> adminGenreName(int genre_id);
	// List ------------------------------------------------------------------------------------------------------
	
	

	// Create ----------------------------------------------------------------------------------------------------
	public MovieVo adminMovieId(); //마지막 movie_id 가져오기
	
	public int adminMovieCreate(int id, String movie_kor_title, String movie_original_title, String movie_desc, String movie_grade, Date movie_release_date, int movie_running_time, String movie_post_url,
								String background_post_url, String sessionId);
	
	public void adminMovieCreateCountryList(int id, String name_kor);
	public void adminMovieCreateGenreList(int id, String genre_kor);
	public void adminMovieCreateDirectorList(int id, String director_name);
	public void adminMovieCreateActorList(int id, String actor_name);
	public void adminMovieCreateOTTList(int id, String ott_id);
	public void adminMovieCreateGalleryList(int id, String movie_gallery_url);
	public void adminMovieCreateTrailerList(int id, String movie_trailer_url);
	// Create ----------------------------------------------------------------------------------------------------

	
	
	// View ------------------------------------------------------------------------------------------------------
	public MovieVo adminContentsView(String id);
	public List<MovieDirectorVo> adminDirectorView(String id);
	public List<MovieActorVo> adminActorView(String id);
	public List<MovieCountryVo> adminCountryView(String id);
	public List<MovieGenreVo> adminGenreView(String id);
	public List<MovieGalleryTrailerVo> adminGalleryView(String id);
	public List<MovieGalleryTrailerVo> adminTrailerView(String id);
	public List<MovieOttVo> adminOttView(String id);
	// View ------------------------------------------------------------------------------------------------------

	
	
	public MovieDirectorVo adminDirectorPull(String artistName);	// ajax으로 감독 프로필 가져오기
	public MovieActorVo adminActorPull(String artistName);	// ajax으로 배우 프로필 가져오기
	
	
	
	// Modify ----------------------------------------------------------------------------------------------------
	
	// (MOVIE_TABLE제외 데이터 등록하기 전 delete)
	public void adminCountryDelete(int id);
	public void adminGenreDelete(int id);
	public void adminDirectorDelete(int id);
	public void adminActorDelete(int id);
	public void adminOttDelete(int id);
	public void adminGalleryDelete(int id);
	public void adminTrailerDelete(int id);
	// (MOVIE_TABLE제외 데이터 등록하기 전 delete)

	public int adminMovieModify(int id, String movie_kor_title, String movie_original_title, Date movie_release_date, int movie_running_time, String movie_grade, String movie_desc, String movie_post_url,
			String background_post_url);
	
	public void adminMovieModifyCountryList(int id, String name_kor);
	public void adminMovieModifyGenreList(int id, String genre_kor);
	public void adminMovieModifyDirectorList(int id, String director_name);
	public void adminMovieModifyActorList(int id, String actor_name);
	public void adminMovieModifyOTTList(int id, String ott_id);
	public void adminMovieModifyGalleryList(int id, String movie_gallery_url);
	public void adminMovieModifyTrailerList(int id, String movie_trailer_url);
	// Modify ----------------------------------------------------------------------------------------------------

}
