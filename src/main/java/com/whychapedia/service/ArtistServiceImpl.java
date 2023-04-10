package com.whychapedia.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.ArtistMapper;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.CollectionArtistVo;
import com.whychapedia.vo.LikeVo;

@Service
public class ArtistServiceImpl implements ArtistService {
	
	@Autowired
	ArtistMapper artistMapper;
	
	//해당 감독 고유번호로 감독 이름 불러오기
	@Override
	public String selectDirectorName(int DirectorId) {
		String directorName=artistMapper.selectOneDirectortName(DirectorId);
		return directorName;
	}


	//좋아하는 배우id리스트를 가지고 actor정보 전부 가져오기
	@Override
	public List<ArtistVo> selectActorAll(List<CollectionArtistVo> actorLike_list) {
		List<ArtistVo> actor_list = artistMapper.selectActorAll(actorLike_list);
		System.out.println("selectActorAll_list_size : "+actor_list.size());
		System.out.println(actor_list);
		return actor_list;
	}

	//좋아하는 감독id리스트를 가지고 director정보 전부 가져오기
	@Override
	public List<ArtistVo> selectDirectorAll(List<CollectionArtistVo> directorLike_list) {
		List<ArtistVo> director_list = artistMapper.selectDirectorAll(directorLike_list);
		System.out.println("selectDirectorAll_list_size : "+director_list.size());
		System.out.println(director_list);
		return director_list;
	}
	//해당검색어를 가지고 관련 배우 가져오기
	@Override
	public List<ArtistVo> selectSearchActorAll(String searchKeyword) {
		List<ArtistVo> actorSearchlist= artistMapper.selectSearchActorAll(searchKeyword);
		System.err.println("selectSearchActorAll_list_size : "+actorSearchlist.size());
		System.out.println(actorSearchlist);
		return actorSearchlist;
	}
	//해당검색어를 가지고 관련 감독 가져오기
	@Override
	public List<ArtistVo> selectSearchDirectorAll(String searchKeyword) {
		List<ArtistVo> directorSearchlist= artistMapper.selectSearchDirectorAll(searchKeyword);
		System.err.println("selectSearchDirectorAll_list_size : "+directorSearchlist.size());
		System.out.println(directorSearchlist);
		return directorSearchlist;
	}

	//해당 아이디의 인물 정보 가져오기
	@Override
	public List<ArtistVo> selectActorOnelist(int id) {
		List<ArtistVo> actorPersonlist = artistMapper.selectActorOnelist(id);
		return actorPersonlist;
	}
	
	//선호 배우 3명 정보
	@Override
	public List<ArtistVo> selectPreferenceActor(int user_id) {
		//선호 배우 3명 인물 포스터,이름,출현 횟수 - 우선 순위 1.출현 횟수 2.출현 영화 평점 높은 순
		List<ArtistVo> selectPreferenceActor=artistMapper.selectPreferenceActor(user_id);
		ArtistVo selectMovieOfActor=new ArtistVo();
		ArtistVo selectLikeForActor=new ArtistVo();
		if(selectPreferenceActor.size()!=0) {
			//영화 정보 넣기
			for(ArtistVo artistVo :selectPreferenceActor) {
				selectMovieOfActor=artistMapper.selectMovieOfActor(artistVo.getId());
				artistVo.setRepresent_movie(selectMovieOfActor.getRepresent_movie());
				artistVo.setRepresent_movie_id(selectMovieOfActor.getRepresent_movie_id());
				artistVo.setRepresent_movie_post(selectMovieOfActor.getRepresent_movie_post());
			}
			
			//좋아요 넣기
			for(ArtistVo artistVo :selectPreferenceActor) {
				selectLikeForActor=artistMapper.selectLikeForActor(artistVo.getId());
				artistVo.setTotal_like(selectLikeForActor.getTotal_like());
			}//for문
			
		System.out.println(selectPreferenceActor);
	}//if문
		return selectPreferenceActor;
}

	//선호 감독 3명 정보
	@Override
	public List<ArtistVo> selectPreferenceDirector(int user_id) {
		List<ArtistVo> selectPreferenceDirector=artistMapper.selectPreferenceDirector(user_id);
		ArtistVo selectMovieOfDirector=new ArtistVo();
		ArtistVo selectLikeForDirector=new ArtistVo();
		if(selectPreferenceDirector.size()!=0) {
			//영화 정보 넣기
			for(ArtistVo artistVo :selectPreferenceDirector) {
				selectMovieOfDirector=artistMapper.selectMovieOfDirector(artistVo.getId());
				artistVo.setRepresent_movie(selectMovieOfDirector.getRepresent_movie());
				artistVo.setRepresent_movie_id(selectMovieOfDirector.getRepresent_movie_id());
				artistVo.setRepresent_movie_post(selectMovieOfDirector.getRepresent_movie_post());
			}
			
			//좋아요 넣기
			for(ArtistVo artistVo :selectPreferenceDirector) {
				selectLikeForDirector=artistMapper.selectLikeForDirector(artistVo.getId());
				artistVo.setTotal_like(selectLikeForDirector.getTotal_like());
			}//for문
			
		System.out.println(selectLikeForDirector);
	}//if문
		
		
		
		
		return selectPreferenceDirector;
	}
}
