package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.StarRateVo;

public interface StarRateService {

	List<Integer> selectStarTop10(int limit);

}
