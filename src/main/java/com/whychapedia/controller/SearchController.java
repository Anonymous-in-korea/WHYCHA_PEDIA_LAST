package com.whychapedia.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.ArtistService;
import com.whychapedia.service.MovieActorService;
import com.whychapedia.service.MovieDirectorService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;



@Controller
public class SearchController {
	


	@Autowired
	MovieActorService movieActorService;
	@Autowired
	MovieDirectorService movieDirectorService;

	
	
	@RequestMapping(method = RequestMethod.GET, value = "search/searchPerson_SY")
	public String searchPerson(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		//해당 actor_id의 actor_name과 actor_post_url가져오기
		List<MovieActorVo> actorSearchlist = movieActorService.selectSearchActorAll(searchKeyword);
		System.out.println("selectSearchActorAll_list_size"+actorSearchlist.size());
		model.addAttribute("actorSearchlist",actorSearchlist);
		
		//해당 director_id의 director_name과 director_post_url가져오기
		List<MovieDirectorVo> directorSearchlist = movieDirectorService.selectSearchDirectorAll(searchKeyword);
		System.out.println("selectSearchDirectorAll_list_size"+directorSearchlist.size());
		model.addAttribute("directorSearchlist",directorSearchlist);
		System.out.println(directorSearchlist);
		
		
		 return "search/searchPerson_SY";
	}

	  
	

}