package com.whychapedia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.whychapedia.mapper.MovieCollectionMapper;
import com.whychapedia.service.ArtistService;
import com.whychapedia.service.CollectionService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieCollectionService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class FrontController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberService memberService;
	
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
	CollectionService collectionService;
	
	@Autowired
	MovieCollectionService movieCollectionService;
	
	@Autowired
	StarRateVo starRateVo;
	
	@Autowired
	MovieVo movieVo;
	
	@Autowired
	MemberVo memberVo;

	@Autowired
	StarRateVo starRateVO;
	
	@Autowired
	MovieOttVo movieOttVo;
	
	@Autowired
	CollectionVo collectionVo;
	
	@Autowired
	MovieCollectionVo movieCollectionVo;
	
	@GetMapping("/")
	public String index(Model model) {
		//별점 높은 순 영화
		System.out.println("-------------------start_별점 높은 순-controller--------------------------------");
		List<Integer> starRateTop10MovieIDList=starRateService.selectStarTop(10);
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
		
		//평균 별점이 높은 영화 
		System.out.println("-------------------Start_평균 평점-controller--------------------------------");
		List<MovieVo> RateHighMovieList=movieService.selectTopRateMovieList(18); // 평점 높은 영화 18개 들고오기
		model.addAttribute("RateHighMovieList", RateHighMovieList);
		System.out.println("index(controller):RateHighMovieList _ RateHighMovieList"+RateHighMovieList.get(0).getMovie_kor_title());
		System.out.println("-------------------end_평균 평점-controller--------------------------------");
		
		//와이챠피디아 컬렉션
		System.out.println("-------------------Start_와이챠피디아 컬렉션 평점-controller--------------------------------");
		//user3번의 collectionVList 가져오기
		List<CollectionVo> WhychaCollectionVoList=collectionService.selectCollectionList(3);
		System.out.println("index(controller):WhychaCollectionVoList size()"+WhychaCollectionVoList.size());
		model.addAttribute("WhychaCollectionVoList", WhychaCollectionVoList);
		List<MovieCollectionVo> WhychaMovieCollectionVoList=movieCollectionService.selectCollectionVoList(WhychaCollectionVoList);
		System.out.println("index(controller):WhychaMovieCollectionVoList size()"+WhychaMovieCollectionVoList.size());
		//collection 중에서도 4개 영화만 들고오기
		List<MovieCollectionVo> WhychaMovieCollectionVoPartList=movieCollectionService.selectCollectionVoPartList(WhychaMovieCollectionVoList,4);
		model.addAttribute("WhychaMovieCollectionVoPartList", WhychaMovieCollectionVoPartList);
		System.out.println("index(controller):WhychaMovieCollectionVoList size()"+WhychaMovieCollectionVoPartList.size());
		//해당 user의 collection 속에 담긴 movie 중 중복없이 가져오기
		List<MovieVo> WhychamovieInCollectionVoList=movieService.selectMovieInCollectionList(WhychaMovieCollectionVoPartList);									
		model.addAttribute("WhychamovieInCollectionVoList", WhychamovieInCollectionVoList);
		System.out.println("index(controller):WhychaMovieCollectionVoList size()"+WhychamovieInCollectionVoList.size());
		System.out.println("-------------------end_와이챠피디아 컬렉션 평점-controller--------------------------------");
		model.addAttribute("user_id", 3);
		 
		
		
		return "index_SH";
	}
	

	
}
