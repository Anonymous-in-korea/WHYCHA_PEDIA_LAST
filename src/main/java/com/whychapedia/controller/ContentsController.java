package com.whychapedia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.mapper.StarRateMapper;
import com.whychapedia.service.MovieActorService;
import com.whychapedia.service.MovieCountryService;
import com.whychapedia.service.MovieDirectorService;
import com.whychapedia.service.MovieGalleryTrailerService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGalleryTrailerVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class ContentsController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	MovieGenreService movieGenreService;
	
	@Autowired
	MovieCountryService movieCountryService;
	
	@Autowired
	MovieActorService movieActorService;
	
	@Autowired
	MovieDirectorService movieDirectorService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieGalleryTrailerService movieGalleryTrailerService;
	
	@Autowired
	MovieVo movieVo;
	
	@Autowired
	MovieGenreVo movieGenre;
	
	@Autowired
	MovieCountryVo movieCountryVo;
	
	@Autowired
	MovieDirectorVo movieDirectorVo;
	
	@Autowired
	MovieActorVo movieActorVo;
	
	@Autowired
	StarRateVo starRateVo;
	
	@Autowired
	MovieGalleryTrailerVo movieGalleryTrailerVo;
	
	@Autowired
	MovieOttVo movieOttVo;
	
	@Autowired
	MovieOttService movieOttService;
	

	//영화 페이지
	@GetMapping("/contents/contents_SH")
	public String contents(@RequestParam int id, Model model) {
		
		//----------------------------------------해당 영화 정보
		System.out.println("-------------------start_영화 정보-Controller--------------------------------");
		//movie table 정보(VO) 
		movieVo=movieService.selectOneMovie(id);
		System.out.println("해당 영화 한국 제목:"+movieVo.getMovie_kor_title());
		model.addAttribute("movieVo",movieVo);
		
		//movie_genre 정보(LIST<VO>)
		List<MovieGenreVo> movieGenreVoList=movieGenreService.selectTheGenre(id);
		System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
		//장르 합쳐서 string으로 반환
		String genre=movieGenreService.genreListToString(movieGenreVoList);
		model.addAttribute("genre",genre);
		
		//movie_country 정보(LIST<VO>)
		List<MovieCountryVo> movieCountryVoList=movieCountryService.selectTheCountry(id);
		if(movieCountryVoList.size()!=0)System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
		//나라 합쳐서 string으로 반환
		String country=movieCountryService.countryListToString(movieCountryVoList);
		model.addAttribute("country",country);
		
		//movie_actor 정보(LIST<VO>)
		List<MovieActorVo> movieActorVoList=movieActorService.selectTheActor(id);
		if(movieActorVoList.size()!=0) System.out.println("해당 영화 배우 첫 번쨰:"+movieActorVoList.get(0).getActor_name());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		
		//movie_director 정보(LIST<VO>)
		List<MovieDirectorVo> movieDirectorVoList=movieDirectorService.selectTheDirector(id);
		if(movieDirectorVoList.size()!=0) System.out.println("해당 영화 감독 첫 번쨰:"+movieDirectorVoList.get(0).getDirector_name());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		
		//movieGallery 정보(LIST<VO>)
		List<MovieGalleryTrailerVo> movieGalleryVoList=movieGalleryTrailerService.selectTheGallery(id);
		if(movieGalleryVoList.size()!=0) System.out.println("해당 겔러리 첫 번쨰:"+movieGalleryVoList.get(0).getMovie_gallery_url());
		model.addAttribute("movieGalleryVoList",movieGalleryVoList);
		
		//movieTrailer 정보(LIST<VO>) 
		List<MovieGalleryTrailerVo> movieTrailerVoList=movieGalleryTrailerService.selectTheTrailer(id);
		if(movieTrailerVoList.size()!=0) System.out.println("해당 트레일러 첫 번쨰:"+movieTrailerVoList.get(0).getMovie_gallery_url());
		model.addAttribute("movieTrailerVoList",movieTrailerVoList);
		
		//movieOtt 정보(<LIST<VO>)
		List<MovieOttVo> movieOttVoList=movieOttService.selectTheOtt(id);
		if(movieOttVoList.size()!=0) System.out.println("해당 ott 첫 번쨰:"+movieOttVoList.get(0).getProvider_name());
		model.addAttribute("movieOttVoList",movieOttVoList);
		
		//------------------------------------------해당 영화 정보
		
		
		
		//------------------------------------------나의 별점/코멘트 정보 
		System.out.println("-------------------start_나의 별점/코멘트 정보-Controller--------------------------------");
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int user_id = sessionId.intValue();
		
		int my_star_rate=starRateService.selectMyStarRate(user_id,id);
		model.addAttribute("my_star_rate",my_star_rate);
		System.out.println("-------------------end_나의 별점/코멘트 정보-Controller--------------------------------");
		//------------------------------------------나의 별점/코멘트 정보 
		
		
		return "/contents/contents_SH";
	}
	
	
	//영화 detail 더보기 
	@GetMapping("/contents/contents_info_page")
	public String contents_info_page(@RequestParam int movieId, Model model ) {
		System.out.println("-------------------start_contents_info_pageController--------------------------------");
		//영화테이블 정보
		movieVo=movieService.selectOneMovie(movieId);
		model.addAttribute("movieVo",movieVo);
		//장르정보
		List<MovieGenreVo> movieGenreVoList=movieGenreService.selectTheGenre(movieId);
		System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
		String genre=movieGenreService.genreListToString(movieGenreVoList);
		model.addAttribute("genre",genre);
		//나라정보
		List<MovieCountryVo> movieCountryVoList=movieCountryService.selectTheCountry(movieId);
		if(movieCountryVoList.size()!=0)System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
		String country=movieCountryService.countryListToString(movieCountryVoList);
		model.addAttribute("country",country);
		System.out.println("-------------------end_contents_info_pageController--------------------------------"); 
		return "/contents/contents_info_page";
	}
	
	
	
	
	
	
	//영화 별점 넣기 (ajax)
	@RequestMapping("/contents/movieStarRate")
	@ResponseBody
	public String movieStarRate(int movie_id, int star_rate, Model model ) {
		System.out.println("-------------------start_movieStarRateController--------------------------------");
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int user_id = sessionId.intValue();
		System.out.println("user_id:"+user_id);
		System.out.println("movie_id:"+movie_id);
		System.out.println("star_rate:"+star_rate);
		if(star_rate!=0)starRateService.insertStarRate(user_id,movie_id,star_rate);
		else starRateService.deleteStarRate(user_id,movie_id);
		System.out.println("-------------------end_movieStarRateController--------------------------------"); 
		return null;
	}
	
	
	
}
