package com.whychapedia.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CollectionVo {
	private int id;
	private int user_id;
	private String collection_name;
	private String collection_desc;

}
