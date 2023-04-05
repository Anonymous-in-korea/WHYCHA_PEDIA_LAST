package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieGalleryTrailerMapper;
import com.whychapedia.vo.MovieGalleryTrailerVo;

@Service
public class MovieGalleryTrailerServiceImpl implements MovieGalleryTrailerService {
	
	@Autowired
	MovieGalleryTrailerMapper movieGalleryTrailerMapper;
	
	@Autowired
	MovieGalleryTrailerVo movieGalleryTrailerVo; 
	
	//해당 영화 겔러리 가져오기
	@Override
	public List<MovieGalleryTrailerVo> selectTheGallery(int movie_id) {
		List<MovieGalleryTrailerVo> movieGalleryVoList=movieGalleryTrailerMapper.selectAllGallery(movie_id);
		return movieGalleryVoList;
	}
	
	//해당 영화 동영상 가져오기
	@Override
	public List<MovieGalleryTrailerVo> selectTheTrailer(int movie_id) {
		List<MovieGalleryTrailerVo> movieTrailerVoList=movieGalleryTrailerMapper.selectAllTrailer(movie_id);
		return movieTrailerVoList;
	}

}
