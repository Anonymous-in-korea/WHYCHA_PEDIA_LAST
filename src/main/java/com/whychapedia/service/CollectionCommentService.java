package com.whychapedia.service;

import java.util.List;

import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CollectionVo;

public interface CollectionCommentService {

	//collection comment 모두 가져오기
	List<CollectionCommentVo> selectCollectionComment(int collection_id);

	//collection commemt 추가
	int insertCollectioncomment(int collection_id, int user_id, String collection_comment_content);
}
