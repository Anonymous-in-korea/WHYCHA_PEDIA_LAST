package com.whychapedia.vo;


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
public class LikeVo {
	private int id;
	private int director_id;
	private int actor_id;
	private int collection_id;
	private int comment_id;
	private int reply_id;
	private int user_id;

}
