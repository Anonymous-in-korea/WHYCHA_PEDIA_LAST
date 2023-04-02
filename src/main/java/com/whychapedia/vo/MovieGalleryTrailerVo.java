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
public class MovieGalleryTrailerVo {
	private int id; //겔러리 또는 트레일러의 vo
	private int movie_id; 
	private String movie_gallery_url;
	private String movie_trailer_url;
}
