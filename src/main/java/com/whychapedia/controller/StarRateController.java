package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.mapper.MovieCollectionMapper;
import com.whychapedia.service.ArtistService;
import com.whychapedia.service.CollectionService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieCollectionService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class StarRateController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MovieService movieService;

	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieOttService movieOttService;
	
	@Autowired
	LikeService likeService;
	
	@Autowired
	ArtistService artistService;
	
	@Autowired
	CollectionService collectionService;
	
	@Autowired
	MovieCollectionService movieCollectionService;
	
	@Autowired
	StarRateVo starRateVo;
	
	@Autowired
	MovieVo movieVo;
	
	@Autowired
	MemberVo memberVo;

	@Autowired
	StarRateVo starRateVO;
	
	@Autowired
	MovieOttVo movieOttVo;
	
	@Autowired
	CollectionVo collectionVo;
	
	@Autowired
	MovieCollectionVo movieCollectionVo;
	
	//평가하기 처음 들어갈 때 
	@GetMapping("/rate_page_HY")
	public String rate_page(Model model) {
		int sessionId = (int) session.getAttribute("sessionId");
		//로그인한 계정 vo
		memberVo=memberService.selectOneMember(sessionId);
		//평가할 영화 (랜덤 기준으로) 들고 오기 (10개만)
		List<MovieVo> movieRandomRate=movieService.selectMovieRandomRate(sessionId);
		//유저가 평가한 영화 총 개수 들고오기
		int ratedCount=starRateService.selectRatedCount(sessionId);
		int my_star_rate=0;
		
		model.addAttribute("movieRandomRate", movieRandomRate);
		model.addAttribute("ratedCount", ratedCount);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("my_star_rate", my_star_rate);
		
		
		return "/rate_page_HY";
	}
	
	//개봉일기준
	@RequestMapping("/releaseRate")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>> releaseRate(int user_id,Model model) {
		//평가할 영화 (개봉일 기준으로) 들고 오기 (10개만)
		List<MovieVo> movieRate=movieService.selectMovieReleaseRate(user_id);
		//유저가 평가한 영화 총 개수 들고오기
		int ratedCount=starRateService.selectRatedCount(user_id);
		int my_star_rate=0;
		
		Map<String, Object> map = new HashMap<>();
		map.put("my_star_rate", my_star_rate);
		map.put("movieRate", movieRate);
		map.put("ratedCount", ratedCount);
		System.out.println(movieRate);
		System.out.println("왔다!");
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	//평점기준
	@RequestMapping("/highRate")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>> highRate(int user_id,Model model) {
		//평가할 영화 (평점 높은 순 ) 들고 오기 (10개만)
		List<MovieVo> movieRate=movieService.selectMovieHighRate(user_id);
		//유저가 평가한 영화 총 개수 들고오기
		int ratedCount=starRateService.selectRatedCount(user_id);
		int my_star_rate=0;
		
		Map<String, Object> map = new HashMap<>();
		map.put("my_star_rate", my_star_rate);
		map.put("movieRate", movieRate);
		map.put("ratedCount", ratedCount);
		System.out.println(movieRate);
		System.out.println("왔다!");
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	
	//랜덤기준
	@RequestMapping("/randomRate")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>> randomRate(int user_id,Model model) {
		//평가할 영화 (랜덤 기준으로)  들고 오기 (10개만)
		List<MovieVo> movieRate=movieService.selectMovieRandomRate(user_id);
		//유저가 평가한 영화 총 개수 들고오기
		int ratedCount=starRateService.selectRatedCount(user_id);
		int my_star_rate=0;
		
		Map<String, Object> map = new HashMap<>();
		map.put("my_star_rate", my_star_rate);
		map.put("movieRate", movieRate);
		map.put("ratedCount", ratedCount);
		System.out.println(movieRate);
		
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	
	
	
}
