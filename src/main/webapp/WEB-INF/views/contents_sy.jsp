<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>왓챠피디아</title>
	
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="/css/contents.css" rel="stylesheet" type="text/css">
		<link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/login.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
	
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
		    	$(".css-1mbuso5").hover(function() {
		    		$(".css-1mbuso5 > div").removeClass("css-18l1qa");
		    		$(".css-1mbuso5 > div").addClass("css-ckxrx3");
		    	});
		    	/* 별점 색깔변경 */
		    	
		    	
		    	/* 로그인 전 팝업창 start */
		    	/* 보고싶어요 창 띄우기 */
				/* $("#wish-btn").click(function() {
					if ( $(".css-14gy7wr").css("display") == "none" ) { $(".css-14gy7wr").show(); }
				}); */
				/* 보고싶어요 창 내리기 */
				/* $(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
					if ( $(".css-14gy7wr").css("display") != "none" ) { $(".css-14gy7wr").hide(); }
				}); */
				
				/* 코멘트 창 띄우기 */
				$("#comment-btn").click(function() {
					if ( $(".css-comment_popUp").css("display") == "none" ) { $(".css-comment_popUp").show(); }
				});
				/* 코멘트 창 내리기 */
				$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
					if ( $(".css-comment_popUp").css("display") != "none" ) { $(".css-comment_popUp").hide(); }
				});
				
				/* 보는중 창 띄우기 css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23*/
				$("#watch-btn").click(function() {
					if ( $(".css-looking_popUp").css("display") == "none" ) { $(".css-looking_popUp").show(); }
				});
				/* 보는중 창 내리기 */
				$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
					if ( $(".css-looking_popUp").css("display") != "none" ) { $(".css-looking_popUp").hide(); }
				});
				
				/* 컬렉션 창 띄우기 css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23*/
				$("#collection-btn").click(function() {
					if ( $(".css-collection_popUp").css("display") == "none" ) { $(".css-collection_popUp").show(); }
				});
				/* 컬렉션 창 내리기 */
				$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
					if ( $(".css-collection_popUp").css("display") != "none" ) { $(".css-collection_popUp").hide(); }
				});
				/* 로그인 전 팝업창 end */
				
				
				/* 로그인 후 팝업창 start */
				/* 보고싶어요 창 띄우기 */
				/* $("#wish-btn").on('click', function() {
					if ( $(".css-15hndx7-StylelessButton-ContentActionButton").css("display") == "none" ) { 
						  $(this).removeClass('css-1tc9iuk-StylelessButton-ContentActionButton');
						  $(this).addClass('css-15hndx7-StylelessButton-ContentActionButton');
					}
				}); */
				/* 로그인 후 팝업창 end */
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

				<!-- section start -->
				<section class="css-99klbh">
					<div class="css-7zhfhb">
						<div class="css-wg0jak">
							<button class="css-1xc2mdf-StylelessButton" onclick="history.back()">
								<svg width="24" height="24" fill="#fff" viewBox="0 0 24 24" class="css-dsxoah">
	                                <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" fill="white"
											d="M19.4963 11.2497H6.31529L11.2853 6.27969C11.5783 5.98669 11.5783 5.51269 11.2853 5.21969C10.9923 4.92669 10.5173 4.92669 10.2253 5.21969L3.97529 11.4697C3.90529 11.5387 3.85029 11.6217 3.81229 11.7127C3.73729 11.8967 3.73729 12.1027 3.81229 12.2867C3.85029 12.3777 3.90529 12.4607 3.97529 12.5297L10.2253 18.7797C10.3713 18.9267 10.5623 18.9997 10.7553 18.9997C10.9473 18.9997 11.1393 18.9267 11.2853 18.7797C11.5783 18.4867 11.5783 18.0127 11.2853 17.7197L6.31529 12.7497H19.4963C19.9103 12.7497 20.2463 12.4137 20.2463 11.9997C20.2463 11.5857 19.9103 11.2497 19.4963 11.2497Z">
									</path>
	                                <path class="fillTarget" stroke="white" stroke-width="0.5"
											d="M19.4963 11.2497H6.31529L11.2853 6.27969C11.5783 5.98669 11.5783 5.51269 11.2853 5.21969C10.9923 4.92669 10.5173 4.92669 10.2253 5.21969L3.97529 11.4697C3.90529 11.5387 3.85029 11.6217 3.81229 11.7127C3.73729 11.8967 3.73729 12.1027 3.81229 12.2867C3.85029 12.3777 3.90529 12.4607 3.97529 12.5297L10.2253 18.7797C10.3713 18.9267 10.5623 18.9997 10.7553 18.9997C10.9473 18.9997 11.1393 18.9267 11.2853 18.7797C11.5783 18.4867 11.5783 18.0127 11.2853 17.7197L6.31529 12.7497H19.4963C19.9103 12.7497 20.2463 12.4137 20.2463 11.9997C20.2463 11.5857 19.9103 11.2497 19.4963 11.2497">
									</path>
	                            </svg>
							</button>
							<button class="css-1xc2mdf-StylelessButton">
								<svg width="24" height="24" fill="#fff" viewBox="0 0 20 20" class="css-13ol6c1">
	                                <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" fill="#87898B"
											d="M14.6475 13.314C13.9492 13.314 13.3192 13.6015 12.8658 14.0631L6.98249 10.664C7.04166 10.4515 7.08333 10.2315 7.08333 9.99981C7.08333 9.76815 7.04166 9.54815 6.98333 9.33565L12.8658 5.93565C13.3192 6.39731 13.9492 6.68481 14.6475 6.68481C16.0275 6.68481 17.1475 5.56565 17.1475 4.18481C17.1475 2.80481 16.0275 1.68481 14.6475 1.68481C13.2675 1.68481 12.1475 2.80481 12.1475 4.18481C12.1475 4.41648 12.1892 4.63648 12.2483 4.84981L6.365 8.24898C5.91166 7.78731 5.28166 7.49981 4.58333 7.49981C3.20249 7.49981 2.08333 8.61898 2.08333 9.99981C2.08333 11.3806 3.20249 12.4998 4.58333 12.4998C5.28166 12.4998 5.91166 12.2123 6.365 11.7506L12.2483 15.1498C12.1892 15.3623 12.1475 15.5823 12.1475 15.814C12.1475 17.1948 13.2675 18.314 14.6475 18.314C16.0275 18.314 17.1475 17.1948 17.1475 15.814C17.1475 14.4331 16.0275 13.314 14.6475 13.314Z">
									</path>
	                            </svg>
							</button>
						</div>
						<div class="css-10ofaaw">
							<div class="css-1au2ec">
								<section data-rowindex="0"
									class="w_exposed_cell css-x864dh-Self e1svyhwg0">
									<div class="css-cshjoi-PosterContainer e1svyhwg1">
										<div class="css-oqg1df-BlurPosterBlock e1svyhwg2">
											<div color="#9A7D69"
												class="css-mainn9-LeftBackground e1svyhwg6"></div>
											<div class="css-92c08v-BlurPoster e1svyhwg4">
												<div color="#9A7D69"
													class="css-16kdtrk-LeftGradient e1svyhwg8"></div>
												<div color="#D1B99F"
													class="css-1x8lfzg-RightGradient e1svyhwg9"></div>
											</div>
											<div color="#D1B99F"
												class="css-194pp5q-RightBackground e1svyhwg7"></div>
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
																	예매순위<em>1위(87%)</em>
																</li>
																<li>개봉<em>2일째</em></li>
																<li>누적 관객<em>36만명</em></li>
															</ul>
															<h1 class="css-j40qn0-TitleOnPosterBlock e1svyhwg12">아바타: 물의 길</h1>
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
														<div class="css-11h0kfd-Detail e1svyhwg18">2022 ・
															액션/모험/판타지 ・ 미국</div>
														<div class="css-og1gu8-ContentRatings e1svyhwg20">평균
															★3.8 (3,363명)</div>
														<div class="css-5qj1gb-ContentActionSection e1svyhwg19">
															<div class="css-1jlb6q">
																<div class="css-yt2kjp">
																	<div class="css-1k5zzs9">평가하기</div>
																</div>
																<div id="star-div">
																	<span class="star"> ★★★★★ <span>★★★★★</span> <input
																		type="range" id="1" min="0" max="5" />
																	</span>
																</div>
															</div>
															<div class="css-s5x9hn-ContentActionDivider e1svyhwg21"></div>
															<div class="css-1xki7ez-ButtonBlock e1svyhwg22">
															
															
																<button
																	class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23"
																	id="wish-btn">
																	<div
																		class="Icon icPlus rotatingIcon css-1q1i623-SVG e1282e850">
																		<div>
																			<svg xmlns="http://www.w3.org/2000/svg" width="24"
																				height="24" viewBox="0 0 24 24" fill="none"
																				class="injected-svg"
																				data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjUgMTMuMDkyOUgxMy4xNDI4VjIwLjVIMTAuODU3MVYxMy4wOTI5SDMuNVYxMC44MDcxSDEwLjg1NzFWMy41SDEzLjE0MjhWMTAuODA3MUgyMC41VjEzLjA5MjlaIiBmaWxsPSJjdXJyZW50Q29sb3IiLz4KPC9zdmc+Cg=="
																				xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                            <path
																					d="M20.5 13.0929H13.1428V20.5H10.8571V13.0929H3.5V10.8071H10.8571V3.5H13.1428V10.8071H20.5V13.0929Z"
																					fill="currentColor"></path>
                                                                        </svg>
																			<svg xmlns="http://www.w3.org/2000/svg" width="24"
																				height="24" viewBox="0 0 24 24" fill="none"
																				class="injected-svg"
																				data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xOC41OTY5IDcuMTQ5NDFINS4yNjc2MUM1LjAxMzkgNy4xNDk0MSA0LjgwNzk4IDcuMzU1MzMgNC44MDc5OCA3LjYwOTA0VjIwLjAzNjVDNC44MDc5OCAyMC40MDk4IDUuMjI5MDEgMjAuNjI2NyA1LjUzMzI4IDIwLjQxMDdMMTEuOTMyMyAxNS44NzA1TDE4LjMzMTIgMjAuNDEwN0MxOC42MzU1IDIwLjYyNjcgMTkuMDU2NSAyMC40MDk4IDE5LjA1NjUgMjAuMDM2NVY3LjYwOTA0QzE5LjA1NjUgNy4zNTUzMyAxOC44NTA2IDcuMTQ5NDEgMTguNTk2OSA3LjE0OTQxWiIgZmlsbD0iY3VycmVudENvbG9yIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTguMTM3MyAzSDUuNzI3MjVDNS4yMTg4OSAzIDQuODA3OTggMy40MTE4MyA0LjgwNzk4IDMuOTE5MjZWNS4yOTgxNUM0LjgwNzk4IDUuNTUxODcgNS4wMTM5IDUuNzU3NzkgNS4yNjc2MSA1Ljc1Nzc5SDE4LjU5NjlDMTguODUwNiA1Ljc1Nzc5IDE5LjA1NjUgNS41NTE4NyAxOS4wNTY1IDUuMjk4MTVWMy45MTkyNkMxOS4wNTY1IDMuNDExODMgMTguNjQ0NyAzIDE4LjEzNzMgM1oiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8L3N2Zz4K"
																				xmlns:xlink="http://www.w3.org/1999/xlink"
																				style="display: none;">
                                                                            <path
																					fill-rule="evenodd" clip-rule="evenodd"
																					d="M18.5969 7.14941H5.26761C5.0139 7.14941 4.80798 7.35533 4.80798 7.60904V20.0365C4.80798 20.4098 5.22901 20.6267 5.53328 20.4107L11.9323 15.8705L18.3312 20.4107C18.6355 20.6267 19.0565 20.4098 19.0565 20.0365V7.60904C19.0565 7.35533 18.8506 7.14941 18.5969 7.14941Z"
																					fill="currentColor"></path>
                                                                            <path
																					fill-rule="evenodd" clip-rule="evenodd"
																					d="M18.1373 3H5.72725C5.21889 3 4.80798 3.41183 4.80798 3.91926V5.29815C4.80798 5.55187 5.0139 5.75779 5.26761 5.75779H18.5969C18.8506 5.75779 19.0565 5.55187 19.0565 5.29815V3.91926C19.0565 3.41183 18.6447 3 18.1373 3Z"
																					fill="currentColor"></path>
                                                                        </svg>
																		</div>
																	</div>
																	보고싶어요
																</button>
																
