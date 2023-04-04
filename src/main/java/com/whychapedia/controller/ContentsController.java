package com.whychapedia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.MovieService;
import com.whychapedia.vo.MovieVo;

@Controller
public class ContentsController {
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	MovieVo movieVo;
	
	@GetMapping("contents/contents")
	public String contents(@RequestParam int id, Model model) {
		//영화 기본 정보 가져오기 (영화테이블에서)
		System.out.println("-------------------start_영화 기본 정보-ContentsController--------------------------------");
		movieVo=movieService.selectOneMovie(id);
		System.out.println("해당 영화 한국 제목:"+movieVo.getMovie_kor_title());
		System.out.println("-------------------end_영화 기본 순-ContentsController--------------------------------"); 
		model.addAttribute("movieVo",movieVo);
		return "contents/contents";
	}
	
	@GetMapping("/contents/contents_info_page")
	public String contents_info_page(@RequestParam int movieId, Model model ) {
		//영화 기본 정보 가져오기 (영화테이블에서)
		System.out.println("-------------------start_contents_info_pageController--------------------------------");
		movieVo=movieService.selectOneMovie(movieId);
		model.addAttribute("movieVo",movieVo);
		System.out.println("-------------------end_contents_info_pageController--------------------------------"); 
		return "/contents/contents_info_page";
	}
	
	@RequestMapping("/contents/movieStarRate")
	@ResponseBody
	public String movieStarRate(int movie_id, int star_rate, Model model ) {
		System.out.println(movie_id);
		System.out.println(star_rate);
		return null;
	}
	
	
	
}
