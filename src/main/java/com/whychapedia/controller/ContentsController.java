package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.mapper.StarRateMapper;
import com.whychapedia.service.MovieActorService;
import com.whychapedia.service.MovieCountryService;
import com.whychapedia.service.MovieDirectorService;
import com.whychapedia.service.MovieGalleryTrailerService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGalleryTrailerVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class ContentsController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	MovieGenreService movieGenreService;
	
	@Autowired
	MovieCountryService movieCountryService;
	
	@Autowired
	MovieActorService movieActorService;
	
	@Autowired
	MovieDirectorService movieDirectorService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MovieGalleryTrailerService movieGalleryTrailerService;
	
	@Autowired
	MovieVo movieVo;
	
	@Autowired
	MovieGenreVo movieGenre;
	
	@Autowired
	MovieCountryVo movieCountryVo;
	
	@Autowired
	MovieDirectorVo movieDirectorVo;
	
	@Autowired
	MovieActorVo movieActorVo;
	
	@Autowired
	StarRateVo starRateVo;
	
	@Autowired
	MovieGalleryTrailerVo movieGalleryTrailerVo;
	
	@Autowired
	MovieOttVo movieOttVo;
	
	@Autowired
	MovieOttService movieOttService;
	

	/*  영화페이지  */
	@GetMapping("/contents/contents_SH")
	public String contents(@RequestParam int movie_id, Model model) {
		System.out.println("-------------------start_영화 정보-Controller--------------------------------");
		/*-------------------------------로그인 전 후 동일-------------------------------------------------*/
		/*해당 영화 정보 START*/
		//movie table 정보(VO) 
		movieVo=movieService.selectOneMovie(movie_id);
		System.out.println("해당 영화 한국 제목:"+movieVo.getMovie_kor_title());
		model.addAttribute("movieVo",movieVo);
		
		//movie_genre 정보(LIST<VO>)
		List<MovieGenreVo> movieGenreVoList=movieGenreService.selectTheGenre(movie_id);
		if(movieGenreVoList.size()!=0)System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
		//장르 합쳐서 string으로 반환
		String genre=movieGenreService.genreListToString(movieGenreVoList);
		model.addAttribute("genre",genre);
		
		//movie_country 정보(LIST<VO>)
		List<MovieCountryVo> movieCountryVoList=movieCountryService.selectTheCountry(movie_id);
		if(movieCountryVoList.size()!=0)System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
		//나라 합쳐서 string으로 반환
		String country=movieCountryService.countryListToString(movieCountryVoList);
		model.addAttribute("country",country);
		
		//movie_actor 정보(LIST<VO>)
		List<MovieActorVo> movieActorVoList=movieActorService.selectTheActor(movie_id);
		if(movieActorVoList.size()!=0) System.out.println("해당 영화 배우 첫 번쨰:"+movieActorVoList.get(0).getActor_name());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		
		//movie_director 정보(LIST<VO>)
		List<MovieDirectorVo> movieDirectorVoList=movieDirectorService.selectTheDirector(movie_id);
		if(movieDirectorVoList.size()!=0) System.out.println("해당 영화 감독 첫 번쨰:"+movieDirectorVoList.get(0).getDirector_name());
		model.addAttribute("movieCountryVoList",movieCountryVoList);
		
		//movieGallery 정보(LIST<VO>)
		List<MovieGalleryTrailerVo> movieGalleryVoList=movieGalleryTrailerService.selectTheGallery(movie_id);
		if(movieGalleryVoList.size()!=0) System.out.println("해당 겔러리 첫 번쨰:"+movieGalleryVoList.get(0).getMovie_gallery_url());
		model.addAttribute("movieGalleryVoList",movieGalleryVoList);
		
		//movieTrailer 정보(LIST<VO>) 
		List<MovieGalleryTrailerVo> movieTrailerVoList=movieGalleryTrailerService.selectTheTrailer(movie_id);
		if(movieTrailerVoList.size()!=0) System.out.println("해당 트레일러 첫 번쨰:"+movieTrailerVoList.get(0).getMovie_gallery_url());
		model.addAttribute("movieTrailerVoList",movieTrailerVoList);
		
		//movieOtt 정보(<LIST<VO>)
		List<MovieOttVo> movieOttVoList=movieOttService.selectTheOtt(movie_id);
		if(movieOttVoList.size()!=0) System.out.println("해당 ott 첫 번쨰:"+movieOttVoList.get(0).getProvider_name());
		model.addAttribute("movieOttVoList",movieOttVoList);
		System.out.println("-------------------start_영화 정보-Controller--------------------------------");
		/*해당 영화 정보 END*/
		
		
		/*-------------------------------로그인 전/후 따로-------------------------------------------------*/
		/*별점 정보 시작*/
		System.out.println("-------------------start_나의 별점정보-Controller--------------------------------");
		/* 로그인 전 0으로 default */
		int my_star_rate=0;		
		/*로그인 후*/
		if(session.getAttribute("sessionId")!=null) {
			Integer sessionId = (Integer) session.getAttribute("sessionId");
			int user_id = sessionId.intValue();
			/*user가 해당 영화에 대해서 평가 했는지 안했는지check (0:평가안함 1:평가함)*/
			int IsRating=0;
			IsRating=starRateService.selectIsRating(user_id,movie_id);
			/*평가한 영화 경우 해당 별점 가져오기*/
			if(IsRating!=0)my_star_rate=starRateService.selectMyStarRate(user_id,movie_id);
			/*평가하기 전 영화 경우 0값으로 디폴트*/
			else my_star_rate=0;
		}/*로그인 전*/
		else my_star_rate=0;
		System.out.println("나의 별점:"+my_star_rate);
		
		model.addAttribute("my_star_rate",my_star_rate);	
		System.out.println("-------------------end_나의 별점Controller--------------------------------");
		/*별점 정보 끝*/

		return "/contents/contents_SH";
	}
	
	
	
	
	/*  영화 페이지 나의 별점 ajax  */	
	@RequestMapping("/contents/MyStarRateChange")
	@ResponseBody 
	public Map<String, Integer> movieStarRate(int movie_id, double star_rate, Model model ){ 
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int user_id = sessionId.intValue();
		System.out.println("user_id:"+user_id);
		System.out.println("movie_id:"+movie_id);
		System.out.println("star_rate:"+star_rate); 
		int IsRating,result=0;
		IsRating=starRateService.selectIsRating(user_id,movie_id);
		Map<String, Integer>response = new HashMap<>();
		System.out.println("IsRating:"+IsRating);
		//처음 평가
		if(star_rate!=0 && IsRating==0) {		
			int id=starRateService.selectLastId();
			System.out.println("업데이트 전 마지막 번호:"+id);
			result=starRateService.insertStarRate(id+1,user_id,movie_id,star_rate);
			id=starRateService.selectLastId(); System.out.println("업데이트 후 마지막 번호:"+id);
			System.out.println("insert:"+result); response.put("result",result);		 
		}else if(star_rate!=0 && IsRating!=0) {
			System.out.println("update:"+result); 
			result=starRateService.updateStarRate(star_rate,movie_id,user_id);
			response.put("result",result);
			System.out.println("response:"+response); 
		}else { 
			result=starRateService.deleteStarRate(user_id,movie_id);
			System.out.println("delete:"+result); 
			response.put("result",result);
		}

		return response;}
	
	
		/*  영화 "더보기" 페이지  */
	  @GetMapping("/contents/contents_info_page")
	  public String contents_info_page(@RequestParam int movieId, Model model ) {
		  System.out.println("-------------------start_contents_info_pageController--------------------------------");
		  //영화테이블 정보
		  movieVo=movieService.selectOneMovie(movieId);
		  model.addAttribute("movieVo",movieVo);
		  //장르정보
		  List<MovieGenreVo> movieGenreVoList=movieGenreService.selectTheGenre(movieId);
		  if(movieGenreVoList.size()!=0)System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
		  String genre=movieGenreService.genreListToString(movieGenreVoList);
		  model.addAttribute("genre",genre);
		  //나라정보
		  List<MovieCountryVo> movieCountryVoList=movieCountryService.selectTheCountry(movieId);
		  if(movieCountryVoList.size()!=0)System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
		  String country=movieCountryService.countryListToString(movieCountryVoList);
		  model.addAttribute("country",country);
		  System.out.println("-------------------end_contents_info_pageController--------------------------------"); 
		  return "/contents/contents_info_page";
	  }
	
	  }
