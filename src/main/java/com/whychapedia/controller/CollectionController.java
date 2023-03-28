package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CollectionController {

	@GetMapping("collection/collection_SY")
	public String collection_SY() {
		return "collection/collection_SY";
	}

	@GetMapping("collection/collection_detail_HY")
	public String collection_detail_HY() {
		return "collection/collection_detail_HY";
	}
	
}
