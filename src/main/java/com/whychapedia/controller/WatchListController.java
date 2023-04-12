package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.service.WatchListService;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;
import com.whychapedia.vo.WatchListVo;

@Controller
public class WatchListController {

	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	WatchListService watchListService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	MemberVo memberVo;
	
	@Autowired
	WatchListVo watchListVo;
	
	@Autowired
	StarRateVo starRateVo;
	

	//평가한 페이지
	@GetMapping("watchList/rated_SY")
	public String rated_SY(Model model) {
		//페이지 주인 @RequestParam int user_id
		int user_id=3;
		memberVo = memberService.selectOneMember(user_id);
		System.out.println(memberVo);
		//로그인 한 사람
		MemberVo loginVo=new MemberVo();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		
		//해당 유저의 평가한 작품 모두 가져오기
		List<MovieVo> movieStarRateList=movieService.selectMovieStarRate(user_id);
		
		//로그인 유저의 평가점수 가져오기
		List<StarRateVo> ratedList=new ArrayList<StarRateVo>();
		if(sessionId!=null) {
			int loginId = sessionId.intValue();
			loginVo=memberService.selectOneMember(loginId);
			if(movieStarRateList.size()!=0) {
				ratedList=starRateService.selectAllOfIsRated(loginId,movieStarRateList);
				movieStarRateList=movieService.insertStarRateInfo(movieStarRateList,ratedList);
				System.out.println("movieStarRateList"+movieStarRateList);
			}
		}
		
		model.addAttribute("memberVo", memberVo); //페이지 주인 
		model.addAttribute("movieStarRateList",movieStarRateList);//영화 모든 정보 + 개인 평가까지

		return "watchList/rated_SY";
	}
	
	//보는 중 페이지
	@GetMapping("/watchList/watching_SY")
	public String watching_SY(Model model) {
		//페이지 주인 @RequestParam int user_id
		int user_id=6;
		memberVo = memberService.selectOneMember(user_id);
		//로그인 한 사람
		MemberVo loginVo=new MemberVo();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		//해당 유저의 보는 작품 모두 가져오기
		List<MovieVo> movieWatchingList=movieService.selectMovieWatchList(1,user_id);
		//로그인 유저의 평가점수 가져오기
		List<StarRateVo> ratedList=new ArrayList<StarRateVo>();
			if(sessionId!=null) {
				int loginId = sessionId.intValue();
				loginVo=memberService.selectOneMember(loginId);
				if(movieWatchingList.size()!=0) {
					ratedList=starRateService.selectAllOfIsRated(loginId,movieWatchingList);
					movieWatchingList=movieService.insertStarRateInfo(movieWatchingList,ratedList);
					System.out.println("movieWatchingList"+movieWatchingList);
					}
				}
		
		model.addAttribute("memberVo", memberVo); //페이지 주인 
		model.addAttribute("movieWatchingList",movieWatchingList);//영화 모든 정보 + 개인 평가까지
		return "/watchList/watching_SY";
	}
	
	//보고싶은 페이지
	@GetMapping("watchList/wishWatch_SY")
	public String wishWatch_SY(Model model) {
		//페이지 주인 @RequestParam int user_id
		int user_id=6;
		memberVo = memberService.selectOneMember(user_id);
		//로그인 한 사람
		MemberVo loginVo=new MemberVo();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		//해당 유저의 보는 작품 모두 가져오기
		List<MovieVo> movieWishWatchList=movieService.selectMovieWatchList(0,user_id);
		//로그인 유저의 평가점수 가져오기
		List<StarRateVo> ratedList=new ArrayList<StarRateVo>();
			if(sessionId!=null) {
				int loginId = sessionId.intValue();
				loginVo=memberService.selectOneMember(loginId);
				if(movieWishWatchList.size()!=0) {
					ratedList=starRateService.selectAllOfIsRated(loginId,movieWishWatchList);
					movieWishWatchList=movieService.insertStarRateInfo(movieWishWatchList,ratedList);
					System.out.println("movieWishWatchList"+movieWishWatchList);
					}
				}
		model.addAttribute("memberVo", memberVo); //페이지 주인 
		model.addAttribute("movieWishWatchList",movieWishWatchList);//영화 모든 정보 + 개인 평가까지		
		return "watchList/wishWatch_SY";
	}
	
	//영화 보관함 전체 페이지(평가&보는중&보고싶은)
	@GetMapping("watchList/movieContainer_SY")
	public String movieContainer_SY(@RequestParam int user_id,Model model) {
		//페이지 주인 @RequestParam int user_id
		MemberVo memberVo = memberService.selectOneMember(user_id);
		System.out.println(memberVo);
		//로그인 한 사람
		MemberVo loginVo=new MemberVo();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		//평가한거 7개만 가져오기
		List<MovieVo> movieStarRateList=movieService.selectPartOfMovieStarRate(7,user_id);
		int starRateListSize=movieStarRateList.size();
		System.out.println("starRateListSize"+starRateListSize);
		//로그인 유저의 평가점수 가져오기
		List<StarRateVo> ratedList=new ArrayList<StarRateVo>();
		if(sessionId!=null) {
			int loginId = sessionId.intValue();
			loginVo=memberService.selectOneMember(loginId);
			if(movieStarRateList.size()!=0) {
				ratedList=starRateService.selectAllOfIsRated(loginId,movieStarRateList);
				movieStarRateList=movieService.insertStarRateInfo(movieStarRateList,ratedList);
				System.out.println("movieStarRateList"+movieStarRateList);
			}
		}
		//보는 중 개수 가져오기
		int watchingListSize=watchListService.selectCountWatchList(1,user_id);
		System.out.println("watchingListSize"+watchingListSize);
		//보고싶어요 개수 가져오기
		int wishWatchListSize=watchListService.selectCountWatchList(0,user_id);
		System.out.println("wishWatchListSize"+wishWatchListSize);
		
		
		model.addAttribute("memberVo", memberVo); //페이지 주인 
		model.addAttribute("starRateListSize", starRateListSize);//별점 개수
		model.addAttribute("watchingListSize", watchingListSize); //보는 중 개수
		model.addAttribute("wishWatchListSize", wishWatchListSize); //보고 싶은 개수
		model.addAttribute("movieStarRateList",movieStarRateList);//영화 모든 정보 + 개인 평가까지
		return "watchList/movieContainer_SY";
	}

}
