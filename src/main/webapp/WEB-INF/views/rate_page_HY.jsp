<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
	<head>
		<link href="css/header.css" rel="stylesheet" type="text/css">
	    <link href="css/rate_page.css" rel="stylesheet" type="text/css">
	    <meta charset="utf-8"/>
	    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
	    <title>와이챠피디아 - 영화, 책, TV 프로그램 추천 및 평가 서비스</title>
	    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <script defer src="/js/rate_page_khy.js"></script>
	    <script src="/js/star_rate.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
	</head>
	<body>
	<div id="ajaxUserId" style="display:none;">${memberVo.id}</div>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
				<!--index header start -->
				<%@ include file="head_foot/header.jsp" %>
				<!--index header end -->
					<section class="css-18gwkcr">
						<div class="css-1ei367s"></div>
						<div class="css-cpl21l">
						    <!-- 헤더 시작 -->
							<div class="css-19oo7uc">
								<header class="css-yatoeb-Self e104qqaq0">
									<div class="css-1gkas1x-Grid e1689zdh0">
										<div class="css-1y901al-Row emmoxnt0">
											<!-- 본 영화 개수 표시 -->
											<h2 class="css-1kqxvpo-CountingHeader e104qqaq1">총 평가 수: ${ratedCount}</h2>
											<!-- 본 영화 개수에 대한 멘트 -->
											<p class="css-j1g7kv-TextForCount e104qqaq2">"어디에서, 어떻게, 누구와 보는가가 영화의 완성이다." </p>
										</div>
									</div>
								</header>
								<!-- 카테고리 시작 -->
								<div class="css-usdi1z">
									<div class="css-9dnzub">
										<div class="css-174lxc3">
											<div class="css-1gkas1x-Grid e1689zdh0">
												<div class="css-1y901al-Row emmoxnt0">
													<ul class="css-lshjof-VisualUl">
														<li class="css-96eosw">평가하기</li>
