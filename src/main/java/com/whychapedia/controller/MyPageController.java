package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.whychapedia.service.ArtistService;
import com.whychapedia.service.LikeService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.LikeVo;

@Controller
public class MyPageController {
	
	@Autowired 
	LikeService likeService;
	@Autowired
	ArtistService artistService;
	
	
	@GetMapping("userPage_SY")
	public String userPage_SY(Model model) {
		//actor_id를 가지고오기
		List<LikeVo> actorLike_list = likeService.selectActor_like_id(6);
		System.out.println("selectActor_like_id_list_size :"+actorLike_list.size());
		model.addAttribute("actorLike_list",actorLike_list);
		
		//director_id 가지고오기
		List<LikeVo> directorLike_list = likeService.selectDirector_like_id(6);
		System.out.println("selectDirector_like_id_list_size :"+directorLike_list.size());
		model.addAttribute("directorLike_list",directorLike_list);
				
		return "userPage_SY";
	}
	
	@GetMapping("myPage/my_analysis_HY")
	public String my_analysis_HY() {
		return "myPage/my_analysis_HY";
	}
	
	@GetMapping("myPage/actor_director_like_SY")
	public String actor_director_like(Model model) {
		//actor_id를 가지고오기
		List<LikeVo> actorLike_list = likeService.selectActor_like_id(6);
		System.out.println("selectActor_like_id_list_size :"+actorLike_list.size());
		model.addAttribute("actorLike_list",actorLike_list);
		
		//해당 actor_id의 actor_name과 actor_post_url가져오기
		List<ArtistVo> actor_list = artistService.selectActorAll(actorLike_list);
		System.out.println("selectActor_list_size"+actor_list.size());
		model.addAttribute("actor_list",actor_list);
		
		
		//director_id 가지고오기
		List<LikeVo> directorLike_list = likeService.selectDirector_like_id(6);
		System.out.println("selectDirector_like_id_list_size :"+directorLike_list.size());
		model.addAttribute("directorLike_list",directorLike_list);
		
		//해당 director_id의 director_name과 director_post_url가져오기
		List<ArtistVo> director_list = artistService.selectDirectorAll(directorLike_list);
		System.out.println("selectDirector_list_size"+director_list.size());
		model.addAttribute("director_list",director_list);

		
		return "myPage/actor_director_like_SY";
	}

	
	
	
}