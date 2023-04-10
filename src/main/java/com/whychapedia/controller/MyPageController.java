package com.whychapedia.controller;

import java.nio.file.WatchService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.AnnouncementService;
import com.whychapedia.service.ArtistService;
import com.whychapedia.service.CollectionArtistService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieCountryService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.service.WatchListService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.CollectionArtistVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.StarRateVo;
import com.whychapedia.vo.WatchListVo;

@Controller
public class MyPageController {
	
	@Autowired
	HttpSession session;
	
	@Autowired 
	LikeService likeService;
	
	@Autowired
	ArtistService artistService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieCountryService movieCountryService;
	
	@Autowired
	MovieGenreService movieGenreService;
	
	@Autowired
	AnnouncementService announcementService;
	
	@Autowired
	WatchListService watchListService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	CollectionArtistService collectionArtistService;
	
	@Autowired
	CollectionArtistVo collectionArtistVo;
	
	@Autowired
	StarRateVo starRateVo;
	
	@Autowired
	MemberVo memberVo;
	
	@Autowired
	WatchListVo watchListVo;
	

	
	/*로그인 한 후 내 페이지 들어오기*/
	@GetMapping("myPage/myPage_SY")
	public String myPage_SY(Model model) {
		int user_id = (int)session.getAttribute("sessionId");
		//sessionId로 user1명 가져오기
		MemberVo memberVo = memberService.selectOneMember(user_id);
		model.addAttribute("memberVo",memberVo);
		//해당 유저가 구독하는 배우 id 전체 가져오기
		List<CollectionArtistVo> actorLike_list = collectionArtistService.selectActor_like_id(user_id);
	 	//System.out.println("selectActor_like_id_list_size :"+actorLike_list.size());
		model.addAttribute("actorLike_list",actorLike_list);
		
		//해당 유저가 구독하는 감독 id 전체 가져오기
		List<CollectionArtistVo> directorLike_list = collectionArtistService.selectDirector_like_id(user_id);
		//System.out.println("selectDirector_like_id_list_size :"+directorLike_list.size());
		model.addAttribute("directorLike_list",directorLike_list);
		
		//공지사항 가져오기
		Map<String, Object> map = announcementService.selectAnnouncementList();
		model.addAttribute("map",map);
		
		return "myPage/userPage_SY";
	}
	
	/*다른 사람 클릭해서 들어오기*/
	@GetMapping("myPage/userPage_SY")
	public String userPage_SY(Model model, @RequestParam int user_id) {
		MemberVo memberVo = memberService.selectOneMember(user_id);
		model.addAttribute("memberVo",memberVo);
		//actor_id를 가지고오기
		List<CollectionArtistVo> actorLike_list = collectionArtistService.selectActor_like_id(user_id);
		//System.out.println("selectActor_like_id_list_size :"+actorLike_list.size());
		model.addAttribute("actorLike_list",actorLike_list);
		
		//director_id 가지고오기
		List<CollectionArtistVo> directorLike_list = collectionArtistService.selectDirector_like_id(user_id);
		//System.out.println("selectDirector_like_id_list_size :"+directorLike_list.size());
		model.addAttribute("directorLike_list",directorLike_list);
		
		//공지사항 가져오기
		Map<String, Object> map = announcementService.selectAnnouncementList();
		model.addAttribute("map",map);
		
		return "myPage/userPage_SY";
	}
	
	@GetMapping("myPage/my_analysis_HY")
	public String my_analysis_HY(@RequestParam int user_id,Model model) {
		/*    해당 페이지 주인   */
		memberVo = memberService.selectOneMember(user_id);
		model.addAttribute("memberVo",memberVo);
		
		/*    별점 부분 시작   */	
		//별점 평균, 별점 개수, 많이 준 별점 가져오기
		starRateVo=starRateService.selectOnePersonStarRateInfo(user_id);
		System.out.println("starRateVo:빈도 제일 높은거"+starRateVo.getFrequency());
		
		List<StarRateVo>starGraphOfUserList=new ArrayList<>();
		//  그래프 가져오기 
		if(starRateVo.getTotal_count()!=0) {
			System.out.println(starRateVo.getTotal_count());
			starGraphOfUserList=starRateService.starGraphOfUser(starRateVo,user_id);
			System.out.println(starGraphOfUserList);
			//많이 준 별점 update
		}
		model.addAttribute("starGraphOfUserList",starGraphOfUserList);
		model.addAttribute("starRateVo",starRateVo);
		
		/*    선호 배우 3명  */
		List<ArtistVo> actorVoList=new ArrayList<>();
		if(starRateVo.getTotal_count()!=0) {
		actorVoList=artistService.selectPreferenceActor(user_id);
		}
		model.addAttribute("actorVoList",actorVoList);
		
		/*    선호 감독  3명  */
		List<ArtistVo> directorVoList=new ArrayList<>();
		if(starRateVo.getTotal_count()!=0) {
			directorVoList=artistService.selectPreferenceDirector(user_id);
		}
		model.addAttribute("directorVoList",directorVoList);
		
		/*    선호 나라   */ 
		List<MovieCountryVo> movieCountryVoList=new ArrayList<>();
		String bestCountry="";
		if(starRateVo.getTotal_count()!=0) {
			movieCountryVoList=movieCountryService.selectPreferenceCountry(user_id);
			bestCountry=movieCountryVoList.get(0).getName_kor();
		}
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		model.addAttribute("bestCountry",bestCountry);
		
		/*    선호 장르   */ 
		List<MovieGenreVo> movieGenreVoList=new ArrayList<>();
		String bestGenre="";
		if(starRateVo.getTotal_count()!=0) {
			movieGenreVoList=movieGenreService.selectPreferenceGenre(user_id);
			System.out.println(movieGenreVoList);
			bestGenre=movieGenreVoList.get(0).getGenre_kor();
		}
		model.addAttribute("movieGenreVoList",movieGenreVoList);
		model.addAttribute("bestGenre",bestGenre);
		
		/*    영화 감상 시간   */ 
		StarRateVo timeWateched=new StarRateVo();
		if(starRateVo.getTotal_count()!=0) {
			timeWateched=starRateService.totalWatchedTime(user_id);
			System.out.println(timeWateched);
		}
		model.addAttribute("timeWateched",timeWateched);
		
		return "myPage/my_analysis_HY";
	}

	@GetMapping("myPage/actor_director_like_SY")
	public String actor_director_like(Model model, @RequestParam int user_id) {
	    List<CollectionArtistVo> actorLike_list = collectionArtistService.selectActor_like_id(user_id);
	    if (actorLike_list.size() > 0) {
	        List<ArtistVo> actor_list = artistService.selectActorAll(actorLike_list);
	        model.addAttribute("actor_list", actor_list);
	    }

	    List<CollectionArtistVo> directorLike_list = collectionArtistService.selectDirector_like_id(user_id);
	    if (directorLike_list.size() > 0) {
	        List<ArtistVo> director_list = artistService.selectDirectorAll(directorLike_list);
	        model.addAttribute("director_list", director_list);
	    }

	    return "myPage/actor_director_like_SY";
	}
	
	
	
	
	
	@GetMapping("myPage/logout_confirm_Btn")
	public String logout() {
		session.invalidate();
		System.out.println("로그아웃 되었습니다.");
		return "/";
	}
	

	
}