package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.AdminArtistMapper;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

@Service
public class AdminArtistServiceImpl implements AdminArtistService {

	@Autowired
	AdminArtistMapper adminArtistMapper;
	
	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	
	// DIRECTOR_LIST -------------------------------------------------------------------------------------------------------
	@Override //검색어가 없을 때 DIRECTOR_LIST 메서드 ---------------------------------------------
	public Map<String, Object> directorSelectAll(int page, int datatableSelector) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = adminArtistMapper.director_selectCount();
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		List<MovieDirectorVo> artistListAll = adminArtistMapper.directorSelectAll(startRow, endRow);
		
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieDirectorVo> artistList = new ArrayList<>();
		for (MovieDirectorVo movieVo : artistListAll) {
			if (movieIdSet.add(movieVo.getId())) {
				artistList.add(movieVo);
			}
		}
		
		map.put("artistList", artistList);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//-----------------------------------------------------------------------------------
	
	
	@Override //검색어가 있을 때 MOVIE_LIST 메서드 ---------------------------------------------
	public Map<String, Object> directorSelectAll_searchWord(int page, String searchWord, int datatableSelector) {
		
		HashMap<String, Object> map = pageMethod_searchWord(page, searchWord, datatableSelector);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<MovieDirectorVo> artistListAll = adminArtistMapper.directorSelectAll_searchWord(startRow, endRow, searchWord);
		
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieDirectorVo> artistList = new ArrayList<>();
		for (MovieDirectorVo directorVo : artistListAll) {
			if (movieIdSet.add(directorVo.getId())) {
				artistList.add(directorVo);
			}
		}
		
		map.put("artistList", artistList);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//-----------------------------------------------------------------------------------

	// DIRECTOR_LIST -------------------------------------------------------------------------------------------------------
	

	
	// ACTOR_LIST -------------------------------------------------------------------------------------------------------
	@Override //검색어가 없을 때 ACTOR_LIST 메서드 ---------------------------------------------
	public Map<String, Object> actorSelectAll(int page, int datatableSelector) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = adminArtistMapper.actor_selectCount();
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
		int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
		int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		List<MovieActorVo> artistListAll = adminArtistMapper.actorSelectAll(startRow, endRow);
		
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieActorVo> artistList = new ArrayList<>();
		for (MovieActorVo actorVo : artistListAll) {
			if (movieIdSet.add(actorVo.getId())) {
				artistList.add(actorVo);
			}
		}
		
		map.put("artistList", artistList);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}

	
	@Override //검색어가 있을 때 ACTOR_LIST 메서드 ---------------------------------------------
	public Map<String, Object> actorSelectAll_searchWord(int page, String searchWord, int datatableSelector) {
		
		HashMap<String, Object> map = pageMethod_searchWord(page, searchWord, datatableSelector);
		
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		List<MovieActorVo> artistListAll = adminArtistMapper.actorSelectAll_searchWord(startRow, endRow, searchWord);
		
		//중복 삭제
		Set<Integer> movieIdSet = new HashSet<>();
		List<MovieActorVo> artistList = new ArrayList<>();
		for (MovieActorVo actorVo : artistListAll) {
			if (movieIdSet.add(actorVo.getId())) {
				artistList.add(actorVo);
			}
		}
		
		map.put("artistList", artistList);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//-----------------------------------------------------------------------------------
	
	// ACTOR_LIST -------------------------------------------------------------------------------------------------------
	
	
	
	// 페이지 처리 (검색어) -------------------------------------------------------------------------
	public HashMap<String, Object> pageMethod_searchWord(int page, String searchWord, int datatableSelector) {
		HashMap<String, Object> map = new HashMap<>();
		
		System.out.println("pageMethod의 page : " + page);
		
		int listCount = adminArtistMapper.actor_selectCount_searchWord(searchWord);
		int rowPerPage = datatableSelector; //한 페이지당 게시물 갯수
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
	}// 페이지 처리 (검색어) -------------------------------------------------------------------------
	
	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------

	
	
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------
	@Override //감독입력
	public void directorInput(String director_post_url, String director_name) {
		adminArtistMapper.directorInput(director_post_url, director_name);
	}

	@Override //배우입력
	public void actorInput(String actor_post_url, String actor_name) {
		adminArtistMapper.actorInput(actor_post_url, actor_name);
		
	}
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------

	
	
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------
	@Override //감독정보 가져오기
	public ArtistVo directorDetailView(int director_id) {
		ArtistVo artistVo = adminArtistMapper.directorDetailView(director_id);
		return artistVo;
	}

	@Override //배우정보 가져오기
	public ArtistVo actorDetailView(int actor_id) {
		ArtistVo artistVo = adminArtistMapper.actorDetailView(actor_id);
		return artistVo;
	}

	
	
	@Override //감독정보 수정하기
	public void directorModify(int id, String director_post_url, String director_name) {
		adminArtistMapper.directorModify(id, director_post_url, director_name);
	}

	@Override //배우정보 수정하기
	public void actorModify(int id, String actor_post_url, String actor_name) {
		adminArtistMapper.actorModify(id, actor_post_url, actor_name);
	}
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------

}
