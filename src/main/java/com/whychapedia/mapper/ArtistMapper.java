package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.CollectionArtistVo;
import com.whychapedia.vo.LikeVo;

@Mapper
public interface ArtistMapper {
	//해당 감독 고유번호로 감독 이름 불러오기
	String selectOneDirectortName(int DirectorId);

	//해당 유저가 좋아하는 actorid로 배우정보 가져오기
	List<ArtistVo> selectActorAll(List<CollectionArtistVo> actorLike_list);
	
	//해당 유저가 좋아하는 directorid로 배우정보 가져오기
	List<ArtistVo> selectDirectorAll(List<CollectionArtistVo> directorLike_list);

	//해당검색어를 가지고 관련 배우 가져오기
	List<ArtistVo> selectSearchActorAll(String searchKeyword);

	//해당검색어를 가지고 관련 감독 가져오기
	List<ArtistVo> selectSearchDirectorAll(String searchKeyword);

	//해당 배우id를 가지고 해당배우 정보 가져오기
	ArtistVo selectActorOnelist(int id);
	//해당 감독id를 가지고 해당감독 정보 가져오기
	ArtistVo selectDirectorOnelist(int id);

	//선호 배우 3명 인물 포스터,이름,출현 횟수
	List<ArtistVo> selectPreferenceActor(int user_id);
	
	//해당 배우 흥행작 영화 관련 정보
	ArtistVo selectMovieOfActor(int id);

	//해당 배우 좋아요 개수 가져오기
	ArtistVo selectLikeForActor(int id);

	//선호 감독 3명 인물 포스터,이름,출현 횟수
	List<ArtistVo> selectPreferenceDirector(int user_id);

	//해당 감독 흥행작 영화 관련 정보
	ArtistVo selectMovieOfDirector(int id);

	//해당 배우 좋아요 개수 가져오기
	ArtistVo selectLikeForDirector(int id);

	


    
	

}
