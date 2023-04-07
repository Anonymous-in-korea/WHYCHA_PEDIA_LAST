package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whychapedia.service.AdminContentsService;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieVo;

@Controller
public class AdminContentsController {

	@Autowired
	MovieVo movieVo;
	@Autowired
	MovieDirectorVo movieDirectorVo;
	@Autowired
	AdminContentsService adminContentsService;
	
	@GetMapping("admin/3_contents/movie_list")
	public String movie(Model model) {
		
		List<MovieVo> adminContents = adminContentsService.adminContents();
		if ( adminContents != null ) { model.addAttribute("adminContents", adminContents); }
		
		// director_name 가져오기
		List<MovieDirectorVo> adminDirector = new ArrayList<>();
		for ( int i = 0; i < adminContents.size(); i++ ) {
			movieDirectorVo = adminContentsService.adminDirector(adminContents.get(i).getId() );
			adminDirector.add( new MovieDirectorVo() );
		}
		List<MovieDirectorVo> adminDirectorName = new ArrayList<>();
		for ( int i = 0; i < adminDirector.size(); i++ ) {
			adminDirectorName = adminContentsService.adminDirectorName(adminDirector.get(i).getDirector_id());
		}
		System.out.println("디렉터 이름 갯수 : " + adminDirectorName.size());
		if ( adminDirectorName != null ) { model.addAttribute("adminDirectorName", adminDirectorName); }
		
		// actor_name 가져오기
		List<MovieActorVo> adminActor = null;
		for ( int i = 0; i < adminContents.size(); i++ ) {
			adminActor = adminContentsService.adminActor(adminContents.get(i).getId());
		}
		List<MovieActorVo> adminActorName = null;
		for ( int i = 0; i < adminActor.size(); i++ ) {
			adminActorName = adminContentsService.adminActorName(adminActor.get(i).getActor_id());
		}
		System.out.println("배우 이름 갯수 : " + adminActorName.size());
		
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
