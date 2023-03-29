package com.whychapedia.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CommentReplyVo {
	private int id;
	private int comment_id;
	private int user_id;
	private String reply_content;
	private Date regi_date;
	private int is_block; // 1-block(x)
	
}
