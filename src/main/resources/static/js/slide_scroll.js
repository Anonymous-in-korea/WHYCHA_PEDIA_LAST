$(function() {
	 /* 슬라이드 스크롤 버튼 5ea (1번 ul) */
		let BO_width = $("#BO").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let BO_RW = -BO_width;
		let BO_NC = $("#BO").children( $(".list_box_li") ).length - 1 /* 현재 불러온 컨텐츠 총 갯수 */
		let BO_page = BO_NC / 5; /* 표시될 페이지 수 */
		let BO_lastW = BO_RW * (BO_page - 1); /* 전체 width 값 */
		let BO_NTX = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#BO_right").click(function() {
			console.log("오른쪽버튼(보여지는 페이지 길이) : " + BO_width);
	    	//console.log("오른쪽버튼 : " + BO_NC);
	    	//console.log("오른쪽버튼 : " + BO_page);
	    	console.log("오른쪽버튼(전체 width값) : " + BO_lastW);
			if ( BO_NTX == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	BO_NTX += BO_RW; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.BO").css({"transform":"translateX(" + BO_NTX + "px)"});
		    	$(".BO_list_box_left_div").css({"display":"flex"});
			} else {
				if ( BO_NTX == (BO_lastW - BO_RW) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	BO_NTX += BO_RW; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.BO").css({"transform":"translateX(" + BO_lastW + "px)"});
					$(".BO_list_box_right_div").css({"display":"none"});
				} else {
			    	BO_NTX += BO_RW; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.BO").css({"transform":"translateX(" + BO_NTX + "px)"});
				}
			}
	    	console.log("오른쪽버튼(현재 페이지의 -translateX 값) : " + BO_NTX);
	    });
		
		/* 왼쪽버튼 */
		$("#BO_left").click(function() {
			console.log("왼쪽버튼(보여지는 페이지 길이) : " + BO_width);
	    	//console.log("왼쪽버튼 : " + BO_NC);
	    	//console.log("왼쪽버튼 : " + BO_page);
	    	console.log("왼쪽버튼(전체 width값) : " + BO_lastW);
			if ( BO_NTX == BO_lastW ) {
				$(".list_box4.BO").css({"transform":"translateX(" + (BO_NTX + BO_width) + "px)"});
				$(".BO_list_box_right_div").css({"display":"flex"});
				BO_NTX += BO_width; /* 이동한 만큼 빼주기 */
			} else if ( BO_NTX > BO_lastW ) {
				$(".list_box4.BO").css({"transform":"translateX(" + (BO_NTX + BO_width) + "px)"});
				BO_NTX += BO_width; /* 이동한 만큼 빼주기 */
			}
			
			if ( BO_NTX == 0 ) {
				$(".list_box4.BO").css({"transform":"translateX(0px)"});
				$(".BO_list_box_left_div").css({"display":"none"});
			}
	    	console.log("왼쪽버튼(현재 페이지의 -translateX 값) : " + BO_NTX);
		});
	/* 슬라이드 스크롤 버튼 5ea (1번 ul) */
	
	
	/* 슬라이드 스크롤 버튼 6ea (1번 ul) */
		let SP_width = $("#SP").width(); /* 현재 ul의 width 값 */
		/* 오른쪽버튼 */
		let SP_RW = -SP_width;
		let SP_NC = $("#SP").children( $(".list_box_li") ).length - 1 /* 현재 불러온 컨텐츠 총 갯수 */
		let SP_page = SP_NC / 6; /* 표시될 페이지 수 */
		let SP_lastW = SP_RW * (SP_page - 1); /* 전체 width 값 */
		let SP_NTX = 0; /* 현재 페이지의 translateX 값 */
		
	    $("#SP_right").click(function() {
			console.log("오른쪽버튼(보여지는 페이지 길이) : " + SP_width);
	    	console.log("오른쪽버튼(전체 width값) : " + SP_lastW);
			if ( SP_NTX == 0 ) { /* 오른쪽 넘김버튼 클릭 시 표시되는 width만큼 이동 */
		    	SP_NTX += SP_RW; /* 이동한 만큼 추가해주기 */
		    	$(".list_box4.SP").css({"transform":"translateX(" + SP_NTX + "px)"});
		    	$(".SP_list_box_left_div").css({"display":"flex"});
			} else {
				if ( SP_NTX == (SP_lastW - SP_RW) ) { /* 현재 페이지 X 값이 전체 width와 같아지면 더 넘어가지않게 stop */
			    	SP_NTX += SP_RW; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.SP").css({"transform":"translateX(" + SP_lastW + "px)"});
					$(".SP_list_box_right_div").css({"display":"none"});
				} else {
			    	SP_NTX += SP_RW; /* 이동한 만큼 추가해주기 */
			    	$(".list_box4.SP").css({"transform":"translateX(" + SP_NTX + "px)"});
				}
			}
			console.log("오른쪽버튼(현재 페이지의 -translateX 값) : " + SP_NTX);
	    });
		
		/* 왼쪽버튼 */
		$("#SP_left").click(function() {
			console.log("왼쪽버튼(보여지는 페이지 길이) : " + SP_width);
	    	console.log("왼쪽버튼(전체 width값) : " + SP_lastW);
			if ( SP_NTX == SP_lastW ) {
				$(".list_box4.SP").css({"transform":"translateX(" + (SP_NTX + SP_width) + "px)"});
				$(".SP_list_box_right_div").css({"display":"flex"});
				SP_NTX += SP_width; /* 이동한 만큼 빼주기 */
			} else if ( SP_NTX > SP_lastW ) {
				$(".list_box4.SP").css({"transform":"translateX(" + (SP_NTX + SP_width) + "px)"});
				SP_NTX += SP_width; /* 이동한 만큼 빼주기 */
			}
			
			if ( SP_NTX == 0 ) {
				$(".list_box4.SP").css({"transform":"translateX(0px)"});
				$(".SP_list_box_left_div").css({"display":"none"});
			}
			console.log("왼쪽버튼(현재 페이지의 -translateX 값) : " + SP_NTX);
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
	    	console.log("오른쪽버튼(보여지는 페이지 길이) : " + collect_width);
	    	console.log("오른쪽버튼(전체 width값) : " + collect_lastW);
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
			console.log("오른쪽버튼(현재 페이지의 -translateX 값) : " + collect_NTX);
	    });
		
		/* 왼쪽버튼 */
		$("#collect_left").click(function() {
			console.log("왼쪽버튼(보여지는 페이지 길이) : " + collect_width);
	    	console.log("왼쪽버튼(전체 width값) : " + collect_lastW);
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
			console.log("왼쪽버튼(현재 페이지의 -translateX 값) : " + collect_NTX);
		});
	/* 슬라이드 스크롤 버튼 collection */
});