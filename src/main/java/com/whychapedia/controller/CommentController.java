package com.whychapedia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whychapedia.service.CommentReplyService;
import com.whychapedia.service.CommentService;
import com.whychapedia.service.LikeService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.StarRateService;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.StarRateVo;

@Controller
public class CommentController {
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	CommentReplyService commReService;
	
	@Autowired
	LikeService likeService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MemberService memberService;
	
	

	@GetMapping("comment/comment_SY")
	public String comment(Model model) {
		int movie_id1 = 1;
		List<CommentVo> commentVolist = commentService.commentSelect10(movie_id1);
		
//		System.out.println("controller commentVolist : "+commentVolist);
		List<MemberVo> memberVolist = memberService.commentUser(commentVolist);
		System.out.println("controller memberVolist : " + memberVolist);
		List<StarRateVo> starRatelist = starRateService.starRatelist(commentVolist);
		System.out.println("controller starRatelist : "+starRatelist);
		//코멘트 1개에 해당하는 replylis개수 가져오기
		List<Integer> replyCount = commentService.replyCount(commentVolist);
//		List<Integer> likeCount = commentService.LikeCount(commentVolist); 코멘트 좋아요 개수 commentVo에 넣어서 가져옴
		//해당 영화에 코멘트에 대한 likelist 모두 가져오기
		List<LikeVo> likeList = likeService.selectCommentLike(commentVolist); 
		
		model.addAttribute("commentVolist", commentVolist);
		model.addAttribute("memberVolist",memberVolist);
		model.addAttribute("starRatelist",starRatelist);
		model.addAttribute("replyCount",replyCount);
		model.addAttribute("likeList",likeList);
//		model.addAttribute("likeCount",likeCount);
		
//		System.out.println("commentcontroller likelist : "+likeList);
//		System.out.println("controller likeCount: "+ likeCount);
		return "comment/comment_SY";
	}

	@GetMapping("comment/comment_reply_GC")
	public String comment_reply_GC(Model model, @RequestParam("comment_id") int comment_id) {
		CommentVo cvo =  commentService.selectCommentOne(comment_id);
		//해당 코멘트에 달린 댓글list가져오기
		List<CommentReplyVo> replyList = commReService.selectCommentReplyList(cvo);
		//해당 코멘트 작성자의 평점 가져오기
		StarRateVo starRateOne = starRateService.starRateOne(cvo);
//		System.out.println("controller starRateOne : "+ starRateOne);
		//해당 코멘트의 작성자 정보 가져오기
		MemberVo mvo = memberService.commentUserOne(cvo);
		
		//replyList 작성자 정보 가져오기
		List<MemberVo> replyuserList = memberService.selectReplyuserList(replyList);
		model.addAttribute("cvo",cvo);
		model.addAttribute("replyList", replyList);
		model.addAttribute("replyuserList", replyuserList);
		model.addAttribute("starRateOne",starRateOne);
		model.addAttribute("mvo",mvo);
//		System.out.println("controller mvo : "+ mvo.getUser_name());
		return "comment/comment_reply_GC";
	}
	
	//코멘트 좋아요 추가
	@ResponseBody
	@PostMapping("comment/comment_like")
	public int comment_like(Model model, @RequestParam("user_id") int user_id, @RequestParam("comment_id") int comment_id) {
		int result= likeService.insertLikeOne(user_id, comment_id);
		
		return result;
	}
	
	//코멘트 좋아요 삭제
	@ResponseBody
	@PostMapping("comment/comment_like_remove")
	public int comment_like_remove(Model model, @RequestParam("user_id") int user_id, @RequestParam("comment_id") int comment_id) {
		int result= likeService.deleteLikeOne(user_id, comment_id);
		return result;
	}
	
}