<!-- 																로그인 후 보고싶어요 클릭시 시작 -->
<!-- 																<button -->
<!-- 																	class="css-15hndx7-StylelessButton-ContentActionButton e1svyhwg23" style="display: none"> -->
<!-- 																	<div -->
<!-- 																		class="Icon icRibbon rotatingIcon css-1q1i623-SVG e1282e850"> -->
<!-- 																		<div> -->
<!-- 																			<svg xmlns="http://www.w3.org/2000/svg" width="24" -->
<!-- 																				height="24" viewBox="0 0 24 24" fill="none" -->
<!-- 																				class="injected-svg" -->
<!-- 																				data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xOC41OTY5IDcuMTQ5NDFINS4yNjc2MUM1LjAxMzkgNy4xNDk0MSA0LjgwNzk4IDcuMzU1MzMgNC44MDc5OCA3LjYwOTA0VjIwLjAzNjVDNC44MDc5OCAyMC40MDk4IDUuMjI5MDEgMjAuNjI2NyA1LjUzMzI4IDIwLjQxMDdMMTEuOTMyMyAxNS44NzA1TDE4LjMzMTIgMjAuNDEwN0MxOC42MzU1IDIwLjYyNjcgMTkuMDU2NSAyMC40MDk4IDE5LjA1NjUgMjAuMDM2NVY3LjYwOTA0QzE5LjA1NjUgNy4zNTUzMyAxOC44NTA2IDcuMTQ5NDEgMTguNTk2OSA3LjE0OTQxWiIgZmlsbD0iY3VycmVudENvbG9yIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTguMTM3MyAzSDUuNzI3MjVDNS4yMTg4OSAzIDQuODA3OTggMy40MTE4MyA0LjgwNzk4IDMuOTE5MjZWNS4yOTgxNUM0LjgwNzk4IDUuNTUxODcgNS4wMTM5IDUuNzU3NzkgNS4yNjc2MSA1Ljc1Nzc5SDE4LjU5NjlDMTguODUwNiA1Ljc1Nzc5IDE5LjA1NjUgNS41NTE4NyAxOS4wNTY1IDUuMjk4MTVWMy45MTkyNkMxOS4wNTY1IDMuNDExODMgMTguNjQ0NyAzIDE4LjEzNzMgM1oiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8L3N2Zz4K" -->
<!-- 																				xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																			<path fill-rule="evenodd" clip-rule="evenodd" -->
<!-- 																					d="M18.5969 7.14941H5.26761C5.0139 7.14941 4.80798 7.35533 4.80798 7.60904V20.0365C4.80798 20.4098 5.22901 20.6267 5.53328 20.4107L11.9323 15.8705L18.3312 20.4107C18.6355 20.6267 19.0565 20.4098 19.0565 20.0365V7.60904C19.0565 7.35533 18.8506 7.14941 18.5969 7.14941Z" -->
<!-- 																					fill="currentColor"></path> -->
<!-- 																			<path fill-rule="evenodd" clip-rule="evenodd" -->
<!-- 																					d="M18.1373 3H5.72725C5.21889 3 4.80798 3.41183 4.80798 3.91926V5.29815C4.80798 5.55187 5.0139 5.75779 5.26761 5.75779H18.5969C18.8506 5.75779 19.0565 5.55187 19.0565 5.29815V3.91926C19.0565 3.41183 18.6447 3 18.1373 3Z" -->
<!-- 																					fill="currentColor"></path> -->
<!-- 																			</svg> -->
<!-- 																		</div> -->
<!-- 																	</div> -->
<!-- 																	보고싶어요 -->
<!-- 																</button> -->
<!-- 																로그인 후 보고싶어요 클릭시 끝 -->
																
																
																
																
																
																
																
																
																
																
																
																
																<button
																	class="css-3p9quy-StylelessButton-ContentActionButton-ContentCommentButtonOnXs e1svyhwg24">
																	<div class="Icon icPencil css-1q1i623-SVG e1282e850">
																		<div>
																			<svg xmlns="http://www.w3.org/2000/svg" width="24"
																				height="24" viewBox="0 0 24 24" fill="none"
																				class="injected-svg"
																				data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgMTcuMjUyNVYyMS4wMDI1SDYuNzVMMTcuODEgOS45NDI1TDE0LjA2IDYuMTkyNUwzIDE3LjI1MjVaTTIwLjcxIDcuMDQyNUMyMS4xIDYuNjUyNSAyMS4xIDYuMDIyNSAyMC43MSA1LjYzMjVMMTguMzcgMy4yOTI1QzE3Ljk4IDIuOTAyNSAxNy4zNSAyLjkwMjUgMTYuOTYgMy4yOTI1TDE1LjEzIDUuMTIyNUwxOC44OCA4Ljg3MjVMMjAuNzEgNy4wNDI1WiIgZmlsbD0iY3VycmVudENvbG9yIi8+Cjwvc3ZnPgo="
																				xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                            <path
																					d="M3 17.2525V21.0025H6.75L17.81 9.9425L14.06 6.1925L3 17.2525ZM20.71 7.0425C21.1 6.6525 21.1 6.0225 20.71 5.6325L18.37 3.2925C17.98 2.9025 17.35 2.9025 16.96 3.2925L15.13 5.1225L18.88 8.8725L20.71 7.0425Z"
																					fill="currentColor"></path>
                                                                        </svg>
																		</div>
																	</div>
																	코멘트
																</button>
																<button
																	class="css-orm7r7-StylelessButton-ContentActionButton-ContentCommentButtonOnSm e1svyhwg25" id="comment-btn">
																	<div class="Icon icPencil css-1q1i623-SVG e1282e850">
																		<div>
																			<svg xmlns="http://www.w3.org/2000/svg" width="24"
																				height="24" viewBox="0 0 24 24" fill="none"
																				class="injected-svg"
																				data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgMTcuMjUyNVYyMS4wMDI1SDYuNzVMMTcuODEgOS45NDI1TDE0LjA2IDYuMTkyNUwzIDE3LjI1MjVaTTIwLjcxIDcuMDQyNUMyMS4xIDYuNjUyNSAyMS4xIDYuMDIyNSAyMC43MSA1LjYzMjVMMTguMzcgMy4yOTI1QzE3Ljk4IDIuOTAyNSAxNy4zNSAyLjkwMjUgMTYuOTYgMy4yOTI1TDE1LjEzIDUuMTIyNUwxOC44OCA4Ljg3MjVMMjAuNzEgNy4wNDI1WiIgZmlsbD0iY3VycmVudENvbG9yIi8+Cjwvc3ZnPgo="
																				xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                            <path
																					d="M3 17.2525V21.0025H6.75L17.81 9.9425L14.06 6.1925L3 17.2525ZM20.71 7.0425C21.1 6.6525 21.1 6.0225 20.71 5.6325L18.37 3.2925C17.98 2.9025 17.35 2.9025 16.96 3.2925L15.13 5.1225L18.88 8.8725L20.71 7.0425Z"
																					fill="currentColor"></path>
                                                                        </svg>
																		</div>
																	</div>
																	코멘트
																	<div
																		class="css-4w39q2-StyledDropdownWrapper e1svyhwg28 off">
																		<div class="css-ve4kut">
																			<div
																				class="e1svyhwg29 css-1t4uwd9-StyledDropdownMenuItem">
																				<div
																					class="Icon icPencil icon css-1q1i623-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="24"
																							height="24" viewBox="0 0 24 24" fill="none"
																							class="injected-svg"
																							data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgMTcuMjUyNVYyMS4wMDI1SDYuNzVMMTcuODEgOS45NDI1TDE0LjA2IDYuMTkyNUwzIDE3LjI1MjVaTTIwLjcxIDcuMDQyNUMyMS4xIDYuNjUyNSAyMS4xIDYuMDIyNSAyMC43MSA1LjYzMjVMMTguMzcgMy4yOTI1QzE3Ljk4IDIuOTAyNSAxNy4zNSAyLjkwMjUgMTYuOTYgMy4yOTI1TDE1LjEzIDUuMTIyNUwxOC44OCA4Ljg3MjVMMjAuNzEgNy4wNDI1WiIgZmlsbD0iY3VycmVudENvbG9yIi8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <path
																								d="M3 17.2525V21.0025H6.75L17.81 9.9425L14.06 6.1925L3 17.2525ZM20.71 7.0425C21.1 6.6525 21.1 6.0225 20.71 5.6325L18.37 3.2925C17.98 2.9025 17.35 2.9025 16.96 3.2925L15.13 5.1225L18.88 8.8725L20.71 7.0425Z"
																								fill="currentColor"></path>
                                                                                    </svg>
																					</div>
																				</div>
																				코멘트 수정
																			</div>
																			<div
																				class="e1svyhwg29 css-1t4uwd9-StyledDropdownMenuItem">
																				<div
																					class="Icon icTrash icon css-1q1i623-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="24"
																							height="24" viewBox="0 0 24 24" fill="none"
																							class="injected-svg"
																							data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYgMTkuNzVDNiAyMC44NSA2LjkgMjEuNzUgOCAyMS43NUgxNkMxNy4xIDIxLjc1IDE4IDIwLjg1IDE4IDE5Ljc1VjcuNzVINlYxOS43NVoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE1LjAwMTIgNS43NDZDMTQuNTg4MiA1Ljc0NiAxNC4yNTMyIDUuNDExIDE0LjI1MzIgNC45OThWMy43NDZIOS43NDkxN1Y0Ljk5OEM5Ljc0OTE3IDUuNDExIDkuNDE0MTcgNS43NDYgOS4wMDExNyA1Ljc0NkM4LjU4ODE3IDUuNzQ2IDguMjUzMTcgNS40MTEgOC4yNTMxNyA0Ljk5OFYyLjk5OEM4LjI1MzE3IDIuNTg1IDguNTg4MTcgMi4yNSA5LjAwMTE3IDIuMjVIMTUuMDAxMkMxNS40MTQyIDIuMjUgMTUuNzQ5MiAyLjU4NSAxNS43NDkyIDIuOTk4VjQuOTk4QzE1Ljc0OTIgNS40MTEgMTUuNDE0MiA1Ljc0NiAxNS4wMDEyIDUuNzQ2WiIgZmlsbD0iY3VycmVudENvbG9yIi8+CjxyZWN0IHg9IjUiIHk9IjQuNzUiIHdpZHRoPSIxNCIgaGVpZ2h0PSIyIiBmaWxsPSJjdXJyZW50Q29sb3IiLz4KPC9zdmc+Cg=="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                        <path
																								d="M6 19.75C6 20.85 6.9 21.75 8 21.75H16C17.1 21.75 18 20.85 18 19.75V7.75H6V19.75Z"
																								fill="currentColor"></path>
                                                                                        <path
																								fill-rule="evenodd" clip-rule="evenodd"
																								d="M15.0012 5.746C14.5882 5.746 14.2532 5.411 14.2532 4.998V3.746H9.74917V4.998C9.74917 5.411 9.41417 5.746 9.00117 5.746C8.58817 5.746 8.25317 5.411 8.25317 4.998V2.998C8.25317 2.585 8.58817 2.25 9.00117 2.25H15.0012C15.4142 2.25 15.7492 2.585 15.7492 2.998V4.998C15.7492 5.411 15.4142 5.746 15.0012 5.746Z"
																								fill="currentColor"></path>
                                                                                        <rect
																								x="5" y="4.75" width="14" height="2"
																								fill="currentColor"></rect>
                                                                                    </svg>
																					</div>
																				</div>
																				코멘트 삭제
																			</div>
																		</div>
																	</div>
																</button>
																<button
																	class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23"
																	id="watch-btn">
																	<div class="Icon icEye css-1q1i623-SVG e1282e850">
																		<div>
																			<svg xmlns="http://www.w3.org/2000/svg" width="24"
																				height="24" viewBox="0 0 24 24" fill="none"
																				class="injected-svg"
																				data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDVDNyA1IDIuNzMgOC4xMSAxIDEyLjVDMi43MyAxNi44OSA3IDIwIDEyIDIwQzE3IDIwIDIxLjI3IDE2Ljg5IDIzIDEyLjVDMjEuMjcgOC4xMSAxNyA1IDEyIDVaTTEyIDE3LjVDOS4yNCAxNy41IDcgMTUuMjYgNyAxMi41QzcgOS43NCA5LjI0IDcuNSAxMiA3LjVDMTQuNzYgNy41IDE3IDkuNzQgMTcgMTIuNUMxNyAxNS4yNiAxNC43NiAxNy41IDEyIDE3LjVaTTEyIDkuNUMxMC4zNCA5LjUgOSAxMC44NCA5IDEyLjVDOSAxNC4xNiAxMC4zNCAxNS41IDEyIDE1LjVDMTMuNjYgMTUuNSAxNSAxNC4xNiAxNSAxMi41QzE1IDEwLjg0IDEzLjY2IDkuNSAxMiA5LjVaIiBmaWxsPSJjdXJyZW50Q29sb3IiLz4KPC9zdmc+Cg=="
																				xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                            <path
																					d="M12 5C7 5 2.73 8.11 1 12.5C2.73 16.89 7 20 12 20C17 20 21.27 16.89 23 12.5C21.27 8.11 17 5 12 5ZM12 17.5C9.24 17.5 7 15.26 7 12.5C7 9.74 9.24 7.5 12 7.5C14.76 7.5 17 9.74 17 12.5C17 15.26 14.76 17.5 12 17.5ZM12 9.5C10.34 9.5 9 10.84 9 12.5C9 14.16 10.34 15.5 12 15.5C13.66 15.5 15 14.16 15 12.5C15 10.84 13.66 9.5 12 9.5Z"
																					fill="currentColor"></path>
                                                                        </svg>
																		</div>
																	</div>
																	보는중
																</button>
																
																<!--클릭시 버튼색 바뀌기-->
																
																
																
																
																
																
																<button
																	class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23"
																	id="collection-btn">
																	<div class="Icon icEye css-1q1i623-SVG e1282e850">
																		<div>
																			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 23" width="512" height="512"
																			fill="none" class="injected-svg"
																			data-src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjUxMiIgaGVpZ2h0PSI1MTIiPjxwYXRoIGQ9Ik0yMy41NzYsNi40MjlsLTEuOTEtMy4xNzFMMTIsLjAzNiwyLjMzNCwzLjI1OCwuNDQyLDYuMzk3Yy0uNDc1LC43OTItLjU2MywxLjc0Mi0uMjQzLDIuNjA3LC4zMSwuODM5LC45NjQsMS40ODgsMS44LDEuNzkzbC0uMDA4LDkuODQ0LDEwLDMuMzMzLDEwLTMuMzMzLC4wMDgtOS44NDRjLjg0Ni0uMjk2LDEuNTA3LS45NDYsMS44MTktMS43ODgsLjMxNy0uODU3LC4yMjktMS43OTctLjI0Mi0yLjU4MlptLTUuNzM3LTIuMzM4bC01LjgzMSwxLjk0Ni01LjgzMy0xLjk1MSw1LjgyNS0xLjk0Miw1LjgzOSwxLjk0NlpNMi4xNTYsNy40MjhsMS4yOTItMi4xNDUsNy4wNDgsMi4zNTctMS41MjksMi41NDljLS4yMzksLjM5OC0uNzM1LC41ODEtMS4xNzMsLjQzNGwtNS4wODEtMS42OTNjLS4yOTctLjA5OS0uNTMtLjMyNC0uNjM5LS42MTgtLjEwOC0uMjkzLS4wNzktLjYxNiwuMDgyLS44ODNabTEuODQzLDQuMDM4bDMuMTYzLDEuMDU0YzEuMzQzLC40NDgsMi43OTItLjA4OCwzLjUyMS0xLjMwMmwuMzE2LS41MjYtLjAwNSwxMC44NDMtNy0yLjMzMywuMDA2LTcuNzM1Wm04Ljk5NCwxMC4wNjhsLjAwNS0xMC44NDksLjMxOSwuNTMyYy41NTYsLjkyOCwxLjUzMiwxLjQ1OSwyLjU2MSwxLjQ1OSwuMzE5LDAsLjY0My0uMDUxLC45Ni0uMTU3bDMuMTYxLTEuMDUzLS4wMDYsNy43MzQtNywyLjMzM1ptOC45NS0xMy4yMTZjLS4xMDUsLjI4NS0uMzMxLC41MDMtLjYxOSwuNTk5bC01LjExOCwxLjcwNmMtLjQzOCwuMTQ3LS45MzQtLjAzNS0xLjE3My0uNDM0bC0xLjUyNi0yLjU0Myw3LjA1MS0yLjM1MywxLjMwNSwyLjE2N2MuMTU2LC4yNiwuMTg2LC41NzMsLjA4LC44NThaIi8+PC9zdmc+Cg==">
																			<path d="M23.576,6.429l-1.91-3.171L12,.036,2.334,3.258,.442,6.397c-.475,.792-.563,1.742-.243,2.607,.31,.839,.964,1.488,1.8,1.793l-.008,9.844,10,3.333,10-3.333,.008-9.844c.846-.296,1.507-.946,1.819-1.788,.317-.857,.229-1.797-.242-2.582Zm-5.737-2.338l-5.831,1.946-5.833-1.951,5.825-1.942,5.839,1.946ZM2.156,7.428l1.292-2.145,7.048,2.357-1.529,2.549c-.239,.398-.735,.581-1.173,.434l-5.081-1.693c-.297-.099-.53-.324-.639-.618-.108-.293-.079-.616,.082-.883Zm1.843,4.038l3.163,1.054c1.343,.448,2.792-.088,3.521-1.302l.316-.526-.005,10.843-7-2.333,.006-7.735Zm8.994,10.068l.005-10.849,.319,.532c.556,.928,1.532,1.459,2.561,1.459,.319,0,.643-.051,.96-.157l3.161-1.053-.006,7.734-7,2.333Zm8.95-13.216c-.105,.285-.331,.503-.619,.599l-5.118,1.706c-.438,.147-.934-.035-1.173-.434l-1.526-2.543,7.051-2.353,1.305,2.167c.156,.26,.186,.573,.08,.858Z"
																			fill="currentColor"></path>
																			</svg>

																		</div>
																	</div>
																	컬렉션
																</button>

															</div>
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
												<div data-rowindex="1"
													class="w_exposed_cell css-sd2jre-SectionBlock eue8w0j0">
													<div class="css-12ru3m0">
														<section class="css-1v9og64-LeaveCommentSection eue8w0j1">
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<div class="css-vshgrn-LeaveCommentBlock eue8w0j2">
																		<h3 class="css-1p0zhfu-Title eue8w0j11"
																			th:text="${userSession} !=null ? ${userSession.userName()} + '님의 생각을 글로 적어보세요.' : _"></h3>
																		<div class="css-1jbrsnx-ButtonBlock eue8w0j12">
																			<button
																				class="css-2gm869-StylelessButton-MediumButton-LeaveCommentButton eue8w0j10">코멘트
																				남기기</button>
																		</div>
																	</div>
																</div>
															</div>
														</section>
														<div class="css-1gkas1x-Grid e1689zdh0 hasComm">
															<div class="css-1y901al-Row emmoxnt0">
																<section class="css-10tfsfb-MyCommentSection eue8w0j3">
																	<div class="css-vo2laf-MyCommentBlock eue8w0j6">
																		<div class="css-1rek3mo-MyProfilePhotoBlock eue8w0j4">
																			<div class="css-ffwxzk">
																				<div class="css-18d1ipb-ProfilePhotoImage"></div>
																			</div>
																		</div>
																		<a
																			class="css-1bh5fq7-StylelessLocalLink-LinkToMyComment eue8w0j13"
																			href="/ko-KR/comments/1Vl2bWn96AMrR"><div
																				class="css-2a9q6o-MyComment eue8w0j5">
																				<div class=" css-gujidv-StyledSelf eb5y16b0">
																					<div class="css-1fucs4t-StyledText eb5y16b1">ㅈㄷㄹㄷㅈㄹ</div>
																				</div>
																			</div></a>
																		<ul
																			class="css-llsddo-VisualUl-CommentUpdateButtons eue8w0j7">
																			<li
																				class="css-15b6b8j-CommentUpdateButtonListItem eue8w0j8"><button
																					id="delete-btn"
																					class="css-1nmgbsq-StylelessButton-CommentUpdateButton eue8w0j9">
																					<img
																						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0EwQTBBMCIgZD0iTTUuMjUgMTQuMjVoNy41di03LjVoMS41VjE1YS43NS43NSAwIDAgMS0uNzUuNzVoLTlhLjc1Ljc1IDAgMCAxLS43NS0uNzVWNi43NWgxLjV2Ny41ek0xMiA0LjVoMy43NVY2SDIuMjVWNC41SDZWM2EuNzUuNzUgMCAwIDEgLjc1LS43NWg0LjVBLjc1Ljc1IDAgMCAxIDEyIDN2MS41em0tMS41IDB2LS43NWgtM3YuNzVoM3pNNi43NSA2Ljc1aDEuNXY2Ljc1aC0xLjVWNi43NXptMyAwaDEuNXY2Ljc1aC0xLjVWNi43NXoiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
																						alt="delete comment">삭제
																				</button></li>
																			<li
																				class="css-15b6b8j-CommentUpdateButtonListItem eue8w0j8"><button
																					id="edit-btn"
																					class="css-1nmgbsq-StylelessButton-CommentUpdateButton eue8w0j9">
																					<img
																						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0EwQTBBMCIgZD0iTTIuMTggMTUuMzlsLjcwMy0zLjk4IDMuNzEzIDMuNzEyLTMuOTgxLjcwMmEuMzc0LjM3NCAwIDAgMS0uNDM0LS40MzR6bTEuNDk4LTQuNzc2bDYuMzY0LTYuMzY0IDMuNzEzIDMuNzEyLTYuMzY0IDYuMzY0LTMuNzEzLTMuNzEyek0xNS42MDcgNS4wNGEuNzUuNzUgMCAwIDEgMCAxLjA2bC0xLjA2IDEuMDYxLTMuNzEzLTMuNzEyIDEuMDYtMS4wNmEuNzUuNzUgMCAwIDEgMS4wNiAwbDIuNjUzIDIuNjUxeiIvPgogICAgPC9nPgo8L3N2Zz4K"
																						alt="edit comment">수정
																				</button></li>
																		</ul>
																	</div>
																</section>
															</div>
														</div>
													</div>
												</div>
												<div class="css-1nxfhfk">
													<div
														class="css-1jwavn9-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock">
														<section class="w_exposed_cell css-l1ynz5"
															data-rowindex="4">
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
																				<ul
																					class="css-1ohwri2-VisualUl-PartnerStackableUl e85xbnu0">
																					<li class="css-wj6fn0"><a
																						href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93ZWJ0b29uLmtha2FvLmNvbS9jb250ZW50L-uCmC3tmLzsnpDrp4wt66CI67Ko7JeFLzIzMjA"
																						target="_blank" title="카카오웹툰"
																						class="css-1wacncs-InnerPartOfListWithImage">
																							<div class="css-cssveg">
																								<div class="externalServiceOttIcon css-13zlig9">
																									<div class="css-1njml0y-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="externalServiceTitles css-qkf9j">
																									<div class="css-17vuhtq">카카오웹툰</div>
																								</div>
																								<div>
																									<img
																										src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
																										alt="Arrow">
																								</div>
																							</div>
																					</a></li>
																					<li class="css-wj6fn0"><a
																						href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly9saW5rLXBhZ2Uua2FrYW8uY29tL2dvdG9fdmlldz9zZXJpZXNfaWQ9NTA4NjY0ODEmcmVmZXJyZXI9dXRtX3NvdXJjZSUzRHdhdGNoX3BlZGlh"
																						target="_blank" title="카카오페이지"
																						class="css-1wacncs-InnerPartOfListWithImage">
																							<div class="css-cssveg">
																								<div class="externalServiceOttIcon css-13zlig9">
																									<div class="css-1oiaov4-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="externalServiceTitles css-qkf9j">
																									<div class="css-17vuhtq">카카오페이지</div>
																								</div>
																								<div>
																									<img
																										src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
																										alt="Arrow">
																								</div>
																							</div>
																					</a></li>
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
														<section class="w_exposed_cell css-1tywu13"
															data-rowindex="5">
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<header class="css-1ue9xs6">
																		<h2 class="css-1wtjsst">기본 정보</h2>
																		<div class="css-s289sk">
																			<div class="css-1ugqy9j">
																				<a th:href="'/movie/' + ${movie.idx} + '/info'">더보기</a>
																			</div>
																		</div>
																	</header>
																</div>
															</div>
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<article class="css-1k6vajx-Overview eokm2780"
																		th:object="${movie}">
																		<div class="css-wvh1uf-Summary eokm2781">
																			<span th:text="*{titleOrg}">Avatar: The Way of
																				Water</span> <span
																				class="css-1t00yeb-OverviewMeta eokm2782"
																				th:text="*{makingDate} + ' · ' + *{country} + ' · ' + *{genre}">2022
																				· 미국 · 액션</span><br>
																			<span class="css-1t00yeb-OverviewMeta eokm2782"
																				th:text="*{time} + (*{age}!=null? ' · ' + *{age}:'')">3시간
																				12분 · 12세</span>
																		</div>
																		<div class=" css-k82gae-StyledSelf eb5y16b0">
																			<div class="css-kywn6v-StyledText eb5y16b1"
																				th:text="*{summary}">&lt;아바타: 물의 길&gt;은 판도라
																				행성에서 '제이크 설리'와 '네이티리'가 이룬 가족이 겪게 되는 무자비한 위협과 살아남기 위해
																				떠나야 하는 긴 여정과 전투, 그리고 견뎌내야 할 상처에 대한 이야기를 그렸다. 월드와이드
																				역대 흥행 순위 1위를 기록한 전편 &lt;아바타&gt;에 이어 제임스 카메론 감독이
																				13년만에 선보이는 영화로,...</div>
																		</div>
																	</article>
																	<hr class="css-g67iqr">
																</div>
															</div>
														</section>
														<section class="w_exposed_cell css-1tywu13"
															data-rowindex="7" id="content_credits">
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
																				<ul
																					class="e5xrf7a0 css-1br354h-VisualUl-PeopleStackableUl">
																					<li class="css-54rr1e"><a title="제임스 카메론(감독)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						onclick="location.href='/personDetail'">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1o7yycy-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di"
																								onclick="location.href='/personDetail'">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">제임스 카메론</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										감독</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="샘 워싱턴(주연 | 제이크 설리)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/Q2ZRXY337R">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1h9orp8-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">샘 워싱턴</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										주연 | 제이크 설리</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="조 샐다나(주연 | 네이티리)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/XV4mMxPK46">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-3zrsgm-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">조 샐다나</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										주연 | 네이티리</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="시고니 위버(주연 | 키리)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/qx7gM13vZ8">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-19rtinw-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">시고니 위버</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										주연 | 키리</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="스티븐 랭(주연 | 쿼리치)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/XV4m3pL1k6">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-gmmbr4-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">스티븐 랭</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										주연 | 쿼리치</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="케이트 윈슬렛(주연 | 로날)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/gx7jYebdkL">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-y58fr8-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">케이트 윈슬렛</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										주연 | 로날</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="클리프 커티스(주연 | 토노와리)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/AE4belwg7n">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-l07fj5-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">클리프 커티스</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										주연 | 토노와리</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="조엘 무어(조연 | 노엄)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/plkpGVrZaw">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1rtpihd-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">조엘 무어</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 노엄</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="CCH 파운더(조연 | 모앗)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/6YZAzpMpko">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1mq0dkb-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">CCH 파운더</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 모앗</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="이디 팔코(조연 | 아드모어)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/NG4VmRpg73">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-15jbabp-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">이디 팔코</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 아드모어</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="브렌단 코웰(조연 | 스코스비)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/rQ7XoxWkAm">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-10a0blj-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">브렌단 코웰</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 스코스비</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="제메인 클레멘트(조연 | 가빈)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/NG4VmGng73">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1pb9n1m-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">제메인 클레멘트</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 가빈</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="제이미 플래터스(조연 | 네테이얌)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/aZzpKnLw7Y">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-xgxran-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">제이미 플래터스</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 네테이얌</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="브리튼 달튼(조연 | 로아크)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/WZ9eOJA6Zx">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-14sfv9j-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">브리튼 달튼</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 로아크</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="트리니티 블리스(조연 | 투크티리)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/l72mzJrmkX">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1q2567x-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">트리니티 블리스</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 투크티리</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="잭 챔피언(조연 | 스파이더)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/G4VmEalY73">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1erl65c-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">잭 챔피언</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 스파이더</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="베일리 베이스(조연 | 츠이레야)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/L7NGQEl64j">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-b2h7gc-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">베일리 베이스</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 츠이레야</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>
																					<li class="css-54rr1e"><a
																						title="필립 겔료(조연 | 아오눙)"
																						class="css-1aaqvgs-InnerPartOfListWithImage"
																						href="/ko-KR/people/ykW92qaA42">
																							<div class="css-cssveg">
																								<div class="profilePhotoBlock css-13zlig9">
																									<div class="css-1l5odex-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="css-qkf9j">
																									<div class="css-17vuhtq">필립 겔료</div>
																									<div class="css-1evnpxk-StyledSubtitle">
																										조연 | 아오눙</div>
																								</div>
																								<div></div>
																							</div>
																					</a></li>


																					<div class="css-6qnjre"></div>
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
																		<img
																			src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
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
														<section class="w_exposed_cell css-1tywu13"
															data-rowindex="8">
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<header class="css-1ue9xs6">
																		<h2 class="css-1wtjsst">별점 그래프</h2>
																		<span
																			class="css-14yj34l-RatingStatHeaderTopRight e1dk30cn0"><h4
																				style="margin: 0">평균 ★4.2</h4>
																			<strong>(22명)</strong></span>
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
														<section class="w_exposed_cell css-1tywu13"
															data-rowindex="10">
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<header class="css-1ue9xs6">
																		<h2 class="css-1wtjsst">코멘트</h2>
																		<span class="css-wzn7fp">10+</span>
																		<div class="css-s289sk">
																			<div class="css-1ugqy9j">
																				<a
																					th:onclick="'location.href=\'/movie/'+ ${movie.idx} +'/comments\''">더보기</a>
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

																				<ul
																					class="ew8mnl61 css-nh9j5x-VisualUl-CommentHorizontalUl">
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/87Gv7epbGxE6o">
																										<div class="css-107z6xc">
																											<div class="css-1uteztb-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											여신<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/3kNEpNBeNMOgK">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-1yrlzf9-StyledText eb5y16b1">
																											이 영화가 많은 이들에게 설원의 안부인사로 기억되겠지만 진정한 명장면은 마지막에
																											있다. 도서대출카드 뒷편의 스케치는 처음 맛본 원두커피처럼 향기롭고 진하고
																											쌉쌀하다...</div>
																									</div>
																								</a><span class="css-xstsdj">스포일러가 있어요!!
																									<button aria-label="Accept Spoiler"
																										class="css-13mdv8k-StylelessButton">&nbsp;보기</button>
																								</span>
																							</div>
																							<div class="css-1jm9uak">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9IiNkNGQ0ZDQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTMgMjFoNVY5SDN6TTE0LjkwMiA3Ljk5NGg0LjkzOGMuODggMCAxLjU5MS43IDEuNTkxIDEuNTY2IDAgLjg2Ni0uNzEyIDEuNTY3LTEuNTkgMS41NjdoLTQuOTM5Yy0uMzk4IDAtLjYxNS0uMDU1LS44MTItLjE1OGExLjA4NSAxLjA4NSAwIDAgMS0uNDUzLS40NDdjLS4xMDQtLjE5Mi0uMTYtLjQwNS0uMTYtLjc5OHYtLjMyN2MwLS4zOTMuMDU2LS42MDYuMTYtLjguMTA1LS4xOTEuMjU4LS4zNDIuNDUzLS40NDUuMTk3LS4xMDMuNDE0LS4xNTguODEyLS4xNTgiLz4KICAgICAgICA8cGF0aCBkPSJNMTQuMDYgMTFIMTlhMS41OCAxLjU4IDAgMCAxIDEuNTkgMS41NjhjMCAuODY1LS43MTIgMS41NjYtMS41OSAxLjU2NmgtNC45NGMtLjM5OCAwLS42MTUtLjA1NS0uODEtLjE1N2ExLjA4MSAxLjA4MSAwIDAgMS0uNDU0LS40NDhjLS4xMDUtLjE5Mi0uMTYtLjQwNS0uMTYtLjc5OHYtLjMyN2MwLS4zOTIuMDU1LS42MDYuMTYtLjguMTA0LS4xOTEuMjU4LS4zNDIuNDUzLS40NDUuMTk2LS4xMDMuNDEzLS4xNTguODExLS4xNTgiLz4KICAgICAgICA8cGF0aCBkPSJNMTMuMjIgMTQuMDA5aDQuOTM4Yy44NzkgMCAxLjU5LjcgMS41OSAxLjU2NiAwIC44NjYtLjcxMSAxLjU2Ny0xLjU5IDEuNTY3SDEzLjIyYy0uMzk4IDAtLjYxNS0uMDU1LS44MTEtLjE1N2ExLjA5NSAxLjA5NSAwIDAgMS0uNDU0LS40NDhjLS4xMDQtLjE5Mi0uMTYtLjQwNi0uMTYtLjc5OHYtLjMyOGMwLS4zOTEuMDU2LS42MDUuMTYtLjc5OGExLjA5IDEuMDkgMCAwIDEgLjQ1NC0uNDQ2Yy4xOTYtLjEwMy40MTMtLjE1OC44MS0uMTU4Ii8+CiAgICAgICAgPHBhdGggZD0iTTEyLjM3OCAxNy4wMTdoNC45NGMuODc4IDAgMS41OS42NjggMS41OSAxLjQ5IDAgLjgyNC0uNzEyIDEuNDkyLTEuNTkgMS40OTJoLTQuOTRjLS4zOTggMC0uNjE1LS4wNS0uODEtLjE1YTEuMDU4IDEuMDU4IDAgMCAxLS40NTQtLjQyNWMtLjEwNS0uMTgzLS4xNi0uMzg2LS4xNi0uNzZ2LS4zMTJjMC0uMzczLjA1NS0uNTc3LjE2LS43Ni4xMDQtLjE4My4yNTgtLjMyNy40NTMtLjQyNS4xOTYtLjA5OS40MTMtLjE1LjgxMS0uMTUiLz4KICAgICAgICA8cGF0aCBkPSJNMTMuMjAyIDUuMTYyYS45NC45NCAwIDAgMCAuMjc1LS42NjVWMy4yOTZjLS4wNjYtLjUzLjItLjc5Ni43OTUtLjc5Ni44OTYgMCAyLjM4Ny40NzcgMi4zODcgMi4zODcgMCAxLjI3My0uMjY2IDIuMzMzLS43OTYgMy4xODJ2MTEuOTNIOS41VjkuNjZjMC0uNTMxLjI2NS0xLjA2MS43OTUtMS41OTFsMi45MDctMi45MDd6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo="
																									width="18px" height="18px" class="css-zoh368"></span><em
																									class="like-sum">1520</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNkNGQ0ZDQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODcgMTguMDE5bC0zLjMxNCAzLjMxNHYtNC41N2MtMi4zNTYtMS40MTItMy44OS0zLjcxNi0zLjg5LTYuMzE5IDAtNC4yOTUgNC4xOC03Ljc3NyA5LjMzNC03Ljc3NyA1LjE1NSAwIDkuMzMzIDMuNDgyIDkuMzMzIDcuNzc3IDAgNC4yOTYtNC4xNzggNy43NzgtOS4zMzMgNy43NzgtLjczMyAwLTEuNDQ2LS4wNy0yLjEzLS4yMDN6Ii8+Cjwvc3ZnPgo="
																									width="18px" height="18px" class="css-43cye7"></span><em
																									class="recomm-sum">13</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1jrmj77-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="un🏳️🏴"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/4WLxZAplMb5ro">
																										<div class="css-107z6xc">
																											<div class="css-1uteztb-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											un🏳️🏴<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01">

																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1"
																											onclick="location.href='/recomment'">왓챠
																											정기기부를 막아준 그 신화</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em
																									id="like">14</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em
																									id="recomment">0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>

																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="매생이"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/WwRqoyMkZz5lz">
																										<div class="css-107z6xc">
																											<div class="css-17qc8ue-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">매생이</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/boY2lJpxr7QWO">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1">OTT로
																											영화보는 즐거움을 알려준 착즙 🙂</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em>13</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em>0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="연소🕯"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/Qgy51E7pB5Djk">
																										<div class="css-107z6xc">
																											<div class="css-1sg3b8z-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											연소🕯<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/rdVMNyPXjq2ql">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1">전설의
																											시작 ⭐️</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em>12</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em>0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="Panda🐼✨"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/ZBm5Rb237n5d4">
																										<div class="css-107z6xc">
																											<div class="css-1rrf4s2-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											Panda🐼✨<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/69oMv76Ya1Qal">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1">도다님이
																											그렸으니까 5점 줄게요🙏🐼</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em>12</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em>0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="leejinyoung"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/7gdxdWD3yp5GY">
																										<div class="css-107z6xc">
																											<div class="css-oii39q-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											leejinyoung<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/1Vl2bWy6aWMrR">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1">
																											I'm so happy we're <br>together :)
																										</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em>9</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em>0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="밀면"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/3BnvwL1YB5PAY">
																										<div class="css-107z6xc">
																											<div class="css-1xo8yc7-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											밀면<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/y4ZMO60XN92Op">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1">100%
																											감동실화</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em>8</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em>0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="신박한닉네임"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/nkPvrB08jlvga">
																										<div class="css-107z6xc">
																											<div class="css-e7keuy-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											신박한닉네임<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/xzaQAmzAokQg5">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1">
																											규칙적이고 다양한 식단을 통하여<br>균형잡힌 영화섭취를 도와주는<br>영화영양사
																										</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em>7</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em>0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54 spoiler-li">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/87Gv7epbGxE6o">
																										<div class="css-107z6xc">
																											<div class="css-1uteztb-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											여신<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																									href="/ko-KR/comments/3kNEpNBeNMOgK">
																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-1yrlzf9-StyledText eb5y16b1">
																											이 영화가 많은 이들에게 설원의 안부인사로 기억되겠지만 진정한 명장면은 마지막에
																											있다. 도서대출카드 뒷편의 스케치는 처음 맛본 원두커피처럼 향기롭고 진하고
																											쌉쌀하다...</div>
																									</div>
																								</a><span class="css-xstsdj">스포일러가 있어요!!
																									<button aria-label="Accept Spoiler"
																										class="css-13mdv8k-StylelessButton">&nbsp;보기</button>
																								</span>
																							</div>
																							<div class="css-1jm9uak">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9IiNkNGQ0ZDQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTMgMjFoNVY5SDN6TTE0LjkwMiA3Ljk5NGg0LjkzOGMuODggMCAxLjU5MS43IDEuNTkxIDEuNTY2IDAgLjg2Ni0uNzEyIDEuNTY3LTEuNTkgMS41NjdoLTQuOTM5Yy0uMzk4IDAtLjYxNS0uMDU1LS44MTItLjE1OGExLjA4NSAxLjA4NSAwIDAgMS0uNDUzLS40NDdjLS4xMDQtLjE5Mi0uMTYtLjQwNS0uMTYtLjc5OHYtLjMyN2MwLS4zOTMuMDU2LS42MDYuMTYtLjguMTA1LS4xOTEuMjU4LS4zNDIuNDUzLS40NDUuMTk3LS4xMDMuNDE0LS4xNTguODEyLS4xNTgiLz4KICAgICAgICA8cGF0aCBkPSJNMTQuMDYgMTFIMTlhMS41OCAxLjU4IDAgMCAxIDEuNTkgMS41NjhjMCAuODY1LS43MTIgMS41NjYtMS41OSAxLjU2NmgtNC45NGMtLjM5OCAwLS42MTUtLjA1NS0uODEtLjE1N2ExLjA4MSAxLjA4MSAwIDAgMS0uNDU0LS40NDhjLS4xMDUtLjE5Mi0uMTYtLjQwNS0uMTYtLjc5OHYtLjMyN2MwLS4zOTIuMDU1LS42MDYuMTYtLjguMTA0LS4xOTEuMjU4LS4zNDIuNDUzLS40NDUuMTk2LS4xMDMuNDEzLS4xNTguODExLS4xNTgiLz4KICAgICAgICA8cGF0aCBkPSJNMTMuMjIgMTQuMDA5aDQuOTM4Yy44NzkgMCAxLjU5LjcgMS41OSAxLjU2NiAwIC44NjYtLjcxMSAxLjU2Ny0xLjU5IDEuNTY3SDEzLjIyYy0uMzk4IDAtLjYxNS0uMDU1LS44MTEtLjE1N2ExLjA5NSAxLjA5NSAwIDAgMS0uNDU0LS40NDhjLS4xMDQtLjE5Mi0uMTYtLjQwNi0uMTYtLjc5OHYtLjMyOGMwLS4zOTEuMDU2LS42MDUuMTYtLjc5OGExLjA5IDEuMDkgMCAwIDEgLjQ1NC0uNDQ2Yy4xOTYtLjEwMy40MTMtLjE1OC44MS0uMTU4Ii8+CiAgICAgICAgPHBhdGggZD0iTTEyLjM3OCAxNy4wMTdoNC45NGMuODc4IDAgMS41OS42NjggMS41OSAxLjQ5IDAgLjgyNC0uNzEyIDEuNDkyLTEuNTkgMS40OTJoLTQuOTRjLS4zOTggMC0uNjE1LS4wNS0uODEtLjE1YTEuMDU4IDEuMDU4IDAgMCAxLS40NTQtLjQyNWMtLjEwNS0uMTgzLS4xNi0uMzg2LS4xNi0uNzZ2LS4zMTJjMC0uMzczLjA1NS0uNTc3LjE2LS43Ni4xMDQtLjE4My4yNTgtLjMyNy40NTMtLjQyNS4xOTYtLjA5OS40MTMtLjE1LjgxMS0uMTUiLz4KICAgICAgICA8cGF0aCBkPSJNMTMuMjAyIDUuMTYyYS45NC45NCAwIDAgMCAuMjc1LS42NjVWMy4yOTZjLS4wNjYtLjUzLjItLjc5Ni43OTUtLjc5Ni44OTYgMCAyLjM4Ny40NzcgMi4zODcgMi4zODcgMCAxLjI3My0uMjY2IDIuMzMzLS43OTYgMy4xODJ2MTEuOTNIOS41VjkuNjZjMC0uNTMxLjI2NS0xLjA2MS43OTUtMS41OTFsMi45MDctMi45MDd6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo="
																									width="18px" height="18px" class="css-zoh368"></span><em
																									class="like-sum">1520</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNkNGQ0ZDQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODcgMTguMDE5bC0zLjMxNCAzLjMxNHYtNC41N2MtMi4zNTYtMS40MTItMy44OS0zLjcxNi0zLjg5LTYuMzE5IDAtNC4yOTUgNC4xOC03Ljc3NyA5LjMzNC03Ljc3NyA1LjE1NSAwIDkuMzMzIDMuNDgyIDkuMzMzIDcuNzc3IDAgNC4yOTYtNC4xNzggNy43NzgtOS4zMzMgNy43NzgtLjczMyAwLTEuNDQ2LS4wNy0yLjEzLS4yMDN6Ii8+Cjwvc3ZnPgo="
																									width="18px" height="18px" class="css-43cye7"></span><em
																									class="recomm-sum">13</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1jrmj77-StylelessButton"
																									disabled>좋아요</button>
																							</div>
																						</div>
																					</li>
																					<li class="css-1fryc54 not-spoiler-li">
																						<div class="css-17dwc6k">
																							<div class="css-4obf01">
																								<div class="css-1cvf9dk">
																									<a title="un🏳️🏴"
																										class="css-1f9m1s4-StylelessLocalLink eovgsd01"
																										href="/ko-KR/users/4WLxZAplMb5ro">
																										<div class="css-107z6xc">
																											<div class="css-1uteztb-ProfilePhotoImage"></div>
																										</div>
																										<div class="css-1agoci2">
																											un🏳️🏴<span
																												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																												class="css-amcv0d"></span>
																										</div>
																									</a>
																								</div>
																								<div class="css-yqs4xl">
																									<img
																										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																										width="16px" height="16px" alt="star"><span>5.0</span>
																								</div>
																							</div>
																							<div class="css-ob93md">
																								<a
																									class="css-1f9m1s4-StylelessLocalLink eovgsd01">

																									<div class=" css-12rbc09-StyledSelf eb5y16b0">
																										<div class="css-qxbzku-StyledText eb5y16b1"
																											onclick="location.href='/recomment'">왓챠
																											정기기부를 막아준 그 신화</div>
																									</div>
																								</a>
																							</div>
																							<div class="css-1atijos">
																								<span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-64x8kr"></span><em
																									class="like-sum">14</em><span
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
																									width="18px" height="18px" class="css-q0vi8"></span><em
																									class="recomm-sum">0</em>
																							</div>
																							<div class="css-hy68ty">
																								<button class="css-1h18l7j-StylelessButton">
																									좋아요</button>
																							</div>
																						</div>
																					</li>
																					<div class="css-ml096x"></div>
																				</ul>

																			</div>
																		</div>
																	</div>
																	<div id="loading-icon">
																		<img
																			src="https://icon-library.com/images/spinner-icon-gif/spinner-icon-gif-28.jpg"
																			height="35" width="35" />
																	</div>
																</div>
																<div direction="left" class="css-a89h8a"></div>
																<div direction="right" class="css-1qgb5vh"></div>
																<div class="arrow_button css-38kpup" direction="left">
																	<div class="css-1hestod"></div>
																</div>
																<div class="arrow_button css-pf83cl" direction="right">
																	<div class="css-vp7uyl">
																		<img
																			src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
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
													</div>
												</div>
											</div>
											<div class="css-wpsvu8">
												<section class="css-e2gdle-Self e2ouywk0">
													<div class="css-1wjbj9j-Self e1adaxwi0">
														<section class="css-aqubhg-ContentSection e1adaxwi3">
															<div class="css-t7gndh-AdContainer e1adaxwi4">
																<video
																	poster="https://an2-img.amz.wtchn.net/image/v2/NUqyy575qDVA3LZfMFdFMQ.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM0J5YjIxdmRHbHZiaTh4Tmpjd05UWTNNekkxT0RrNE1EWXpNVEl6SW4wLjExOXAwTXpsLThHSUxzdEoxdmhrZ1phSnlTaWpzX2dkWjYyai01My1mRUk"
																	playsinline="" class="css-a36vjy-AdVideo e1adaxwi6"
																	src="https://dhgywazgeek0d.cloudfront.net/watcha/video/upload/br_3m,c_limit,h_960,w_960/v1670566713/b558fb6e042ad6cbb787ae56ada1eddf.mp4"></video>
																<div class="css-1d2rflg-AdVideoControllers e1adaxwi7">
																	<button
																		class="css-11d2wab-StylelessButton-VideoButton e1adaxwi8"></button>
																	<button
																		class="css-srnj21-StylelessButton-SoundButton e1adaxwi9"></button>
																</div>
															</div>
															<a
																href="https://wcha.it/3iQjr0a?browser_open_type=external"
																target="_blank" rel="noopener noreferrer"
																class="css-1cqdd33-StylelessHref e1imises0">
																<div class="css-1vitjj-AdRow e1adaxwi16">
																	<div class="css-1jrgqr8-InfoSection e1adaxwi15">
																		<div class="css-j0epwo-AdDetail e1adaxwi12">
																			<p class="css-1u6xy1l-AdTitle e1adaxwi10">사막의 왕</p>
																			<p class="css-agjx6i-AdDescription e1adaxwi11">
																				12월 16일 공개!</p>
																			<h3 class="css-nkulx0-ProfileHeader e1adaxwi1">
																				<div class="css-hy0bgx">
																					<div class="css-cii8a1-ProfilePhotoImage"></div>
																				</div>
																				<div class="css-149xv13-HeaderTitle e1adaxwi2">
																					왓챠 오리지널</div>
																			</h3>
																		</div>
																		<div class="css-1yllue8-ButtonContainer e1adaxwi13">
																			<button
																				class="css-ff7qw0-StylelessButton-GoToAdButton e1adaxwi14">
																				보고싶어요</button>
																		</div>
																	</div>
																</div>
															</a>
														</section>
													</div>
												</section>
												<div
													class="css-1nhig6u-RoundedCornerBlock-RoundedCornerBlock">


													<div class="css-1oj6s32">
														<section class="w_exposed_cell css-1impywp"
															data-rowindex="4">
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
																				<ul
																					class="css-1ohwri2-VisualUl-PartnerStackableUl e85xbnu0">
																					<li class="css-wj6fn0"><a
																						href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93ZWJ0b29uLmtha2FvLmNvbS9jb250ZW50L-uCmC3tmLzsnpDrp4wt66CI67Ko7JeFLzIzMjA"
																						target="_blank" title="카카오웹툰"
																						class="css-1wacncs-InnerPartOfListWithImage">
																							<div class="css-cssveg">
																								<div class="externalServiceOttIcon css-13zlig9">
																									<div class="css-1njml0y-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-zoy7di">
																								<div class="externalServiceTitles css-qkf9j">
																									<div class="css-17vuhtq">카카오웹툰</div>
																								</div>
																								<div>
																									<img
																										src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
																										alt="Arrow">
																								</div>
																							</div>
																					</a></li>
																					<li class="css-wj6fn0"><a
																						href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly9saW5rLXBhZ2Uua2FrYW8uY29tL2dvdG9fdmlldz9zZXJpZXNfaWQ9NTA4NjY0ODEmcmVmZXJyZXI9dXRtX3NvdXJjZSUzRHdhdGNoX3BlZGlh"
																						target="_blank" title="카카오페이지"
																						class="css-1wacncs-InnerPartOfListWithImage">
																							<div class="css-cssveg">
																								<div class="externalServiceOttIcon css-13zlig9">
																									<div class="css-1oiaov4-ProfilePhotoImage"></div>
																								</div>
																							</div>
																							<div class="css-16n7af8">
																								<div class="externalServiceTitles css-qkf9j">
																									<div class="css-17vuhtq">카카오페이지</div>
																								</div>
																								<div>
																									<img
																										src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
																										alt="Arrow">
																								</div>
																							</div>
																					</a></li>
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
														<section class="css-1tywu13 gallery">
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<header class="css-1ue9xs6">
																		<h2 class="css-1wtjsst">갤러리</h2>
																		<a class="pink"
																			th:onclick="'location.href=\'/movie/' + ${movie.idx} + '/gallery\''">모아보기</a>
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
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/qYVmXw7ylGy2Fo7GdQyNyA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMkozWVdRNWNuRnFlbkJ3Wkd4NGJITTJiMnR6SW4wLm9yNGNMdDNTdXBxc0loZ1lYYmR6UkI5azY2VGo5WUFtbXRYT3FOeDMxeUk">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/FcaaVfhrDYms84UQfy85og.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0YzYm5abWVIUnVjSGxzWW1KNGRHcHljV3hzSW4wLlpzU0w1bGpyRE54UE8yc0syVWlKZWRRcnd0Rjhzanh3TElTaWdfMEpBUFE">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/O0ir-PUFI-OIIFJf4okbug.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMmRwZW5aNWVIcHhjbU5xZDNac2VtYzVhbmwxSW4wLkxsb1ZmZ3hTZVlmR3puM0xKYXd6QkY4QkFZUUh1cEtoZlVXZ25yOVM4OTg">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/-bNsG7W68ktN54GhRuHklw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0o2YUdabWFtSjBiR2RsT1dOaVpXWmlZbW80SW4wLmJVUnRuLWstM18zTUpmWWZvOUwtdTBsUmFEaHRoQnNqOUZTUTRqZHlqb1k">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/Sw3rZjUrs3e_lbHMolXmPA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0p5Y1dwbVpHZHFOM1o0T1doeU0ySmpZM1pzSW4wLmVSdkttOXBGVTFDc3pWaG55am5DWldtZ2tZSzVrWjdWZXhENHRSem16MmM">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/c4-LMx92VyGuBzSBvPj5lQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0pzZW1aaWVYaHJOM2MyZVRCbFluQnJjbkJpSW4wLkxRQmFNaFpfU0hlRDZDeUtDa19KaVF0YTNId3huTGtUdVhmSWRwNFBFYm8">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/Qj0L3Ryehu_VxP9tZUMjGA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMlp3YjJod1pXMTJZWGx2YkhJd1p6QndlV1puSW4wLjlrbEd0TFg0XzYyRHpja0RHZkNRV1h2U3pYZ0VxSXJMYmZOMkpLeXNFbm8">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/TCD9WeDajXV4HXNeNG0vgw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMlJyT0Roc2RXWm1OMjVtZVdGaloyNWxaV1IwSW4wLlNmd0dPZkhRcXdIbHNfcktVdnF5NXcwVGdfQzJKOENuWWtyX1dLVTZoeDg">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/3CNg55TUv2HJjJEzKlIu5Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM1IwWlhabmFHaHBibWhxWW5Kbk9XdGplV1ZtSW4wLk5ZQkFqWUhQUkk4ZzlRS2ItRGpXdHIxa01iTjBXeUtpcGJQVG5fY00xWTg">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/6Ut77VsGMV3jayEUJuS6HA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMnB3YkdkMWJuUnFlbWx2YXpKdmEyWjZiMnhtSW4wLjhFUld1Y3dCWHpZR3VIYXRfMjZpZVI5eExkakxFdnFhWjEyZDAtRFdaRUE">
																						</div>
																					</li>
																					<li class="css-1cw0vk0">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/cDXVqPFTCdhHmelViWB1rA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMM1prWVdGeU1IcHpaSEo0WkRkak1XSnZaRFZsSW4wLnNoZ0ZpX3pXeThDY0UwcDd6N3N4Y1JHVDMwNG93WERJbk54YlVDYUdQcTA">
																						</div>
																					</li>
																					<li class="css-1cw0vk0 last">
																						<div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
																							<img height="100%"
																								class="css-bhgne5-StyledBackground e1q5rx9q1"
																								src="https://an2-img.amz.wtchn.net/image/v2/oWwYuJIAIihm8m2Y0Buw3w.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5qUXdlRE0yTUhFNE1DSmRMQ0p3SWpvaUwzWXhMMk5zT1hSdFpXbHBaelJzY3pVeE0yTnlPREZ6SW4wLjRsWC02U2hYRWJhcmNTeGVncHJzU0ptVEtKTkdtRFVqclFpaXBPNjhnajQ">
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
																<div class="arrow_button css-lgnnyx" direction="left">
																	<div class="css-1hestod"></div>
																</div>
																<div class="arrow_button css-pf83cl" direction="right">
																	<div class="css-vp7uyl">
																		<img
																			src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
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
																				<ul
																					class="e10pt7680 css-wq135y-VisualUl-VideoHorizontalUl">
																					<li class="css-1xgzykb-VideoListItem e10pt7681">
																						<div class="css-7wh3a0">
																							<a
																								href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1OaU16M0xSZFhfaw"
																								target="_blank" rel="noopener noreferrer"
																								class="css-18apgv4">
																								<div class="css-8g82qf-StyledSelf e1q5rx9q0">
																									<span
																										class="css-bhgne5-StyledBackground e1q5rx9q1"
																										style="background-image: url(https://img.youtube.com/watch?v=JNL44p5kzTk;);"></span>
																									<div class="css-1ytinql">
																										<span
																											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																											width="24px" height="24px" class="css-kr87ki"></span>
																									</div>
																								</div>
																								<div class="css-xghows">
																									<div class="css-17y9cpn">
																										<div class=" css-sloxdm-StyledSelf eb5y16b0">
																											<div class="css-1fucs4t-StyledText eb5y16b1">재개봉 30초 예고편</div>
																										</div>
																									</div>
																								</div>
																							</a>
																						</div>
																					</li>
																					<li class="css-1xgzykb-VideoListItem e10pt7681">
																						<div class="css-7wh3a0">
																							<a
																								href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1NeDdrQUEwWVVQMA"
																								target="_blank" rel="noopener noreferrer"
																								class="css-18apgv4">
																								<div class="css-8g82qf-StyledSelf e1q5rx9q0">
																									<span
																										class="css-bhgne5-StyledBackground e1q5rx9q1"
																										style="background-image: url(https://img.youtube.com/watch?v=JNL44p5kzTk;);"></span>
																									<div class="css-1ytinql">
																										<span
																											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																											width="24px" height="24px" class="css-kr87ki"></span>
																									</div>
																								</div>
																								<div class="css-xghows">
																									<div class="css-17y9cpn">
																										<div class=" css-sloxdm-StyledSelf eb5y16b0">
																											<div class="css-1fucs4t-StyledText eb5y16b1">메인
																												예고편</div>
																										</div>
																									</div>
																								</div>
																							</a>
																						</div>
																					</li>
																					<li class="css-1xgzykb-VideoListItem e10pt7681">
																						<div class="css-7wh3a0">
																							<a
																								href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1vc0RWUW9oN3lodw"
																								target="_blank" rel="noopener noreferrer"
																								class="css-18apgv4">
																								<div class="css-8g82qf-StyledSelf e1q5rx9q0">
																									<span
																										class="css-bhgne5-StyledBackground e1q5rx9q1"
																										style="background-image: url(https://img.youtube.com/watch?v=JNL44p5kzTk;);"></span>
																									<div class="css-1ytinql">
																										<span
																											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																											width="24px" height="24px" class="css-kr87ki"></span>
																									</div>
																								</div>
																								<div class="css-xghows">
																									<div class="css-17y9cpn">
																										<div class=" css-sloxdm-StyledSelf eb5y16b0">
																											<div class="css-1fucs4t-StyledText eb5y16b1">뮤직
																												비디오</div>
																										</div>
																									</div>
																								</div>
																							</a>
																						</div>
																					</li>
																					<li class="css-1xgzykb-VideoListItem e10pt7681">
																						<div class="css-7wh3a0">
																							<a
																								href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj00T1BCMkp1NnF5NA"
																								target="_blank" rel="noopener noreferrer"
																								class="css-18apgv4">
																								<div class="css-8g82qf-StyledSelf e1q5rx9q0">
																									<span
																										class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									<div class="css-1ytinql">
																										<span
																											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																											width="24px" height="24px" class="css-kr87ki"></span>
																									</div>
																								</div>
																								<div class="css-xghows">
																									<div class="css-17y9cpn">
																										<div class=" css-sloxdm-StyledSelf eb5y16b0">
																											<div class="css-1fucs4t-StyledText eb5y16b1">러브
																												액츄얼리 꿀팁 영상</div>
																										</div>
																									</div>
																								</div>
																							</a>
																						</div>
																					</li>
																					<li class="css-1xgzykb-VideoListItem e10pt7681">
																						<div class="css-7wh3a0">
																							<a
																								href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj1YVDVGcHZqUzN3TQ"
																								target="_blank" rel="noopener noreferrer"
																								class="css-18apgv4">
																								<div class="css-8g82qf-StyledSelf e1q5rx9q0">
																									<span
																										class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									<div class="css-1ytinql">
																										<span
																											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																											width="24px" height="24px" class="css-kr87ki"></span>
																									</div>
																								</div>
																								<div class="css-xghows">
																									<div class="css-17y9cpn">
																										<div class=" css-sloxdm-StyledSelf eb5y16b0">
																											<div class="css-1fucs4t-StyledText eb5y16b1">최고의
																												1분 영상</div>
																										</div>
																									</div>
																								</div>
																							</a>
																						</div>
																					</li>
																					<li class="css-1xgzykb-VideoListItem e10pt7681">
																						<div class="css-7wh3a0">
																							<a
																								href="https://redirect.watcha.com/galaxy/aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g_dj10UkpMNDJNaE1wQQ"
																								target="_blank" rel="noopener noreferrer"
																								class="css-18apgv4">
																								<div class="css-8g82qf-StyledSelf e1q5rx9q0">
																									<span
																										class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									<div class="css-1ytinql">
																										<span
																											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																											width="24px" height="24px" class="css-kr87ki"></span>
																									</div>
																								</div>
																								<div class="css-xghows">
																									<div class="css-17y9cpn">
																										<div class=" css-sloxdm-StyledSelf eb5y16b0">
																											<div class="css-1fucs4t-StyledText eb5y16b1">통합
																												30초 예고편</div>
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
																		<img
																			src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
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
													</div>
												</div>
												<div class="css-gdpty9"></div>
											</div>
										</div>
										<div class="css-1po9d5k">
											<div class="css-uvsgck">
												<div
													class="css-1gfvga7-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock">


													<!--컬렉션 시작  -->

													<section class="w_exposed_cell css-1tywu13"
														data-rowindex="12">
														<div class="css-1gkas1x-Grid e1689zdh0">
															<div class="css-1y901al-Row emmoxnt0">
																<header class="css-1ue9xs6">
																	<h2 class="css-1wtjsst">이 작품이 담긴 컬렉션</h2>
																	<span class="css-wzn7fp">128</span>
																</header>
															</div>
														</div>
														<div class="css-usdi1z">
															<div class="css-1x04fwb">
																<div class="css-174lxc3">
																	<div class="css-1gkas1x-Grid e1689zdh0">
																		<div class="css-1y901al-Row emmoxnt0">
																			<ul
																				class="ejtmadi0 css-30r08r-VisualUl-DeckHorizontalUl">
																				<li class="css-lzc9tv"><a
																					title="한번쯤은 꼭 봤으면 하는 영화 "
																					href="/ko-KR/decks/gcdbYZj7pN"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/5YTCIj76Ue6ePtfaM5hCiQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56YzRNRFF3TmpFMk5UQTJNRFF6TkRBaWZRLmtuS3lUUnczQlBmaC16azNpbk9DbGFwal9uVFZXYXVCMlh4V1BsS2xJY00&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/3ZBctmtTnUR1H4BO65Lh9Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56VTJOVE16TlRNNE9EVTVNVEEyTURVaWZRLlhGcTdtdzNQeXBZSTB0VF9Rc2phb0VKdmtMZkdlaXo4c2IyUk1wZXhIZ3M&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/qVRxNmERJpbpP5mWGM0SMw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk1UQTVNamsyT0RRek56RXpNamcxTlRJaWZRLktZeU9VSFFhd0tsamxQZG9VaHRBZURJTnlvcG1ZeGRXSW9nVG45VWhEX1E&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/05rSpi-CKuOLdkIy5UU8EA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMnMzZW0xMWVtTjNZbk4yWldoaU9XRXpkbUZuSW4wLmxpMnFHZGR4S1EzZUp3TUptNEhHM0JWZC1QNUY5Z2toZ2xCSmRTNGgzRVk&quot;);"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw">
																								<div class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">한번쯤은 꼭 봤으면 하는 영화</div>
																								</div>
																							</li>
																							<li class="css-305x3e">좋아요 10710</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="시선이 머무는 포스터"
																					href="/ko-KR/decks/gcdN42xEPk"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/C0oVTovGTrQ48vjLmU4EIA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5EWTVOalUwTVRZNE9UQTVPVFF3TkRFaWZRLlBVVDQxRFRHTmFZS2JxUUVOSjg2SVhCRzdMXzdKZjBuRGxyb3Y1RmZTNk0&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/UrLPNIoF9Ffd4V2DpIEl9g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMjgyYm5CcGNEWjZhM05zWkhWeU4zazNaV3hpSW4wLlcwMXp1T1BRN1B4eGxzVU54U3o2VUxZdjBwQmtlVmwyTWJGOGRyUlVKYmc&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/-y_dt0XRr1jR91eJuBnD9g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UWTVPVFkzT1RneU5qQXpOelE0TXpZaWZRLnNpcTVrMXhYU2QxeHVLa3VHTUU3UV96LVRTdlhDVkYxbllsUFgyRFcwcjQ&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/hBRZ3zU-905NQiEdy1X3Xw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk1qSXdNRGt5TXprMk16UXhNRGsxTURRaWZRLlAwUF9NbHY4UzNJM0c0RFJNaE8zcmNwVmJVSkpVWVdTZ1BsNmMxc1V5Rlk&quot;);"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">시선이
																										머무는 포스터</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 186</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="신작 라인업"
																					href="/ko-KR/decks/gcdkaBPKxb"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/3ZBctmtTnUR1H4BO65Lh9Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56VTJOVE16TlRNNE9EVTVNVEEyTURVaWZRLlhGcTdtdzNQeXBZSTB0VF9Rc2phb0VKdmtMZkdlaXo4c2IyUk1wZXhIZ3M&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/OIi8yQgQNyufwR5Mp50y2A.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56WTFPVGc0TVRRNU1UTXlNVE0yTnpraWZRLklXcU9DbjFfNmhuVU1zdHNQUXpGNHV3T3V3Z0s3U1lYTEZGaE96REowMFk&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/BbAKnUxksj6rxFSmAzcZJw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56YzFNemd4T0RZek1qSTFORE00TVRnaWZRLnMzcFdxRXdFZjVyODlxWnE1SVBCbm9OZ19yY2M1UEVVVHZjcVpRTmRKM0k&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/k5vLrA0Zk6tneWfrWzFbSQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56Y3pOelUwTnpnek5EazVNak13TWpRaWZRLkM2amVaOFRUVjdCb3RXMDU2ZENXTDNGY3BQSDFrYnRrUGVpcXZla0dQLUU&quot;);"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">신작
																										라인업</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 117</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="애니메이션 정복하기"
																					href="/ko-KR/decks/gcdkaoEwEN"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/DjE__v3Jkc09w1VJ7QSJjg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5EZ3hNVEl3T0RZeU9UVXhPVFF6TVRRaWZRLmxJZXlnM0hJLXctd1RjSHo0S1h0Y3IyQ2FveTB5Qno2US1hVFBiMGNadFE&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/PVgl1dHn62Er7G96QMjNfg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qVTNNRGt5T0Rnek56VTVNekEwT0RnaWZRLnZPS2hMYlBURnJxWWEtYkE3blYwb0pLSW02UUJXR2R5WEFnNkFPZVF3NEk&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/MLTFvXFKmrV938Dp6FqOHA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qVXdOVFF4T1RVNU16WXpORFF6TWpjaWZRLmE0Vk9WNmZ3ZUd3dUg2eUVXVTRSeDVzc1NkNW5DN3FzMWFHVWE4Y3dzUjQ&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/J2mHTuDkxEyzrVSRkGtu9Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5EWTRPRFU0TXpNMU9EYzJOak0wT1RNaWZRLjVfVE1BRThTMWRnT29DcDNXUTBHNHN2MFZsLTV4bjh1ZU1fRnF6QjZ3ZTQ&quot;);"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">애니메이션
																										정복하기</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 91</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a
																					title="2023년, 내가 본 영화"
																					href="/ko-KR/decks/gcd9KVMj8N"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/vm5RmJ1rg338v55QW6QVyA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56WTVOek0yTnpJd09UTTRNRFExTWpjaWZRLmlaM2FSYjk1T1NqazBLNWlRdHVJWE12Q1BiZG5TbzhDU282M05vdmNVRHM&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-bhgne5-StyledBackground e1q5rx9q1"
																											style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/3ZBctmtTnUR1H4BO65Lh9Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56VTJOVE16TlRNNE9EVTVNVEEyTURVaWZRLlhGcTdtdzNQeXBZSTB0VF9Rc2phb0VKdmtMZkdlaXo4c2IyUk1wZXhIZ3M&quot;);"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">2023년,
																										내가 본 영화</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 86</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="일본영화(현지 개봉순)"
																					href="/ko-KR/decks/gcdNOZwJnb"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">일본영화(현지
																										개봉순)</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 72</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="애니메이션"
																					href="/ko-KR/decks/gcdNvK33V9"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">애니메이션</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 59</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a
																					title="[수상/후보] 일본 아카데미 애니메이션 작품 "
																					href="/ko-KR/decks/gcd93PWpPk"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">[수상/후보]
																										일본 아카데미 애니메이션 작품</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 44</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a
																					title="일본 극장판 애니메이션 / 애니"
																					href="/ko-KR/decks/gcdkXml75b"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">일본
																										극장판 애니메이션 / 애니</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 26</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a
																					title="NEW 기대되는 개봉예정영화"
																					href="/ko-KR/decks/gcd9g7ZBv9"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">NEW
																										기대되는 개봉예정영화</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 21</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a
																					title="웹툰 다큐 단편 동물 애니메이션 시사교양  키즈"
																					href="/ko-KR/decks/gcdk02LJVN"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">웹툰
																										다큐 단편 동물 애...</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 17</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a
																					title="2023년 73회 베를린 영화제 경쟁부문"
																					href="/ko-KR/decks/gcdbYYyvjb"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">2023년
																										73회 베를린 영화제 경쟁부문</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 14</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="🎬"
																					href="/ko-KR/decks/gcdNJReVXN"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">🎬</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 10</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="2022 영화들"
																					href="/ko-KR/decks/gcd9Ero12k"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">2022
																										영화들</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 10</li>
																						</ul></a></li>
																				<li class="css-lzc9tv"><a title="🧷"
																					href="/ko-KR/decks/gcdb6WqB5N"><div
																							class="css-8vjban">
																							<div class="css-zc7t4e">
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																								<div class="css-ff1m0l">
																									<div class=" css-5tj4gl-StyledSelf e1q5rx9q0">
																										<span
																											class="css-5sjqrq-StyledBackground e1q5rx9q1"></span>
																									</div>
																								</div>
																							</div>
																						</div>
																						<ul class="css-19qbuza-VisualUl">
																							<li class="css-iia7hw"><div
																									class=" css-sloxdm-StyledSelf eb5y16b0">
																									<div class="css-1fucs4t-StyledText eb5y16b1">🧷</div>
																								</div></li>
																							<li class="css-305x3e">좋아요 8</li>
																						</ul></a></li>
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
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
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

													<!--                                        컬렉션 끝                                        -->








													<div style="min-height: 1px;">
														<section class="w_exposed_cell css-rwltgb"
															data-rowindex="13">
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
																		<li class="css-1hp6p72"><a title="로맨틱 홀리데이"
																			href="/ko-KR/contents/mOAZPad">
																				<div class="css-1qmeemv">
																					<div
																						class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img
																							src="https://an2-img.amz.wtchn.net/image/v2/18czxRiKprJDG6QiaGH9iQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMMjUxTjI5d2FUVjBkM0Y1YVdScVpIQm1kV3g1SW4wLnRUYkJCQmNjS1k2SkxkNkwxZmxMRFBIdEo3dkFIdmp0RXY1clZ6cWJJQUk"
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
																		</a></li>
																		<li class="css-1hp6p72"><a
																			title="그 여자 작사 그 남자 작곡"
																			href="/ko-KR/contents/mLOP2V5">
																				<div class="css-1qmeemv">
																					<div
																						class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img
																							src="https://an2-img.amz.wtchn.net/image/v2/c_Pi0LE0_sthoastM36qlQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM3BzTkdOaE9IUmxhamR2WlRKNmRUaG1NRFJ5SW4wLmFlTHVZWEdLYldRWGpfb2R6VVlTc2U0V01CclZHVzRTeGRoOGNhZ1RNcTQ"
																							class="css-qhzw1o-StyledImg ezcopuc1">
																					</div>
																					<div class="ottBadge css-oobk33"
																						src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">그 여자 작사 그 남자 작곡</div>
																					<div>
																						<div class="css-1kcd80z">평가함 ★ 5.0</div>
																						<div class="css-1vvt4am">영화</div>
																					</div>
																				</div>
																		</a></li>
																		<li class="css-1hp6p72"><a
																			title="네번의 결혼식과 한번의 장례식"
																			href="/ko-KR/contents/moW4Bqd">
																				<div class="css-1qmeemv">
																					<div
																						class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img
																							src="https://an2-img.amz.wtchn.net/image/v2/PaZVaU_j6UM6n9rQYk0Lvg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM0ZvWjJWdlluSmpialUzTkd4ck9YUTNkMnhpSW4wLmJKelMwZkVZWFI1ZlhGWmVqbThzdjFMRVNvM3R5QWdZV1ByUDVOM3Q2VXM"
																							class="css-qhzw1o-StyledImg ezcopuc1">
																					</div>
																					<div class="ottBadge css-oobk33"
																						src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">네번의 결혼식과 한번의 장례식</div>
																					<div>
																						<div class="css-or38u3">예상 ★ 3.7</div>
																						<div class="css-1vvt4am">영화</div>
																					</div>
																				</div>
																		</a></li>
																		<li class="css-1hp6p72"><a title="노팅 힐"
																			href="/ko-KR/contents/my5Y83d">
																				<div class="css-1qmeemv">
																					<div
																						class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img
																							src="https://an2-img.amz.wtchn.net/image/v2/X_Uu6Uz2xR7zLxYAkyh2UA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM2cxYm05NGIyWXdNM2gwZUhZMmVtZHRjbTVtSW4wLm1lR0NnUDBlaHJIeWtJUzVjT3VUMFgtdlVjMnhLUFQ0RXEzc2dhbnN4LWc"
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
																		</a></li>

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
										<div class="css-1fpxu0i"></div>
									</div>
								</div>
					</div>
					<!-- footer start -->
					<%@ include file="head_foot/footer1.jsp"%>
					<!-- footer end -->
					<!-- 보고싶어요 팝업창 -->
					<%@ include file="popUP.jsp" %>
					<!-- 보고싶어요 팝업창 끝 --> 
				</div>
			</div>
		</section>
	</body>
</html>