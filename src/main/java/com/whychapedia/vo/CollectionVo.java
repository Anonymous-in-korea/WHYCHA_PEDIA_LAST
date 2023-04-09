package com.whychapedia.vo;

import java.util.List;

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
public class CollectionVo {
	private int id;
	private int user_id;
	private String collection_name;
	private String collection_desc;
	private int like_count;
	private int comment_count;
	private List<String> movie_post_urls;

}
