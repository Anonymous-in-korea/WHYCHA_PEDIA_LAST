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
import com.whychapedia.vo.ArtistVo;



@Controller
public class SearchController {
	


	@Autowired 
	ArtistService artistService;

	
	
	@RequestMapping(method = RequestMethod.GET, value = "search/searchPerson")
	public String searchPerson(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		
		//해당 actor_id의 actor_name과 actor_post_url가져오기
		List<ArtistVo> actorSearchlist = artistService.selectSearchActorAll(searchKeyword);
		System.out.println("selectSearchActorAll_list_size"+actorSearchlist.size());
		model.addAttribute("actorSearchlist",actorSearchlist);
		
		//해당 actor_id의 actor_name과 actor_post_url가져오기
		List<ArtistVo> directorSearchlist = artistService.selectSearchDirectorAll(searchKeyword);
		System.out.println("selectSearchDirectorAll_list_size"+directorSearchlist.size());
		model.addAttribute("directorSearchlist",directorSearchlist);
		
		
		//"redirect:/search/searchPerson?searchKeyword=" + searchKeyword;
		 return "search/searchPerson";
	}

	  
	

}
