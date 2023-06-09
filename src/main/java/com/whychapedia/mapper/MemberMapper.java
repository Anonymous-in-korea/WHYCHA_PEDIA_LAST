package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MemberVo;

@Mapper
public interface MemberMapper {

	public MemberVo memberSelectOne(String user_email, String user_pw); // 로그인 메서드

	public MemberVo memberIdCheck(String user_email); // 회원가입 ID체크 메서드

	public void memberInsertOne(String user_name, String user_email, String user_pw); // 회원가입 메서드

	public MemberVo selectOneMember(int user_id);
	
	public List<MemberVo> memberSelectAll();//멤버정보 모두 가져오기
	
	//코멘트 해당 유저 정보 1개 들고오기
	public MemberVo selectMemberOne(int user_id);

	public List<MemberVo> commentUserList(List<CommentVo> commentVolist);

	public List<MemberVo> selectReplyuserList(List<CommentReplyVo> replyList);
	
	//콜렉션 코멘트 List의 user List
	public List<MemberVo> selectCollectionCommentMember(List<CollectionCommentVo> collectionCommentList);
	
	//영화 상세페이지 코멘트에 해당하는 user List
	public List<MemberVo> selectcommentUserList(List<CommentVo> commentVo2);

	//해당 감독을 컬렉션에 담은 유저 리스트
	public List<MemberVo> selectCollectionDirectorUser(int director_id);

	//해당 배우를 컬렉션에 담은 유저 리스트
	public List<MemberVo> selectCollectionActorUser(int actor_id);
}
