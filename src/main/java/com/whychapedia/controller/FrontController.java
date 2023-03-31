package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.whychapedia.service.ArtistService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class FrontController {
	
	@Autowired
	MovieService movieService;

	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieOttService movieOttService;
	
	@Autowired
	LikeService likeService;
	
	@Autowired
	ArtistService artistService;
	
	@Autowired
	MovieVo movieVo;

	@Autowired
	StarRateVo starRateVO;
	
	@Autowired
	MovieOttVo movieOttVo;
	
	
	
	@GetMapping("/")
	public String index(Model model) {
		//별점 높은 순 영화
		System.out.println("-------------------start_별점 높은 순-controller--------------------------------");
		List<Integer> starRateTop10MovieIDList=starRateService.selectStarTop10(10);
		List<MovieVo> starTop10List=movieService.selectTopAllMovie(starRateTop10MovieIDList);
		System.out.println("index(controller):star"+starTop10List.get(0).getMovie_kor_title());
		model.addAttribute("starTop10List", starTop10List);
		System.out.println("-------------------end_별점 높은 순-controller--------------------------------"); 
		
		//왓챠top10 영화
		System.out.println("-------------------start_왓챠-controller--------------------------------");
		List<Integer> whatchaTop10MovieIDList=movieOttService.selectOttTop(1,10); //왓챠 고유 번호 1번, 들고올 영화 개수 10개
		List<MovieVo> whatchaTop10List=movieService.selectTopAllMovie(whatchaTop10MovieIDList);
		System.out.println("index(controller):whatcha"+whatchaTop10List.get(0).getMovie_kor_title());
		model.addAttribute("whatchaTop10List", whatchaTop10List);
		System.out.println("-------------------end_왓챠-controller--------------------------------");
		
		
		//감독 영화
		System.out.println("-------------------start_감독-controller--------------------------------");
		List<Integer> directorLikeTop=likeService.selectLikeTop(3); //좋아요 높은 감독 3명 가져오기
		int theDirectorId=likeService.theLike(directorLikeTop);
		List<MovieVo> directorMovieList=movieService.selectAllMovieofTheDirector(theDirectorId);
		System.out.println("index(controller):directorList"+directorMovieList.get(0).getMovie_kor_title());
		model.addAttribute("directorMovieList", directorMovieList);
		String directorName=artistService.selectDirectorName(theDirectorId);
		System.out.println("index(controller):directorName"+directorName);
		model.addAttribute("directorName", directorName);
		System.out.println("-------------------end_감독-controller--------------------------------");
		
		return "index_GC_prac";
	}
	
	@GetMapping("index_GC")
	public String index_GC() {
		return "index_GC";
	}
	
}
