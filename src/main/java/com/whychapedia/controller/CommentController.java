package com.whychapedia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.whychapedia.vo.MovieVo;
import com.whychapedia.vo.StarRateVo;

import oracle.jdbc.proxy.annotation.Post;

@Controller
public class CommentController {
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	CommentReplyService commentReplyService;
	
	@Autowired
	LikeService likeService;
	
	@Autowired
	StarRateService starRateService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;


	@GetMapping("comment/comment_SY")
	public String comment(Model model, @RequestParam int movie_id) {
		int result = 0; //로그인 했는지 안했는지 확인용
		if(session.getAttribute("sessionId") != null) {
			result = 1;
		}
		//코멘트 좋아요 수 포함된 commentVO
		List<CommentVo> commentVolist = commentService.commentSelect10(movie_id);
		
		List<MemberVo> memberVolist = memberService.commentUserList(commentVolist);
		List<StarRateVo> starRatelist = starRateService.starRatelist(commentVolist);
		//코멘트 1개에 해당하는 replylis개수 가져오기
		List<Integer> replyCount = commentService.replyCount(commentVolist);
		//코멘트 좋아요 리스트
		List<LikeVo> likeList = likeService.selectCommentLikeList(commentVolist);
		model.addAttribute("commentVolist", commentVolist);
		model.addAttribute("memberVolist",memberVolist);
		model.addAttribute("starRatelist",starRatelist);
		model.addAttribute("replyCount",replyCount);
		model.addAttribute("result",result);
		model.addAttribute("likeList",likeList);
		return "comment/comment_SY";
	}
	
	@GetMapping("comment/comment_reply_GC")
	public String comment_reply_GC(Model model, @RequestParam("comment_id") int comment_id, @RequestParam int movie_id) {
		
		int result = 0; //로그인 확인용
		int user_id_myReply = 0;
		if(session.getAttribute("sessionId") != null) {
			user_id_myReply = (int)session.getAttribute("sessionId");
			System.out.println("user_id : " + user_id_myReply);
			System.out.println("comment_id : " + comment_id);
			result = 1;
		}
		
		//내가 작성한 COMMENT_REPLY 가져오기
		CommentReplyVo myReply = commentReplyService.selectMyCommentReply(comment_id, user_id_myReply);
		if ( myReply != null ) { model.addAttribute("myReply", myReply); System.out.println("myReply : " + myReply); }
		
		//코멘트가 달린 영화정보 가져오기
		MovieVo movieVo = commentReplyService.selectCommentMovie(movie_id);
		if ( movieVo != null ) { model.addAttribute("movieVo", movieVo); }

		CommentVo commentVo =  commentService.selectCommentOne(comment_id);
		//해당 코멘트에 달린 댓글list가져오기
		List<CommentReplyVo> replyList = commentReplyService.selectCommentReplyList(comment_id);
		//해당 코멘트 작성자의 평점 가져오기
		StarRateVo starRateOne = starRateService.selectStarRateOne(commentVo);
		//해당 코멘트의 작성자 정보 가져오기
		int user_id = commentVo.getUser_id();
		System.out.println(user_id);
		MemberVo commentMember = memberService.selectOneMember(user_id);
		
		//해당 commentLike list
		List<LikeVo> likeList = likeService.selectCommentLikeOne(comment_id);
		System.out.println("reply commentLikeVo : "+likeList);
		
		//replyList 작성자 정보 가져오기
		List<MemberVo> replyuserList = memberService.selectReplyuserList(replyList);
		model.addAttribute("result",result);
		model.addAttribute("commentVo",commentVo);
		model.addAttribute("replyList", replyList);
		model.addAttribute("replyuserList", replyuserList);
		model.addAttribute("starRateOne",starRateOne);
		model.addAttribute("commentMember",commentMember);
		model.addAttribute("likeList",likeList);
		if(commentMember != null)	System.out.println("controller commentRep mvo : "+ commentMember.getUser_name());
		
		return "comment/comment_reply_GC";
	}
	
