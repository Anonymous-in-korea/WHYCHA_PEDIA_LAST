package com.whychapedia.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.ArtistService;
import com.whychapedia.service.CollectionArtistService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MovieActorService;
import com.whychapedia.service.MovieDirectorService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.CollectionArtistVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;


@Controller
public class PersonController {

	@Autowired 
	ArtistService artistService;
	@Autowired
	MovieService movieService;
	@Autowired
	MovieActorService movieActorService;
	@Autowired
	MovieDirectorService movieDirectorService;
	@Autowired
	MovieOttService movieOttService;
	@Autowired
	LikeService likeService;
	@Autowired
	MovieVo movieVo;
	@Autowired
	ArtistVo artistVo;
	@Autowired
	MovieActorVo movieActorVo;
	@Autowired
	MovieDirectorVo movieDirectorVo;
	@Autowired
	HttpSession session;
	@Autowired
	CollectionArtistService collectionArtistService;
	
	
	//해당 배우id로 배우 정보 가져오기
	@RequestMapping(method = RequestMethod.GET, value = "person/person_detail_ACTOR_HY")
	public String person_detail_HY( @RequestParam("actor_name") String actor_name,@RequestParam("id")int  id,
            					   @RequestParam("role") String role, Model model) {
		model.addAttribute("actor_name", actor_name);
	    model.addAttribute("id", id);
	    model.addAttribute("role", role);
	    ArtistVo actorPersonlist = artistService.selectActorOnelist(id);
	    model.addAttribute("actorPersonlist",actorPersonlist);
	    
	    List<MovieVo> actorPersonMovieList = movieService.selectActorPersonMovieAll(id);
	    model.addAttribute("actorPersonMovieList",actorPersonMovieList);
	    System.out.println("actorPersonMovieList_size : "+actorPersonMovieList.size());
	    System.out.println("actorPersonMovieList_movie_id : "+actorPersonMovieList.get(0).getId());
	    //해당 movie 의 actor_role받아오기
	    List<MovieActorVo> actorPersonMovieRolelist = movieActorService.selectActorPersonMovieRolelist(actorPersonMovieList,id);
	    model.addAttribute("actorPersonMovieRolelist : ",actorPersonMovieRolelist);
	    System.out.println("actorPersonMovieRolelist_size : "+actorPersonMovieRolelist.size());
	    
	    //해당배우가 출연한 영화리스트로 ott불러오기
	    List<MovieOttVo> actorMovieOTTList = movieOttService.selectActorPersonMovieOtt(actorPersonMovieList,id);
	    model.addAttribute("actorMovieOTTList",actorMovieOTTList);
	    
	    //해당 배우 좋아요 수  가져오기
  		int actorlikeCount = likeService.selectActorLikeList(id);
  		System.out.println("actorlikeCount : "+actorlikeCount);
  		model.addAttribute("actorlikeCount",actorlikeCount);
	    
	    
		return "person/person_detail_ACTOR_HY";
	}
	
