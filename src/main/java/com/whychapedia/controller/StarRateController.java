package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	// 평가하기 처음 들어갈 때
	@GetMapping("/rate_page_HY")
	public String rate_page(Model model) {
		int user_id = (int) session.getAttribute("sessionId");
		// 로그인한 계정 vo
		memberVo = memberService.selectOneMember(user_id);
		int ratedCount=0;
		int my_star_rate = 0;
		// 평가할 영화 (랜덤 기준으로) 들고 오기 (10개만)
		List<MovieVo> movieList = movieService.selectMovieRandomRate(user_id);
		// 유저가 평가한 영화 총 개수 들고오기
		ratedCount = starRateService.selectRatedCount(user_id);
		//카테고리 한국어로
		String category_kor="랜덤 영화";
		String category = "random";
		model.addAttribute("movieList", movieList);
		model.addAttribute("ratedCount", ratedCount);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("my_star_rate", my_star_rate);
		model.addAttribute("category", category);
		model.addAttribute("category_kor", category_kor);
		return "/rate_page_HY";
	}

	
	// 카테고리 바꿀때
	@GetMapping("/changeCategoryStarRate")
	public String change_category(HttpServletRequest request, Model model) {
		String category = request.getParameter("category");
		System.out.println("category:"+category);
		String category_kor="";
		int user_id = (int) session.getAttribute("sessionId");
		// 로그인한 계정 vo
		memberVo = memberService.selectOneMember(user_id);
		int ratedCount=0;
		int my_star_rate = 0;
		List<MovieVo> movieList=new ArrayList<>();
		
		if (category.equals("rate")) {// 평점 순
			//평가할 영화 (평점 높은 순 ) 들고 오기 (10개만)
			movieList=movieService.selectMovieHighRate(user_id);
			System.out.println(movieList);
			// 유저가 평가한 영화 총 개수 들고오기
			ratedCount=starRateService.selectRatedCount(user_id);
			//카테고리 한국어로
			category_kor="평점순 영화";
			System.out.println(category_kor);
		} else if (category.equals("release")) {// 개봉 순
			// 평가할 영화 (개봉순) 들고 오기 10개만
			movieList = movieService.selectMovieReleaseRate(user_id);
			System.out.println(movieList);
			ratedCount=starRateService.selectRatedCount(user_id);
			category_kor="개봉순 영화";
			System.out.println(category_kor);
		} else {// 랜덤 순
			// 평가할 영화 (랜덤 기준으로) 들고 오기 (10개만)
			movieList = movieService.selectMovieRandomRate(user_id);
			System.out.println(movieList);
			ratedCount = starRateService.selectRatedCount(user_id);
			category_kor="랜덤 영화";
			System.out.println(category_kor);
		}
		
		model.addAttribute("movieList", movieList);
		model.addAttribute("ratedCount", ratedCount);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("my_star_rate", my_star_rate);
		model.addAttribute("category", category);
		model.addAttribute("category_kor", category_kor);
		return "/rate_page_HY";
	}
	
	
	//영화 더 불러오기 ajax
	@RequestMapping("/bringMoreMovie")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>> bringMoreMovie(@RequestBody Map<String, Object> formData) {
		
		 /*            프론트에서 category+movie_id가져오기 시작           */
		
		Map<String, Object> map = new HashMap<>();
		List<Integer> movieIdList = new ArrayList<>();
		String category = "";
		int status;
		// formData에서 "movie_id_"로 시작하는 키를 찾아서 List<Integer>에 추가
	    List<Map<String, String>> formDataList = (List<Map<String, String>>) formData.get("formData");
	    for (Map<String, String> data : formDataList) {
	        String name = data.get("name");
	        String value = data.get("value");
	        if (name.startsWith("movie_id_")) {
	            Integer movieId = Integer.parseInt(value);
	            System.out.println("movieId : " + movieId);
	            movieIdList.add(movieId);
	        }
	    }
	    category =  formDataList.get(8).get("value");
	    status= movieIdList.size();
	    /*            프론트에서 category+movie_id가져오기 끝 	          */
	    
	   
		
	    
	    
	    int user_id = (int) session.getAttribute("sessionId");
		// 로그인한 계정 vo
		memberVo = memberService.selectOneMember(user_id);
		int my_star_rate = 0;
		
		 /*            추가할 영화 10개 가져오기  시작          */
		List<MovieVo> movieList=new ArrayList<>();
		if (category.equals("rate")) {// 평점 순
			//평가할 영화 (평점 높은 순 ) 들고 오기 (리스트에 없는)
			movieList=movieService.selectMovieHighRateNotInList(user_id,movieIdList);
			System.out.println(movieList);
		} else if (category.equals("release")) {// 개봉 순
			// 평가할 영화 (개봉순) 들고 오기 (리스트에 없는)
			movieList = movieService.selectMovieReleaseRateNotInList(user_id,movieIdList);
			System.out.println(movieList);
		} else {// 랜덤 순
			// 평가할 영화 (랜덤 기준으로) 들고 오기 (리스트에 없는)
			movieList = movieService.selectMovieRandomRateNotInList(user_id,movieIdList);
			System.out.println(movieList);
		}
		
		
		/*            추가할 영화 10개 가져오기    끝        */
		map.put("my_star_rate", my_star_rate);
		map.put("movieList", movieList);
		map.put("status", status);
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}

	  
	 

}
