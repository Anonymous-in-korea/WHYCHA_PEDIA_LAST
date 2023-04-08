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
	
	
	

}
