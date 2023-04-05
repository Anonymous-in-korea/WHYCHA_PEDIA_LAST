package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.MovieGalleryTrailerVo;

@Mapper
public interface MovieGalleryTrailerMapper {
	//해당 영화 겔러리 가져오기
	List<MovieGalleryTrailerVo> selectAllGallery(int movie_id);
	//해당 영화 동영상 가져오기
	List<MovieGalleryTrailerVo> selectAllTrailer(int movie_id);

}
