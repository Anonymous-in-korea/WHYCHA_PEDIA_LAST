package com.whychapedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.whychapedia.vo.CollectionCommentVo;
import com.whychapedia.vo.CollectionVo;

@Mapper
public interface CollectionCommentMapper {
	
	//collection Comment 모두 가져오기
	List<CollectionCommentVo> selectCollectionComment(int collection_id);

	//collection commemt 추가
	int insertCollectionComment(int collection_id, int user_id, String collection_comment_content);

}
