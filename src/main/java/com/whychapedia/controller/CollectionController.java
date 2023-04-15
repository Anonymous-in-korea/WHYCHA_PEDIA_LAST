package com.whychapedia.controller;

import java.util.ArrayList;
import java.util.Arrays;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String collection_SY(@RequestParam int user_id,Model model) {
		int isInCollection=0;
		//컬렉션 주인 계정
		memberVo=memberService.selectOneMember(user_id);
		MemberVo loginVo=new MemberVo();
		
		Integer sessionId = (Integer) session.getAttribute("sessionId");

		if(sessionId!=null) {
			int loginId = sessionId.intValue();
			loginVo=memberService.selectOneMember(loginId);			
		}
		
		//해당 유저의 컬렉션 list 가져오기 & 좋아요&코멘트 개수
		List<CollectionVo>collectionVoList=collectionService.selectCollectionList(user_id);
		System.out.println("collection(controller):collectionList size()"+collectionVoList.size());
		

		List<MovieCollectionVo> movieCollectionVoList = new ArrayList<MovieCollectionVo>();
		List<CollectionVo>updateCollectionVoList=new ArrayList<CollectionVo>();
		
		
		//컬렉션이 존재 할 때 
		if(collectionVoList.size()!=0) {
			//컬렉션_movie vo 생성 ( collection_id,movie_id,movie_post_url 들어가 있음)
			movieCollectionVoList=movieCollectionService.selectCollectionVoWithMoviePostUrlList(collectionVoList);
			System.out.println("collection(controller):MovieCollectionVoList size()"+movieCollectionVoList.size());				
			
			//collection_movie vo의 movie post url을 배열 값으로 collectionVoList에 넣음
			if(movieCollectionVoList.size()!=0) {
				updateCollectionVoList=collectionService.insertMoviePostUrlArray(movieCollectionVoList,collectionVoList);
				System.out.println("collection(controller):updateCollectionVoList size()"+updateCollectionVoList.size());	
				System.out.println("collection(controller):updateCollectionVoList "+updateCollectionVoList.get(0).getMovie_post_urls());
			}
			
			
			//컬렉션 존재함
			isInCollection=1;				
			
			
			
		}
			model.addAttribute("loginVo", loginVo); //접속자 
			model.addAttribute("memberVo", memberVo); //콜렉션 페이지 주인
			model.addAttribute("updateCollectionVoList", updateCollectionVoList); // 콜렉션 리스트
			model.addAttribute("isInCollection",isInCollection); // 콜렉션 있는지 유무
			
			
		return "/collection/collection_SY";
	}

	
	
	
    /*하나의 컬렉션 페이지*/
	@GetMapping("/collection/collection_detail_HY")
	public String collection_detail_HY(@RequestParam int user_id,@RequestParam int collection_id,Model model) {
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
		List<StarRateVo> ratedList=new ArrayList<StarRateVo>();
		
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
		int sizeCollection=movieInCollectionVoList.size()-1;
		model.addAttribute("movieInCollectionVoList", movieInCollectionVoList); //영화
		model.addAttribute("memberVo",memberVo);//페이지 주인
		model.addAttribute("collectionVo",collectionVo);//컬렉션 디테일
		model.addAttribute("sizeCollection",sizeCollection);//컬렉션 사이즈
		
		
		//collection에 대한 commentList
		List<CollectionCommentVo> collectionCommentList = collectionCommentService.selectCollectionComment(collection_id);
		//collection에 대한 likelist
		List<LikeVo> collectionLikeList = likeService.selectCollectionLikeList(collection_id);
		//콜렉션 코멘트 list에 대한 userlist
		List<MemberVo> memberList = memberService.selectCollectionCommentMember(collectionCommentList);
		model.addAttribute("collectionCommentList",collectionCommentList);
		model.addAttribute("memberList",memberList);
		model.addAttribute("collectionLikeList",collectionLikeList);
		
		return "/collection/collection_detail_HY";
	}
	
	
	
	
	//콜렉션 넣기 ajax
	@RequestMapping("/collection/collectionInsert")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>> collectionInsert(int user_id,String collection_name,String collection_desc,Model model) {
		Map<String, Object> map = new HashMap<>();
		//콜렉션 넣기
		int result=collectionService.insertCollection(user_id,collection_name,collection_desc);
		System.out.println("insertCollection result:"+result);
		//유저정보
		memberVo=memberService.selectOneMember(user_id);
		//업뎃한거 가져오기
		collectionVo=collectionService.selectLatestUpdate(user_id);
		//업뎃한 콜렉션에 디폴트로 영화 한개 넣기
		int update=movieCollectionService.insertDefaultMovie(collectionVo.getId());
		System.out.println("insertCollection update:"+update);
		map.put("memberVo", memberVo);
		map.put("collectionVo", collectionVo);
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	//콜렉션 좋아요 추가
	@ResponseBody
	@PostMapping("/collection_like")
	public int collection_like(@RequestParam("user_id") int user_id, @RequestParam("collection_id") int collection_id) {
		int collectionCount = likeService.insertCollectionLike(collection_id, user_id);
		return collectionCount;
	}
	
	//콜렉션 좋아요 삭제
	@ResponseBody
	@PostMapping("/collection_like_delete")
	public int collection_like_delete(@RequestParam("user_id") int user_id, @RequestParam("collection_id") int collection_id) {
		int collectionCount = likeService.deleteCollectionLike(collection_id, user_id);
		return collectionCount;
	}
	
	//콜렉션 댓글 추가
	@ResponseBody
	@PostMapping("/collection_comment_insert")
	public Map<String, Object> collection_comment_insert( @RequestParam("collection_id") int collection_id, @RequestParam("user_id") int user_id,
			@RequestParam("collection_comment_content") String collection_comment_content) {
		Map<String, Object> map = new HashMap<>();
		int result = collectionCommentService.insertCollectioncomment(collection_id, user_id,collection_comment_content);
		//collection에 대한 commentList
		List<CollectionCommentVo> collectionCommentList = collectionCommentService.selectCollectionComment(collection_id);
		//collection에 대한 likelist
		List<LikeVo> collectionLikeList = likeService.selectCollectionLikeList(collection_id);
		//콜렉션 코멘트 list에 대한 userlist
		List<MemberVo> memberList = memberService.selectCollectionCommentMember(collectionCommentList);
		map.put("collectionCommentList", collectionCommentList);
		map.put("collectionLikeList", collectionLikeList);
		map.put("memberList", memberList);
		return map;
	}
	
}
