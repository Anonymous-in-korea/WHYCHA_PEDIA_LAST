package com.whychapedia.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class LikeVo {
	private int id;
	private int type_id; //director,actor,collection,comment,reply
	private int user_id;

}
