package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.LikeMapper;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MovieVo;

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

	@Override//director 무작위로 뽑기 (index page : 랜덤하게 감독 선택하기 위해서)
	public int theLike(List<Integer> directorLikeTop) {
	       Random random = new Random();
	       int randomIndex = random.nextInt(directorLikeTop.size()); // 무작위로 인덱스를 선택
	       int theDirectorId = directorLikeTop.get(randomIndex); // 선택된 감독 아이디를 변수에 할당
	       System.out.println("theDirectorId: " + theDirectorId);
		return theDirectorId;
	}


	@Override
	public int insertCommentLike(int user_id, int comment_id) {
		int insertLike = likeMapper.insertLikeOne(comment_id, user_id);
		System.out.println("likeservice insertLikeOne: "+ insertLike);
		return insertLike;
	}

	@Override
	public int deleteCommentLike(int comment_id, int user_id) {
		int deleteLike = likeMapper.deleteLikeOne(comment_id, user_id);
		System.out.println("likeservice deleteLikeOne: "+ deleteLike);
		return deleteLike;
	}

	@Override
	public int selectCommentOneLike(int comment_id) {
		int likeList = likeMapper.selectCommentOneLike(comment_id);
		return likeList;
	}


}
