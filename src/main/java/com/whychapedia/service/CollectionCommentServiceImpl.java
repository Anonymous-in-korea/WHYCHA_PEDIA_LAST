package com.whychapedia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whychapedia.mapper.CollectionCommentMapper;
import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CollectionVo;


@Service
public class CollectionCommentServiceImpl implements CollectionCommentService {

	@Autowired
	CollectionCommentMapper collectionCommentMapper;
	
	//collection comment 모두 가져오기
	@Override
	public List<CollectionCommentVo> selectCollectionComment(int collection_id) {
		List<CollectionCommentVo> collectionCommentList = collectionCommentMapper.selectCollectionComment(collection_id);
		return collectionCommentList;
	}

	//collection commemt 추가
	@Override
	public int insertCollectioncomment(int collection_id, int user_id, String collection_comment_content) {
		int result = collectionCommentMapper.insertCollectionComment(collection_id, user_id, collection_comment_content);
		return result;
	}
	

}
