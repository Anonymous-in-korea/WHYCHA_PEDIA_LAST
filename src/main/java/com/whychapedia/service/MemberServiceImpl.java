package com.whychapedia.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.MemberMapper;
import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CommentReplyVo;
import com.whychapedia.vo.CommentVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	MemberVo memberVo;

	@Override // 로그인 메서드
	public MemberVo memberSelectOne(String user_email, String user_pw) {
		memberVo = memberMapper.memberSelectOne(user_email, user_pw);
		return memberVo;
	}

	@Override // 회원가입 ID체크 메서드
	public MemberVo user_email_check(String user_email) {
		memberVo = memberMapper.memberIdCheck(user_email);
		return memberVo;
	}

	@Override // 회원가입 메서드
	public void memberInsertOne(String user_name, String user_email, String user_pw) {
		memberMapper.memberInsertOne(user_name, user_email, user_pw);
	}

	@Override // 해당 user의 id를 가지고 memberVo가져오기
	public MemberVo selectOneMember(int user_id) {
		memberVo=memberMapper.selectOneMember(user_id);
		return memberVo;
	}
	
	
	@Override //불러온 코멘트에 해당하는 userlist가져오기/영화 상세보기 페이지 comment userList
	public List<MemberVo> commentUserList(List<CommentVo> commentVolist) {
		List<MemberVo> mvoList = memberMapper.commentUserList(commentVolist);
//		System.out.println("memberService commentUserList : "+ mvoList);
		return mvoList;
	}

	@Override //댓글 userlist가져오기
	public List<MemberVo> selectReplyuserList(List<CommentReplyVo> replyList) {
		List<MemberVo> mvoReplyList = memberMapper.selectReplyuserList(replyList);
		return mvoReplyList;
	}
	
	//콜렉션 코멘트 List에 대한 user List(중복없이 들고오기)
	@Override
	public List<MemberVo> selectCollectionCommentMember(List<CollectionCommentVo> collectionCommentList) {
		List<MemberVo> colCommentUserList = memberMapper.selectCollectionCommentMember(collectionCommentList);
		Set<Integer> userIdSet = new HashSet<>();
		List<MemberVo> NoRepeatMemberVoList=new ArrayList<>();
		for (MemberVo memberVo : colCommentUserList) {
		    if (userIdSet.add(memberVo.getId())) {
		    	NoRepeatMemberVoList.add(memberVo);
		    }
		}
		return colCommentUserList;
	}

	//해당 감독을 컬렉션에 담은 유저 리스트
	@Override
	public List<MemberVo> selectCollectionDirectorUser(int director_id) {
		List<MemberVo> collectionDirectorUser=memberMapper.selectCollectionDirectorUser(director_id);
		return collectionDirectorUser;
	}

	//해당 배우를 컬렉션에 담은 유저 리스트
	@Override
	public List<MemberVo> selectCollectionActorUser(int actor_id) {
		List<MemberVo> collectionActorUser = memberMapper.selectCollectionActorUser(actor_id);
		return collectionActorUser;
	}
	
}
