package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.MovieGalleryTrailerVo;

public interface MovieGalleryTrailerService {

	List<MovieGalleryTrailerVo> selectTheGallery(int movie_id);

	List<MovieGalleryTrailerVo> selectTheTrailer(int movie_id);

}