	//해당 감독id로 감독 정보 가져오기
	@RequestMapping(method = RequestMethod.GET, value = "person/person_detail_DIRECTOR_HY")
	public String person_detail_HY2( @RequestParam("director_name") String director_name,@RequestParam("id")int  id,
			@RequestParam("role") String role, Model model) {
		model.addAttribute("director_name", director_name);
		model.addAttribute("id", id);
		model.addAttribute("role", role);
		ArtistVo directorPersonlist = artistService.selectDirectorOnelist(id);
		model.addAttribute("directorPersonlist",directorPersonlist);
		
		List<MovieVo> directorPersonMovieList = movieService.selectDirectorPersonMovieAll(id);
		model.addAttribute("directorPersonMovieList",directorPersonMovieList);
		System.out.println("directorPersonMovieListt_size : "+directorPersonMovieList.size());
		System.out.println("directorPersonMovieList_movie_id : "+directorPersonMovieList.get(0).getId());
		//해당 movie 의 actor_role받아오기
		List<MovieDirectorVo> directorPersonMovieRolelist = movieDirectorService.selectDirectorPersonMovieRolelist(directorPersonMovieList,id);
		model.addAttribute("directorPersonMovieRolelist : ",directorPersonMovieRolelist);
		System.out.println("directorPersonMovieRolelist_size : "+directorPersonMovieRolelist.size());
		
		//해당배우가 출연한 영화리스트로 ott불러오기
		List<MovieOttVo> directorMovieOTTList = movieOttService.selectDirectorPersonMovieOtt(directorPersonMovieList,id);
		model.addAttribute("directorMovieOTTList",directorMovieOTTList);
		System.out.println("directorMovieOTTList : "+directorMovieOTTList);
		//해당 감독 좋아요 수  가져오기
		int directorlikeCount = likeService.selectDirectorLikeList(id);
		System.out.println("directorlikeCount : "+directorlikeCount);
		model.addAttribute("directorlikeCount",directorlikeCount);

		
		//헤당 유저 아이디가 해당감독을 구독하는지 여부 체크하기
//		 boolean isCollectedDirector = collectionArtistService.checkDirectorCollected(user_id,id);//여기서 id는 director_id입니다.
//		 model.addAttribute("isCollectedDirector", isCollectedDirector);
//		 System.out.println("isCollectedDirector: "+isCollectedDirector);
		
		return "person/person_detail_DIRECTOR_HY";
	}
	 	//해당 감독 좋아요 추가
		@ResponseBody
		@PostMapping("/person/insertDirectorLike")
		public int director_like(Model model, @RequestParam("user_id") int user_id, @RequestParam("director_id") int director_id) {
			//좋아요 클릭했을때 추가하기
			int directorlikeresult= likeService.insertDirectorLike(user_id, director_id);
			//해당 감독 좋아요 수  가져오기
			int directorlikeCount = likeService.selectDirectorLikeList(director_id);
			System.out.println("directorlikeCount : "+directorlikeCount);
			model.addAttribute("directorlikeCount",directorlikeCount);
			return directorlikeCount;
		}
		
		//해당 감독 좋아요 삭제
		@ResponseBody
		@PostMapping("/person/deleteDirectorLike")
		public int director_like_delete(Model model, @RequestParam("user_id") int user_id, @RequestParam("director_id") int director_id) {
			//좋아요 다시 클릭했을때 좋아요 삭제하기
			int directorlikeDeleteresult= likeService.deleteDirectorLike(user_id, director_id);
			//해당 감독 좋아요 수  가져오기
			int directorlikeCount = likeService.selectDirectorLikeList(director_id);
			System.out.println("directorlikeCount : "+directorlikeCount);
			model.addAttribute("directorlikeCount",directorlikeCount);
			return directorlikeCount;
		}
		
		//해당 유저가 해당 감독 컬렉션 추가했는지 체크
		@ResponseBody
		@GetMapping("/person/checkCollectionDirector")
		public boolean checkCollectionDirector(Model model, @RequestParam("user_id") int user_id, @RequestParam("director_id") int director_id) {
			boolean isCollected = collectionArtistService.checkCollectionDirector(user_id, director_id);
			model.addAttribute("isCollected", isCollected);
			 if (isCollected) {
			        // 이미 구독을 누른 경우, 삭제 로직 호출
			        int collectionDirectorDeleteResult = collectionArtistService.deleteCollectionDirector(user_id, director_id);
			    	System.out.println("collectionDirectorDeleteResult : "+collectionDirectorDeleteResult);
					model.addAttribute("collectionDirectorDeleteResult",collectionDirectorDeleteResult);
			        return isCollected;
			    } else {
			        // 구독 추가 로직 호출
			        int collectionDirectorResult = collectionArtistService.insertCollectionDirector(user_id, director_id);
			    	System.out.println("collectionDirectorResult : "+collectionDirectorResult);
					model.addAttribute("collectionDirectorDeleteResult",collectionDirectorResult);					
				    return isCollected;
			    }
		}
		
		//해당 감독 컬렉션 추가
		@ResponseBody
		@PostMapping("/person/insertCollectionDirector")
		public int collection_director_add(Model model, @RequestParam("user_id") int user_id, @RequestParam("director_id") int director_id) {
			//컬렉션버튼 클릭했을때 구독추가하기
			int collectionDirectorResult= collectionArtistService.insertCollectionDirector(user_id, director_id);
			System.out.println("collectionDirectorResult : "+collectionDirectorResult);
			model.addAttribute("collectionDirectorResult",collectionDirectorResult);
			
			return collectionDirectorResult;
		}
		
