package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.AdminContentsService;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGalleryTrailerVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;

@Controller
public class AdminContentsController {

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
	@Autowired
	AdminContentsService adminContentsService;
	
	
	// 컨텐츠(영화) 목록 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/3_contents/movie_list")
	public String movie(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "") String searchWord) {
		
		Map<String, Object> adminContents = new HashMap<>();
		if ( searchWord.equals("영화제목으로 검색") ) { adminContents = adminContentsService.adminContents(page); }
		else { adminContents = adminContentsService.adminContents_searchWord(page, searchWord); }
		int now_page = (int) adminContents.get("page");
		int listCount = (int) adminContents.get("listCount");
		int maxPage = (int) adminContents.get("maxPage");
		int startPage = (int) adminContents.get("startPage");
		int endPage = (int) adminContents.get("endPage");
		int startRow = (int) adminContents.get("startRow");
		int endRow = (int) adminContents.get("endRow");
		System.out.println("maxPage : " + maxPage);
		@SuppressWarnings("unchecked")
		List<MovieVo> adminContentsList = (List<MovieVo>) adminContents.get("adminContentsList");
		if ( adminContentsList != null ) {
			model.addAttribute("adminContentsList", adminContentsList);
			model.addAttribute("now_page", now_page);
			model.addAttribute("listCount", listCount);
			model.addAttribute("maxPage", maxPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
		}
		System.out.println("컨텐츠List size : " + adminContentsList.size());
		System.out.println("컨텐츠ID : " + adminContentsList.get(0).getId());
		
		
		// director_name 가져오기
		List<MovieDirectorVo> adminDirectorName = new ArrayList<>();
		for ( int i = 0; i < adminContentsList.size(); i++ ) {
			List<MovieDirectorVo> adminDirector = adminContentsService.adminDirectorName( adminContentsList.get(i).getId() );
			adminDirectorName.addAll(adminDirector);
		}
		if ( adminDirectorName.size() != 0 ) { model.addAttribute("adminDirectorName", adminDirectorName); }
		System.out.println("디렉터 이름 갯수 : " + adminDirectorName.size());
		
		
		// actor_name 가져오기
		List<MovieActorVo> adminActorName = new ArrayList<>();
		for ( int i = 0; i < adminContentsList.size(); i++ ) {
			List<MovieActorVo> adminActor = adminContentsService.adminActorName( adminContentsList.get(i).getId() );
			adminActorName.addAll(adminActor);
		}
		if ( adminActorName.size() != 0 ) { model.addAttribute("adminActorName", adminActorName); }
		System.out.println("배우 이름 갯수 : " + adminActorName.size());
		
		
		// movie_country 가져오기
		List<MovieCountryVo> adminCountryName = new ArrayList<>();
		for ( int i = 0; i < adminContentsList.size(); i++ ) {
			List<MovieCountryVo> adminCountry = adminContentsService.adminCountryName( adminContentsList.get(i).getId() );
			adminCountryName.addAll(adminCountry);
		}
		if ( adminCountryName.size() != 0 ) { model.addAttribute("adminCountryName", adminCountryName); }
		
		
		// movie_genre 가져오기
		List<MovieGenreVo> adminGenreName = new ArrayList<>();
		for ( int i = 0; i < adminContentsList.size(); i++ ) {
			List<MovieGenreVo> adminGenre = adminContentsService.adminGenreName( adminContentsList.get(i).getId() );
			adminGenreName.addAll(adminGenre);
		}
		if ( adminGenreName.size() != 0 ) { model.addAttribute("adminGenreName", adminGenreName); }
		 
		
		return "admin/3_contents/movie_list";
	}
	
	// 컨텐츠(영화) 목록 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// 컨텐츠(영화) 상세페이지 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/3_contents/movie_view")
	public String movie_view(Model model, @RequestParam String id) {
		
		movieVo = adminContentsService.adminContentsView(id);
		List<MovieDirectorVo> adminDirectorView = adminContentsService.adminDirectorView(id);
		List<MovieActorVo> adminActorView = adminContentsService.adminActorView(id);
		List<MovieCountryVo> adminCountryView = adminContentsService.adminCountryView(id);
		List<MovieGenreVo> adminGenreView = adminContentsService.adminGenreView(id);
		
		if ( movieVo != null ) { model.addAttribute("movieVo", movieVo); }
		if ( adminDirectorView != null ) { model.addAttribute("adminDirectorView", adminDirectorView); }
		if ( adminActorView != null ) { model.addAttribute("adminActorView", adminActorView); }
		if ( adminCountryView != null ) { model.addAttribute("adminCountryView", adminCountryView); }
		if ( adminGenreView != null ) { model.addAttribute("adminGenreView", adminGenreView); }
		
		return "admin/3_contents/movie_view";
	}
	
	// 컨텐츠(영화) 상세페이지 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	// 컨텐츠(영화) 새로 작성하기페이지 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/3_contents/movie_write")
	public String movie_write(Model model) {
		
		movieVo = adminContentsService.adminMovieId();
		if ( movieVo != null ) { model.addAttribute("movieVo", movieVo); }
		
		return "admin/3_contents/movie_write";
	}
	@PostMapping("admin/3_contents/movie_write")
	public String movie_write(Model model, HttpServletRequest request, MovieVo movieVo, @RequestParam String name_kor, @RequestParam String genre_kor, @RequestParam String director_name, @RequestParam String actor_name,
			@RequestParam String ott_id, @RequestParam String movie_gallery_url, @RequestParam String movie_trailer_url) {
		
		System.out.println("movieVo_id : " + movieVo.getId());
		System.out.println("name_kor : " + name_kor);
		System.out.println("genre_kor : " + genre_kor);
		System.out.println("director_name : " + director_name);
		System.out.println("actor_name : " + actor_name);
		System.out.println("ott_id : " + ott_id);
		System.out.println("movie_gallery_url : " + movie_gallery_url);
		System.out.println("movie_trailer_url : " + movie_trailer_url);
		
		String sessionId = request.getSession().getId(); //sessionId 가져오기
		
		String movie_desc = "";
		if ( movieVo.getMovie_desc().equals("") ) { movie_desc = "0"; }
		else { movie_desc = movieVo.getMovie_desc(); }
		
		int movie_running_time = (Integer)movieVo.getMovie_running_time();
		
		String movie_grade = "";
		if ( movieVo.getMovie_grade().equals("all") ) { movie_grade = "전체 관람가"; }
		else if ( movieVo.getMovie_grade().equals("U12") ) { movie_grade = "12세 관람가"; }
		else if ( movieVo.getMovie_grade().equals("U15") ) { movie_grade = "15세 관람가"; }
		else if ( movieVo.getMovie_grade().equals("U16") ) { movie_grade = "청소년 관람불가"; }
		else if ( movieVo.getMovie_grade().equals("19over") ) { movie_grade = "제한 상영가"; }
		
		if ( name_kor.endsWith(",") ) { name_kor = name_kor.substring( 0, name_kor.length() - 1 ); }
		if ( genre_kor.endsWith(",") ) { genre_kor = genre_kor.substring( 0, genre_kor.length() - 1 ); }
		if ( director_name.endsWith(",") ) { director_name = director_name.substring( 0, director_name.length() - 1 ); }
		if ( actor_name.endsWith(",") ) { actor_name = actor_name.substring( 0, actor_name.length() - 1 ); }
		if ( ott_id.endsWith(",") ) { ott_id = ott_id.substring( 0, ott_id.length() - 1 ); }
		if ( movie_gallery_url.endsWith(",") ) { movie_gallery_url = movie_gallery_url.substring( 0, movie_gallery_url.length() - 1 ); }
		if ( movie_trailer_url.endsWith(",") ) { movie_trailer_url = movie_trailer_url.substring( 0, movie_trailer_url.length() - 1 ); }
		

		List<String> country = new ArrayList<>();
		String[] countryArray = null;
		if ( name_kor.contains(",") ) {
			countryArray = name_kor.split(",");
			country.addAll(Arrays.asList(countryArray));
		} else {
			country.add(name_kor);
		}
		
		List<String> genre = new ArrayList<>();
		String[] genreArray = null;
		if ( genre_kor.contains(",") ) {
			genreArray = genre_kor.split(",");
			genre.addAll(Arrays.asList(genreArray));
		} else {
			genre.add(genre_kor);
		}
		
		List<String> director = new ArrayList<>();
		String[] directorArray = null;
		if ( director_name.contains(",") ) {
			directorArray = genre_kor.split(",");
			director.addAll(Arrays.asList(directorArray));
		} else {
			director.add(director_name);
		}
		
		List<String> actor = new ArrayList<>();
		String[] actorArray = null;
		if ( actor_name.contains(",") ) {
			actorArray = actor_name.split(",");
			actor.addAll(Arrays.asList(actorArray));
		} else {
			actor.add(actor_name);
		}
		
		List<String> ott = new ArrayList<>();
		String[] ottArray = null;
		if ( ott_id.contains(",") ) {
			ottArray = ott_id.split(",");
			ott.addAll(Arrays.asList(ottArray));
		} else {
			ott.add(ott_id);
		}

		List<String> gallery = new ArrayList<>();
		String[] galleryArray = null;
		if ( movie_gallery_url.contains(",") ) {
			genreArray = movie_gallery_url.split(",");
			gallery.addAll(Arrays.asList(genreArray));
		} else {
			gallery.add(movie_gallery_url);
		}

		List<String> trailer = new ArrayList<>();
		String[] trailerArray = null;
		if ( movie_trailer_url.contains(",") ) {
			trailerArray = movie_trailer_url.split(",");
			trailer.addAll(Arrays.asList(trailerArray));
		} else {
			trailer.add(movie_trailer_url);
		}
		
		
		System.out.println("countryList : " + country);
		System.out.println("genreList : " + genre);
		System.out.println("directorList : " + director);
		System.out.println("actorList : " + actor);
		System.out.println("ottList : " + ott);
		System.out.println("galleryList : " + gallery);
		System.out.println("trailerList : " + trailer);
		
		
		int result = adminContentsService.adminMovieCreate(movieVo.getId(), movieVo.getMovie_kor_title(), movieVo.getMovie_original_title(), movie_desc, movie_grade, movieVo.getMovie_release_date(), movie_running_time
				, movieVo.getMovie_post_url(), movieVo.getBackground_post_url(), sessionId);
		if ( result == 1 ) { System.out.println("MOVIE_TABLE 정보수정 결과 : " + result); }
		
		for ( int i = 0; i < country.size(); i++ ) {
			adminContentsService.adminMovieCreateCountryList(movieVo.getId(), country.get(i));
		}

		for ( int i = 0; i < genre.size(); i++ ) {
			adminContentsService.adminMovieCreateGenreList(movieVo.getId(), genre.get(i));
		}

		for ( int i = 0; i < director.size(); i++ ) {
			adminContentsService.adminMovieCreateDirectorList(movieVo.getId(), director.get(i));
		}
		
		for ( int i = 0; i < actor.size(); i++ ) {
			adminContentsService.adminMovieCreateActorList(movieVo.getId(), actor.get(i));
		}
	
		for ( int i = 0; i < ott.size(); i++ ) {
			adminContentsService.adminMovieCreateOTTList(movieVo.getId(), ott.get(i));
		}
	
		for ( int i = 0; i < gallery.size(); i++ ) {
			adminContentsService.adminMovieCreateGalleryList(movieVo.getId(), gallery.get(i));
		}
	
		for ( int i = 0; i < trailer.size(); i++ ) {
			adminContentsService.adminMovieCreateTrailerList(movieVo.getId(), trailer.get(i));
		}
		
		return "redirect:/admin/3_contents/movie_list";
	}
	
	// 컨텐츠(영화) 새로 작성하기페이지 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// 컨텐츠(영화) 아티스트 검색하기 ajax ---------------------------------------------------------------------------------------------------------------------------------------------------------------
	@PostMapping("/admin/3_contents/admin_artist_search")
	@ResponseBody
	public ResponseEntity<?> admin_artist_search(Model model, @RequestParam String searchName, @RequestParam String searchJob) {
		
		System.out.println("artistJob : " + searchJob);
		System.out.println("artistName : " + searchName);

		List<Object> responseData = new ArrayList<>();
		
		if ( searchJob.equals("감독") ) {
			movieDirectorVo = adminContentsService.adminDirectorPull(searchName);
			if ( movieDirectorVo != null ) {
				responseData.add(movieDirectorVo);
			}
			System.out.println("받아온 director : " + movieDirectorVo.getDirector_name());
		} else {
			movieActorVo = adminContentsService.adminActorPull(searchName);
			if ( movieActorVo != null ) {
				responseData.add(movieActorVo);
			}
			System.out.println("받아온 actor : " + movieActorVo.getActor_name());
		}
		
		return ResponseEntity.ok(responseData);
	}
	
	// 컨텐츠(영화) 아티스트 검색하기 ajax ---------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	// 컨텐츠(영화) 수정하기페이지 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/3_contents/movie_modify")
	public String movie_modify(Model model, @RequestParam String id) {
		
		movieVo = adminContentsService.adminContentsView(id);
		List<MovieDirectorVo> adminDirectorView = adminContentsService.adminDirectorView(id);
		List<MovieActorVo> adminActorView = adminContentsService.adminActorView(id);
		List<MovieCountryVo> adminCountryView = adminContentsService.adminCountryView(id);
		List<MovieGenreVo> adminGenreView = adminContentsService.adminGenreView(id);
		List<MovieGalleryTrailerVo> adminGalleryView = adminContentsService.adminGalleryView(id);
		List<MovieGalleryTrailerVo> adminTrailerView = adminContentsService.adminTrailerView(id);
		List<MovieOttVo> adminOttView = adminContentsService.adminOttView(id);
		
		if ( movieVo != null ) { model.addAttribute("movieVo", movieVo); }
		if ( adminDirectorView != null ) { model.addAttribute("adminDirectorView", adminDirectorView); }
		if ( adminActorView != null ) { model.addAttribute("adminActorView", adminActorView); }
		if ( adminCountryView != null ) { model.addAttribute("adminCountryView", adminCountryView); }
		if ( adminGenreView != null ) { model.addAttribute("adminGenreView", adminGenreView); }
		if ( adminGalleryView != null ) { model.addAttribute("adminGalleryView", adminGalleryView); }
		if ( adminTrailerView != null ) { model.addAttribute("adminTrailerView", adminTrailerView); }
		if ( adminOttView != null ) { model.addAttribute("adminOttView", adminOttView); }
		
		return "admin/3_contents/movie_modify";
	}
	
	@RequestMapping("admin/3_contents/movie_modify")
	public String movie_modify(Model model, MovieVo movieVo, @RequestParam String name_kor, @RequestParam String genre_kor, @RequestParam String director_name, @RequestParam String actor_name,
			@RequestParam String ott_id, @RequestParam String movie_gallery_url, @RequestParam String movie_trailer_url) {
		
		System.out.println("movieVo_id : " + movieVo.getId());
		System.out.println("name_kor : " + name_kor);
		System.out.println("genre_kor : " + genre_kor);
		System.out.println("director_name : " + director_name);
		System.out.println("actor_name : " + actor_name);
		System.out.println("ott_id : " + ott_id);
		System.out.println("movie_gallery_url : " + movie_gallery_url);
		System.out.println("movie_trailer_url : " + movie_trailer_url);
		
		int movie_running_time = (Integer)movieVo.getMovie_running_time();
		
		String movie_grade = "";
		if ( movieVo.getMovie_grade().equals("all") ) { movie_grade = "전체 관람가"; }
		else if ( movieVo.getMovie_grade().equals("U12") ) { movie_grade = "12세 관람가"; }
		else if ( movieVo.getMovie_grade().equals("U15") ) { movie_grade = "15세 관람가"; }
		else if ( movieVo.getMovie_grade().equals("U16") ) { movie_grade = "청소년 관람불가"; }
		else if ( movieVo.getMovie_grade().equals("19over") ) { movie_grade = "제한 상영가"; }
		
		if ( movie_gallery_url.endsWith(",") ) { movie_gallery_url = movie_gallery_url.substring( 0, movie_gallery_url.length() - 1 ); }
		if ( movie_trailer_url.endsWith(",") ) { movie_trailer_url = movie_trailer_url.substring( 0, movie_trailer_url.length() - 1 ); }
		
		int result = adminContentsService.adminMovieModify(movieVo.getId(), movieVo.getMovie_kor_title(), movieVo.getMovie_original_title(), movieVo.getMovie_release_date(), movie_running_time, movie_grade
				, movieVo.getMovie_desc(), movieVo.getMovie_post_url(), movieVo.getBackground_post_url());
		if ( result == 1 ) { System.out.println("MOVIE_TABLE 정보수정 결과 : " + result); }

		List<String> country = new ArrayList<>();
		String[] countryArray = null;
		if ( name_kor.contains(",") ) {
			countryArray = name_kor.split(",");
			country.addAll(Arrays.asList(countryArray));
		} else {
			country.add(name_kor);
		}
		
		List<String> genre = new ArrayList<>();
		String[] genreArray = null;
		if ( genre_kor.contains(",") ) {
			genreArray = genre_kor.split(",");
			genre.addAll(Arrays.asList(genreArray));
		} else {
			genre.add(genre_kor);
		}
		
		List<String> director = new ArrayList<>();
		String[] directorArray = null;
		if ( director_name.contains(",") ) {
			directorArray = genre_kor.split(",");
			director.addAll(Arrays.asList(directorArray));
		} else {
			director.add(director_name);
		}
		
		List<String> actor = new ArrayList<>();
		String[] actorArray = null;
		if ( actor_name.contains(",") ) {
			actorArray = actor_name.split(",");
			actor.addAll(Arrays.asList(actorArray));
		} else {
			actor.add(actor_name);
		}
		
		List<String> ott = new ArrayList<>();
		String[] ottArray = null;
		if ( ott_id.contains(",") ) {
			ottArray = ott_id.split(",");
			ott.addAll(Arrays.asList(ottArray));
		} else {
			ott.add(ott_id);
		}

		List<String> gallery = new ArrayList<>();
		String[] galleryArray = null;
		if ( movie_gallery_url.contains(",") ) {
			genreArray = movie_gallery_url.split(",");
			gallery.addAll(Arrays.asList(genreArray));
		} else {
			gallery.add(movie_gallery_url);
		}

		List<String> trailer = new ArrayList<>();
		String[] trailerArray = null;
		if ( movie_trailer_url.contains(",") ) {
			trailerArray = movie_trailer_url.split(",");
			trailer.addAll(Arrays.asList(trailerArray));
		} else {
			trailer.add(movie_trailer_url);
		}
		
		System.out.println("countryList : " + country);
		System.out.println("genreList : " + genre);
		System.out.println("directorList : " + director);
		System.out.println("actorList : " + actor);
		System.out.println("ottList : " + ott);
		System.out.println("galleryList : " + gallery);
		System.out.println("trailerList : " + trailer);
		
		adminContentsService.adminCountryDelete(movieVo.getId());
		adminContentsService.adminGenreDelete(movieVo.getId());
		adminContentsService.adminDirectorDelete(movieVo.getId());
		adminContentsService.adminActorDelete(movieVo.getId());
		adminContentsService.adminOttDelete(movieVo.getId());
		adminContentsService.adminGalleryDelete(movieVo.getId());
		adminContentsService.adminTrailerDelete(movieVo.getId());

		for ( int i = 0; i < country.size(); i++ ) {
			adminContentsService.adminMovieModifyCountryList(movieVo.getId(), country.get(i));
		}

		for ( int i = 0; i < genre.size(); i++ ) {
			adminContentsService.adminMovieModifyGenreList(movieVo.getId(), genre.get(i));
		}

		for ( int i = 0; i < director.size(); i++ ) {
			adminContentsService.adminMovieModifyDirectorList(movieVo.getId(), director.get(i));
		}
		
		for ( int i = 0; i < actor.size(); i++ ) {
			adminContentsService.adminMovieModifyActorList(movieVo.getId(), actor.get(i));
		}
	
		for ( int i = 0; i < ott.size(); i++ ) {
			adminContentsService.adminMovieModifyOTTList(movieVo.getId(), ott.get(i));
		}
	
		for ( int i = 0; i < gallery.size(); i++ ) {
			adminContentsService.adminMovieModifyGalleryList(movieVo.getId(), gallery.get(i));
		}
	
		for ( int i = 0; i < trailer.size(); i++ ) {
			adminContentsService.adminMovieModifyTrailerList(movieVo.getId(), trailer.get(i));
		}
		
		return "redirect:/admin/3_contents/movie_list";
	}
	
	// 컨텐츠(영화) 수정하기페이지 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
}