<!-- 														<li class="css-kx8pjj">TV 프로그램</li> -->
<!-- 														<li class="css-kx8pjj">책</li> -->
<!-- 														<li class="css-kx8pjj">웹툰</li> -->
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
								</div>
								<!-- 선택 정렬 -->
								<div class="css-1b6dlzs">
									<div class="css-1gkas1x-Grid e1689zdh0">
										<div class="css-1y901al-Row emmoxnt0">
											<button class="css-1atn0az-StylelessButton">
												<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTExLjY2MyAxNS44N2wtNS40OTQtNWEuNS41IDAgMCAxIC4zMzctLjg3aDEwLjk4OGEuNS41IDAgMCAxIC4zMzcuODdsLTUuNDk0IDVhLjUuNSAwIDAgMS0uNjc0IDB6Ii8+Cjwvc3ZnPgo=" width="24px" height="24px" class="css-m4qjnl"></span>
												<span class="css-q9kfw1">랜덤 영화</span>
											</button>
											<div class="css-ngrc2w"></div>
										</div>
									</div>
								</div>
								<!-- 선택 정렬 -->
							</div>
							<!-- 헤더 끝 -->
						</div>
						<section class="css-1ghnled-TabContentsContainer e1omr9iu1">
							<!-- 평가하지 않은 영화 불러오는 부분 -->
							<div class="css-12hxjcc-StyledHideableBlock e1pww8ij0">
								<section class="css-vozok1-ContentsSection e1omr9iu2">
									<div class="css-1gkas1x-Grid e1689zdh0">
										<div class="css-1y901al-Row emmoxnt0">
											<ul class="css-1nukiuq-VisualUl-ReviewUl e1omr9iu4">
												<!-- 평가할 영화 1개 -->
											<c:forEach items="${movieRandomRate}" var="movieVo" varStatus="status" >
												<li class="css-1pa5min" id="theNum${status.index}"> 
													<div class="css-jy9y9j"> <!--1번 -->
														<div class=" css-1ajznjz-StyledLazyLoadingImage ezcopuc0"> <!--2번-->
															<a href="/contents/contents_SH?movie_id=${movieVo.id}">
																<img src="${movieVo.movie_post_url}" class="css-qhzw1o-StyledImg ezcopuc1" >
															</a>
														</div>
													</div>
													<div class="css-1frtrxg"><!--3번 추가 전-->
														<h3 class="css-1a7e2fr">${movieVo.movie_kor_title}</h3>
														<div class="css-tr3vhx"><fmt:formatDate value="${movieVo.movie_release_date}" pattern="yyyy"/></div><!--4번  추가 -->
														<!-- 별점 -->
														<!-- 별점 section start -->
                                                        <div class="css-1jlb6q"> <!--5번 아직 추가   -->
                                                            <div class="css-yt2kjp"> <!-- 6번 여긴 추가  -->
																<select class="star_rating" style="border:none; text-align:center; item-align:center;">
																	<option value="0" ${my_star_rate == 0 ? 'selected' : ''}>별점평가하기</option>
																	<option value="0.5" ${my_star_rate == 0.5 ? 'selected' : ''} >0.5점</option>
																	<option value="1.0" ${my_star_rate == 1 ? 'selected' : ''} >1.0점</option>
																	<option value="1.5" ${my_star_rate == 1.5 ? 'selected' : ''}>1.5점</option>
																	<option value="2.0" ${my_star_rate == 2 ? 'selected' : ''}>2.0점</option>
																	<option value="2.5" ${my_star_rate == 2.5 ? 'selected' : ''}>2.5점</option>
																	<option value="3.0" ${my_star_rate == 3 ? 'selected' : ''}>3.0점</option>
																	<option value="3.5" ${my_star_rate == 3.5 ? 'selected' : ''}>3.5점</option>
																	<option value="4.0" ${my_star_rate == 4 ? 'selected' : ''}>4.0점</option>
																	<option value="4.5" ${my_star_rate == 4.5 ? 'selected' : ''}>4.5점</option>
																	<option value="5.0" ${my_star_rate == 5 ? 'selected' : ''}>5.0점</option>
																</select>
                                                            </div>
	                                                        <div class="star_container" class="css-1mbuso5" style="cursor:pointer; width:240px; position:relative;"> <!--7번 추가  -->
                                                            	<div style="width:100%; height:38px; margin:5px auto; position:absolute"><!--8번 추가  -->
                                                            		<img src="/images/star.png" class="star_left">
                                                            		<img src="/images/star.png" class="star">
                                                            		<img src="/images/star.png" class="star">
                                                            		<img src="/images/star.png" class="star">
                                                            		<img src="/images/star.png" class="star_right">
                                                            	</div>
                                                            	<div style="width:100%; height:38px; margin:5px auto; position:absolute"><!--9번 추가  -->
                                                            		<img src="/images/orange_star_half.png" class="orange_half_left star_rating1">
                                                            		<img src="/images/orange_star.png" class="orange_star_left star_rating2" >
                                                            		<img src="/images/orange_star_half.png" class="orange_half star_rating3" >
                                                            		<img src="/images/orange_star.png" class="orange_star star_rating4" >
                                                            		<img src="/images/orange_star_half.png" class="orange_half star_rating5" >
                                                            		<img src="/images/orange_star.png" class="orange_star star_rating6" >
                                                            		<img src="/images/orange_star_half.png" class="orange_half star_rating7" >
                                                            		<img src="/images/orange_star.png" class="orange_star star_rating8" >
                                                            		<img src="/images/orange_star_half.png" class="orange_half_right star_rating9" >
                                                            		<img src="/images/orange_star.png" class="orange_star_right star_rating10" >
                                                            	</div>
                                                            </div>
                                                        </div>
													</div>
												</li>
												<!-- 평가할 영화 1개 -->
											</c:forEach>	
											</ul>
											<div class="e1omr9iu0 css-z4jx26-StyledInfinityScroll-InfinityScroll eu826xw0"></div>
												<div id="newMovie">
													<button id="submit">새로운 영화 평가하기</button>
												</div>
										</div>
									</div>
								</section>
							</div>
							<!-- 평가하지 않은 영화 불러오는 부분 끝-->
						</section>
					</section>
				</div>
				<!-- 평가 영화 정렬 팝업 시작 -->					
				<div id="random_movie" class="css-pjxj5o" disabled="">
					<div id="modal-container-ZP2YWjQjAaWO5sL-M4fVx" class="css-rpyl6s">
						<div class="css-ikkedy">
							<header title="영화" class="css-ho1v2y-HeaderBarPrimitive">
								<div class="css-19pxr9t">
									<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
								</div>
								<em class="css-5pjt39">영화</em>
								<div class="css-19pxr9t"></div>
							</header>
							<div class="css-1s8we4x">
								<div class="css-1gkas1x-Grid e1689zdh0">
									<div class="css-1y901al-Row emmoxnt0">
										<ul class="css-10n5vg9-VisualUl ep5cwgq0">
											<div class="css-1008ziz">선택</div>
											<li class="css-ocecaw">
												<div class="css-11axhrb" id="genre_noir">
													<div class="css-1ciqeix" id="random">랜덤 영화</div>
													<div class="css-0"></div>
												</div>
											</li>
											<li class="css-ocecaw">
												<div class="css-11axhrb" id="genre_hero">
													<div class="css-1ciqeix" id="release">개봉순 영화</div>
													<div class="css-0"></div>
												</div>
											</li>
											<li class="css-ocecaw">
												<div class="css-11axhrb" id="genre_crime">
													<div class="css-1ciqeix" id="rate">평점순 영화</div>
													<div class="css-0"></div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 평가 영화 정렬 팝업 끝-->	
			</div>
		</div>
	</body>
</html>