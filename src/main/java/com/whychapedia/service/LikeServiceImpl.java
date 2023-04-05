package com.whychapedia.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.LikeMapper;
import com.whychapedia.vo.CommentVo;
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

	@Override//해당유저가 좋아하는 actor_id전체 가져오기 
	public List<LikeVo> selectActor_like_id(int sessionId) {
		List<LikeVo> actorLike_list= likeMapper.selectActor_like_id(sessionId);
		System.out.println("selectActor_like_id_list_size : "+actorLike_list.size());
		return actorLike_list;
	}

	@Override//해당유저가 좋아하는 director_id전체 가져오기 
	public List<LikeVo> selectDirector_like_id(int sessionId) {
		List<LikeVo> directorLike_list= likeMapper.selectDirector_like_id(sessionId);
		System.out.println("selectDirector_like_id_list_size : "+directorLike_list.size());
		return directorLike_list;
	}
	
	//해당 코멘트에 대한 likelist 받아오기
	@Override
	public List<LikeVo> selectCommentLike(List<CommentVo> commentVolist) {
		List<LikeVo> likevolist = likeMapper.selectCommentLike(commentVolist);
		return likevolist;
	}

	@Override //좋아요 1 추가하기 
	public int insertLikeOne(int comment_id, int user_id) {
		int insertLike = likeMapper.insertLikeOne(comment_id, user_id);
		System.out.println("likeservice insertLikeOne: "+ insertLike);
		return insertLike;
	}

	@Override //좋아요 1 삭제하기 
	public int deleteLikeOne(int comment_id, int user_id) {
		int deleteLike = likeMapper.deleteLikeOne(comment_id, user_id);
		System.out.println("likeservice deleteLikeOne: "+ deleteLike);
		return deleteLike;
	}

}
