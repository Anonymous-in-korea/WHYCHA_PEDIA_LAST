package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.CollectionCommentService;
import com.whychapedia.service.CollectionService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieCollectionService;
import com.whychapedia.service.MovieService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.service.WatchListService;
import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;
import com.whychapedia.vo.WatchListVo;

@Controller
public class CollectionController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MovieCollectionService movieCollectionService;
	
	@Autowired
	CollectionService collectionService;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	LikeService likeService;
	
	@Autowired
	CollectionCommentService collectionCommentService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	CollectionVo collectionVo;
	
	@Autowired
	MemberVo memberVo;
	
	@Autowired
	LikeVo likeVo;
	
	@Autowired
	CollectionCommentVo collectionCommentVo;
	
	
	
	/*컬렉션 모음 페이지*/
	@GetMapping("/collection/collection_SY")
	public String collection_SY(Model model) {
		int user_id=3;
		int isInCollection=0;
		//컬렉션 주인 계정
		memberVo=memberService.selectOneMember(user_id);
		
		
		
		//해당 유저의 컬렉션 list 가져오기 & 좋아요&코멘트 개수
		List<CollectionVo>collectionVoList=collectionService.selectCollectionList(user_id);
		System.out.println("collection(controller):collectionList size()"+collectionVoList.size());
		

		List<MovieCollectionVo> movieCollectionVoList = new ArrayList<MovieCollectionVo>();
		List<MovieVo> movieInCollectionVoList=new ArrayList<MovieVo>();
		
		
		//컬렉션이 존재 할 때 
		if(collectionVoList!=null) {
			//무비 컬렉션 리스트
			movieCollectionVoList=movieCollectionService.selectCollectionVoList(collectionVoList);
			System.out.println("collection(controller):MovieCollectionVoList size()"+movieCollectionVoList.size());				
			//컬렉션 존재함
			isInCollection=1;				
			//무비리스트
			if(movieCollectionVoList!=null) {
				//해당 컬렉션 무비리스트 담기
				movieInCollectionVoList=movieService.selectMovieInCollectionList(movieCollectionVoList);
				
			}
			
		}
		
			model.addAttribute("memberVo", memberVo); //콜렉션 페이지 주인
			model.addAttribute("collectionVoList", collectionVoList); // 콜렉션 리스트
			model.addAttribute("isInCollection",isInCollection); // 콜렉션 있는지 유무
			model.addAttribute("movieCollectionVoList", movieCollectionVoList);//콜렉션-영화 연결
			model.addAttribute("movieInCollectionVoList", movieInCollectionVoList);//영화 
			
		return "/collection/collection_SY";
	}

	
	
	
    /*하나의 컬렉션 페이지*/
	@GetMapping("/collection/collection_detail_HY")
	public String collection_detail_HY(Model model) {
		int collection_id=1;
		int user_id=3;
		memberVo=memberService.selectOneMember(user_id);
		System.out.println("memberVo"+memberVo.getUser_name());
		
		//접속자 계정
		Integer sessionId = (Integer) session.getAttribute("sessionId");
		int loginId=0;
		
		//해당 컬렉션 정보 가져오기 
		collectionVo=collectionService.selectOneCollection(collection_id);
		System.out.println("collectionVo"+collectionVo.getCollection_name());
		
		
		//해당 컬렉션 영화 모두 가져오기
		List<MovieCollectionVo>oneMovieCollectionVoList=movieCollectionService.selectOneCollectionVoList(collectionVo.getId());
		System.out.println("oneCollectionVoList"+oneMovieCollectionVoList.size());
		List<MovieVo> movieInCollectionVoList=new ArrayList<MovieVo>();
		List<StarRateVo> ratedList=new ArrayList<StarRateVo>();;
		
		if(oneMovieCollectionVoList!=null) {
			//해당 컬렉션 영화 가져오기
			movieInCollectionVoList=movieService.selectMovieInCollectionList(oneMovieCollectionVoList);
			System.out.println("movieInCollectionVoList"+movieInCollectionVoList.size());
			//컬렉션 안에 영화가 존재한다면, 로그인 한 아이디의 평가 점수를 가져오기
			if(sessionId!=null) {
				loginId = sessionId.intValue();
				ratedList=starRateService.selectAllOfIsRated(loginId,movieInCollectionVoList);
				movieInCollectionVoList=movieService.insertStarRateInfo(movieInCollectionVoList,ratedList);
			}
		}
		
		model.addAttribute("movieInCollectionVoList", movieInCollectionVoList); //영화
		model.addAttribute("memberVo",memberVo);//페이지 주인
		model.addAttribute("collectionVo",collectionVo);//컬렉션 디테일
		
		return "/collection/collection_detail_HY";
	}
	
}
