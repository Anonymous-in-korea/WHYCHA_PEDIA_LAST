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


	@Override //코멘트 좋아요 추가
	public int insertCommentLike(int comment_id, int user_id) {
		int insertLike = likeMapper.insertLikeOne(comment_id, user_id);
		System.out.println("likeservice insertLikeOne: "+ insertLike);
		return insertLike;
	}

	@Override //한명의 user가 코멘트 좋아요 삭제
	public int deleteCommentLike(int comment_id, int user_id) {
		int deleteLike = likeMapper.deleteLikeOne(comment_id, user_id);
		System.out.println("likeservice deleteLikeOne: "+ deleteLike);
		return deleteLike;
	}

	@Override//코멘트 좋아요 개수
	public int selectCommentOneLike(int comment_id) {
		int likeList = likeMapper.selectCommentOneLike(comment_id);
		return likeList;
	}

	//해당 감독 좋아요 추가
	@Override
	public int insertDirectorLike(int user_id, int director_id) {
		int directorlikeresult = likeMapper.insertDirectorLike(user_id, director_id);
		System.out.println("likeservice directorlikeresult: "+ directorlikeresult);
		return directorlikeresult;
	}

	//해당 감독 좋아요 수  가져오기
	@Override
	public int selectDirectorLikeList(int director_id) {
		int directorlikeCount = likeMapper.selectDirectorLikeList(director_id);
		return directorlikeCount;
	}

	//해당 감독 좋아요 삭제
	@Override
	public int deleteDirectorLike(int user_id, int director_id) {
		int directorlikeDeleteresult = likeMapper.deleteDirectorLike(user_id, director_id);
		System.out.println("likeservice directorlikeDeleteresult: "+ directorlikeDeleteresult);
		return directorlikeDeleteresult;
	}
	
	//해당 유저가 해당 배우 좋아요 했는지 체크여부
	@Override
	public int checkDirectorLike(int user_id, int director_id) {
		int count = likeMapper.checkDirectorLike(user_id, director_id);
		return count;
	}

	//해당 배우 좋아요 수 가져오기
	@Override
	public int selectActorLikeList(int actor_id) {
		int actorlikeCount = likeMapper.selectActorLikeList(actor_id);
		return actorlikeCount;
	}
	
	//해당 유저가 해당 배우 좋아요 했는지 체크여부
	@Override
	public int checkActorLike(int user_id, int actor_id) {
		 int count = likeMapper.checkActorLike(user_id, actor_id);
		    return count;
	}
	
	//해당 배우 좋아요 추가
	@Override
	public int insertActorLike(int user_id, int actor_id) {
		int likeCount = likeMapper.selectActorLikeCount(user_id, actor_id);
        if (likeCount > 0) {
            return 0; // 이미 좋아요를 눌렀으므로 추가하지 않음
        } else {
            likeMapper.insertActorLike(user_id, actor_id);
            int actorlikeCount = likeMapper.selectActorLikeList(actor_id);
            return actorlikeCount;
        }
	}
	
	//해당 배우 좋아요 삭제
	@Override
	public int deleteActorLike(int user_id, int actor_id) {
		likeMapper.deleteActorLike(user_id, actor_id);
        int actorlikeCount = likeMapper.selectActorLikeList(actor_id);
        return actorlikeCount;
	    }

	//콜렉션 좋아요 추가/좋아요 개수
	@Override
	public int insertCollectionLike(int collection_id, int user_id) {
		likeMapper.insertCollectionLike(collection_id, user_id);
		int collectionCount = likeMapper.selectCollectionLikeCount(collection_id);
		return collectionCount;
	}
	//콜렉션 좋아요 삭제/좋아요 개수
	@Override
	public int deleteCollectionLike(int collection_id, int user_id) {
		likeMapper.deleteCollectionLike(collection_id, user_id);
		int collectionCount = likeMapper.selectCollectionLikeCount(collection_id);
		return collectionCount;
	}
	
	//reply 좋아요 추가
	@Override
	public int insertReplyLike(int reply_id, int user_id) {
		int likeresult = likeMapper.insertReplyLike(reply_id,user_id);
		System.out.println("likeresult insert : "+likeresult);
		return 0;
	}

	//reply 좋아요 삭제
	@Override
	public int deleteReplyLike(int reply_id, int user_id) {
		int likeresult = likeMapper.deleteReplyLike(reply_id,user_id);
		System.out.println("likeresult delete : "+likeresult);
		return 0;
	}
	//reply like 수
	@Override
	public int selectReplyLike(int reply_id) {
		int replyLike = likeMapper.selectReplyLike(reply_id);
		return replyLike;
	}

	//코멘트 좋아요 list
	@Override
	public List<LikeVo> selectCommentLikeList(List<CommentVo> commentVolist) {
		List<LikeVo> likeList = likeMapper.selectCommentLikeList(commentVolist);
		return likeList;
	}

	//콜렉션 좋아요 list
	@Override
	public List<LikeVo> selectCollectionLikeList(int collection_id) {
		List<LikeVo> collectionLikeList = likeMapper.selectCollectionLikeList(collection_id);
		return collectionLikeList;
	}
	
	//코멘트 1개에 대한 like list
	@Override
	public List<LikeVo> selectCommentLikeOne(int comment_id) {
		List<LikeVo> likeList = likeMapper.selectCommentLikeOne(comment_id);
		return likeList;
	}

	//해당 코멘트에 대한 like 모두 삭제
	@Override
	public int deleteCommentLikeAll(int comment_id) {
		int result=0;
		result=likeMapper.deleteCommentLikeAll(comment_id);
		return result;
	}

	//해당 코멘트에 대한 reply 모두 삭제
	@Override
	public int deleteCommentReplyLikeAll(int comment_id) {
		int result=0;
		result=likeMapper.deleteCommentReplyLikeAll(comment_id);
		return result;
	}


}
