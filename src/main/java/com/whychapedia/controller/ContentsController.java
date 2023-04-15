package com.whychapedia.controller;

import java.util.ArrayList;
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
import com.whychapedia.service.CollectionService;
import com.whychapedia.service.CommentService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieActorService;
import com.whychapedia.service.MovieCountryService;
import com.whychapedia.service.MovieDirectorService;
import com.whychapedia.service.MovieGalleryTrailerService;
import com.whychapedia.service.MovieGenreService;
import com.whychapedia.service.MovieOttService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.service.WatchListService;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieActorVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieDirectorVo;
import com.whychapedia.vo.MovieGalleryTrailerVo;
import com.whychapedia.vo.MovieGenreVo;
import com.whychapedia.vo.MovieOttVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;
import com.whychapedia.vo.WatchListVo;

import ch.qos.logback.core.joran.action.NewRuleAction;

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
	MovieOttService movieOttService;
	
	@Autowired
	WatchListService watchListService;
	
	@Autowired
	CollectionService collectionService;
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	MemberService memberService;
	
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
	WatchListVo watchListVo;
	


	/*  영화페이지  */
	@GetMapping("/contents/contents_SH")
	public String contents(@RequestParam int movie_id, Model model) {
		System.out.println("-------------------start_영화 정보-Controller--------------------------------");
		
		/*-------------------------------로그인 전 후 동일-------------------------------------------------*/
		
		
		/*         해당 영화 정보 START       */
		//movie table 정보(VO) 
		movieVo=movieService.selectOneMovie(movie_id);
		System.out.println("해당 영화 한국 제목:"+movieVo.getMovie_kor_title());
		model.addAttribute("movieVo",movieVo);
		
		//movie_genre 정보(LIST<VO>)
		List<MovieGenreVo> movieGenreVoList=new ArrayList<>();
		String genre="정보 등록중";
		movieGenreVoList=movieGenreService.selectTheGenre(movie_id);			
		if(movieGenreVoList.size()!=0) {
			genre="";
			System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
			genre=movieGenreService.genreListToString(movieGenreVoList);
		}
		//장르 합쳐서 string으로 반환
		model.addAttribute("genre",genre);
		
		//movie_country 정보(LIST<VO>)
		List<MovieCountryVo> movieCountryVoList=new ArrayList<>();
		String country="정보 등록중";
		movieCountryVoList=movieCountryService.selectTheCountry(movie_id);
		if(movieCountryVoList.size()!=0) {
			country="";
			System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
			country=movieCountryService.countryListToString(movieCountryVoList);
		}
		//나라 합쳐서 string으로 반환
		model.addAttribute("country",country);
		
		//movie_actor 정보(LIST<VO>)
		List<MovieActorVo> movieActorVoList=new ArrayList<>();
		movieActorVoList=movieActorService.selectTheActor(movie_id);
		if(movieActorVoList.size()!=0) System.out.println("해당 영화 배우 첫 번쨰:"+movieActorVoList.get(0).getActor_name());
		model.addAttribute("movieActorVoList",movieActorVoList);
		
		//movie_director 정보(LIST<VO>)
		List<MovieDirectorVo> movieDirectorVoList=new ArrayList<>();
		movieDirectorVoList=movieDirectorService.selectTheDirector(movie_id);
		if(movieDirectorVoList.size()!=0) System.out.println("해당 영화 감독 첫 번쨰:"+movieDirectorVoList.get(0).getDirector_name());
		model.addAttribute("movieDirectorVoList",movieDirectorVoList);
		
		//movieGallery 정보(LIST<VO>)
		List<MovieGalleryTrailerVo> movieGalleryVoList=new ArrayList<>();
		movieGalleryVoList=movieGalleryTrailerService.selectTheGallery(movie_id);
		if(movieGalleryVoList.size()!=0) System.out.println("해당 겔러리 첫 번쨰:"+movieGalleryVoList.get(0).getMovie_gallery_url());
		model.addAttribute("movieGalleryVoList",movieGalleryVoList);
		
		//movieTrailer 정보(LIST<VO>) 
		List<MovieGalleryTrailerVo> movieTrailerVoList=new ArrayList<>();
		movieTrailerVoList=movieGalleryTrailerService.selectTheTrailer(movie_id);
		if(movieTrailerVoList.size()!=0) System.out.println("해당 트레일러 첫 번쨰:"+movieTrailerVoList.get(0).getMovie_gallery_url());
		model.addAttribute("movieTrailerVoList",movieTrailerVoList);
		
		//movieOtt 정보(<LIST<VO>)
		List<MovieOttVo> movieOttVoList=new ArrayList<>();
		movieOttVoList=movieOttService.selectTheOtt(movie_id);
		if(movieOttVoList.size()!=0) System.out.println("해당 ott 첫 번쨰:"+movieOttVoList.get(0).getProvider_name());
		model.addAttribute("movieOttVoList",movieOttVoList);
		System.out.println("-------------------start_영화 정보-Controller--------------------------------");
		/*     해당 영화 정보 END       */
		
		
		/*    해당 영화 별점 정보 START     * ---------------여기 고치는 중*/  
		List<Integer> movieStarRateGraph=new ArrayList<>();
		movieStarRateGraph=starRateService.starRateGraph(movie_id);
		List<Double> movieStarRateGraphScale=new ArrayList<>();
		int totalStarRateNumber=0;
		if(movieStarRateGraph.size()!=0) {
			totalStarRateNumber=starRateService.totalStarRateNumber(movieStarRateGraph);
			movieStarRateGraphScale=starRateService.movieStarRateGraphScale(movieStarRateGraph,totalStarRateNumber);
		}
		model.addAttribute("totalStarRateNumber",totalStarRateNumber);
		model.addAttribute("movieStarRateGraphScale",movieStarRateGraphScale);
		/*     해당 영화 별점 정보 END      */
		
		
		/*    같은 장르 영화 4개 가져오기 START     */
		List<MovieVo> movieWithSameGenreList=new ArrayList<>();
		if(movieGenreVoList.size()!=0) {
			movieWithSameGenreList=movieService.selectMovieWithSameGenre(4,movieGenreVoList.get(0).getGenre_id());
			System.out.println(movieWithSameGenreList.get(0).getMovie_kor_title());
		}
		model.addAttribute("movieWithSameGenreList",movieWithSameGenreList);
		/*    같은 장르 영화 4개 가져오기  END     */
		
		
		
		

		/*-------------------------------로그인 전/후 따로-------------------------------------------------*/
		/*별점 정보 시작*/
		System.out.println("-------------------start_나의 별점정보-Controller--------------------------------");
		double my_star_rate=0;/* 로그인 전 0으로 default :별점 평가 하기 */		
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
		}
		System.out.println("나의 별점:"+my_star_rate);
		
		model.addAttribute("my_star_rate",my_star_rate);	
		System.out.println("-------------------end_나의 별점Controller--------------------------------");
		/*별점 정보 끝*/
		
		/*보고싶어요 && 보는중 시작*/
		int isWishWatch=0;/* 로그인 전  default 0:보고싶어요 x */	
		int isWatching=0;/* 로그인 전  default 0:보는중 x */	
		/*로그인 후*/
		if(session.getAttribute("sessionId")!=null) {
			Integer sessionId = (Integer) session.getAttribute("sessionId");
			int user_id = sessionId.intValue();
			isWishWatch=watchListService.selectIsWatch(0,movie_id,user_id);
			System.out.println("보고싶은가?"+isWishWatch);
			isWatching=watchListService.selectIsWatch(1,movie_id,user_id);
			System.out.println("보는중?"+isWatching);
		}
		model.addAttribute("isWishWatch",isWishWatch);
		model.addAttribute("isWatching",isWatching);
		/*보고싶어요 && 보는중 끝*/
	    //----------------------------------------------------------------------------------------------------------//
		 /*  출연 제작 인물 받아오기 시작*/
		//해당 영화의 감독전체 가져오기 
		List<MovieDirectorVo> oneMovieDirectorList = movieDirectorService.selectMovieDirectorList(movie_id);
		model.addAttribute("oneMovieDirectorList",oneMovieDirectorList);
		//해당 영화의 배우전체 가져오기 
		List<MovieActorVo> oneMovieActorList = movieActorService.selectoneMovieActorList(movie_id);
		model.addAttribute("oneMovieActorList",oneMovieActorList);
			
			
			
			
			/*  출연 제작 인물 받아오기 끝*/
		//------------------------------------------------------------------------------------------------------------//	

		//해당 영화 코멘트 2개 받아오기
		List<CommentVo> commentVo2 = commentService.selectCommentList2(movie_id);
		List<MemberVo> commentUserList2 = memberService.commentUserList(commentVo2);
		//해당 영화의 코멘트 총 개수(content page)
		int commentCount = commentService.selectCommentAll(movie_id);
		List<StarRateVo> starRatelist = starRateService.starRatelist(commentVo2);
		//코멘트 1개에 해당하는 replylis개수 가져오기
		List<Integer> replyCount = commentService.replyCount(commentVo2);
		model.addAttribute("commentVo2", commentVo2);		
		model.addAttribute("commentUserList2",commentUserList2);
		model.addAttribute("commentCount",commentCount);
		model.addAttribute("starRatelist",starRatelist);
		model.addAttribute("replyCount",replyCount);
			
		return "/contents/contents_SH";
	}
	
	
	
	
	/*                         영화 페이지 나의 별점 ajax                    */	
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
		}else if(star_rate!=0 && IsRating!=0) {//별점 업데이트
			System.out.println("update:"+result); 
			result=starRateService.updateStarRate(star_rate,movie_id,user_id);
			response.put("result",result);
			System.out.println("response:"+response); 
		}else { //별점 삭제
			result=starRateService.deleteStarRate(user_id,movie_id);
			System.out.println("delete:"+result); 
			response.put("result",result);
		}

		return response;}
	
	
	
	
	
	 /*                         영화 페이지 보고싶어요 ajax                    */		
	
	
	@RequestMapping("/contents/wishWatch")
	@ResponseBody 
	public Map<String, Integer> wishWatch(int movie_id, int wishWatch,int isWatching,Model model ){ 
		Map<String, Integer>response = new HashMap<>();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int user_id = sessionId.intValue();
		System.out.println("user_id:"+user_id);
		System.out.println("movie_id:"+movie_id);
		System.out.println("보고싶어요:"+wishWatch); 
		System.out.println("보는중:"+isWatching); 
		int insert;//안넣기 디폴트
		int delete;//안삭제 디폴트
		
		if(isWatching==0 && wishWatch==0) {//보는중일때 보고싶어요 등록
				System.out.println("보는중일때 보고싶어요 등록");
				//보는중 삭제
				delete=watchListService.deleteWatchList(1,user_id,movie_id);
				response.put("delete",delete);
				//보고싶어요 등록
				insert=watchListService.insertWatchList(0,user_id,movie_id);	
				response.put("insert",insert);
		}else if(isWatching==1 && wishWatch==1) {//보는중이 아닐때 보고싶어요 삭제
				System.out.println("보는중이 아닐때 보고싶어요 삭제");
				//보고싶어요 삭제
				delete=watchListService.deleteWatchList(0,user_id,movie_id);
				response.put("delete",delete);
		}else if(isWatching==1 && wishWatch==0) {//보는중이 아닐때 보고싶어요 등록
				System.out.println("보는중이 아닐때 보고싶어요 등록");
				//보고싶어요 등록
				insert=watchListService.insertWatchList(0,user_id,movie_id);
				response.put("insert",insert);
		}
		
		
		return response;}
	
	
	
	
