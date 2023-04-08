package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.LikeVo;

public interface ArtistService {

	String selectDirectorName(int DirectorId);
	
	
	//좋아하는 배우id리스트를 가지고 actor정보 전부 가져오기
	List<ArtistVo> selectActorAll(List<LikeVo> actorLike_list);
	
	//좋아하는 감독id리스트를 가지고 director정보 전부 가져오기
	List<ArtistVo> selectDirectorAll(List<LikeVo> directorLike_list);


	//해당검색어를 가지고 관련 배우 가져오기
	List<ArtistVo> selectSearchActorAll(String searchKeyword);

	//해당검색어를 가지고 관련 감독 가져오기
	List<ArtistVo> selectSearchDirectorAll(String searchKeyword);

	//해당 id를 가지고 해당인물 정보 가져오기
	List<ArtistVo> selectActorOnelist(int id);


}
