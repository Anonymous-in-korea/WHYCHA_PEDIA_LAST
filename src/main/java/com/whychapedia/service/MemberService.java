package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MemberVo;

public interface MemberService {
	
	public MemberVo memberSelectOne(String user_email, String user_pw); // 로그인 메서드

	public MemberVo user_email_check(String user_email); // 회원가입 ID체크 메서드

	public void memberInsertOne(String user_name, String user_email, String user_pw); // 회원가입 메서드

	public MemberVo selectOneMember(int user_id);

	//불러온 코멘트에 해당하는 유저list 가져오기
	public List<MemberVo> commentUserList(List<CommentVo> commentVolist);

	//해당 코멘트의 reply가져오기
	public List<MemberVo> selectReplyuserList(List<CommentReplyVo> replyList);

	//콜렉션 코멘트에 대한 userList
	public List<MemberVo> selectCollectionCommentMember(List<CollectionCommentVo> collectionCommentList);

	//해당 감독을 컬렉션에 담은 유저 리스트
	public List<MemberVo> selectCollectionDirectorUser(int director_id);

	//해당 배우을 컬렉션에 담은 유저 리스트
	public List<MemberVo> selectCollectionActorUser(int actor_id);
	
}
