$(function() {
	 /* 슬라이드 스크롤 버튼 5ea (별점 영화 TOP10) */
		let TOP10_width = $("#STAR_TOP10").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let TOP10_rightWidth = -TOP10_width;
		let TOP10_liCount = $("#STAR_TOP10").children( $(".list_box_li") ).length - 1 /* 현재 불러온 컨텐츠 총 갯수 */
		let TOP10_page = TOP10_liCount / 5; /* 표시될 페이지 수 */
		let TOP10_lastWidth = TOP10_rightWidth * TOP10_page; /* 전체 width 값 */
		let TOP10_translate = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#STAR_TOP10_right").click(function() {
			console.log("오른쪽버튼(보여지는 페이지 길이) : " + TOP10_width);
	    	console.log("오른쪽버튼(현재 불러온 컨텐츠 총 갯수) : " + TOP10_liCount);
	    	console.log("오른쪽버튼(표시될 페이지 수) : " + TOP10_page);
	    	console.log("오른쪽버튼(전체 width값) : " + TOP10_lastWidth);
	    	console.log("오른쪽버튼(시작 -translateX 값) : " + TOP10_translate);
			if ( TOP10_translate == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	TOP10_translate += TOP10_rightWidth; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.STAR_TOP10").css({"transform":"translateX(" + TOP10_translate + "px)"});
		    	$(".STAR_TOP10_list_box_left_div").css({"display":"flex"});
		    	if ( TOP10_translate == (TOP10_lastWidth - TOP10_rightWidth) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
					$(".STAR_TOP10_list_box_right_div").css({"display":"none"});
				}
		    	console.log("오른쪽버튼(1번 -translateX 값) : " + TOP10_translate);
			} else {
				if ( TOP10_translate == ( TOP10_lastWidth - (TOP10_rightWidth * 2) ) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	$(".list_box4.STAR_TOP10").css({"transform":"translateX(" + ( TOP10_translate + TOP10_rightWidth ) + "px)"});
					$(".STAR_TOP10_list_box_right_div").css({"display":"none"});
					TOP10_translate = TOP10_lastWidth - TOP10_rightWidth;
			    	console.log("오른쪽버튼(2번 -translateX 값) : " + TOP10_translate);
				} else {
			    	TOP10_translate += TOP10_rightWidth; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.STAR_TOP10").css({"transform":"translateX(" + TOP10_translate + "px)"});
			    	console.log("오른쪽버튼(3번 -translateX 값) : " + TOP10_translate);
				}
			}
	    	console.log("오른쪽버튼(현재 페이지의 -translateX 값) : " + TOP10_translate);
	    });
		
		/* 왼쪽버튼 */
		$("#STAR_TOP10_left").click(function() {
			console.log("왼쪽버튼(보여지는 페이지 길이) : " + TOP10_width);
	    	console.log("왼쪽버튼(현재 불러온 컨텐츠 총 갯수) : " + TOP10_liCount);
	    	console.log("왼쪽버튼(표시될 페이지 수) : " + TOP10_page);
	    	console.log("왼쪽버튼(전체 width값) : " + TOP10_lastWidth);
	    	console.log("왼쪽버튼(시작 -translateX 값) : " + TOP10_translate);
			if ( TOP10_translate == TOP10_lastWidth ) {
				$(".list_box4.STAR_TOP10").css({"transform":"translateX(" + (TOP10_translate + TOP10_width) + "px)"});
				$(".STAR_TOP10_list_box_right_div").css({"display":"flex"});
				TOP10_translate += TOP10_width; /* 이동한 만큼 빼주기 */
			} else if ( TOP10_translate > TOP10_lastWidth ) {
				$(".list_box4.STAR_TOP10").css({"transform":"translateX(" + (TOP10_translate + TOP10_width) + "px)"});
				TOP10_translate += TOP10_width; /* 이동한 만큼 빼주기 */
				$(".STAR_TOP10_list_box_right_div").css({"display":"flex"});
			}
			
			if ( TOP10_translate == 0 ) {
				$(".list_box4.STAR_TOP10").css({"transform":"translateX(0px)"});
				$(".STAR_TOP10_list_box_left_div").css({"display":"none"});
			}
	    	console.log("왼쪽버튼(현재 페이지의 -translateX 값) : " + TOP10_translate);
		});
	/* 슬라이드 스크롤 버튼 5ea (별점 영화 TOP10) */
	
	
	/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	
	/* 슬라이드 스크롤 버튼 5ea (왓챠 영화 TOP10) */
		let WATCHA10_width = $("#WATCHA").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let WATCHA10_rightWidth = -WATCHA10_width;
		let WATCHA10_liCount = $("#WATCHA").children( $(".list_box_li") ).length - 1 /* 현재 불러온 컨텐츠 총 갯수 */
		let WATCHA10_page = WATCHA10_liCount / 5; /* 표시될 페이지 수 */
		let WATCHA10_lastWidth = WATCHA10_rightWidth * WATCHA10_page; /* 전체 width 값 */
		let WATCHA10_translate = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#WATCHA_right").click(function() {
			if ( WATCHA10_translate == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	WATCHA10_translate += WATCHA10_rightWidth; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.WATCHA").css({"transform":"translateX(" + WATCHA10_translate + "px)"});
		    	$(".WATCHA_list_box_left_div").css({"display":"flex"});
		    	if ( WATCHA10_translate == (WATCHA10_lastWidth - WATCHA10_rightWidth) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
					$(".WATCHA_list_box_right_div").css({"display":"none"});
				}
			} else {
				if ( WATCHA10_translate == ( WATCHA10_lastWidth - (WATCHA10_rightWidth * 2) ) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	$(".list_box4.WATCHA").css({"transform":"translateX(" + ( WATCHA10_translate + WATCHA10_rightWidth ) + "px)"});
					$(".WATCHA_list_box_right_div").css({"display":"none"});
					WATCHA10_translate = WATCHA10_lastWidth - WATCHA10_rightWidth;
				} else {
			    	WATCHA10_translate += WATCHA10_rightWidth; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.WATCHA").css({"transform":"translateX(" + WATCHA10_translate + "px)"});
				}
			}
	    });
		
		/* 왼쪽버튼 */
		$("#WATCHA_left").click(function() {
			if ( WATCHA10_translate == WATCHA10_lastWidth ) {
				$(".list_box4.WATCHA").css({"transform":"translateX(" + (WATCHA10_translate + WATCHA10_width) + "px)"});
				$(".WATCHA_list_box_right_div").css({"display":"flex"});
				WATCHA10_translate += WATCHA10_width; /* 이동한 만큼 빼주기 */
			} else if ( WATCHA10_translate > WATCHA10_lastWidth ) {
				$(".list_box4.WATCHA").css({"transform":"translateX(" + (WATCHA10_translate + WATCHA10_width) + "px)"});
				WATCHA10_translate += WATCHA10_width; /* 이동한 만큼 빼주기 */
				$(".WATCHA_list_box_right_div").css({"display":"flex"});
			}
			
			if ( WATCHA10_translate == 0 ) {
				$(".list_box4.WATCHA").css({"transform":"translateX(0px)"});
				$(".WATCHA_list_box_left_div").css({"display":"none"});
			}
		});
	/* 슬라이드 스크롤 버튼 5ea (왓챠 영화 TOP10) */
	
	
	/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	
	/* 슬라이드 스크롤 버튼 5ea (화제의 감독영화) */
		let DIRECTOR_width = $("#WATCHA").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let DIRECTOR_rightWidth = -DIRECTOR_width;
		let DIRECTOR_liCount = $("#WATCHA").children( $(".list_box_li") ).length - 1 /* 현재 불러온 컨텐츠 총 갯수 */
		let DIRECTOR_page = DIRECTOR_liCount / 5; /* 표시될 페이지 수 */
		let DIRECTOR_lastWidth = DIRECTOR_rightWidth * DIRECTOR_page; /* 전체 width 값 */
		let DIRECTOR_translate = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#DIRECTOR_right").click(function() {
			if ( DIRECTOR_translate == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	DIRECTOR_translate += DIRECTOR_rightWidth; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.DIRECTOR").css({"transform":"translateX(" + DIRECTOR_translate + "px)"});
		    	$(".DIRECTOR_list_box_left_div").css({"display":"flex"});
		    	if ( DIRECTOR_translate == (DIRECTOR_lastWidth - DIRECTOR_rightWidth) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
					$(".DIRECTOR_list_box_right_div").css({"display":"none"});
				}
			} else {
				if ( DIRECTOR_translate == ( DIRECTOR_lastWidth - (DIRECTOR_rightWidth * 2) ) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	$(".list_box4.DIRECTOR").css({"transform":"translateX(" + ( DIRECTOR_translate + DIRECTOR_rightWidth ) + "px)"});
					$(".DIRECTOR_list_box_right_div").css({"display":"none"});
					DIRECTOR_translate = DIRECTOR_lastWidth - DIRECTOR_rightWidth;
				} else {
			    	DIRECTOR_translate += DIRECTOR_rightWidth; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.DIRECTOR").css({"transform":"translateX(" + DIRECTOR_translate + "px)"});
				}
			}
	    });
		
		/* 왼쪽버튼 */
		$("#DIRECTOR_left").click(function() {
			if ( DIRECTOR_translate == DIRECTOR_lastWidth ) {
				$(".list_box4.DIRECTOR").css({"transform":"translateX(" + (DIRECTOR_translate + DIRECTOR_width) + "px)"});
				$(".DIRECTOR_list_box_right_div").css({"display":"flex"});
				DIRECTOR_translate += DIRECTOR_width; /* 이동한 만큼 빼주기 */
			} else if ( DIRECTOR_translate > DIRECTOR_lastWidth ) {
				$(".list_box4.DIRECTOR").css({"transform":"translateX(" + (DIRECTOR_translate + DIRECTOR_width) + "px)"});
				DIRECTOR_translate += DIRECTOR_width; /* 이동한 만큼 빼주기 */
				$(".DIRECTOR_list_box_right_div").css({"display":"flex"});
			}
			
			if ( DIRECTOR_translate == 0 ) {
				$(".list_box4.DIRECTOR").css({"transform":"translateX(0px)"});
				$(".DIRECTOR_list_box_left_div").css({"display":"none"});
			}
		});
	/* 슬라이드 스크롤 버튼 5ea (화제의 감독영화) */
	
	
	/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	
	/* 슬라이드 스크롤 버튼 6ea (1번 ul) */
		let StarPoint_width = $("#StarPoint").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let StarPoint_rightWidth = -StarPoint_width;
		let StarPoint_liCount = $("#StarPoint").children( $(".list_box_li") ).length - 1 /* 현재 불러온 컨텐츠 총 갯수 */
		let StarPoint_page = StarPoint_liCount / 6; /* 표시될 페이지 수 */
		let StarPoint_lastWidth = StarPoint_rightWidth * StarPoint_page; /* 전체 width 값 */
		let StarPoint_translate = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#StarPoint_right").click(function() {
			if ( StarPoint_translate == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	StarPoint_translate += StarPoint_rightWidth; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.StarPoint").css({"transform":"translateX(" + StarPoint_translate + "px)"});
		    	$(".StarPoint_list_box_left_div").css({"display":"flex"});
		    	if ( StarPoint_translate == (StarPoint_lastWidth - StarPoint_rightWidth) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
					$(".StarPoint_list_box_right_div").css({"display":"none"});
				}
			} else {
				if ( StarPoint_translate == ( StarPoint_lastWidth - (StarPoint_rightWidth * 2) ) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	$(".list_box4.StarPoint").css({"transform":"translateX(" + ( StarPoint_translate + StarPoint_rightWidth ) + "px)"});
					$(".StarPoint_list_box_right_div").css({"display":"none"});
					StarPoint_translate = StarPoint_lastWidth - StarPoint_rightWidth;
				} else {
			    	StarPoint_translate += StarPoint_rightWidth; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.StarPoint").css({"transform":"translateX(" + StarPoint_translate + "px)"});
				}
			}
	    });
		
		/* 왼쪽버튼 */
		$("#StarPoint_left").click(function() {
			if ( StarPoint_translate == StarPoint_lastWidth ) {
				$(".list_box4.StarPoint").css({"transform":"translateX(" + (StarPoint_translate + StarPoint_width) + "px)"});
				$(".StarPoint_list_box_right_div").css({"display":"flex"});
				StarPoint_translate += StarPoint_width; /* 이동한 만큼 빼주기 */
			} else if ( StarPoint_translate > StarPoint_lastWidth ) {
				$(".list_box4.StarPoint").css({"transform":"translateX(" + (StarPoint_translate + StarPoint_width) + "px)"});
				StarPoint_translate += StarPoint_width; /* 이동한 만큼 빼주기 */
				$(".StarPoint_list_box_right_div").css({"display":"flex"});
			}
			
			if ( StarPoint_translate == 0 ) {
				$(".list_box4.StarPoint").css({"transform":"translateX(0px)"});
				$(".StarPoint_list_box_left_div").css({"display":"none"});
			}
		});
	/* 슬라이드 스크롤 버튼 6ea (1번 ul) */
	
	
	/* 슬라이드 스크롤 버튼 collection */
		let collect_width = $("#collect").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let collect_RW = -collect_width;
		let collect_NC = $("#collect").children( $(".list_box_li_collection") ).length /* 현재 불러온 컨텐츠 총 갯수 */
		let collect_page = collect_NC / 5; /* 표시될 페이지 수 */
		let collect_lastW = collect_RW * (collect_page - 1); /* 전체 width 값 */
		let collect_NTX = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#collect_right").click(function() {
	    	/*console.log("오른쪽버튼(보여지는 페이지 길이) : " + collect_width);
	    	console.log("오른쪽버튼(전체 width값) : " + collect_lastW);*/
			if ( collect_NTX == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	collect_NTX += collect_RW; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.collect").css({"transform":"translateX(" + collect_NTX + "px)"});
		    	$(".col_list_box_left_div").css({"display":"flex"});
			} else {
				if ( collect_NTX == (collect_lastW - collect_RW) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	collect_NTX += collect_RW; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.collect").css({"transform":"translateX(" + collect_lastW + "px)"});
					$(".col_list_box_right_div").css({"display":"none"});
				} else {
			    	collect_NTX += collect_RW; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.collect").css({"transform":"translateX(" + collect_NTX + "px)"});
				}
			}
			/*console.log("오른쪽버튼(현재 페이지의 -translateX 값) : " + collect_NTX);*/
	    });
		
		/* 왼쪽버튼 */
		$("#collect_left").click(function() {
			/*console.log("왼쪽버튼(보여지는 페이지 길이) : " + collect_width);
	    	console.log("왼쪽버튼(전체 width값) : " + collect_lastW);*/
			if ( collect_NTX == collect_lastW ) {
				$(".list_box4.collect").css({"transform":"translateX(" + (collect_NTX + collect_width) + "px)"});
				$(".col_list_box_right_div").css({"display":"flex"});
				collect_NTX += collect_width; /* 이동한 만큼 빼주기 */
			} else if ( collect_NTX > collect_lastW ) {
				$(".list_box4.collect").css({"transform":"translateX(" + (collect_NTX + collect_width) + "px)"});
				collect_NTX += collect_width; /* 이동한 만큼 빼주기 */
			}
			
			if ( collect_NTX == 0 ) {
				$(".list_box4.collect").css({"transform":"translateX(0px)"});
				$(".col_list_box_left_div").css({"display":"none"});
			}
			/*console.log("왼쪽버튼(현재 페이지의 -translateX 값) : " + collect_NTX);*/
		});
	/* 슬라이드 스크롤 버튼 collection */
});