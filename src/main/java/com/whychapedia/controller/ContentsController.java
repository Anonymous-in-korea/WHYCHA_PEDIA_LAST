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

import com.whychapedia.service.MovieActorService;
import com.whychapedia.service.MovieCountryService;
import com.whychapedia.service.MovieDirectorService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieService;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieVo;

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
	MovieVo movieVo;
	
	@Autowired
	MovieGenreVo movieGenre;
	
	@Autowired
	MovieCountryVo movieCountryVo;
	
	@Autowired
	MovieDirectorVo movieDirectorVo;
	
	@Autowired
	MovieActorVo movieActorVo;
	

	//영화 기본 정보 가져오기 (영화테이블에서)
	@GetMapping("/contents/contents_SH")
	public String contents(@RequestParam int id, Model model) {
		System.out.println("-------------------start_영화 기본 정보-ContentsController--------------------------------");
		//movie table 정보(VO) 
		movieVo=movieService.selectOneMovie(id);
		System.out.println("해당 영화 한국 제목:"+movieVo.getMovie_kor_title());
		model.addAttribute("movieVo",movieVo);
		//movie_genre 정보(LIST<VO>)
		List<MovieGenreVo> movieGenreVoList=movieGenreService.selectTheGenre(id);
		System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
		model.addAttribute("movieGenreVoList",movieGenreVoList);
		//movie_country 정보(LIST<VO>)
		List<MovieCountryVo> movieCountryVoList=movieCountryService.selectTheCountry(id);
		if(movieCountryVoList.size()!=0)System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		//movie_actor 정보(LIST<VO>)
		List<MovieActorVo> movieActorVoList=movieActorService.selectTheActor(id);
		if(movieActorVoList.size()!=0) System.out.println("해당 영화 배우 첫 번쨰:"+movieActorVoList.get(0).getActor_name());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		//movie_actor 정보(LIST<VO>)
		List<MovieDirectorVo> movieDirectorVoList=movieDirectorService.selectTheDirector(id);
		if(movieDirectorVoList.size()!=0) System.out.println("해당 영화 감독 첫 번쨰:"+movieDirectorVoList.get(0).getDirector_name());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		
		System.out.println("-------------------end_영화 기본 순-ContentsController--------------------------------"); 
		return "/contents/contents_SH";
	}
	
	
	//영화 디테일 정보 가져오기 (영화테이블에서)
	@GetMapping("/contents/contents_info_page")
	public String contents_info_page(@RequestParam int movieId, Model model ) {
		System.out.println("-------------------start_contents_info_pageController--------------------------------");
		movieVo=movieService.selectOneMovie(movieId);
		model.addAttribute("movieVo",movieVo);
		System.out.println("-------------------end_contents_info_pageController--------------------------------"); 
		return "/contents/contents_info_page";
	}
	
	
	
	
	
	
	//영화 별점 넣기 (ajax)
	@RequestMapping("/contents/movieStarRate")
	@ResponseBody
	public String movieStarRate(int movie_id, int star_rate, Model model ) {
		System.out.println("-------------------start_movieStarRateController--------------------------------");
		int user_id = (int) session.getAttribute("sessionId");
		System.out.println("user_id:"+user_id);
		System.out.println("movie_id:"+movie_id);
		System.out.println("star_rate:"+star_rate);
		
		
		System.out.println("-------------------end_movieStarRateController--------------------------------"); 
		return null;
	}
	
	
	
}
