package com.whychapedia.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminContentsMapper;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGalleryTrailerVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;

@Service
public class AdminContentsServiceImpl implements AdminContentsService {

	@Autowired
	AdminContentsMapper adminContentsMapper;
	
	@Autowired
	MovieVo movieVo;
	@Autowired
	MovieDirectorVo movieDirectorVo;
	@Autowired
	MovieActorVo movieActorVo;
	@Autowired
	MovieCountryVo movieCountryVo;
	@Autowired
	MovieGenreVo movieGenreVo;
	
	
	// MOVIE_LIST START -------------------------------------------------------------------------------------------------------------------------------------------
	
	@Override //검색어가 있을 때 MOVIE_LIST 메서드 ---------------------------------------------
	public Map<String, Object> adminContents_searchWord(int page, String searchWord) {
		
		HashMap<String, Object> map = pageMethod(page);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<MovieVo> adminContentsList = adminContentsMapper.adminContents_searchWord(startRow, endRow, searchWord);
		
		map.put("adminContentsList", adminContentsList);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//-----------------------------------------------------------------------------------

	@Override //검색어가 없을 때 MOVIE_LIST 메서드 ---------------------------------------------
	public Map<String, Object> adminContents(int page) {
		
		HashMap<String, Object> map = pageMethod(page);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<MovieVo> adminContentsList = adminContentsMapper.adminContents(startRow, endRow);
		
		map.put("adminContentsList", adminContentsList);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//-----------------------------------------------------------------------------------
	
	// 페이지 처리 -------------------------------------------------------------------------
	public HashMap<String, Object> pageMethod(int page) {
		HashMap<String, Object> map = new HashMap<>();
		
		System.out.println("pageMethod의 page : " + page);
		
		int listCount = adminContentsMapper.selectCount();
		int rowPerPage = 10; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}// 페이지 처리 -------------------------------------------------------------------------

	@Override
	public List<MovieDirectorVo> adminDirectorName(int director_id) {
		List<MovieDirectorVo> adminDirectorName = adminContentsMapper.adminDirectorName(director_id);
		return adminDirectorName;
	}

	@Override
	public List<MovieActorVo> adminActorName(int actor_id) {
		List<MovieActorVo> adminActorName = adminContentsMapper.adminActorName(actor_id);
		return adminActorName;
	}

	@Override
	public List<MovieCountryVo> adminCountryName(int country_id) {
		List<MovieCountryVo> adminCountryName = adminContentsMapper.adminCountryName(country_id);
		return adminCountryName;
	}

	@Override
	public List<MovieGenreVo> adminGenreName(int genre_id) {
		List<MovieGenreVo> adminGenreName = adminContentsMapper.adminGenreName(genre_id);
		return adminGenreName;
	}
	// MOVIE_LIST END -------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// MOVIE_CREATE END -------------------------------------------------------------------------------------------------------------------------------------------
	@Override //마지막 movie_id 가져오기
	public MovieVo adminMovieId() {
		movieVo = adminContentsMapper.adminMovieId();
		System.out.println("Impl movieVo : " + movieVo);
		return movieVo;
	}
	
	@Override
	public int adminMovieCreate(int id, String movie_kor_title, String movie_original_title, String movie_desc, String movie_grade, Date movie_release_date, int movie_running_time, String movie_post_url,
			String background_post_url, String sessionId) {
		int result = adminContentsMapper.adminMovieCreate(id, movie_kor_title, movie_original_title, movie_desc, movie_grade, movie_release_date, movie_running_time, movie_post_url, background_post_url,
															sessionId);
		return result;
	}

	@Override
	public void adminMovieCreateCountryList(int id, String name_kor) {
		adminContentsMapper.adminMovieCreateCountryList(id, name_kor);
	}

	@Override
	public void adminMovieCreateGenreList(int id, String genre_kor) {
		adminContentsMapper.adminMovieCreateGenreList(id, genre_kor);
	}

	@Override
	public void adminMovieCreateDirectorList(int id, String director_name) {
		adminContentsMapper.adminMovieCreateDirectorList(id, director_name);
	}

	@Override
	public void adminMovieCreateActorList(int id, String actor_name) {
		adminContentsMapper.adminMovieCreateActorList(id, actor_name);
	}

	@Override
	public void adminMovieCreateOTTList(int id, String ott_id) {
		adminContentsMapper.adminMovieCreateOTTList(id, ott_id);
	}

	@Override
	public void adminMovieCreateGalleryList(int id, String movie_gallery_url) {
		adminContentsMapper.adminMovieCreateGalleryList(id, movie_gallery_url);
	}

	@Override
	public void adminMovieCreateTrailerList(int id, String movie_trailer_url) {
		adminContentsMapper.adminMovieCreateTrailerList(id, movie_trailer_url);
	}
	// MOVIE_CREATE END -------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// MOVIE_VIEW & MODIFY START ----------------------------------------------------------------------------------------------------------------------------------
	
	// MOVIE_VIEW ---------------------------------------------------------------------------------------------------------
	@Override
	public MovieVo adminContentsView(String id) {
		movieVo = adminContentsMapper.adminContentsView(id);
		return movieVo;
	}

	@Override
	public List<MovieCountryVo> adminCountryView(String id) {
		List<MovieCountryVo> adminCountryView = adminContentsMapper.adminCountryView(id);
		return adminCountryView;
	}
	
	@Override
	public List<MovieGenreVo> adminGenreView(String id) {
		List<MovieGenreVo> adminGenreView = adminContentsMapper.adminGenreView(id);
		return adminGenreView;
	}

	@Override
	public List<MovieDirectorVo> adminDirectorView(String id) {
		List<MovieDirectorVo> adminDirectorView = adminContentsMapper.adminDirectorView(id);
		return adminDirectorView;
	}

	@Override
	public List<MovieActorVo> adminActorView(String id) {
		List<MovieActorVo> adminActorView = adminContentsMapper.adminActorView(id);
		return adminActorView;
	}

	@Override
	public List<MovieOttVo> adminOttView(String id) {
		List<MovieOttVo> adminOttView = adminContentsMapper.adminOttView(id);
		return adminOttView;
	}

	@Override
	public List<MovieGalleryTrailerVo> adminGalleryView(String id) {
		List<MovieGalleryTrailerVo> adminGalleryView = adminContentsMapper.adminGalleryView(id);
		return adminGalleryView;
	}

	@Override
	public List<MovieGalleryTrailerVo> adminTrailerView(String id) {
		List<MovieGalleryTrailerVo> adminTrailerView = adminContentsMapper.adminTrailerView(id);
		return adminTrailerView;
	}
	// MOVIE_VIEW ---------------------------------------------------------------------------------------------------------
	
	
	
	// MOVIE_MODIFY & MOVIE_CREATE ----------------------------------------------------------------------------------------
	@Override //ajax으로 감독 가져오기
	public MovieDirectorVo adminDirectorPull(String artistName) {
		movieDirectorVo = adminContentsMapper.adminDirectorPull(artistName);
		return movieDirectorVo;
	}
	
	@Override //ajax으로 배우 가져오기
	public MovieActorVo adminActorPull(String artistName) {
		movieActorVo = adminContentsMapper.adminActorPull(artistName);
		return movieActorVo;
	}
	// MOVIE_MODIFY & MOVIE_CREATE ----------------------------------------------------------------------------------------
	
	
	
	// MOVIE_MODIFY ----------------------------------------------------------------------------------------
	
	// (MOVIE_TABLE제외 데이터 등록하기 전 delete)
	@Override
	public void adminCountryDelete(int id) { adminContentsMapper.adminCountryDelete(movieVo.getId()); }
	@Override
	public void adminGenreDelete(int id) { adminContentsMapper.adminGenreDelete(movieVo.getId()); }
	@Override
	public void adminDirectorDelete(int id) { adminContentsMapper.adminDirectorDelete(movieVo.getId()); }
	@Override
	public void adminActorDelete(int id) { adminContentsMapper.adminActorDelete(movieVo.getId()); }
	@Override
	public void adminOttDelete(int id) { adminContentsMapper.adminOttDelete(movieVo.getId()); }
	@Override
	public void adminGalleryDelete(int id) { adminContentsMapper.adminGalleryDelete(movieVo.getId()); }
	@Override
	public void adminTrailerDelete(int id) { adminContentsMapper.adminTrailerDelete(movieVo.getId()); }
	// (MOVIE_TABLE제외 데이터 등록하기 전 delete)
	
	
	// (MOVIE_TABLE제외 데이터 등록하기) -----------------------------------------------------------------------------------------------------------------------------------------------
	@Override //영화수정 등록하기
	public int adminMovieModify(int id, String movie_kor_title, String movie_original_title, Date movie_release_date, int movie_running_time, String movie_grade, String movie_desc, String movie_post_url,
			String background_post_url) {
		int result = adminContentsMapper.adminMovieModify(id, movie_kor_title, movie_original_title, movie_release_date, movie_running_time, movie_grade, movie_desc, movie_post_url, background_post_url);
		return result;
	}
	
	@Override
	public void adminMovieModifyCountryList(int id, String name_kor) {
		adminContentsMapper.adminMovieModifyCountryList(id, name_kor);
	}

	@Override
	public void adminMovieModifyGenreList(int id, String genre_kor) {
		adminContentsMapper.adminMovieModifyGenreList(id, genre_kor);
	}

	@Override
	public void adminMovieModifyDirectorList(int id, String director_name) {
		adminContentsMapper.adminMovieModifyDirectorList(id, director_name);
	}

	@Override
	public void adminMovieModifyActorList(int id, String actor_name) {
		adminContentsMapper.adminMovieModifyActorList(id, actor_name);
	}

	@Override
	public void adminMovieModifyOTTList(int id, String ott_id) {
		adminContentsMapper.adminMovieModifyOTTList(id, ott_id);
	}

	@Override
	public void adminMovieModifyGalleryList(int id, String movie_gallery_url) {
		adminContentsMapper.adminMovieModifyGalleryList(id, movie_gallery_url);
	}

	@Override
	public void adminMovieModifyTrailerList(int id, String movie_trailer_url) {
		adminContentsMapper.adminMovieModifyTrailerList(id, movie_trailer_url);
	}
	// (MOVIE_TABLE제외 데이터 등록하기) -----------------------------------------------------------------------------------------------------------------------------------------------

	// MOVIE_VIEW & MODIFY END----------------------------------------------------------------------------------------------------------------------------------

}