/*                         영화 페이지 보는중 ajax                    */		
	
	
	@RequestMapping("/contents/watching")
	@ResponseBody 
	public Map<String, Integer> watching(int movie_id, int wishWatch,int isWatching,Model model ){ 
		Map<String, Integer>response = new HashMap<>();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int user_id = sessionId.intValue();
		System.out.println("user_id:"+user_id);
		System.out.println("movie_id:"+movie_id);
		System.out.println("보고싶어요:"+wishWatch); 
		System.out.println("보는중:"+isWatching); 
		int insert;//안넣기 디폴트
		int delete;//안삭제 디폴트
		
		if(wishWatch==0 && isWatching==0) {//보고싶어요인데 보는중 등록
				System.out.println("보고싶어요인데 보는중 등록");
				//보고싶어요 삭제
				delete=watchListService.deleteWatchList(0,user_id,movie_id);
				response.put("delete",delete);
				//보는중 등록
				insert=watchListService.insertWatchList(1,user_id,movie_id);	
				response.put("insert",insert);
		}else if(wishWatch==1 && isWatching==1) {//보고싶어요 아닐때 보는중 삭제
				System.out.println("보고싶어요 아닐때 보는중 삭제");
				//보는중 삭제
				delete=watchListService.deleteWatchList(1,user_id,movie_id);
				response.put("delete",delete);
		}else if(wishWatch==1 && isWatching==0) {//보고싶어요 아닐때 보는중 등록
				System.out.println("보고싶어요 아닐때 보는중 등록");
				//보는중 등록
				insert=watchListService.insertWatchList(1,user_id,movie_id);
				response.put("insert",insert);
		}
		
		
		return response;}
	
	
	

	
