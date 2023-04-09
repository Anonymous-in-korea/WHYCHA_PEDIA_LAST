package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MovieCollectionMapper;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.MovieCollectionVo;

@Service
public class MovieCollectionServiceImpl implements MovieCollectionService {
	@Autowired
	MovieCollectionMapper movieCollectionMapper;
	@Autowired
	CollectionVo collectionVO;

	// 무비_컬레션 각각의 vo 데리고 오기 즉, 각 컬렉션마다 영화 아이디 불러오기
	@Override
	public List<MovieCollectionVo> selectCollectionVoList(List<CollectionVo> CollectionVoList) {
		List<MovieCollectionVo> collectionVoList = movieCollectionMapper.selectCollectionVoList(CollectionVoList);
		return collectionVoList;
	}

	// collection 중에서도 #개만 들고오기
	@Override
	public List<MovieCollectionVo> selectCollectionVoPartList(List<MovieCollectionVo> CollectionVoList, int the_num) {
		

		List<Integer> collectionIdList = new ArrayList<>();
		
		//collection_id 가져오기 
		for (MovieCollectionVo movieCollectionVo : CollectionVoList) {
			collectionIdList.add(movieCollectionVo.getCollection_id());
		}

		System.out.println("collectionIdList : " + collectionIdList.toString());
		
		//collection_id 중복 없애기
		HashSet<Integer> uniqueNumbers = new HashSet<>();
		for (Integer uniqueCollectionId : collectionIdList) {
			uniqueNumbers.add(uniqueCollectionId);
		}
		
		//set을 list로 바꾸는 과정
		ArrayList<Integer> uniqueCollectionIdList = new ArrayList<>(uniqueNumbers);
		
		//map선언
		Map<Integer, List<MovieCollectionVo>> map = new HashMap<>();
		
		//map에 해당 collection_id를 가진 4개의 Vo만 담기
		for(int i = 0; i < uniqueCollectionIdList.size(); i++) {
			List<MovieCollectionVo> tempList = new ArrayList<>();
			for (MovieCollectionVo movieCollectionVo : CollectionVoList) {
				if(movieCollectionVo.getCollection_id() == uniqueCollectionIdList.get(i)) {
					if(tempList.size() < 4) {
						tempList.add(movieCollectionVo);
					}
				}
			}
			map.put(i, tempList);
		}
		
		
		List<MovieCollectionVo> selectCollectionVoPartList = new ArrayList<>();
		
		System.out.println("맵 사이즈 : " + map.size());
		
		//collection_id당 4개의 movie만 담은 movie_collectionVo 생성
		for(int i = 0; i < map.size(); i++) {
			for(int j = 0; j < map.get(i).size(); j++) {
				//Vo를 하나씩 넣어주기
				selectCollectionVoPartList.add(map.get(i).get(j));
			}
		}
		
		System.out.println("selectCollectionVoPartList" + selectCollectionVoPartList.toString());

		return selectCollectionVoPartList;
	}

	//해당 컬렉션 영화 모두 가져오기 
	@Override
	public List<MovieCollectionVo> selectOneCollectionVoList(int collection_id) {
		List<MovieCollectionVo> selectOneCollectionVoList=movieCollectionMapper.selectOneCollectionVoList(collection_id);
		return selectOneCollectionVoList;
	}

	//컬렉션_movie vo 생성 ( collection_id,movie_id,movie_post_url 들어가 있음)
	@Override
	public List<MovieCollectionVo> selectCollectionVoWithMoviePostUrlList(List<CollectionVo> collectionVoList) {
		List<MovieCollectionVo> selectCollectionVoWithMoviePostUrlList=movieCollectionMapper.selectCollectionVoWithMoviePostUrlList(collectionVoList);
		return selectCollectionVoWithMoviePostUrlList;
	}

}