		//해당 감독 컬렉션 삭제
		@ResponseBody
		@PostMapping("/person/deleteCollectionDirector")
		public int collection_director_delete(Model model, @RequestParam("user_id") int user_id, @RequestParam("director_id") int director_id) {
			//컬렉션버튼 클릭했을때 구독삭제하기
			int collectionDirectorDeleteResult= collectionArtistService.deleteCollectionDirector(user_id, director_id);
			System.out.println("collectionDirectorDeleteResult : "+collectionDirectorDeleteResult);
			model.addAttribute("collectionDirectorDeleteResult",collectionDirectorDeleteResult);
			
			return collectionDirectorDeleteResult;
		}
		
		/*=====================================================================================================================================*/
		//해당 배우 좋아요 추가
		@ResponseBody
		@PostMapping("/person/insertActorLike")
		public int actor_like(Model model, @RequestParam("user_id") int user_id, @RequestParam("actor_id") int actor_id) {
			  // 중복 체크 로직
		    boolean isLiked = likeService.checkActorLike(user_id, actor_id);
		    System.out.println("isLiked : "+isLiked);
		    model.addAttribute("isLiked",isLiked);
		    if (isLiked) {
		        // 이미 좋아요를 누른 경우, 삭제 로직 호출
		        int actorlikeDeleteresult = likeService.deleteActorLike(user_id, actor_id);
		        int actorlikeCount = likeService.selectActorLikeList(actor_id);
				System.out.println("actorlikeCount : "+actorlikeCount);
				model.addAttribute("actorlikeCount",actorlikeCount);
		        
		        return actorlikeCount;
		    } else {
		        // 좋아요 추가 로직 호출
		        int actorlikeresult = likeService.insertActorLike(user_id, actor_id);
		      //해당 감독 좋아요 수  가져오기
				int actorlikeCount = likeService.selectActorLikeList(actor_id);
				System.out.println("actorlikeCount : "+actorlikeCount);
				model.addAttribute("actorlikeCount",actorlikeCount);
		        return actorlikeCount;
		    }

	}
		
		//해당 배우 좋아요 삭제
		@ResponseBody
		@PostMapping("/person/deleteActorLike")
		public int actor_like_delete(Model model, @RequestParam("user_id") int user_id, @RequestParam("actor_id") int actor_id) {
			//좋아요 다시 클릭했을때 좋아요 삭제하기
			int actorlikeDeleteresult= likeService.deleteActorLike(user_id, actor_id);
			//해당 감독 좋아요 수  가져오기
			int actorlikeCount = likeService.selectActorLikeList(actor_id);
			System.out.println("actorlikeCount : "+actorlikeCount);
			model.addAttribute("actorlikeCount",actorlikeCount);
			return actorlikeCount;
		}
		
		
		//해당 배우 컬렉션 추가
		@ResponseBody
		@PostMapping("/person/insertCollectionActor")
		public int collection_Actor_add(Model model, @RequestParam("user_id") int user_id, @RequestParam("actor_id") int actor_id) {
			//컬렉션추가버튼 클릭했을때 추가하기
			int collectionActorResult= collectionArtistService.insertCollectionActor(user_id, actor_id);
			System.out.println("collectionActorResult : "+collectionActorResult);
			model.addAttribute("collectionActorResult",collectionActorResult);
			
			return collectionActorResult;
		}
		
		//해당 배우 컬렉션 삭제
		@ResponseBody
		@PostMapping("/person/deleteCollectionActor")
		public int collection_actor_delete(Model model, @RequestParam("user_id") int user_id, @RequestParam("actor_id") int actor_id) {
			//컬렉션추가버튼 다시 클릭했을때 삭제하기
			int collectionActorDeleteResult= collectionArtistService.deleteCollectionActor(user_id, actor_id);
			System.out.println("collectionActorDeleteResult : "+collectionActorDeleteResult);
			model.addAttribute("collectionActorDeleteResult",collectionActorDeleteResult);
			
			return collectionActorDeleteResult;
		}
	
	
	
	
	
	
}
