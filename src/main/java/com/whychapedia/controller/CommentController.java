package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommentController {

	@GetMapping("comment/comment")
	public String comment() {
		return "comment/comment";
	}

	@GetMapping("comment/comment_reply_GC")
	public String comment_reply_GC() {
		return "comment/comment_reply_GC";
	}
	
}
