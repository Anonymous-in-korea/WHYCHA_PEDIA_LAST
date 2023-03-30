package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.StarRateVo;

@Mapper
public interface StarRateMapper {

	public List<StarRateVo> selectMovieTop10(int limit);

}
