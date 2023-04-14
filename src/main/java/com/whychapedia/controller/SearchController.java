package com.whychapedia.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.whychapedia.service.ArtistService;
import com.whychapedia.service.CollectionService;
import com.whychapedia.service.MemberService;
import com.whychapedia.service.MovieCollectionService;
import com.whychapedia.service.MovieCountryService;
import com.whychapedia.service.MovieService;
import com.whychapedia.vo.ArtistVo;
import com.whychapedia.vo.CollectionVo;
import com.whychapedia.vo.LikeVo;
import com.whychapedia.vo.MemberVo;
import com.whychapedia.vo.MovieCollectionVo;
import com.whychapedia.vo.MovieCountryVo;
import com.whychapedia.vo.MovieVo;

@Controller
public class SearchController {

	@Autowired 
	ArtistService artistService;
	@Autowired
	MovieService movieService;
	@Autowired
	MovieCountryService movieCountryService;
	@Autowired
	MovieCollectionService movieCollectionService;
	@Autowired
	CollectionService collectionService;
	@Autowired
	MemberService memberService;
	@Autowired
	MovieVo movieVo;
	@Autowired
	MovieCountryVo movieCountryVo;
	@Autowired
	CollectionVo collectionVo;
	@Autowired
	MovieCollectionVo movieCollectionVo;
	@Autowired
	MemberVo memberVo;
	
	//검색어를 이용해 관련 영화 검색하기
	@RequestMapping(method = RequestMethod.GET, value = "search/searchContents_GC")
	public String searchContents_GC(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		
		//검색해서 관련 영화 리스트 가져오기
		List<MovieVo> movieSearchlist = movieService.selectSearchMovieAll(searchKeyword);
		System.out.println("selectSearchMovieAll_list_size"+movieSearchlist.size());
		model.addAttribute("movieSearchlist",movieSearchlist);
		//검색된 영화의 영화 국가 리스트 가져오기
		List<MovieCountryVo> movieSearchCountrylist = movieCountryService.selectSearchMovieCountryAll();
		System.out.println("selectSearchMovieCountryAll_list_size"+movieSearchCountrylist.size());
		model.addAttribute("movieSearchCountrylist",movieSearchCountrylist);
		return "search/searchContents_GC";
	}

	//검색어를 이용해 관련 인물 검색하기
	@RequestMapping(method = RequestMethod.GET, value = "search/searchPerson_SY")
	public String searchPerson(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		
		//해당 actor_id의 actor_name과 actor_post_url가져오기
		List<ArtistVo> actorSearchlist = artistService.selectSearchActorAll(searchKeyword);
		System.out.println("selectSearchActorAll_list_size"+actorSearchlist.size());
		model.addAttribute("actorSearchlist",actorSearchlist);
		
		//해당 actor_id의 actor_name과 actor_post_url가져오기
		List<ArtistVo> directorSearchlist = artistService.selectSearchDirectorAll(searchKeyword);
		System.out.println("selectSearchDirectorAll_list_size"+directorSearchlist.size());
		model.addAttribute("directorSearchlist",directorSearchlist);
		 return "search/searchPerson_SY";
	}
	
	
	
	//검색어를 이용해 관련 컬렉션 검색하기
	@RequestMapping(method = RequestMethod.GET, value = "search/searchCollection_HY")
	public String searchCollection_HY(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		//검색어로 관련 컬렉션 리스트 가져오기 Wuser랑 collection 테이블 조인하기 받아올 정보: 
		List<CollectionVo> collectionSearchList = collectionService.selectSearchCollectionList(searchKeyword);
		System.out.println("=====================================================================================");
		System.out.println("selectSearchCollectionList_size"+collectionSearchList.size());
		model.addAttribute("collectionSearchlist",collectionSearchList);
		
		//컬렉션 있는지 없는지
		int isInCollection=0;
		List<MovieCollectionVo> movieCollectionVoList = new ArrayList<MovieCollectionVo>();
		List<CollectionVo> updateCollectionVoList=new ArrayList<CollectionVo>();
		
		//컬렉션이 존재 할 때 
		if(collectionSearchList.size()!=0) {
			//컬렉션_movie vo 생성 ( collection_id,movie_id,movie_post_url 들어가 있음)
			movieCollectionVoList=movieCollectionService.selectCollectionVoWithMoviePostUrlList(collectionSearchList);
			System.out.println("collection(controller):MovieCollectionVoList size()"+movieCollectionVoList.size());				
			
			//collection_movie vo의 movie post url을 배열 값으로 collectionVoList에 넣음
			if(movieCollectionVoList.size()!=0) {
				updateCollectionVoList=collectionService.insertMoviePostUrlArray(movieCollectionVoList,collectionSearchList);
				System.out.println("collection(controller):updateCollectionVoList size()"+updateCollectionVoList.size());	
				System.out.println("collection(controller):updateCollectionVoList "+updateCollectionVoList.get(0).getMovie_post_urls());
			}
			//컬렉션 존재함
			isInCollection=1;					
		}
		
		
		model.addAttribute("updateCollectionVoList", updateCollectionVoList); // 콜렉션 리스트
		model.addAttribute("isInCollection",isInCollection); // 콜렉션 있는지 유무

		
		return "search/searchCollection_HY";
	}

	  
	

}
