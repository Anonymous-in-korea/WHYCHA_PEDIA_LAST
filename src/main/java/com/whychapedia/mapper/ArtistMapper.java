package com.whychapedia.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ArtistMapper {
	//해당 감독 고유번호로 감독 이름 불러오기
	String selectOneDirectortName(int DirectorId);

}
