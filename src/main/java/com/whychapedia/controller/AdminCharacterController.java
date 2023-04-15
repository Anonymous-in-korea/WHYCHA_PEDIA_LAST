package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AdminArtistService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;

@Controller
public class AdminCharacterController {

	@Autowired
	AdminArtistService adminArtistService;
	@Autowired
	ArtistVo artistVo;
	
	
	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/5_character/director_manage")
	public String director_manage(Model model) {
		
		List<MovieDirectorVo> directorVo = adminArtistService.directorSelectAll();
		if ( directorVo != null ) {
			model.addAttribute("directorVo", directorVo);
		}
		
		return "admin/5_character/director_manage";
	}
	
	@GetMapping("admin/5_character/actor_manage")
	public String actor_manage(Model model) {
		
		List<MovieActorVo> actorVo = adminArtistService.actorSelectAll();
		if ( actorVo != null ) {
			model.addAttribute("actorVo", actorVo);
		}
		
		return "admin/5_character/actor_manage";
	}
	// ARTIST_LIST -----------------------------------------------------------------------------------------------------------------------------------
	
	
	
//	@GetMapping("admin/5_character/character_detail")
//	public String character_detail(Model model, @RequestParam(defaultValue = "0") String id) {
//		
//		int director_id = Integer.parseInt(id);
//		int actor_id = Integer.parseInt(id);
//		
//		ArtistVo artistVo;
//		if ( actor_id == 0 ) {
//			artistVo = adminArtistService.directorDetailView(director_id);
//			model.addAttribute("director_id", artistVo.getId());
//		} else {
//			artistVo = adminArtistService.actorDetailView(actor_id);
//			model.addAttribute("actor_id", artistVo.getId());
//		}
//		
//		if ( artistVo != null ) {
//			model.addAttribute("artistVo", artistVo);
//		}
//		
//		return "admin/5_character/character_detail";
//	}
	
	
	
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/5_character/character_input")
	public String character_input() {
		return "admin/5_character/character_input";
	}
	@PostMapping("admin/5_character/character_input")
	public String character_input(Model model, @RequestParam String profile, @RequestParam String name, @RequestParam String table_name) {
		
		String director_post_url = "";
		String director_name = "";
		String actor_post_url = "";
		String actor_name = "";
		if ( table_name.equals("director") ) {
			director_post_url = profile;
			director_name = name;
			adminArtistService.directorInput(director_post_url, director_name);
			return "redirect:/admin/5_character/director_manage";
		} else {
			actor_post_url = profile;
			actor_name = name;
			adminArtistService.actorInput(actor_post_url, actor_name);
			return "redirect:/admin/5_character/actor_manage";
		}
		
	}
	// ARTIST_CREATE -----------------------------------------------------------------------------------------------------------------------------------

	
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------
	@GetMapping("admin/5_character/character_modify_director")
	public String character_modify_director(Model model, @RequestParam int id) {

		System.out.println("director_id : " + id);
		
		artistVo = adminArtistService.directorDetailView(id);
		model.addAttribute("artistVo", artistVo);
		
		if ( artistVo != null ) {
			model.addAttribute("artistVo", artistVo);
		}
		
		return "admin/5_character/character_modify";
	}
	@GetMapping("admin/5_character/character_modify_actor")
	public String character_modify_actor(Model model, @RequestParam int id) {
		
		System.out.println("actor_id : " + id);
		
		artistVo = adminArtistService.actorDetailView(id);
		model.addAttribute("artistVo", artistVo);
		
		if ( artistVo != null ) {
			model.addAttribute("artistVo", artistVo);
		}
		
		return "admin/5_character/character_modify";
	}
	@PostMapping("admin/5_character/character_modify")
	public String character_modify(Model model, @RequestParam int id, @RequestParam(defaultValue = "") String director_post_url, @RequestParam(defaultValue = "") String director_name,
			@RequestParam(defaultValue = "") String actor_post_url, @RequestParam(defaultValue = "") String actor_name) {
		
		if ( !director_post_url.equals("") ) {
			adminArtistService.directorModify(id, director_post_url, director_name);
			return "redirect:/admin/5_character/director_manage";
		} else {
			adminArtistService.actorModify(id, actor_post_url, actor_name);
			return "redirect:/admin/5_character/actor_manage";
		}
	}
	// ARTIST_MODIFY -----------------------------------------------------------------------------------------------------------------------------------
	
}
