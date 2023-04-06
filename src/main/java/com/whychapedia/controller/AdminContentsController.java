package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whychapedia.service.AdminContentsService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.QuestionListVo;

@Controller
public class AdminContentsController {

	@Autowired
	MovieVo movieVo;
	@Autowired
	AdminContentsService adminContentsService;
	
	@GetMapping("admin/3_contents/movie_list")
	public String movie(Model model) {
		
		int result = 0;
		List<MovieVo> adminContentsList = adminContentsService.adminContentsList();
		List<ArtistVo> adminArtistList = adminContentsService.adminArtistList();
		if ( adminContentsList != null ) {
			model.addAttribute("adminContentsList", adminContentsList);
			result = 1;
		}
		model.addAttribute("result", result);
		
		return "admin/3_contents/movie_list";
	}

	@GetMapping("admin/3_contents/movie_view")
	public String movie_view() {
		return "admin/3_contents/movie_view";
	}

	@GetMapping("admin/3_contents/movie_write")
	public String movie_write() {
		return "admin/3_contents/movie_write";
	}
	@RequestMapping("DirectorActorPull")
	public String DirectorActorPull() {
		return "";
	}

	@GetMapping("admin/3_contents/movie_modify")
	public String movie_modify() {
		return "admin/3_contents/movie_modify";
	}
	
}
