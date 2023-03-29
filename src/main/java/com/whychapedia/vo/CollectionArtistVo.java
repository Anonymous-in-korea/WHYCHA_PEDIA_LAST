package com.whychapedia.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CollectionArtistVo {
	int id;
	int user_id;
	int type_id; // director,actor

}
