package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class FrontController {
	
	@Autowired
	MovieService movieService;
	
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieVo movieVo;

	@Autowired
	StarRateVo starRateVO;
	
	
	@GetMapping("/")
	public String index(Model model) {
		//별점 높은 순 영화
		System.out.println("-------------------start_별점 높은 순-controller--------------------------------");
		List<Integer> starRateTop10MovieIDList=starRateService.selectStarTop10(10);
		List<MovieVo> starTop10List=movieService.selectTop10All(starRateTop10MovieIDList);
		System.out.println("index(controller)"+starTop10List.get(0).getMovie_kor_title());
		model.addAttribute("starTop10List", starTop10List);
		System.out.println("-------------------end_별점 높은 순-controller--------------------------------"); 
		
		//
		return "index_GC_prac";
	}
	
}
