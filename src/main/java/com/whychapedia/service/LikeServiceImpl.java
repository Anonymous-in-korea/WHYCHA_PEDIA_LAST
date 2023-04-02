package com.whychapedia.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.LikeMapper;
import com.whychapedia.vo.LikeVo;

@Service
public class LikeServiceImpl implements LikeService {
    
	@Autowired
	LikeVo likeVo;
	@Autowired
	LikeMapper likeMapper;
	
	//좋아요 많이 받은 id "theNum"만큼 받아오기	
	@Override
	public List<Integer> selectLikeTop(int theNum) {
		System.out.println("시작: LikeServiceImpl:selectLikeTop");
		List<Integer> directorLikeTopList=likeMapper.selectTopLikeList(theNum);
		System.out.println("끝: LikeServiceImpl:directorLikeTopList size:"+directorLikeTopList.size());
		System.out.println("끝: LikeServiceImpl:selectLikeTop");
		return directorLikeTopList;
	}

	@Override
	public int theLike(List<Integer> directorLikeTop) {
	       Random random = new Random();
	       int randomIndex = random.nextInt(directorLikeTop.size()); // 무작위로 인덱스를 선택
	       int theDirectorId = directorLikeTop.get(randomIndex); // 선택된 감독 아이디를 변수에 할당
	       System.out.println("theDirectorId: " + theDirectorId);
		return theDirectorId;
	}

}