/*                         영화 콜렉션 ajax                    */		
	
	
	@RequestMapping("/contents/collectionInfo")
	@ResponseBody 
	public Map<String, Integer> collectionInfo(int movie_id,Model model ){ 
		Map<String, Integer>response = new HashMap<>();
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int user_id = sessionId.intValue();
		System.out.println("user_id:"+user_id);
		System.out.println("movie_id:"+movie_id);
		/*해당 영화가 들어가 있는 콜렉션*/
		List<CollectionVo> collectionMovieIn=collectionService.selectCollectionMovieIn(user_id,movie_id);
		/*해당 영화가 들어가 있지 않는 콜렉션*/
		List<CollectionVo> collectionMovieNotIn=collectionService.selectCollectionMovieNotIn(user_id,movie_id);
		/**/
		
		/**/
		
		return response;}	
	
	
/*                         영화 콜렉션 ajax                    */	
	
	
	
	
	
	
/*                    영화 "더보기" 페이지                       */
	  @GetMapping("/contents/contents_info_page")
	  public String contents_info_page(@RequestParam int movieId, Model model ) {
		  System.out.println("-------------------start_contents_info_pageController--------------------------------");
		  //영화테이블 정보
		  movieVo=movieService.selectOneMovie(movieId);
		  model.addAttribute("movieVo",movieVo);
		  //장르정보
		  List<MovieGenreVo> movieGenreVoList=new ArrayList<>();
		  movieGenreVoList=movieGenreService.selectTheGenre(movieId);
		  String genre="";
		  if(movieGenreVoList.size()!=0) {
			  System.out.println("해당 영화 장르 리스트 첫 번쨰:"+movieGenreVoList.get(0).getGenre_kor());
			  genre=movieGenreService.genreListToString(movieGenreVoList);
		  }
		  model.addAttribute("genre",genre);
		  
		  //나라정보
		  List<MovieCountryVo> movieCountryVoList=new ArrayList<>();
		  movieCountryVoList=movieCountryService.selectTheCountry(movieId);
		  String country="";
		  if(movieCountryVoList.size()!=0)System.out.println("해당 영화 나라 리스트 첫 번쨰:"+movieCountryVoList.get(0).getName_kor());
		  country=movieCountryService.countryListToString(movieCountryVoList);
		  model.addAttribute("country",country);
		  System.out.println("-------------------end_contents_info_pageController--------------------------------"); 
		  return "/contents/contents_info_page";
	  }
	
	  }
