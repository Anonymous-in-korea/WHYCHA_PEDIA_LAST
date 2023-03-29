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
public class CollectionCommentVo {
	private int id;
	private int user_id;
	private int collection_id;
	private Date regi_date;
	private int is_block; // 1-blind x 2-blind o
	private String collection_comment_content;

}