	//코멘트 좋아요 추가
	@ResponseBody
	@PostMapping("comment/comment_like")
	public int comment_like(Model model, @RequestParam("comment_id") int comment_id, @RequestParam("user_id") int user_id) {
		//좋아요 클릭했을때 추가하기
		int result= likeService.insertCommentLike(comment_id, user_id);
		//좋아요 추가후 코멘트 1개에 대한 likelist 모두 가져오기
		int likeCount = likeService.selectCommentOneLike(comment_id);
		System.out.println("likeList : "+likeCount);
		model.addAttribute("likeCount",likeCount);
		return likeCount;
	}
	
	//코멘트 좋아요 삭제
	@ResponseBody
	@PostMapping("comment/comment_like_remove")
	public int comment_like_remove(Model model, @RequestParam("comment_id") int comment_id , @RequestParam("user_id") int user_id) {
		int result= likeService.deleteCommentLike(comment_id, user_id);
		int likeCount = likeService.selectCommentOneLike(comment_id);
		return likeCount;
	}
	
	//reply content 저장하기
	@ResponseBody
	@PostMapping("/replyInsert")
	public Map<String, Object> replySave(Model model, @RequestParam("comment_id") int comment_id, @RequestParam("user_id") int user_id, @RequestParam("reply_content") String reply_content) {
		Map<String, Object> map = new HashMap<>();
		
		int result = commentReplyService.insertReply(comment_id,user_id,reply_content);
		System.out.println("save result : "+ result);
		CommentVo commentVo =  commentService.selectCommentOne(comment_id);
		List<CommentReplyVo> replyList = commentReplyService.selectCommentReplyList(comment_id);
		//replyList 작성자 정보 가져오기
		List<MemberVo> replyuserList = memberService.selectReplyuserList(replyList);
		System.out.println("replyList : "+replyList);
		map.put("result", result);
		map.put("replyList", replyList);
		map.put("replyuserList", replyuserList);
		return map;
	}
	
	
	//COMMENT_REPLY_MODIFY 저장하기
	@ResponseBody
	@PostMapping("/replyModify")
	public int replyModify( @RequestParam int id, @RequestParam int comment_id, @RequestParam int user_id, @RequestParam String reply_content ) {
		
		System.out.println("reply_content : " + reply_content);
		int result = commentReplyService.modifyReply(id, comment_id, user_id, reply_content);
		
		return result;
	}
	
	
	//코멘트 reply 삭제
	@ResponseBody
	@PostMapping("replyDelete")
	public Map<String, Object> replyDelete(@RequestParam("reply_id") int reply_id, @RequestParam int comment_id) {
		System.out.println("replyDelete reply_id : "+ reply_id);
		Map<String, Object> map = new HashMap<>();
		int result = commentReplyService.deleteReply(reply_id);
		List<CommentReplyVo> replyList = commentReplyService.selectCommentReplyList(comment_id);
		//replyList 작성자 정보 가져오기
		List<MemberVo> replyuserList = memberService.selectReplyuserList(replyList);
		map.put("replyList", replyList);
		map.put("replyuserList", replyuserList);
		return map;
	}
	
	//코멘트 reply 좋아요 추가
	@ResponseBody
	@PostMapping("reply_like")
	public int commentReply_like(Model model, @RequestParam("reply_id") int reply_id, @RequestParam("user_id") int user_id) {
		//좋아요 클릭했을때 추가하기
		int result= likeService.insertReplyLike(reply_id, user_id);
		//좋아요 추가후 코멘트 1개에 대한 likelist 모두 가져오기
		int replyLikeCount = likeService.selectReplyLike(reply_id);
		System.out.println("replyLikeCount : "+replyLikeCount);
		model.addAttribute("replyLikeCount ",replyLikeCount);
		return replyLikeCount;
	}
	
	//코멘트 reply 좋아요 삭제
	@ResponseBody
	@PostMapping("reply_like_remove")
	public int commentReply_like_remove(Model model, @RequestParam("reply_id") int reply_id, @RequestParam("user_id") int user_id) {
		int result= likeService.deleteReplyLike(reply_id, user_id);
		int replyLikeCount = likeService.selectReplyLike(reply_id);
		System.out.println("likeList : "+replyLikeCount);
		model.addAttribute("replyLikeCount ",replyLikeCount);
		return replyLikeCount;
	}
	
}
