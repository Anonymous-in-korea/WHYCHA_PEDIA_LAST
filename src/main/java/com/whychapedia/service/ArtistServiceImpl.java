package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.ArtistMapper;
import com.whychapedia.vo.ArtistVo;
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
	public List<ArtistVo> selectActorAll(List<LikeVo> actorLike_list) {
		List<ArtistVo> actor_list = artistMapper.selectActorAll(actorLike_list);
		System.out.println("selectActorAll_list_size : "+actor_list.size());
		System.out.println(actor_list);
		return actor_list;
	}

	//좋아하는 감독id리스트를 가지고 director정보 전부 가져오기
	@Override
	public List<ArtistVo> selectDirectorAll(List<LikeVo> directorLike_list) {
		List<ArtistVo> director_list = artistMapper.selectDirectorAll(directorLike_list);
		System.out.println("selectDirectorAll_list_size : "+director_list.size());
		System.out.println(director_list);
		return director_list;
	}

	//해당검색어를 가지고 관련 배우 가져오기
	@Override
	public List<ArtistVo> selectSearchActorAll(String searchKeyword) {
		List<ArtistVo> actorSearchlist= artistMapper.selectSearchActorAll();
		System.err.println("selectSearchActorAll_list_size : "+actorSearchlist.size());
		System.out.println(actorSearchlist);
		return actorSearchlist;
	}
	//해당검색어를 가지고 관련 감독 가져오기
	@Override
	public List<ArtistVo> selectSearchDirectorAll(String searchKeyword) {
		List<ArtistVo> directorSearchlist= artistMapper.selectSearchDirectorAll();
		System.err.println("selectSearchDirectorAll_list_size : "+directorSearchlist.size());
		System.out.println(directorSearchlist);
		return directorSearchlist;
	}

}
