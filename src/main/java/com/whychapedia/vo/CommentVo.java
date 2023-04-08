package com.whychapedia.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CommentVo {
	private int id;
	private int movie_id;
	private int user_id;
	private String comment_content;
	private Date regi_date;
	private int like_count;
	private int is_blind; // 1-blind x 2-blind o
	private int is_spoil; // 1-spoil x 2-spoil o
	private int total_like;
	private int reply_count;

}
