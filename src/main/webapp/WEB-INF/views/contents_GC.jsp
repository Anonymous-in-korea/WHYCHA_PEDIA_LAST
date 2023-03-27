<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>아바타:물의 길 (2022) - 왓챠피디아</title>
	    
	    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	    
	    <link rel="icon" href="/image/favicon.png">
	    <link href="/css/contents.css" rel="stylesheet">
	    <link href="/css/style.css" rel="stylesheet">
	    <link href="/css/header.css" rel="stylesheet" type="text/css">
	    <link href="/css/login.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
	    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	    <script src="/js/slide_scroll.js"></script>
		<script src="/js/login.js"></script>
	
		<script>
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
			            $("#logo_change").attr("src", "/images/no1_WHYCHA.png")
			        } else {
			            $(".header").removeClass("active");
			            $(".header_li_movie").removeClass("active");
			            $(".header_li_TV").removeClass("active");
			            $(".searchBox_label").removeClass("active");
			            $(".searchBox_input").removeClass("active");
			            $(".login_button").removeClass("active");
			            $(".join_button").removeClass("active");
			            $("#logo_change").attr("src", "/images/no1_WHYCHA_NONBACK.png")
			        }
			    });
		    	/* 헤더 투명화 */
		    	
		    	
		    	
		    	/* 별점 색깔변경 */
		    	$("#star_rating").change(function() {
		    		if ( $("#star_rating").val() == "" ) {
		    			$("#star_rating1").hide();
			        	$("#star_rating2").hide();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").hide();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").hide();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
		    		} else if ( $("#star_rating").val() == "0.5" ) {
			        	$("#star_rating1").show();
			        	$("#star_rating2").hide();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").hide();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").hide();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "1.0" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").hide();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").hide();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "1.5" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").show();
			        	$("#star_rating4").hide();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").hide();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "2.0" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").hide();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "2.5" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").show();
			        	$("#star_rating6").hide();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "3.0" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").show();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "3.5" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").show();
			        	$("#star_rating7").show();
			        	$("#star_rating8").hide();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "4.0" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").show();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").show();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").hide();
			        } else if ( $("#star_rating").val() == "4.5" ) {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").show();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").show();
			        	$("#star_rating9").show();
			        	$("#star_rating10").hide();
			        } else {
			        	$("#star_rating1").hide();
			        	$("#star_rating2").show();
			        	$("#star_rating3").hide();
			        	$("#star_rating4").show();
			        	$("#star_rating5").hide();
			        	$("#star_rating6").show();
			        	$("#star_rating7").hide();
			        	$("#star_rating8").show();
			        	$("#star_rating9").hide();
			        	$("#star_rating10").show();
			        }
			    });
		    	/* 별점 색깔변경 */
		    	
		    	
		    	/* 아이콘 크기 변화 */
		    	$('.select_image').hover(function() {
					$('img', this).css({
						'-webkit-transform': 'translate(-50%, -50%) scale(1.2)',
						'-ms-transform': 'translate(-50%, -50%) scale(1.2)',
						'transform': 'translate(-50%, -50%) scale(1.2)'
					});
				}, function() {
					$('img', this).css({
						'-webkit-transform': 'translate(-50%, -50%) scale(1)',
						'-ms-transform': 'translate(-50%, -50%) scale(1)',
						'transform': 'translate(-50%, -50%) scale(1)'
					});
				});
		    	/* 아이콘 크기 변화 */
		    	
		    	
		    	/* 마우스로 클릭하면 색깔변화 (로그인 전) */
			    	/* 보고싶어요 section start */
			    	$("#wish_btn").on("click", function() {
						if ( $("#wish_btn").hasClass("active") ) {
							$("#wish_btn").removeClass("active");
							$("#plus_icon").css({"display":"block"});
							$("#wish_flag_icon").css({"display":"none"});
						} else {
							$("#wish_btn").addClass("active");
							$("#plus_icon").css({"display":"none"});
							$("#wish_flag_icon").css({"display":"block"});
							if ( ${sessionId == null} && $(".wish_pop_up_background").css("display") == "none" ) { $(".wish_pop_up_background").show(); }
						}
					});
			    	/* 보고싶어요 창 내리기 */
					$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .wish_pop_up_background").click(function() {
						if ( $(".wish_pop_up_background").css("display") != "none" ) {
							$(".wish_pop_up_background").hide();
							$("#wish_btn").removeClass("active");
							$("#plus_icon").css({"display":"block"});
							$("#wish_flag_icon").css({"display":"none"});
						}
					});
			    	/* 창 내리기 방지 */
			    	$(".wish_content_box").click(function(e) {
						e.stopPropagation();
						$(".wish_pop_up_background").css("display", "block");
					});
					/* 보고싶어요 section end */
			    	
					/* 코멘트 section start */
			    	$("#comment_btn").on("click", function() {
						if ( $("#comment_btn").hasClass("active") ) {
							$("#comment_btn").removeClass("active");
						} else {
							$("#comment_btn").addClass("active");
							if ( $(".comment_pop_up_background").css("display") == "none" ) { $(".comment_pop_up_background").show(); }
						}
					});
			    	/* 코멘트 창 내리기 */
					$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .comment_pop_up_background").click(function() {
						if ( $(".comment_pop_up_background").css("display") != "none" ) {
							$(".comment_pop_up_background").hide();
							$("#comment_btn").removeClass("active");
						}
						if ( $("#comment_btn").hasClass("active") ) { $("#comment_btn").removeClass("active"); }
					});
			    	/* 창 내리기 방지 */
			    	$(".comment_content_box").click(function(e) {
						e.stopPropagation();
						$(".comment_pop_up_background").css("display", "block");
					});
			    	/* 코멘트 section end */
			    	
			    	/* 보는중 section start */
			    	$("#watch_btn").on("click", function() {
						if ( !$("#watch_btn").hasClass("active") ) {
							$("#watch_btn").addClass("active");
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
						if ( $("#watch_btn").hasClass("active") ) { $("#watch_btn").removeClass("active"); }
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
						if ( $("#collection_btn").hasClass("active") ) { $("#collection_btn").removeClass("active"); }
					});
			    	/* 창 내리기 방지 */
			    	$(".collection_content_box").click(function(e) {
						e.stopPropagation();
						$(".collection_pop_up_background").css("display", "block");
					});
			    	/* 콜렉션 section end */
		    	/* 마우스로 클릭하면 색깔변화 (로그인 전) */
		    		
		    	/* 마우스로 클릭하면 색깔변화 (로그인 후) */
			    	/* comment_box start */
			    	$("#wish_btn").on("click", function() {
						if ( $("#wish_btn").hasClass("active") ) {
							$("#wish_btn").removeClass("active");
							$("#plus_icon").css({"display":"block"});
							$("#wish_flag_icon").css({"display":"none"});
							$(".css-sd2jre-SectionBlock").hide();
							$(".css-1v9og64-LeaveCommentSection").hide();
						} else {
							$("#wish_btn").addClass("active");
							$("#plus_icon").css({"display":"none"});
							$("#wish_flag_icon").css({"display":"block"});
							if ( ${sessionId != null} && $(".css-1v9og64-LeaveCommentSection").css("display") == "none" ) {
								$(".css-sd2jre-SectionBlock").show();
								$(".css-1v9og64-LeaveCommentSection").show();
							}
						}
					});
			    	/* comment_box 창 내리기 */
					$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .wish_pop_up_background").click(function() {
						if ( $(".wish_pop_up_background").css("display") != "none" ) {
							$(".wish_pop_up_background").hide();
							$("#wish_btn").removeClass("active");
							$("#plus_icon").css({"display":"block"});
							$("#wish_flag_icon").css({"display":"none"});
						}
					});
			    	/* 창 내리기 방지 */
			    	$(".wish_content_box").click(function(e) {
						e.stopPropagation();
						$(".wish_pop_up_background").css("display", "block");
					});
					/* 보고싶어요 section end */
		    	/* 마우스로 클릭하면 색깔변화 (로그인 후) */
	    	});
	    </script>
	</head>
	<body>
		<div id="root">
	    	<div class="css-5jq76">
		        <div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="head_foot/header_nonback.jsp" %>
					<!-- header end -->
					
					<!-- pop_up 창 section -->
					<%@ include file="pop_up_GC.jsp" %>
					<!-- pop_up 창 section -->
					
					<!-- section start -->
		            <section class="css-99klbh">
		                <div class="css-7zhfhb">
		                    <div class="css-10ofaaw">
		                        <div class="css-1au2ec">
		                            <section data-rowindex="0" class="w_exposed_cell css-x864dh-Self e1svyhwg0">
		                                <div class="css-cshjoi-PosterContainer e1svyhwg1">
		                                    <div class="css-oqg1df-BlurPosterBlock e1svyhwg2">
		                                        <div color="#9A7D69" class="css-mainn9-LeftBackground e1svyhwg6"></div>
		                                        <div class="css-92c08v-BlurPoster e1svyhwg4">
		                                            <div color="#9A7D69" class="css-16kdtrk-LeftGradient e1svyhwg8"></div>
		                                            <div color="#D1B99F" class="css-1x8lfzg-RightGradient e1svyhwg9"></div>
		                                        </div>
		                                        <div color="#D1B99F" class="css-194pp5q-RightBackground e1svyhwg7"></div>
		                                        <div class="css-1ubeqqm-DimmedLayer e1svyhwg3"></div>
		                                    </div>
		                                    <div class="css-569z5v">
		                                        <div class="css-1po9d5k">
		                                            <div class="css-1d6udxb">
		                                                <div class="css-11zdk8l-PosterWithRankingInfoBlock e1svyhwg10">
		                                                    <div class=" css-1np54po-StyledLazyLoadingImage ezcopuc0">
		                                                    	<img alt="아바타: 물의 길의 포스터"
		                                                            src="https://an2-img.amz.wtchn.net/image/v2/FrxGEjpKFa3qoOkHXyVyLA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1qZ3dlRFF3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56QTFORFkzTXpreU1ERTFNREUyTURFaWZRLkVhSThNZFJPekYyZ20wRG1lNTRsckp4aTRVdml1X0Fpa1B2MC1uMERhZTg"
		                                                            class="css-qhzw1o-StyledImg ezcopuc1">
															</div>
		                                                    <div class="css-r6qxq2-ContentMetaInfoBlock e1svyhwg11">
		                                                        <ul class="css-1v9zk7c-RankingInfoList e1svyhwg14">
		                                                            <li class="css-ejhszv-RankingInfoListItem e1svyhwg13">
		                                                            	예매 순위<em>1위(87%)</em>
		                                                            </li>
		                                                            <li>개봉<em>2일째</em></li>
		                                                            <li>누적 관객<em>36만명</em></li>
		                                                        </ul>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="css-1p7n6er-Pane e1svyhwg15">
		                                    <div class="css-569z5v">
		                                        <div class="css-1po9d5k">
		                                            <div class="css-1d6udxb">
		                                                <div class="css-13h49w0-PaneInner e1svyhwg16">
		                                                	<h1 class="css-171k8ad-Title e1svyhwg17">아바타: 물의 길</h1>
		                                                    <div class="css-11h0kfd-Detail e1svyhwg18">2022 ・ 액션/모험/판타지 ・ 미국</div>
		                                                    <div class="css-og1gu8-ContentRatings e1svyhwg20">평균 ★3.8 (3,363명)</div>
		                                                    <div class="css-5qj1gb-ContentActionSection e1svyhwg19">
	                                                        	<!-- 별점 section start -->
		                                                        <div class="css-1jlb6q">
		                                                            <div class="css-yt2kjp">
		                                                                <select id="star_rating" style="border:none; text-align:center; item-align:center;">
		                                                                	<option value="">별점평가하기</option>
		                                                                	<option value="0.5">0.5점</option>
		                                                                	<option value="1.0">1.0점</option>
		                                                                	<option value="1.5">1.5점</option>
		                                                                	<option value="2.0">2.0점</option>
		                                                                	<option value="2.5">2.5점</option>
		                                                                	<option value="3.0">3.0점</option>
		                                                                	<option value="3.5">3.5점</option>
		                                                                	<option value="4.0">4.0점</option>
		                                                                	<option value="4.5">4.5점</option>
		                                                                	<option value="5.0">5.0점</option>
		                                                                </select>
		                                                            </div>
		                                                            <div id="star_container" class="css-1mbuso5" style="width:238px; position:relative">
		                                                            	<div style="width:100%; height: 38px; margin: 5px auto; position:absolute">
			                                                            	<img src="/images/star.png" class="star_left">
			                                                            	<img src="/images/star.png" class="star">
			                                                            	<img src="/images/star.png" class="star">
			                                                            	<img src="/images/star.png" class="star">
			                                                            	<img src="/images/star.png" class="star_right">
		                                                            	</div>
		                                                            	<div style="width:100%; height: 38px; margin: 5px auto; position:absolute">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half_left" id="star_rating1">
		                                                            		<img src="/images/orange_star.png" class="orange_star_left" id="star_rating2">
			                                                            	<img src="/images/orange_star_half.png" class="orange_half" id="star_rating3">
			                                                            	<img src="/images/orange_star.png" class="orange_star" id="star_rating4" style="margin-left:-0.5px;">
			                                                            	<img src="/images/orange_star_half.png" class="orange_half" id="star_rating5" style="">
			                                                            	<img src="/images/orange_star.png" class="orange_star" id="star_rating6" style="margin-left:0.5px;">
			                                                            	<img src="/images/orange_star_half.png" class="orange_half" id="star_rating7">
			                                                            	<img src="/images/orange_star.png" class="orange_star" id="star_rating8" style="margin-left:-0.5px;">
			                                                            	<img src="/images/orange_star_half.png" class="orange_half_right" id="star_rating9">
			                                                            	<img src="/images/orange_star.png" class="orange_star_right" id="star_rating10" style="margin-left:0.5px;">
		                                                            	</div>
		                                                            </div>
		                                                        </div>
		                                                        <!-- 별점 section end -->
		                                                        <div class="css-s5x9hn-ContentActionDivider e1svyhwg21"></div>
		                                                        <!-- 별점 오른쪽 section start -->
		                                                        <div class="css-1xki7ez-ButtonBlock e1svyhwg22" style="display:flex; flex-direction:row;">
		                                                            <button class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23" id="wish_btn">
		                                                            	<div class="select_image">
	                                                                    	<img src="/images/plus_icon.png" id="plus_icon" style="display:block;">
	                                                                    	<img src="/images/wish_flag_icon.png" id="wish_flag_icon" style="display:none;">
		                                                            	</div>
		                                                                <strong>보고싶어요</strong>
		                                                            </button>
		                                                            <button class="css-orm7r7-StylelessButton-ContentActionButton-ContentCommentButtonOnSm e1svyhwg25" id="comment_btn">
		                                                            	<div class="select_image">
			                                                            	<img src="/images/pen_icon.png" style="display:block;">
		                                                            	</div>
		                                                                <strong>코멘트</strong>
		                                                            </button>
		                                                            <button class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23" id="watch_btn">
		                                                            	<div class="select_image">
			                                                            	<img src="/images/eye_icon.png" id="eye_icon" style="display:block;">
			                                                            	<img src="/images/eye_icon_color.png" id="eye_icon_color" style="display:none;">
		                                                            	</div>
		                                                                <strong>보는중</strong>
		                                                            </button>
		                                                            <button class="css-1u6iefh-StylelessButton-ContentActionButton-ContentMoreButtonOnSm e1svyhwg27" id="collection_btn">
		                                                            	<div class="select_image">
			                                                            	<img src="/images/collection_icon.png" id="collection_icon" style="display:block;">
			                                                            	<img src="/images/collection_icon_color.png" id="collection_icon_color" style="display:none;">
		                                                            	</div>
		                                                                <strong>콜렉션</strong>
		                                                            </button>
		                                                        </div>
		                                                        <!-- 별점 오른쪽 section end -->
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </section>
		                            <div class="css-1s8bs5j">
		                                <div class="css-bs9kkj">
		                                    <div class="css-1po9d5k">
		                                        <div class="css-uvsgck">
													<!-- 보고싶어요 or 보는 중 버튼 클릭 시 (로그인 후)  -->
													<div data-rowindex="1" class="w_exposed_cell css-sd2jre-SectionBlock eue8w0j0" style="display:none;">
														<div class="css-12ru3m0">
															<!-- 코멘트 안달았을 때 나타나는 div start -->
															<section class="css-1v9og64-LeaveCommentSection eue8w0j1" style="display:none;">
																<div class="css-1gkas1x-Grid e1689zdh0">
																	<div class="css-1y901al-Row emmoxnt0">
																		<div class="css-vshgrn-LeaveCommentBlock eue8w0j2">
																			<h3 class="css-1p0zhfu-Title eue8w0j11">[ 사용자 ]님의 생각을 글로 적어보세요.</h3>
																			<div class="css-1jbrsnx-ButtonBlock eue8w0j12">
																				<button class="css-2gm869-StylelessButton-MediumButton-LeaveCommentButton eue8w0j10">코멘트 남기기</button>
																			</div>
																		</div>
																	</div>
																</div>
															</section>
															<!-- 코멘트 안달았을 때 나타나는 div end -->
															
															<!-- 코멘트 달았을 때 나타나는 div start -->
															<div class="css-1gkas1x-Grid e1689zdh0 hasComm" style="display:none;">
																<div class="css-1y901al-Row emmoxnt0">
																	<section class="css-10tfsfb-MyCommentSection eue8w0j3">
																		<div class="css-vo2laf-MyCommentBlock eue8w0j6">
																			<div class="css-1rek3mo-MyProfilePhotoBlock eue8w0j4">
																				<div class="css-ffwxzk">
																					<div class="css-18d1ipb-ProfilePhotoImage"></div>
																				</div>
																			</div>
																			<a class="css-1bh5fq7-StylelessLocalLink-LinkToMyComment eue8w0j13" href="/ko-KR/comments/1Vl2bWn96AMrR">
																				<div class="css-2a9q6o-MyComment eue8w0j5">
																					<div class=" css-gujidv-StyledSelf eb5y16b0">
																						<div class="css-1fucs4t-StyledText eb5y16b1">개같다개같다개같다개같다</div>
																					</div>
																				</div>
																			</a>
																			<ul class="css-llsddo-VisualUl-CommentUpdateButtons eue8w0j7">
																				<li class="css-15b6b8j-CommentUpdateButtonListItem eue8w0j8">
																					<button id="delete-btn" class="css-1nmgbsq-StylelessButton-CommentUpdateButton eue8w0j9">
																						<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0EwQTBBMCIgZD0iTTUuMjUgMTQuMjVoNy41di03LjVoMS41VjE1YS43NS43NSAwIDAgMS0uNzUuNzVoLTlhLjc1Ljc1IDAgMCAxLS43NS0uNzVWNi43NWgxLjV2Ny41ek0xMiA0LjVoMy43NVY2SDIuMjVWNC41SDZWM2EuNzUuNzUgMCAwIDEgLjc1LS43NWg0LjVBLjc1Ljc1IDAgMCAxIDEyIDN2MS41em0tMS41IDB2LS43NWgtM3YuNzVoM3pNNi43NSA2Ljc1aDEuNXY2Ljc1aC0xLjVWNi43NXptMyAwaDEuNXY2Ljc1aC0xLjVWNi43NXoiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
																							alt="delete comment">
																						삭제
																					</button>
																				</li>
																				<li class="css-15b6b8j-CommentUpdateButtonListItem eue8w0j8">
																					<button id="edit-btn" class="css-1nmgbsq-StylelessButton-CommentUpdateButton eue8w0j9">
																						<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0EwQTBBMCIgZD0iTTIuMTggMTUuMzlsLjcwMy0zLjk4IDMuNzEzIDMuNzEyLTMuOTgxLjcwMmEuMzc0LjM3NCAwIDAgMS0uNDM0LS40MzR6bTEuNDk4LTQuNzc2bDYuMzY0LTYuMzY0IDMuNzEzIDMuNzEyLTYuMzY0IDYuMzY0LTMuNzEzLTMuNzEyek0xNS42MDcgNS4wNGEuNzUuNzUgMCAwIDEgMCAxLjA2bC0xLjA2IDEuMDYxLTMuNzEzLTMuNzEyIDEuMDYtMS4wNmEuNzUuNzUgMCAwIDEgMS4wNiAwbDIuNjUzIDIuNjUxeiIvPgogICAgPC9nPgo8L3N2Zz4K"
																							alt="edit comment">
																						수정
																					</button>
																				</li>
																			</ul>
																		</div>
																	</section>
																</div>
															</div>
															<!-- 코멘트 달았을 때 나타나는 div end -->
														</div>
													</div>
													<!-- 보고싶어요 or 보는 중 버튼 클릭 시 (로그인 후)  -->
		                                            <div class="css-1nxfhfk">
		                                                <div class="css-1jwavn9-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock">
		                                                    <!-- 기본정보 	section start -->
		                                                    <section class="w_exposed_cell css-1tywu13" data-rowindex="5">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">기본 정보</h2>
		                                                                    <div class="css-s289sk">
		                                                                        <div class="css-1ugqy9j">
		                                                                        	<a href="/movie_detail_info">더보기</a>
		                                                                        </div>
		                                                                    </div>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <article class="css-1k6vajx-Overview eokm2780">
		                                                                    <div class="css-wvh1uf-Summary eokm2781">
		                                                                        <span>Avatar: The Way of Water</span>
		                                                                        <span class="css-1t00yeb-OverviewMeta eokm2782">2022 · 미국 · 액션</span>
		                                                                        <br>
		                                                                        <span class="css-1t00yeb-OverviewMeta eokm2782">3시간 12분 · 12세</span>
		                                                                    </div>
		                                                                    <div class=" css-k82gae-StyledSelf eb5y16b0">
		                                                                        <div class="css-kywn6v-StyledText eb5y16b1">&lt;아바타:
		                                                                            물의 길&gt;은 판도라 행성에서 '제이크 설리'와 '네이티리'가 이룬 가족이
		                                                                            겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투, 그리고
		                                                                            견뎌내야 할 상처에 대한 이야기를 그렸다. 월드와이드 역대 흥행 순위 1위를
		                                                                            기록한 전편 &lt;아바타&gt;에 이어 제임스 카메론 감독이 13년만에
		                                                                            선보이는 영화로,...
		                                                                        </div>
		                                                                    </div>
		                                                                </article>
		                                                                <hr class="css-g67iqr">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 기본정보 	section end -->
		                                                    <!-- 출연 & 제작 section start -->
		                                                    <section class="w_exposed_cell css-1tywu13" data-rowindex="7" id="content_credits">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">출연/제작</h2>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-awu20a peopleSwiper">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-13avw3k-PeopleUlRow e5xrf7a1">
		                                                                            <ul class="e5xrf7a0 css-1br354h-VisualUl-PeopleStackableUl">
		                                                                                <li class="css-54rr1e" >
		                                                                                	<a href="/person_detail" class="css-1aaqvgs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="profilePhotoBlock css-13zlig9">
			                                                                                            <div class="css-1o7yycy-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
		                                                                                    	<div class="css-zoy7di">
		                                                                                        	<div class="css-qkf9j">
		                                                                                            	<div class="css-17vuhtq">제임스 카메론</div>
		                                                                                            <div class="css-1evnpxk-StyledSubtitle">감독</div>
			                                                                                        </div>
			                                                                                    </div>
		                                                                                	</a>
		                                                                                </li>
		                                                                                <li class="css-54rr1e">
		                                                                                	<a href="/person_detail" class="css-1aaqvgs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="profilePhotoBlock css-13zlig9">
			                                                                                            <div class="css-1h9orp8-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-zoy7di">
			                                                                                        <div class="css-qkf9j">
			                                                                                            <div class="css-17vuhtq">샘 워싱턴</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">주연 | 제이크 설리</div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                </a>
		                                                                                </li>
		                                                                                <li class="css-54rr1e">
		                                                                                	<a href="/person_detail" class="css-1aaqvgs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="profilePhotoBlock css-13zlig9">
			                                                                                            <div class="css-3zrsgm-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-16n7af8">
			                                                                                        <div class="css-qkf9j">
			                                                                                            <div class="css-17vuhtq">조 샐다나</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">주연 | 네이티리</div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                </a>
		                                                                                </li>
		                                                                                <li class="css-54rr1e">
		                                                                                	<a href="/person_detail" class="css-1aaqvgs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="profilePhotoBlock css-13zlig9">
			                                                                                            <div class="css-19rtinw-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-zoy7di">
			                                                                                        <div class="css-qkf9j">
			                                                                                            <div class="css-17vuhtq">시고니 위버</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">주연 | 키리</div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                </a>
		                                                                                </li>
		                                                                                <li class="css-54rr1e">
		                                                                                	<a href="/person_detail" class="css-1aaqvgs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="profilePhotoBlock css-13zlig9">
			                                                                                            <div class="css-gmmbr4-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-zoy7di">
			                                                                                        <div class="css-qkf9j">
			                                                                                            <div class="css-17vuhtq">스티븐 랭</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">주연 | 쿼리치</div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                </a>
		                                                                                </li>
		                                                                                <li class="css-54rr1e">
		                                                                                	<a href="/person_detail" class="css-1aaqvgs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="profilePhotoBlock css-13zlig9">
			                                                                                            <div class="css-y58fr8-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-16n7af8">
			                                                                                        <div class="css-qkf9j">
			                                                                                            <div class="css-17vuhtq">케이트 윈슬렛</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">주연 | 로날</div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                </a>
		                                                                                </li>
		                                                                            </ul>
		                                                                        </div>
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                            <div direction="left" class="css-a89h8a"></div>
		                                                            <div direction="right" class="css-1qgb5vh"></div>
		                                                            <div class="arrow_button css-38kpup" direction="left">
		                                                                <div class="css-1hestod"></div>
		                                                            </div>
		                                                            <div class="arrow_button css-pf83cl" direction="right">
		                                                                <div class="css-vp7uyl">
		                                                                	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
		                                                                        alt="forward">
																		</div>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <hr class="css-god8tc">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 출연 & 제작 section end -->
		                                                    <!-- 별점그래프 section start -->
		                                                    <section class="w_exposed_cell css-1tywu13" data-rowindex="8">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">별점 그래프</h2>
	                                                                		<span class="css-14yj34l-RatingStatHeaderTopRight e1dk30cn0">
	                                                                			<h4 style="margin: 0">평균 ★4.2</h4>
	                                                                			<strong>(22명)</strong>
	                                                                		</span>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <div class="css-wqfuxa">
		                                                                    <div class="css-g1q7ln">
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="1" class="css-111q860-Bar"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="2" class="css-5vyahd-Bar"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="3" class="css-himw0d-Bar"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="4" class="css-3zcnds-Bar"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="5" class="css-mr14ik-Bar"></span>
		                                                                        </div>
		                                                                    </div>
		                                                                </div>
		                                                                <hr class="css-hn83j">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 별점그래프 section end -->
		                                                    <!-- 코멘트 section start -->
		                                                    <section class="w_exposed_cell css-1tywu13" data-rowindex="10">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">코멘트</h2>
		                                                                	<span class="css-wzn7fp">10+</span>
		                                                                    <div class="css-s289sk">
		                                                                        <div class="css-1ugqy9j">
		                                                                        	<a href="/comment_reply">더보기</a>
		                                                                        </div>
		                                                                    </div>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-15xcaei">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-1y901al-Row emmoxnt0">
		                                                                            <ul class="ew8mnl61 css-nh9j5x-VisualUl-CommentHorizontalUl">
		                                                                            	<!-- 첫 번째 코멘트 start -->
		                                                                                <li class="css-1fryc54">
		                                                                                    <div class="css-17dwc6k">
		                                                                                    	<!-- 코멘트 사용자 프로필사진 & 아이디표시 -->
		                                                                                        <div class="css-4obf01">
		                                                                                            <div class="css-1cvf9dk">
		                                                                                            	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																											href="/ko-KR/users/87Gv7epbGxE6o">
			                                                                                                <div class="css-107z6xc">
			                                                                                                    <div class="css-1uteztb-ProfilePhotoImage"></div>
			                                                                                                </div>
			                                                                                                <div class="css-1agoci2">여신</div>
			                                                                                            </a>
		                                                                                            </div>
		                                                                                        </div>
		                                                                                        <!-- 코멘트 사용자 프로필사진 & 아이디표시 -->
		                                                                                        <div class="css-ob93md">
		                                                                                        	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/comments/3kNEpNBeNMOgK">
			                                                                                            <div class=" css-12rbc09-StyledSelf eb5y16b0">
			                                                                                                <div class="css-1yrlzf9-StyledText eb5y16b1">
			                                                                                                    이 영화가 많은 이들에게 설원의
			                                                                                                    안부인사로 기억되겠지만 진정한
			                                                                                                    명장면은 마지막에 있다. 도서대출카드
			                                                                                                    뒷편의 스케치는 처음 맛본
			                                                                                                    원두커피처럼 향기롭고 진하고
			                                                                                                    쌉쌀하다...
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </a>
		                                                                                        	<span class="css-xstsdj">스포일러가 있어요!!
			                                                                                        	<button aria-label="Accept Spoiler" class="css-13mdv8k-StylelessButton">
			                                                                                        		&nbsp;보기
			                                                                                        	</button>
		                                                                                        	</span>
		                                                                                        </div>
		                                                                                        <div class="css-1jm9uak">
		                                                                                        	<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9IiNkNGQ0ZDQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTMgMjFoNVY5SDN6TTE0LjkwMiA3Ljk5NGg0LjkzOGMuODggMCAxLjU5MS43IDEuNTkxIDEuNTY2IDAgLjg2Ni0uNzEyIDEuNTY3LTEuNTkgMS41NjdoLTQuOTM5Yy0uMzk4IDAtLjYxNS0uMDU1LS44MTItLjE1OGExLjA4NSAxLjA4NSAwIDAgMS0uNDUzLS40NDdjLS4xMDQtLjE5Mi0uMTYtLjQwNS0uMTYtLjc5OHYtLjMyN2MwLS4zOTMuMDU2LS42MDYuMTYtLjguMTA1LS4xOTEuMjU4LS4zNDIuNDUzLS40NDUuMTk3LS4xMDMuNDE0LS4xNTguODEyLS4xNTgiLz4KICAgICAgICA8cGF0aCBkPSJNMTQuMDYgMTFIMTlhMS41OCAxLjU4IDAgMCAxIDEuNTkgMS41NjhjMCAuODY1LS43MTIgMS41NjYtMS41OSAxLjU2NmgtNC45NGMtLjM5OCAwLS42MTUtLjA1NS0uODEtLjE1N2ExLjA4MSAxLjA4MSAwIDAgMS0uNDU0LS40NDhjLS4xMDUtLjE5Mi0uMTYtLjQwNS0uMTYtLjc5OHYtLjMyN2MwLS4zOTIuMDU1LS42MDYuMTYtLjguMTA0LS4xOTEuMjU4LS4zNDIuNDUzLS40NDUuMTk2LS4xMDMuNDEzLS4xNTguODExLS4xNTgiLz4KICAgICAgICA8cGF0aCBkPSJNMTMuMjIgMTQuMDA5aDQuOTM4Yy44NzkgMCAxLjU5LjcgMS41OSAxLjU2NiAwIC44NjYtLjcxMSAxLjU2Ny0xLjU5IDEuNTY3SDEzLjIyYy0uMzk4IDAtLjYxNS0uMDU1LS44MTEtLjE1N2ExLjA5NSAxLjA5NSAwIDAgMS0uNDU0LS40NDhjLS4xMDQtLjE5Mi0uMTYtLjQwNi0uMTYtLjc5OHYtLjMyOGMwLS4zOTEuMDU2LS42MDUuMTYtLjc5OGExLjA5IDEuMDkgMCAwIDEgLjQ1NC0uNDQ2Yy4xOTYtLjEwMy40MTMtLjE1OC44MS0uMTU4Ii8+CiAgICAgICAgPHBhdGggZD0iTTEyLjM3OCAxNy4wMTdoNC45NGMuODc4IDAgMS41OS42NjggMS41OSAxLjQ5IDAgLjgyNC0uNzEyIDEuNDkyLTEuNTkgMS40OTJoLTQuOTRjLS4zOTggMC0uNjE1LS4wNS0uODEtLjE1YTEuMDU4IDEuMDU4IDAgMCAxLS40NTQtLjQyNWMtLjEwNS0uMTgzLS4xNi0uMzg2LS4xNi0uNzZ2LS4zMTJjMC0uMzczLjA1NS0uNTc3LjE2LS43Ni4xMDQtLjE4My4yNTgtLjMyNy40NTMtLjQyNS4xOTYtLjA5OS40MTMtLjE1LjgxMS0uMTUiLz4KICAgICAgICA8cGF0aCBkPSJNMTMuMjAyIDUuMTYyYS45NC45NCAwIDAgMCAuMjc1LS42NjVWMy4yOTZjLS4wNjYtLjUzLjItLjc5Ni43OTUtLjc5Ni44OTYgMCAyLjM4Ny40NzcgMi4zODcgMi4zODcgMCAxLjI3My0uMjY2IDIuMzMzLS43OTYgMy4xODJ2MTEuOTNIOS41VjkuNjZjMC0uNTMxLjI2NS0xLjA2MS43OTUtMS41OTFsMi45MDctMi45MDd6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo="
																										width="18px" height="18px" class="css-zoh368">
																									</span>
																									<em class="like-sum">1520</em>
																									<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNkNGQ0ZDQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODcgMTguMDE5bC0zLjMxNCAzLjMxNHYtNC41N2MtMi4zNTYtMS40MTItMy44OS0zLjcxNi0zLjg5LTYuMzE5IDAtNC4yOTUgNC4xOC03Ljc3NyA5LjMzNC03Ljc3NyA1LjE1NSAwIDkuMzMzIDMuNDgyIDkuMzMzIDcuNzc3IDAgNC4yOTYtNC4xNzggNy43NzgtOS4zMzMgNy43NzgtLjczMyAwLTEuNDQ2LS4wNy0yLjEzLS4yMDN6Ii8+Cjwvc3ZnPgo="
		                                                                                                width="18px" height="18px" class="css-43cye7">
																									</span>
																									<em class="recomm-sum">13</em>
		                                                                                        </div>
		                                                                                        <div class="css-hy68ty">
		                                                                                            <button class="css-1jrmj77-StylelessButton">
		                                                                                                좋아요
		                                                                                            </button>
		                                                                                        </div>
		                                                                                    </div>
		                                                                                </li>
		                                                                                <!-- 첫 번째 코멘트 end -->
		                                                                                <!-- 두 번째 코멘트 start -->
		                                                                                <li class="css-1fryc54">
		                                                                                    <div class="css-17dwc6k">
		                                                                                        <div class="css-4obf01">
		                                                                                            <div class="css-1cvf9dk">
		                                                                                            	<a title="un🏳️🏴" class="css-1f9m1s4-StylelessLocalLink eovgsd01"
		                                                                                                    href="/ko-KR/users/4WLxZAplMb5ro">
			                                                                                                <div class="css-107z6xc">
			                                                                                                    <div class="css-1uteztb-ProfilePhotoImage"></div>
			                                                                                                </div>
			                                                                                                <div class="css-1agoci2">un🏳️🏴</div>
			                                                                                            </a>
																									</div>
		                                                                                            <!-- 이게 별점표시하는건가??? -->
		                                                                                            <div class="css-yqs4xl">
		                                                                                            	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
		                                                                                                    width="16px" height="16px" alt="star">
																										<span>5.0</span>
		                                                                                            </div>
		                                                                                            <!-- 이게 별점표시하는건가??? -->
		                                                                                        </div>
		                                                                                        <div class="css-ob93md">
		                                                                                        	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01">
			                                                                                            <div class=" css-12rbc09-StyledSelf eb5y16b0">
			                                                                                                <div class="css-qxbzku-StyledText eb5y16b1">
			                                                                                                	왓챠 정기기부를 막아준 그 신화
			                                                                                                </div>
			                                                                                            </div>
		                                                                                        </a></div>
		                                                                                        <!-- 코멘트 좋아요/댓글 수 -->
		                                                                                        <div class="css-1atijos">
		                                                                                        	<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
		                                                                                                width="18px" height="18px" class="css-64x8kr">
																									</span>
																									<em id="like">14</em>
																									<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
		                                                                                                width="18px" height="18px" class="css-q0vi8">
																									</span>
																									<em id="recomment">0</em>
		                                                                                        </div>
		                                                                                        <!-- 코멘트 좋아요/댓글 수 -->
		                                                                                        <div class="css-hy68ty">
		                                                                                            <button class="css-1h18l7j-StylelessButton">
		                                                                                                좋아요
		                                                                                            </button>
		                                                                                        </div>
		                                                                                    </div>
		                                                                                </li>
		                                                                                <!-- 두 번째 코멘트 end -->
		                                                                                <!-- 세 번째 코멘트 start -->
		                                                                                <li class="css-1fryc54">
		                                                                                    <div class="css-17dwc6k">
		                                                                                        <div class="css-4obf01">
		                                                                                            <div class="css-1cvf9dk"><a
		                                                                                                    title="ㄱㄹ"
		                                                                                                    class="css-1f9m1s4-StylelessLocalLink eovgsd01"
		                                                                                                    href="/ko-KR/users/WwRqoVlW2xlzB">
		                                                                                                <div class="css-107z6xc">
		                                                                                                    <div class="css-8v0z7e-ProfilePhotoImage"></div>
		                                                                                                </div>
		                                                                                                <div class="css-1agoci2">
		                                                                                                    ㄱㄹ
		                                                                                                </div>
		                                                                                            </a></div>
		                                                                                            <div class="css-yqs4xl"><img
		                                                                                                    src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
		                                                                                                    width="16px"
		                                                                                                    height="16px"
		                                                                                                    alt="star"><span>5.0</span>
		                                                                                            </div>
		                                                                                        </div>
		                                                                                        <div class="css-ob93md"><a
		                                                                                                class="css-1f9m1s4-StylelessLocalLink eovgsd01"
		                                                                                                href="/ko-KR/comments/8kXQeoWnye2P6">
		                                                                                            <div class=" css-12rbc09-StyledSelf eb5y16b0">
		                                                                                                <div class="css-qxbzku-StyledText eb5y16b1">같이의 가치😌</div>
		                                                                                            </div>
		                                                                                        </a></div>
		                                                                                        <div class="css-1atijos"><span
		                                                                                                src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
		                                                                                                width="18px"
		                                                                                                height="18px"
		                                                                                                class="css-64x8kr"></span><em>13</em><span
		                                                                                                src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
		                                                                                                width="18px"
		                                                                                                height="18px"
		                                                                                                class="css-q0vi8"></span><em>0</em>
		                                                                                        </div>
		                                                                                        <div class="css-hy68ty">
		                                                                                            <button class="css-1h18l7j-StylelessButton">
		                                                                                                좋아요
		                                                                                            </button>
		                                                                                        </div>
		                                                                                    </div>
		                                                                                </li>
		                                                                                <!-- 세 번째 코멘트 end -->
		                                                                                <!-- 네 번째 코멘트 start -->
		                                                                                <li class="css-1fryc54">
		                                                                                    <div class="css-17dwc6k">
		                                                                                        <div class="css-4obf01">
		                                                                                            <div class="css-1cvf9dk"><a
		                                                                                                    title="매생이"
		                                                                                                    class="css-1f9m1s4-StylelessLocalLink eovgsd01"
		                                                                                                    href="/ko-KR/users/WwRqoyMkZz5lz">
		                                                                                                <div class="css-107z6xc">
		                                                                                                    <div class="css-17qc8ue-ProfilePhotoImage"></div>
		                                                                                                </div>
		                                                                                                <div class="css-1agoci2">
		                                                                                                    매생이
		                                                                                                </div>
		                                                                                            </a></div>
		                                                                                            <div class="css-yqs4xl"><img
		                                                                                                    src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
		                                                                                                    width="16px"
		                                                                                                    height="16px"
		                                                                                                    alt="star"><span>5.0</span>
		                                                                                            </div>
		                                                                                        </div>
		                                                                                        <div class="css-ob93md"><a
		                                                                                                class="css-1f9m1s4-StylelessLocalLink eovgsd01"
		                                                                                                href="/ko-KR/comments/boY2lJpxr7QWO">
		                                                                                            <div class=" css-12rbc09-StyledSelf eb5y16b0">
		                                                                                                <div class="css-qxbzku-StyledText eb5y16b1">OTT로 영화보는 즐거움을 알려준 착즙 🙂</div>
		                                                                                            </div>
		                                                                                        </a></div>
		                                                                                        <div class="css-1atijos"><span
		                                                                                                src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
		                                                                                                width="18px"
		                                                                                                height="18px"
		                                                                                                class="css-64x8kr"></span><em>13</em><span
		                                                                                                src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
		                                                                                                width="18px"
		                                                                                                height="18px"
		                                                                                                class="css-q0vi8"></span><em>0</em>
		                                                                                        </div>
		                                                                                        <div class="css-hy68ty">
		                                                                                            <button class="css-1h18l7j-StylelessButton">
		                                                                                                좋아요
		                                                                                            </button>
		                                                                                        </div>
		                                                                                    </div>
		                                                                                </li>
		                                                                                <!-- 네 번째 코멘트 end -->
		                                                                                <div class="css-ml096x"></div>
		                                                                            </ul>
		                                                                        </div>
		                                                                    </div>
		                                                                </div>
		                                                                <div id="loading-icon">
		                                                                    <img src="https://icon-library.com/images/spinner-icon-gif/spinner-icon-gif-28.jpg" 
		                                                                    	height="35" width="35"/>
		                                                                </div>
		                                                            </div>
		                                                            <div direction="left" class="css-a89h8a"></div>
		                                                            <div direction="right" class="css-1qgb5vh"></div>
		                                                            <!-- 코멘트 슬라이드 왼쪽 버튼 -->
		                                                            <div class="arrow_button css-38kpup" direction="left">
		                                                                <div class="css-1hestod"></div>
		                                                            </div>
		                                                            <!-- 코멘트 슬라이드 왼쪽 버튼 -->
		                                                            <!-- 코멘트 슬라이드 오른쪽 버튼 -->
		                                                            <div class="arrow_button css-pf83cl" direction="right">
		                                                                <div class="css-vp7uyl">
		                                                                	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
		                                                                        alt="forward">
																		</div>
		                                                            </div>
		                                                            <!-- 코멘트 슬라이드 오른쪽 버튼 -->
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <hr class="css-god8tc"><!-- 코멘트 & 비슷한 작품 경계선 -->
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <!-- 코멘트 section end -->
		                                        <!-- section 오른쪽 광고 및 갤러리, 동영상 섹션부분 start -->
		                                        <div class="css-wpsvu8">
		                                        	<!-- 제일 상단 광고동영상 section start -->
		                                            <section class="css-e2gdle-Self e2ouywk0">
		                                                <div class="css-1wjbj9j-Self e1adaxwi0">
		                                                    <section class="css-aqubhg-ContentSection e1adaxwi3">
		                                                        <div class="css-t7gndh-AdContainer e1adaxwi4">
		                                                            <video poster="https://an2-img.amz.wtchn.net/image/v2/NUqyy575qDVA3LZfMFdFMQ.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM0J5YjIxdmRHbHZiaTh4Tmpjd05UWTNNekkxT0RrNE1EWXpNVEl6SW4wLjExOXAwTXpsLThHSUxzdEoxdmhrZ1phSnlTaWpzX2dkWjYyai01My1mRUk"
		                                                                   playsinline="" class="css-a36vjy-AdVideo e1adaxwi6"
		                                                                   src="https://dhgywazgeek0d.cloudfront.net/watcha/video/upload/br_3m,c_limit,h_960,w_960/v1670566713/b558fb6e042ad6cbb787ae56ada1eddf.mp4"></video>
		                                                            <div class="css-1d2rflg-AdVideoControllers e1adaxwi7">
		                                                                <button class="css-11d2wab-StylelessButton-VideoButton e1adaxwi8"></button>
		                                                                <button class="css-srnj21-StylelessButton-SoundButton e1adaxwi9"></button>
		                                                            </div>
		                                                        </div>
		                                                        <a href="https://wcha.it/3iQjr0a?browser_open_type=external" target="_blank" rel="noopener noreferrer"
																	class="css-1cqdd33-StylelessHref e1imises0">
		                                                            <div class="css-1vitjj-AdRow e1adaxwi16">
		                                                                <div class="css-1jrgqr8-InfoSection e1adaxwi15">
		                                                                    <div class="css-j0epwo-AdDetail e1adaxwi12">
		                                                                    	<p class="css-1u6xy1l-AdTitle e1adaxwi10">사막의 왕</p>
		                                                                        <p class="css-agjx6i-AdDescription e1adaxwi11">12월 16일 공개!</p>
		                                                                        <h3 class="css-nkulx0-ProfileHeader e1adaxwi1">
		                                                                            <div class="css-hy0bgx">
		                                                                                <div class="css-cii8a1-ProfilePhotoImage"></div>
		                                                                            </div>
		                                                                            <div class="css-149xv13-HeaderTitle e1adaxwi2">왓챠 오리지널</div>
		                                                                        </h3>
		                                                                    </div>
		                                                                    <div class="css-1yllue8-ButtonContainer e1adaxwi13">
		                                                                        <button class="css-ff7qw0-StylelessButton-GoToAdButton e1adaxwi14">
		                                                                            보고싶어요
		                                                                        </button>
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                        </a>
															</section>
		                                                </div>
		                                            </section>
		                                            <!-- 제일 상단 광고동영상 section end -->
		                                            <div class="css-1nhig6u-RoundedCornerBlock-RoundedCornerBlock">
		                                                <div class="css-1oj6s32">
				                                            <!-- 감상 가능한 곳 OTT section start -->
		                                                    <section class="w_exposed_cell css-1impywp" data-rowindex="4">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">감상 가능한 곳</h2>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-awu20a">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-1y901al-Row emmoxnt0">
		                                                                            <ul class="css-1ohwri2-VisualUl-PartnerStackableUl e85xbnu0">
		                                                                                <li class="css-wj6fn0">
		                                                                                	<a href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93ZWJ0b29uLmtha2FvLmNvbS9jb250ZW50L-uCmC3tmLzsnpDrp4wt66CI67Ko7JeFLzIzMjA"
		                                                                                        target="_blank" title="카카오웹툰"
		                                                                                        class="css-1wacncs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="externalServiceOttIcon css-13zlig9">
			                                                                                            <div class="css-1njml0y-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-zoy7di">
			                                                                                        <div class="externalServiceTitles css-qkf9j">
			                                                                                            <div class="css-17vuhtq">
			                                                                                                카카오웹툰
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div>
			                                                                                        	<img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
			                                                                                                alt="Arrow">
																									</div>
			                                                                                    </div>
			                                                                                </a>
																						</li>
		                                                                                <li class="css-wj6fn0">
		                                                                                	<a href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly9saW5rLXBhZ2Uua2FrYW8uY29tL2dvdG9fdmlldz9zZXJpZXNfaWQ9NTA4NjY0ODEmcmVmZXJyZXI9dXRtX3NvdXJjZSUzRHdhdGNoX3BlZGlh"
		                                                                                        target="_blank" title="카카오페이지"
		                                                                                        class="css-1wacncs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="externalServiceOttIcon css-13zlig9">
			                                                                                            <div class="css-1oiaov4-ProfilePhotoImage"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-16n7af8">
			                                                                                        <div class="externalServiceTitles css-qkf9j">
			                                                                                            <div class="css-17vuhtq">
			                                                                                                카카오페이지
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div>
			                                                                                        	<img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
			                                                                                                alt="Arrow">
																									</div>
			                                                                                    </div>
			                                                                                </a>
																						</li>
		                                                                            </ul>
		                                                                        </div>
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <hr class="css-god8tc">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 감상 가능한 곳 OTT section end -->
		                                                    <!-- 갤러리 section start -->
		                                                    <section class="css-1tywu13 gallery">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">갤러리</h2>
		                                                                	<a class="pink" href="">모아보기</a>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-15xcaei">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-1y901al-Row emmoxnt0">
		                                                                            <ul class="css-1cduxg0-VisualUl">
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="https://an2-img.amz.wtchn.net/image/v2/qYVmXw7ylGy2Fo7GdQyNyA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMkozWVdRNWNuRnFlbkJ3Wkd4NGJITTJiMnR6SW4wLm9yNGNMdDNTdXBxc0loZ1lYYmR6UkI5azY2VGo5WUFtbXRYT3FOeDMxeUk">
		                                                                                    </div>
		                                                                                </li>
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="https://an2-img.amz.wtchn.net/image/v2/FcaaVfhrDYms84UQfy85og.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0YzYm5abWVIUnVjSGxzWW1KNGRHcHljV3hzSW4wLlpzU0w1bGpyRE54UE8yc0syVWlKZWRRcnd0Rjhzanh3TElTaWdfMEpBUFE">
		                                                                                    </div>
		                                                                                </li>
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="https://an2-img.amz.wtchn.net/image/v2/O0ir-PUFI-OIIFJf4okbug.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMmRwZW5aNWVIcHhjbU5xZDNac2VtYzVhbmwxSW4wLkxsb1ZmZ3hTZVlmR3puM0xKYXd6QkY4QkFZUUh1cEtoZlVXZ25yOVM4OTg">
		                                                                                    </div>
		                                                                                </li>
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="https://an2-img.amz.wtchn.net/image/v2/-bNsG7W68ktN54GhRuHklw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0o2YUdabWFtSjBiR2RsT1dOaVpXWmlZbW80SW4wLmJVUnRuLWstM18zTUpmWWZvOUwtdTBsUmFEaHRoQnNqOUZTUTRqZHlqb1k">
		                                                                                    </div>
		                                                                                </li>
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="https://an2-img.amz.wtchn.net/image/v2/Sw3rZjUrs3e_lbHMolXmPA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0p5Y1dwbVpHZHFOM1o0T1doeU0ySmpZM1pzSW4wLmVSdkttOXBGVTFDc3pWaG55am5DWldtZ2tZSzVrWjdWZXhENHRSem16MmM">
		                                                                                    </div>
		                                                                                </li>
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="https://an2-img.amz.wtchn.net/image/v2/c4-LMx92VyGuBzSBvPj5lQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0pzZW1aaWVYaHJOM2MyZVRCbFluQnJjbkJpSW4wLkxRQmFNaFpfU0hlRDZDeUtDa19KaVF0YTNId3huTGtUdVhmSWRwNFBFYm8">
		                                                                                    </div>
		                                                                                </li>
		                                                                                <div class="css-ml096x"></div>
		                                                                            </ul>
		                                                                        </div>
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                            <div direction="left" class="css-a89h8a"></div>
		                                                            <div direction="right" class="css-1qgb5vh"></div>
		                                                            <!-- 슬라이드 왼쪽버튼 -->
		                                                            <div class="arrow_button css-lgnnyx" direction="left">
		                                                                <div class="css-1hestod"></div>
		                                                            </div>
		                                                            <!-- 슬라이드 왼쪽버튼 -->
		                                                            <!-- 슬라이드 오른쪽버튼 -->
		                                                            <div class="arrow_button css-pf83cl" direction="right">
		                                                                <div class="css-vp7uyl">
		                                                                	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
		                                                                        alt="forward">
																		</div>
		                                                            </div>
		                                                            <!-- 슬라이드 오른쪽버튼 -->
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <hr class="css-god8tc">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 갤러리 section end -->
		                                                    <!-- 예고편 동영상 section start -->
		                                                    <section class="css-1tywu13 video">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">동영상</h2>
																		</header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-15xcaei">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-1y901al-Row emmoxnt0">
		                                                                            <ul class="e10pt7680 css-wq135y-VisualUl-VideoHorizontalUl">
		                                                                                <li class="css-1xgzykb-VideoListItem e10pt7681">
		                                                                                    <div class="css-7wh3a0">
		                                                                                    	<a href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1OaU16M0xSZFhfaw"
		                                                                                            target="_blank"
		                                                                                            rel="noopener noreferrer"
		                                                                                            class="css-18apgv4">
			                                                                                        <div class="css-8g82qf-StyledSelf e1q5rx9q0">
			                                                                                            <span class="css-bhgne5-StyledBackground e1q5rx9q1"
			                                                                                                  style="background-image: url(https://img.youtube.com/watch?v=JNL44p5kzTk;);"></span>
			                                                                                            <div class="css-1ytinql">
			                                                                                                <span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
			                                                                                                      width="24px"
			                                                                                                      height="24px"
			                                                                                                      class="css-kr87ki">
																											</span>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div class="css-xghows">
			                                                                                            <div class="css-17y9cpn">
			                                                                                                <div class=" css-sloxdm-StyledSelf eb5y16b0">
			                                                                                                    <div class="css-1fucs4t-StyledText eb5y16b1">재개봉 30초 예고편
			                                                                                                    </div>
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                    </a>
																							</div>
		                                                                                </li>
		                                                                                <li class="css-1xgzykb-VideoListItem e10pt7681">
		                                                                                    <div class="css-7wh3a0">
		                                                                                    	<a href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1NeDdrQUEwWVVQMA"
		                                                                                            target="_blank"
		                                                                                            rel="noopener noreferrer"
		                                                                                            class="css-18apgv4">
			                                                                                        <div class="css-8g82qf-StyledSelf e1q5rx9q0">
			                                                                                            <span class="css-bhgne5-StyledBackground e1q5rx9q1"
			                                                                                                  style="background-image: url(https://img.youtube.com/watch?v=JNL44p5kzTk;);"></span>
			                                                                                            <div class="css-1ytinql">
			                                                                                                <span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
			                                                                                                      width="24px"
			                                                                                                      height="24px"
			                                                                                                      class="css-kr87ki">
																											</span>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div class="css-xghows">
			                                                                                            <div class="css-17y9cpn">
			                                                                                                <div class=" css-sloxdm-StyledSelf eb5y16b0">
			                                                                                                    <div class="css-1fucs4t-StyledText eb5y16b1">메인 예고편
			                                                                                                    </div>
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                    </a>
																							</div>
		                                                                                </li>
		                                                                                <li class="css-1xgzykb-VideoListItem e10pt7681">
		                                                                                    <div class="css-7wh3a0">
		                                                                                    	<a href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1vc0RWUW9oN3lodw"
		                                                                                            target="_blank"
		                                                                                            rel="noopener noreferrer"
		                                                                                            class="css-18apgv4">
			                                                                                        <div class="css-8g82qf-StyledSelf e1q5rx9q0">
			                                                                                            <span class="css-bhgne5-StyledBackground e1q5rx9q1"
			                                                                                                  style="background-image: url(https://img.youtube.com/watch?v=JNL44p5kzTk;);"></span>
			                                                                                            <div class="css-1ytinql">
			                                                                                                <span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
			                                                                                                      width="24px"
			                                                                                                      height="24px"
			                                                                                                      class="css-kr87ki">
																											</span>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div class="css-xghows">
			                                                                                            <div class="css-17y9cpn">
			                                                                                                <div class=" css-sloxdm-StyledSelf eb5y16b0">
			                                                                                                    <div class="css-1fucs4t-StyledText eb5y16b1">뮤직 비디오
			                                                                                                    </div>
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                    </a>
																							</div>
		                                                                                </li>
		                                                                                <li class="css-1xgzykb-VideoListItem e10pt7681">
		                                                                                    <div class="css-7wh3a0">
		                                                                                    	<a href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj00T1BCMkp1NnF5NA"
		                                                                                            target="_blank"
		                                                                                            rel="noopener noreferrer"
		                                                                                            class="css-18apgv4">
			                                                                                        <div class="css-8g82qf-StyledSelf e1q5rx9q0">
			                                                                                            <span class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
			                                                                                            <div class="css-1ytinql">
			                                                                                                <span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
			                                                                                                      width="24px"
			                                                                                                      height="24px"
			                                                                                                      class="css-kr87ki">
																											</span>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div class="css-xghows">
			                                                                                            <div class="css-17y9cpn">
			                                                                                                <div class=" css-sloxdm-StyledSelf eb5y16b0">
			                                                                                                    <div class="css-1fucs4t-StyledText eb5y16b1">러브 액츄얼리 꿀팁 영상
			                                                                                                    </div>
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                    </a>
																							</div>
		                                                                                </li>
		                                                                                <div class="css-ml096x"></div>
		                                                                            </ul>
		                                                                        </div>
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                            <div direction="left" class="css-a89h8a"></div>
		                                                            <div direction="right" class="css-1qgb5vh"></div>
		                                                            <div class="arrow_button css-38kpup" direction="left">
		                                                                <div class="css-1hestod"></div>
		                                                            </div>
		                                                            <div class="arrow_button css-pf83cl" direction="right">
		                                                                <div class="css-vp7uyl">
		                                                                	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
																				alt="forward">
																		</div>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <hr class="css-god8tc">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 예고편 동영상 section end -->
		                                                </div>
		                                            </div>
		                                        </div>
			                                    <!-- section 오른쪽 광고 및 갤러리, 동영상 섹션부분 end -->
		                                    </div>
		                                    <!-- 비슷한 작품 section start -->
		                                    <div class="css-1po9d5k">
		                                        <div class="css-uvsgck">
		                                            <div class="css-1gfvga7-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock">
		                                                <div style="min-height: 1px;">
		                                                    <section class="w_exposed_cell css-rwltgb" data-rowindex="13">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">비슷한 작품</h2>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <ul class="css-27z1qm-VisualUl-ContentGrid e14whxmg0">
		                                                                    <li class="css-1hp6p72">
			                                                                    <a title="로맨틱 홀리데이" href="/ko-KR/contents/mOAZPad">
			                                                                        <div class="css-1qmeemv">
			                                                                            <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
			                                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/18czxRiKprJDG6QiaGH9iQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMMjUxTjI5d2FUVjBkM0Y1YVdScVpIQm1kV3g1SW4wLnRUYkJCQmNjS1k2SkxkNkwxZmxMRFBIdEo3dkFIdmp0RXY1clZ6cWJJQUk"
			                                                                                     class="css-qhzw1o-StyledImg ezcopuc1">
			                                                                            </div>
			                                                                            <div class="ottBadge css-5o7sb2"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png"></div>
			                                                                            <div class="ottBadge css-oobk33"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
			                                                                        </div>
			                                                                        <div class="css-ixy093">
			                                                                            <div class="css-niy0za">유 윌 미스 미</div>
			                                                                            <div>
			                                                                                <div class="css-m9i0qw">평균 ★ 2.5</div>
			                                                                                <div class="css-1vvt4am">영화</div>
			                                                                            </div>
			                                                                        </div>
			                                                                    </a>
																			</li>
		                                                                    <li class="css-1hp6p72">
		                                                                    	<a title="그 여자 작사 그 남자 작곡" href="/ko-KR/contents/mLOP2V5">
			                                                                        <div class="css-1qmeemv">
			                                                                            <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
			                                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/c_Pi0LE0_sthoastM36qlQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM3BzTkdOaE9IUmxhamR2WlRKNmRUaG1NRFJ5SW4wLmFlTHVZWEdLYldRWGpfb2R6VVlTc2U0V01CclZHVzRTeGRoOGNhZ1RNcTQ"
			                                                                                     class="css-qhzw1o-StyledImg ezcopuc1">
			                                                                            </div>
			                                                                            <div class="ottBadge css-oobk33"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
			                                                                        </div>
			                                                                        <div class="css-ixy093">
			                                                                            <div class="css-niy0za">그 여자 작사 그 남자 작곡
			                                                                            </div>
			                                                                            <div>
			                                                                                <div class="css-1kcd80z">평가함 ★ 5.0</div>
			                                                                                <div class="css-1vvt4am">영화</div>
			                                                                            </div>
			                                                                        </div>
			                                                                    </a>
																			</li>
		                                                                    <li class="css-1hp6p72">
		                                                                    	<a title="네번의 결혼식과 한번의 장례식" href="/ko-KR/contents/moW4Bqd">
			                                                                        <div class="css-1qmeemv">
			                                                                            <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
			                                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/PaZVaU_j6UM6n9rQYk0Lvg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0ZvWjJWdlluSmpialUzTkd4ck9YUTNkMnhpSW4wLmJKelMwZkVZWFI1ZlhGWmVqbThzdjFMRVNvM3R5QWdZV1ByUDVOM3Q2VXM"
			                                                                                     class="css-qhzw1o-StyledImg ezcopuc1">
			                                                                            </div>
			                                                                            <div class="ottBadge css-oobk33"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
			                                                                        </div>
			                                                                        <div class="css-ixy093">
			                                                                            <div class="css-niy0za">네번의 결혼식과 한번의 장례식
			                                                                            </div>
			                                                                            <div>
			                                                                                <div class="css-or38u3">예상 ★ 3.7</div>
			                                                                                <div class="css-1vvt4am">영화</div>
			                                                                            </div>
			                                                                        </div>
		                                                                    	</a>
		                                                                    </li>
		                                                                    <li class="css-1hp6p72">
		                                                                    	<a title="노팅 힐" href="/ko-KR/contents/my5Y83d">
			                                                                        <div class="css-1qmeemv">
			                                                                            <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
			                                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/X_Uu6Uz2xR7zLxYAkyh2UA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM2cxYm05NGIyWXdNM2gwZUhZMmVtZHRjbTVtSW4wLm1lR0NnUDBlaHJIeWtJUzVjT3VUMFgtdlVjMnhLUFQ0RXEzc2dhbnN4LWc"
			                                                                                     class="css-qhzw1o-StyledImg ezcopuc1">
			                                                                            </div>
			                                                                            <div class="ottBadge css-5o7sb2"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png"></div>
			                                                                            <div class="ottBadge css-oobk33"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
			                                                                        </div>
			                                                                        <div class="css-ixy093">
			                                                                            <div class="css-niy0za">노팅 힐</div>
			                                                                            <div>
			                                                                                <div class="css-or38u3">예상 ★ 4.5</div>
			                                                                                <div class="css-1vvt4am">영화</div>
			                                                                            </div>
			                                                                        </div>
		                                                                    	</a>
		                                                                    </li>
		                                                                </ul>
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <div class="css-1712rt5"></div>
		                                                    <div class="css-1e9niz8">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <div class="css-1thiwcu-StyledInfinityScroll eu826xw0"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <!-- 비슷한 작품 section end -->
		                                </div>
		                            </div>
		                        </div>
			 					<!-- footer start -->
								<%@ include file="head_foot/footer1.jsp" %>
								<!-- footer end -->
		                    </div>
		                </div>
		            </section>
		        </div>
		    </div>
		</div>
	</body>
</html>