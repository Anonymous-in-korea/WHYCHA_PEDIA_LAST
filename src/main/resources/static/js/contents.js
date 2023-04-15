$(function() {
	/* 헤더 투명화 */
    $( window ).on("scroll", function() {
        if ( $(window).scrollTop() ) {
            $(".header").addClass("active");
            $(".header_li_movie").addClass("active");
            $(".header_li_TV").addClass("active");
            $(".searchBox_label").addClass("active");
            $(".searchBox_input").addClass("active");
            $(".login_button").addClass("active");
            $(".join_button").addClass("active");
            $(".evaluate_button").addClass("active");
            $(".user_picture_div").addClass("active");
            $("#logo_change").attr("src", "/images/no1_WHYCHA_orange.png")
        } else {
            $(".header").removeClass("active");
            $(".header_li_movie").removeClass("active");
            $(".header_li_TV").removeClass("active");
            $(".searchBox_label").removeClass("active");
            $(".searchBox_input").removeClass("active");
            $(".login_button").removeClass("active");
            $(".join_button").removeClass("active");
            $(".evaluate_button").removeClass("active");
            $(".user_picture_div").removeClass("active");
            $("#logo_change").attr("src", "/images/no1_WHYCHA_NONBACK.png")
        }
    });
	/* 헤더 투명화 */
	
	
	/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	/* 로그인 전에 별점평가를 누를 때 */
	$("#star_rating").click(function() {
		$(".login_button").click();
	});
	$("#star_container").click(function() {
		$(".login_button").click();
	});
	
	$( window ).on(function() {
		$("#star_rating1").hide(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide(); $("#star_rating5").hide(); $("#star_rating6").hide();
		$("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
	});
	
	/* 별점 색깔변경 */
	$("#star_rating_login").change(function() {
		if ( $("#star_rating_login").val() == "0" ) { $("#star_rating1").hide(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
		} else if ( $("#star_rating_login").val() == "0.5" ) { $("#star_rating1").show(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "1.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "1.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").show(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "2.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "2.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").show(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "3.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "3.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").show(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "4.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating_login").val() == "4.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").show(); $("#star_rating10").hide();
        	
        } else { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show(); $("#star_rating5").hide();
        	$("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").show();
        }
    });
	/* 별점 색깔변경 */


	/* 별점 색깔변경 (로그인 후 저장된 별점 불러올 때) */
	if ( $("#star_rating_login").val() == "0" ) { $("#star_rating1").hide(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
	} else if ( $("#star_rating_login").val() == "0.5" ) { $("#star_rating1").show(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "1.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "1.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").show(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "2.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "2.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").show(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "3.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "3.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").show(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "4.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating_login").val() == "4.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").show(); $("#star_rating10").hide();
    	
    } else { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show(); $("#star_rating5").hide();
    	$("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").show();
    }
	/* 별점 색깔변경 */
	
	
	/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	
	/* 아이콘 크기 변화 */
	$(".select_image").hover(function() {
		$("img", this).css({
			"-webkit-transform": "translate(-50%, -50%) scale(1.2)",
			"-ms-transform": "translate(-50%, -50%) scale(1.2)",
			"transform": "translate(-50%, -50%) scale(1.2)"
		});
	}, function() {
		$("img", this).css({
			"-webkit-transform": "translate(-50%, -50%) scale(1)",
			"-ms-transform": "translate(-50%, -50%) scale(1)",
			"transform": "translate(-50%, -50%) scale(1)"
		});
	});
	/* 아이콘 크기 변화 */
	
	
	/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	
	/* 마우스로 클릭하면 색깔변화 (로그인 전) */
    	/* 보고싶어요 section start */
    	$("#wish_btn").click(function() {
			if ( $(this).hasClass("active") ) {
				$(this).removeClass("active");
				$("#plus_icon").css({"display":"block"});
				$("#wish_flag_icon").css({"display":"none"});
			} else {
				$(this).addClass("active");
				$("#plus_icon").css({"display":"none"});
				$("#wish_flag_icon").css({"display":"block"});
				if ( $(".wish_pop_up_background").css("display") == "none" ) { $(".wish_pop_up_background").show(); }
			}
		});
		
    	/* 보고싶어요 창 내리기 */
		$(".wish_pop_up_background, .css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
			if ( $(".wish_pop_up_background").css("display") != "none" ) {
				$(".wish_pop_up_background").hide();
				$("#wish_btn").removeClass("active");
				$("#plus_icon").css({"display":"block"});
				$("#wish_flag_icon").css({"display":"none"});
			}
		});
		
		/* 보고싶어요 창에서 회원가입 버튼 클릭 시 */
		$("#wish_join_btn").click(function() {
			$(".join_button").css("z-index", "100");
			$(".join_button").click();
			$(".wish_pop_up_background").css("z-index", "10");
		});

		/* 보고싶어요 창에서 로그인 버튼 클릭 시 */
		$("#wish_login_btn").click(function() {
			$(".login_button").css("z-index", "100");
			$(".login_button").click();
			$(".wish_pop_up_background").css("z-index", "10");
		});



    	/* 창 내리기 방지 */
    	$(".wish_content_box").click(function(e) {
			e.stopPropagation();
			$(".wish_pop_up_background").css("display", "block");
		});
		/* 보고싶어요 section end */
    	
    	
    	
		/* 코멘트 section start */
    	$("#comment_btn").on("click", function() {
			if ( $(this).hasClass("active") ) {
				$(this).removeClass("active");
				$("#pen_icon").css({"display":"block"});
				$("#pen_icon_color").css({"display":"none"});
			} else {
				$(this).addClass("active");
				$("#pen_icon").css({"display":"none"});
				$("#pen_icon_color").css({"display":"block"});
				if ( $(".comment_pop_up_background").css("display") == "none" ) { $(".comment_pop_up_background").show(); }
			}
		});
		
    	/* 코멘트 창 내리기 */
		$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .comment_pop_up_background").click(function() {
			if ( $(".comment_pop_up_background").css("display") != "none" ) {
				$(".comment_pop_up_background").hide();
				$("#comment_btn").removeClass("active");
				$("#pen_icon").css({"display":"block"});
				$("#pen_icon_color").css({"display":"none"});
			}
		});
		
		/* 코멘트 창에서 회원가입 버튼 클릭 시 */
		$("#comment_join_btn").click(function() {
			$(".join_button").css("z-index", "100");
			$(".join_button").click();
			$(".comment_pop_up_background").css("z-index", "10");
		});

		/* 코멘트 창에서 로그인 버튼 클릭 시 */
		$("#comment_login_btn").click(function() {
			$(".login_button").css("z-index", "100");
			$(".login_button").click();
			$(".comment_pop_up_background").css("z-index", "10");
		});
		
    	/* 창 내리기 방지 */
    	$(".comment_content_box").click(function(e) {
			e.stopPropagation();
			$(".comment_pop_up_background").css("display", "block");
		});
    	/* 코멘트 section end */
    	
    	
    	
    	/* 보는중 section start */
    	$("#watch_btn").on("click", function() {
			if ( $(this).hasClass("active") ) {
				$(this).removeClass("active");
				$("#eye_icon").css({"display":"block"});
				$("#eye_icon_color").css({"display":"none"});
			} else {
				$(this).addClass("active");
				$("#eye_icon").css({"display":"none"});
				$("#eye_icon_color").css({"display":"block"});
				if ( $(".watch_pop_up_background").css("display") == "none" ) { $(".watch_pop_up_background").show(); }
			}
		});
		
    	/* 보는중 창 내리기 */
		$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .watch_pop_up_background").click(function() {
			if ( $(".watch_pop_up_background").css("display") != "none" ) {
				$(".watch_pop_up_background").hide();
				if ( $("#watch_btn").hasClass("active") ) {
					$("#watch_btn").removeClass("active");
					$("#eye_icon").css({"display":"block"});
					$("#eye_icon_color").css({"display":"none"});
				}
			}
		});
		
		/* 보는중 창에서 회원가입 버튼 클릭 시 */
		$("#watch_join_btn").click(function() {
			$(".join_button").css("z-index", "100");
			$(".join_button").click();
			$(".watch_pop_up_background").css("z-index", "10");
		});

		/* 보는중 창에서 로그인 버튼 클릭 시 */
		$("#watch_login_btn").click(function() {
			$(".login_button").css("z-index", "100");
			$(".login_button").click();
			$(".watch_pop_up_background").css("z-index", "10");
		});
		
    	/* 창 내리기 방지 */
    	$(".watch_content_box").click(function(e) {
			e.stopPropagation();
			$(".watch_pop_up_background").css("display", "block");
		});
    	/* 보는중 section end */
    	
    	/* 콜렉션 section start */
    	$("#collection_btn").on("click", function() {
			if ($("#collection_btn").hasClass("active")) {
				$("#collection_btn").removeClass("active");
				$("#collection_icon").css({"display":"block"});
				$("#collection_icon_color").css({"display":"none"});
			} else {
				$("#collection_btn").addClass("active");
				$("#collection_icon").css({"display":"none"});
				$("#collection_icon_color").css({"display":"block"});
				if ( $(".collection_pop_up_background").css("display") == "none" ) { $(".collection_pop_up_background").show(); }
			}
		});
		
    	/* 콜렉션 창 내리기 */
		$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .collection_pop_up_background").click(function() {
			if ( $(".collection_pop_up_background").css("display") != "none" ) {
				$(".collection_pop_up_background").hide();
				$("#collection_btn").removeClass("active");
				$("#collection_icon").css({"display":"block"});
				$("#collection_icon_color").css({"display":"none"});
			}
		});
		
		/* 콜렉션 창에서 회원가입 버튼 클릭 시 */
		$("#collection_join_btn").click(function() {
			$(".join_button").css("z-index", "100");
			$(".join_button").click();
			$(".collection_pop_up_background").css("z-index", "10");
		});

		/* 콜렉션 창에서 로그인 버튼 클릭 시 */
		$("#collection_login_btn").click(function() {
			$(".login_button").css("z-index", "100");
			$(".login_button").click();
			$(".collection_pop_up_background").css("z-index", "10");
		});
		
    	/* 창 내리기 방지 */
    	$(".collection_content_box").click(function(e) {
			e.stopPropagation();
			$(".collection_pop_up_background").css("display", "block");
		});
    	/* 콜렉션 section end */
	/* 마우스로 클릭하면 색깔변화 (로그인 전) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
		
		
	
		
		
	/* 마우스로 클릭하면 색깔변화 (로그인 후) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
    	/* 보고싶어요_box start ----------------------------------------------------------------------------------------------------------------- */
    	$("#wish_btn_login").on("click", function() {
			let button = $(this);
			let wishWatch = button.hasClass("active") ? 0 : 1;
    		let movieVoId = $("#ajaxMovieId").text();
 			let isWatching = $("#watch_btn_login").hasClass("active") ? 0 : 1;     
			if ( $(this).hasClass("active") ) {//보고 싶지 않아요 
				$(this).removeClass("active");
				$("#plus_icon").css({"display":"block"});
				$("#wish_flag_icon").css({"display":"none"});
				$("#wish_text").css({"color":""});
				$(".css-sd2jre-SectionBlock").hide();
				wishWatch = 1; 
				$.ajax({
					type:"post",
					url:"/contents/wishWatch",
					data:{"movie_id":parseInt(movieVoId),"wishWatch":parseInt(wishWatch),"isWatching":parseInt(isWatching)},
					dataType:"json",
					success:function(response){
						alert("성공");
					},
					error:function(){
					}
				}); //ajax
			} else {
				$(this).addClass("active");
				$("#plus_icon").css({"display":"none"});
				$("#wish_flag_icon").css({"display":"block"});
				$("#wish_text").css({"color":"#FEAE27"});
				wishWatch = 0; 
				$.ajax({
					type:"post",
					url:"/contents/wishWatch",
					data:{"movie_id":parseInt(movieVoId),"wishWatch":parseInt(wishWatch),"isWatching":parseInt(isWatching)},
					dataType:"json",
					success:function(response){
						alert("성공");
					},
					error:function(){
					}
				}); //ajax
				if ( $("#watch_btn_login").hasClass("active") ) {
					$("#watch_btn_login").removeClass("active");
					$("#eye_icon").css({"display":"block"});
					$("#eye_icon_color").css({"display":"none"});
					$("#watch_text").css({"color":""});	
				}
				if ( $(".css-sd2jre-SectionBlock").css("display") == "none" ) { $(".css-sd2jre-SectionBlock").show(); }
			}
			
			
		});
		/* 보고싶어요_box end ----------------------------------------------------------------------------------------------------------------- */
		
		
		
		
		/* 코멘트_box start ----------------------------------------------------------------------------------------------------------------- */
		$("#comment_write").click(function() {
			if ( $(".comment_pop_up2_background").css("display") == "none" ) { $(".comment_pop_up2_background").show(); }
		});
		
		/* 코멘트_box 창 내리기 */
		$(".css-1lvet1d-StylelessButton, .comment_pop_up2_background").click(function() {
			if ( $(".comment_pop_up2_background").css("display") != "none" ) {
				$(".comment_pop_up2_background").hide();
				$("#comment_btn_login").removeClass("active");
				$("#pen_icon").css({"display":"block"});
				$("#pen_icon_color").css({"display":"none"});
			}
		});
		
		/* 창 내리기 방지 */
    	$(".comment_write_pop_up2, .comment_content_box2").click(function(e) {
			e.stopPropagation();
			$(".comment_pop_up2_background").css("display", "block");
		});
		/* 코멘트_box end ----------------------------------------------------------------------------------------------------------------- */
		
		
		
		
		/* 보는중_box start ----------------------------------------------------------------------------------------------------------------- */
		$("#watch_btn_login").on("click", function() {
			let button = $(this);
			let isWatching = button.hasClass("active") ? 0 : 1;
    		let movieVoId = $("#ajaxMovieId").text();
 			let wishWatch = $("#wish_btn_login").hasClass("active") ? 0 : 1;     
			if ( $(this).hasClass("active") ) {
				$(this).removeClass("active");
				$("#eye_icon").css({"display":"block"});
				$("#eye_icon_color").css({"display":"none"});
				$("#watch_text").css({"color":""});
				$(".css-sd2jre-SectionBlock").hide();
				isWatching = 1; 
				$.ajax({
					type:"post",
					url:"/contents/watching",
					data:{"movie_id":parseInt(movieVoId),"wishWatch":parseInt(wishWatch),"isWatching":parseInt(isWatching)},
					dataType:"json",
					success:function(response){
						alert("성공");
					},
					error:function(){
					}
				}); //ajax
			} else {
				$(this).addClass("active");
				$("#eye_icon").css({"display":"none"});
				$("#eye_icon_color").css({"display":"block"});
				$("#watch_text").css({"color":"#FEAE27"});
				isWatching = 0; 
				$.ajax({
					type:"post",
					url:"/contents/watching",
					data:{"movie_id":parseInt(movieVoId),"wishWatch":parseInt(wishWatch),"isWatching":parseInt(isWatching)},
					dataType:"json",
					success:function(response){
						alert("성공");
					},
					error:function(){
					}
				}); //ajax
				if ( $("#wish_btn_login").hasClass("active") ) {
					$("#wish_btn_login").removeClass("active");
					$("#plus_icon").css({"display":"block"});
					$("#wish_flag_icon").css({"display":"none"});
					$("#wish_text").css({"color":""});
				}
				if ( $(".css-sd2jre-SectionBlock").css("display") == "none" ) { $(".css-sd2jre-SectionBlock").show(); }
			}
		});
		/* 보는중_box end ----------------------------------------------------------------------------------------------------------------- */
		
		
		
		
		/* 콜렉션_box start ----------------------------------------------------------------------------------------------------------------- */
		$("#collection_btn_login").on("click", function() {
			if ($("#collection_btn_login").hasClass("active")) {
				/* 콜렉션 닫기 */
				$("#collection_btn_login").removeClass("active");
				$("#collection_icon").css({"display":"block"});
				$("#collection_icon_color").css({"display":"none"});
				$("#collection_text").css({"color":""});
			} else {
				/* 콜렉션 열기 */
				$("#collection_btn_login").addClass("active");
				$("#collection_icon").css({"display":"none"});
				$("#collection_icon_color").css({"display":"block"});
				$("#collection_text").css({"color":"#FEAE27"});
				if ( $(".collection_pop_up2_background").css("display") == "none" ) { $(".collection_pop_up2_background").show(); }
				
				/*콜렉션 정보 가져오기 */ 
				let movieVoId = $("#ajaxMovieId").text();
				$.ajax({
					type:"post",
					url:"/contents/collectionInfo",
					data:{"movie_id":parseInt(movieVoId)},
					dataType:"json",
					success:function(response){
						console.log("성공");
					},
					error:function(){
						console.log("실패");
					}
				}); //ajax

			
			}
		});
		
    	/* 콜렉션 창 내리기 */
		$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .collection_pop_up2_background").click(function() {
			if ( $(".collection_pop_up2_background").css("display") != "none" ) {
				$(".collection_pop_up2_background").hide();
				$("#collection_btn").removeClass("active");
				$("#collection_icon").css({"display":"block"});
				$("#collection_icon_color").css({"display":"none"});
				$("#collection_text").css({"color":""});
			}
		});
		
		/* 창 내리기 방지 */
    	$(".collection_content_box2").click(function(e) {
			e.stopPropagation();
			$(".collection_pop_up2_background").css("display", "block");
		});
		/* 콜렉션_box end ----------------------------------------------------------------------------------------------------------------- */
		
	/* 마우스로 클릭하면 색깔변화 (로그인 후) --------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
	
});