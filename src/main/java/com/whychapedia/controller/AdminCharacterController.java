package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.whychapedia.service.AdminArtistService;
import com.whychapedia.vo.ArtistVo;

@Controller
public class AdminCharacterController {

	@Autowired
	ArtistVo artistVo;
	@Autowired
	AdminArtistService adminArtistService;
	
	
	
	@GetMapping("admin/5_character/director_manage")
	public String director_manage(Model model) {
		
		List<ArtistVo> directorVo = adminArtistService.directorSelectAll();
		if ( directorVo != null ) {
			model.addAttribute("directorVo", directorVo);
		}
		
		return "admin/5_character/director_manage";
	}
	
	@GetMapping("admin/5_character/actor_manage")
	public String actor_manage(Model model) {
		
		List<ArtistVo> actorVo = adminArtistService.actorSelectAll();
		if ( actorVo != null ) {
			model.addAttribute("actorVo", actorVo);
		}
		
		return "admin/5_character/actor_manage";
	}
	

	@GetMapping("admin/5_character/character_input")
	public String character_input() {
		return "admin/5_character/character_input";
	}

	@GetMapping("admin/5_character/character_detail")
	public String character_detail() {
		return "admin/5_character/character_detail";
	}

	@GetMapping("admin/5_character/character_modify")
	public String character_modify() {
		return "admin/5_character/character_modify";
	}
	
}
