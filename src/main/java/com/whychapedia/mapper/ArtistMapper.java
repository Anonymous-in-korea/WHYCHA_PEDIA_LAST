package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.LikeVo;

@Mapper
public interface ArtistMapper {
	//해당 감독 고유번호로 감독 이름 불러오기
	String selectOneDirectortName(int DirectorId);

	//해당 유저가 좋아하는 actorid로 배우정보 가져오기
	List<ArtistVo> selectActorAll(List<LikeVo> actorLike_list);
	
	//해당 유저가 좋아하는 directorid로 배우정보 가져오기
	List<ArtistVo> selectDirectorAll(List<LikeVo> directorLike_list);

	//해당검색어를 가지고 관련 배우 가져오기
	List<ArtistVo> selectSearchActorAll(String searchKeyword);

	//해당검색어를 가지고 관련 감독 가져오기
	List<ArtistVo> selectSearchDirectorAll(String searchKeyword);

	//해당 id를 가지고 해당인물 정보 가져오기
	List<ArtistVo> selectActorOnelist(int id);
    
	

}
