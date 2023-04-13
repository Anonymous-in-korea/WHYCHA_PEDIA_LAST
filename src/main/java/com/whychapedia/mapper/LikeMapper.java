package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.LikeVo;

@Mapper
public interface LikeMapper {

	//좋아요 많이 받은 사람 "theNum"만큼 가져오기
	List<Integer> selectTopLikeList(int theNum);


	int insertLikeOne(int comment_id, int user_id);


	int deleteLikeOne(int comment_id, int user_id);


	int selectCommentOneLike(int comment_id);

	//해당감독 좋아요 추가
	int insertDirectorLike(int user_id, int director_id);

	//해당 감독 좋아용 수 가져오기
	int selectDirectorLikeList(int director_id);

	//해당 감독 좋아요 삭제
	int deleteDirectorLike(int user_id, int director_id);

	//해당 배우 좋아요 수 가져오기
	int selectActorLikeList(int actor_id);
	
	//해당 유저가 해당 배우 좋아요 눌렀는지 체크
	int checkActorLike(int user_id, int actor_id);

	//해당 배우 좋아요 추가
	int insertActorLike(int user_id, int actor_id);
	
	//해당 배우 좋아요 삭제
	int deleteActorLike(int user_id, int actor_id);

	//해당 유저가 해당 배우 좋아요 갯수 가져오기
	int selectActorLikeCount(int user_id, int actor_id);
	

	


}
