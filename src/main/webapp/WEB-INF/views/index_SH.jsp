<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>왓챠피디아 - 영화, 책, TV 프로그램 추천 및 평가 서비스</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
		<link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/login.css" rel="stylesheet" type="text/css">
		<link href="/css/join.css" rel="stylesheet" type="text/css">
		<link href="/css/index_section.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
		
		<script src="/js/slide_scroll.js"></script>
		<script src="/js/login.js"></script>
		<script src="/js/join.js"></script>
		<!--검색창 스크립트  -->
		<script>
			$(document).ready(function() {
				  $("form").on("submit", function(event) {
				    event.preventDefault();
				    var searchKeyword = $("input[name='searchKeyword']").val();
				    window.location.href = "/search/searchPerson?searchKeyword=" + searchKeyword;
				  });
			});
		</script>
		
		<style>
			* { margin:0; padding:0; text-decoration:none; font-family:'Noto Sans KR', sans-serif; }
			
			.square_div{ position:relative; width:100%; }
		</style>
	</head>
	<body>
		<c:if test="${ result == 0 }">
			<script> alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요."); location.href="/"; </script>
		</c:if>
		<c:if test="${ result == 1 }">
			<script> alert("로그인되었습니다"); location.href="/"; </script>
		</c:if>
		<c:if test="${ check == 0 }">
			<script> alert("${ insert_fail }"); location.href="/"; </script>
		</c:if>
		<c:if test="${ check == 1 }">
			<script> alert("${ insert_success }"); location.href="/"; </script>
		</c:if>
		<div id="root">
			<div class="css-5jq76">
				<div class="square_div">
				
					<!-- header start -->
					<%@ include file="head_foot/header.jsp" %>
					<!-- header end -->
					
					<!-- section start -->
					<section class="section">
						<div class="section_div">
							<section class="section2">
							
								<!-- 별점 TOP 10 영화 10개 div start -->
								<div class="movie_binding" data-rowindex="1">
									<div class="list_title_div">
										<p class="list_title">별점 영화 TOP 10</p>
									</div>
									<div class="list_box_5ea">
										<div class="list_box2">
											<div class="list_box3">
												<div class="list_box4 STAR_TOP10" style="transform:translateX(0px)">
													<div class="list_box5">
														<ul class="list_box_ul" id="STAR_TOP10">
															<!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<c:forEach items="${starTop10List}" var="movieStar" varStatus="status">											
																<li class="list_box_li"> <!-- 10개  -->
																	<a title="${movieStar.movie_kor_title}" href="/contents/contents_SH?id=${movieStar.id}">
																		<div class="list_box_poster">
																			<div class="list_box_poster2 ezcopuc0">
																				<img src="${movieStar.movie_post_url}" class="list_box_poster_image ezcopuc1">
																			</div>
																			<div class="list_box_number">${status.index + 1}</div>
																		</div>
																		<div class="list_box_info">
																			<div class="list_box_info_title">${movieStar.movie_kor_title}</div>
																			<div class="list_box_info_year"><fmt:formatDate value="${movieStar.movie_release_date}" pattern="yyyy"/></div>
																			<div class="average list_box_info_avg">
																				<span>평균</span>
																				<svg width="12" height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#555765" class="list_box_info_star">
																					<path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -10.008421 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z"></path>
																				</svg>
																				<span>${movieStar.movie_rating}</span>
																			</div>
																			<div class="list_box_info_per">누적 관객 ${movieStar.movie_total_audience}</div>
																		</div>
																	</a>
																</li>
															</c:forEach>
															<!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<div class="css-ml096x"></div>
														</ul>
													</div>
												</div>
												<div direction="left" class="list_box_left_area"></div>
												<div direction="right" class="list_box_right_area"></div>
												<div class="arrow_button STAR_TOP10_list_box_left_div list_box_left_arrow_img" direction="left"> <!-- 왼쪽이동 화살표버튼 -->
													<div class="list_box_left_arrow" id="STAR_TOP10_left"></div>
												</div>
												<div class="arrow_button STAR_TOP10_list_box_right_div" direction="right"> <!-- 오른쪽이동 화살표버튼 -->
													<div class="list_box_right_arrow" id="STAR_TOP10_right">
														<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 별점 TOP 10 영화 10개 div end -->
								
								<!-- 왓챠 TOP 10 영화 10개 div start -->
								<div class="movie_binding" data-rowindex="1">
									<div class="list_title_div">
										<p class="list_title">왓챠 영화 TOP 10</p>
									</div>
									<div class="list_box_5ea">
										<div class="list_box2">
											<div class="list_box3">
												<div class="list_box4 WATCHA" style="transform:translateX(0px)">
													<div class="list_box5">
														<ul class="list_box_ul" id="WATCHA">
															<!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<c:forEach items="${whatchaTop10List}" var="movieWhatcha" varStatus="status">											
																<li class="list_box_li"> <!-- 10개  -->
																	<a title="${movieWhatcha.movie_kor_title}" href="/contents/contents_SH?id=${movieWhatcha.id}">
																		<div class="list_box_poster">
																			<div class="list_box_poster2 ezcopuc0">
																				<img src="${movieWhatcha.movie_post_url}" class="list_box_poster_image ezcopuc1">
																			</div>
																			<div class="list_box_number">${status.index + 1}</div>
																			<div class="ottBadge list_box_watcha_badge" src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
																		</div>
																		<div class="list_box_info">
																			<div class="list_box_info_title">${movieWhatcha.movie_kor_title}</div>
																			<div class="list_box_info_year"><fmt:formatDate value="${movieWhatcha.movie_release_date}" pattern="yyyy"/></div>
																			<div class="average list_box_info_avg">
																				<span>평균</span>
																				<svg width="12" height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#555765" class="list_box_info_star">
																					<path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -10.008421 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z"></path>
																				</svg>
																				<span>${movieWhatcha.movie_rating}</span>
																			</div>
																			<div class="list_box_info_per">누적 관객 ${movieWhatcha.movie_total_audience}</div>
																		</div>
																	</a>
																</li>
															</c:forEach>
															<!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<div class="css-ml096x"></div>
														</ul>
													</div>
												</div>
												<div direction="left" class="list_box_left_area"></div>
												<div direction="right" class="list_box_right_area"></div>
												<div class="arrow_button WATCHA_list_box_left_div list_box_left_arrow_img" direction="left"> <!-- 왼쪽이동 화살표버튼 -->
													<div class="list_box_left_arrow" id="WATCHA_left"></div>
												</div>
												<div class="arrow_button WATCHA_list_box_right_div" direction="right"> <!-- 오른쪽이동 화살표버튼 -->
													<div class="list_box_right_arrow" id="WATCHA_right">
														<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 왓챠 TOP 10 영화 5개 div end -->
								
								
								<!-- 화제의 감독영화  div start -->
								<div class="movie_binding" data-rowindex="1">
									<div class="list_title_div">
										<p class="list_title">화제의 ${directorName} 감독 영화</p>
									</div>
									<div class="list_box_5ea">
										<div class="list_box2">
											<div class="list_box3">
												<div class="list_box4 DIRECTOR" style="transform:translateX(0px)">
													<div class="list_box5">
														<ul class="list_box_ul" id="DIRECTOR">
															<!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<c:forEach items="${directorMovieList}" var="directorMovie" varStatus="status">											
																<li class="list_box_li"> <!-- 10개  -->
																	<a title="${directorMovie.movie_kor_title}" href="/contents/contents_SH?id=${directorMovie.id}">
																		<div class="list_box_poster">
																			<div class="list_box_poster2 ezcopuc0">
																				<img src="${directorMovie.movie_post_url}" class="list_box_poster_image ezcopuc1">
																			</div>
																			<div class="list_box_number">${status.index + 1}</div>
																		</div>
																		<div class="list_box_info">
																			<div class="list_box_info_title">${directorMovie.movie_kor_title}</div>
																			<div class="list_box_info_year"><fmt:formatDate value="${directorMovie.movie_release_date}" pattern="yyyy"/></div>
																			<div class="average list_box_info_avg">
																				<span>평균</span>
																				<svg width="12" height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#555765" class="list_box_info_star">
																					<path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -10.008421 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z"></path>
																				</svg>
																				<span>${directorMovie.movie_rating}</span>
																			</div>
																			<div class="list_box_info_per">누적 관객 ${directorMovie.movie_total_audience}</div>
																		</div>
																	</a>
																</li>
															</c:forEach>
															<!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<div class="css-ml096x"></div>
														</ul>
													</div>
												</div>
												<div direction="left" class="list_box_left_area"></div>
												<div direction="right" class="list_box_right_area"></div>
												<div class="arrow_button DIRECTOR_list_box_left_div list_box_left_arrow_img" direction="left"> <!-- 왼쪽이동 화살표버튼 -->
													<div class="list_box_left_arrow" id="DIRECTOR_left"></div>
												</div>
												<div class="arrow_button DIRECTOR_list_box_right_div" direction="right"> <!-- 오른쪽이동 화살표버튼 -->
													<div class="list_box_right_arrow" id="DIRECTOR_right">
														<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 화제의 감독영화  div end -->
						
								
								<!-- 평균별점이 높은 작품 #개 div start -->
								<div class="movie_binding" data-rowindex="3">
									<div class="list_title_div">
										<p class="list_title">평균평점이 높은 작품</p>
									</div>
									<div class="list_box_6ea">
										<div class="list_box2">
											<div class="list_box3">
												<div class="list_box4 StarPoint" style="transform:translateX(0px)">
													<div class="list_box5">
														<ul class="list_box_ul_6ea" id="StarPoint">
													 <!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
													 		<c:forEach items="${RateHighMovieList}" var="movieRate" varStatus="status">
															<li class="list_box_li">
				                                                <a title="${movieRate.movie_kor_title}" href="/contents/contents_SH?id=${movieRate.id}">
				                                                   <div class="list_box_poster">
				                                                      <div class="list_box_poster2 ezcopuc0">
				                                                         <img src="${movieRate.movie_post_url}" class="list_box_poster_image ezcopuc1">
				                                                      </div>
				                                                    </div>
				                                                   <div class="list_box_info">
				                                                      <div class="list_box_info_title">${movieRate.movie_kor_title}</div>
				                                                      <div class="average list_box_info_avg">
				                                                         <span>평균</span>
				                                                         <svg width="12" height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#555765" class="list_box_info_star">
				                                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z"></path>
				                                                         </svg>
				                                                         <span>${movieRate.movie_rating}</span>
				                                                      </div>
				                                                   </div>
				                                                </a>
				                                             </li>
				                                             </c:forEach>			                        
				                                            <!-- foreach문 돌릴 부분 영화컨텐츠부분 -->
															<div class="css-ml096x"></div>
														</ul>
													</div>
												</div>
												<div direction="left" class="list_box_left_area"></div>
												<div direction="right" class="list_box_right_area"></div>
												<div class="arrow_button StarPoint_list_box_left_div list_box_left_arrow_img" direction="left"> <!-- 왼쪽이동 화살표버튼 -->
													<div class="list_box_left_arrow" id="StarPoint_left"></div>
												</div>
												<div class="arrow_button StarPoint_list_box_right_div" direction="right"> <!-- 오른쪽이동 화살표버튼 -->
													<div class="list_box_right_arrow" id="StarPoint_right">
														<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 평균별점이 높은 작품 #개 div end -->
								
								<!-- 마지막 왓챠피디아 컬렉션 div start -->
								<div class="movie_binding2">
									<div class="list_title_div">
										<p class="list_title">WHY?CHA피디아 컬렉션</p>
									</div>
									<div class="list_box_5ea">
										<div class="list_box2">
											<div class="list_box3">
												<div class="list_box4 collect" style="transform:translateX(0px)">
													<div class="list_box5">
														<ul class="list_box_ul" id="collect">
														<!-- 컬렉션 foreach문 돌릴 부분 영화컨텐츠부분  -->
														<c:forEach items="${WhychaCollectionVoList}" var="CollectionVo"> 
															<li class="list_box_li_collection">
																<a title="${CollectionVo.collection_name}" href="/collection/collection_detail_HY?id=${CollectionVo.id}">
																	<div class="list_box_collection_poster">
																		<div class="list_box_collection_poster2">
																			<c:forEach items="${WhychaMovieCollectionVoPartList}" var="MovieCollectionVo">
																				<c:if test="${CollectionVo.id == MovieCollectionVo.collection_id}">
																					<div class="list_box_image_div">
																						<div class="list_box_image_div2 e1q5rx9q0">
																							<span class="list_box_image e1q5rx9q1">
																							  <c:forEach items="${WhychamovieInCollectionVoList}" var="MovieVo">
																							  	<c:if test="${MovieCollectionVo.movie_id == MovieVo.id}">
																									<img src="${MovieVo.movie_post_url}" style="width:100%; height:100%;">
																								</c:if>
																							  </c:forEach>	
																							</span>
																						</div>
																					</div>
																				</c:if>	
																			 </c:forEach>
																		</div>
																	</div>
																	<ul class="list_box_collection_info_ul">
																		<li class="list_box_collection_info_li">
																			<div class=" list_box_collection_info_div eb5y16b0">
																				<div class="list_box_collection_info_title eb5y16b1">${CollectionVo.collection_name}</div>
																			</div>
																		</li>
																	</ul>
																</a>
															</li>
														</c:forEach>
														<!-- 컬렉션 foreach문 돌릴 부분 영화컨텐츠부분  -->
														</ul>
													</div>
												</div>
											</div>
											<div direction="left" class="list_box_left_area"></div>
											<div direction="right" class="list_box_right_area"></div>
											<div class="arrow_button col_list_box_left_div list_box_left_arrow_img" direction="left"> <!-- 왼쪽이동 화살표버튼 -->
												<div class="list_box_left_arrow" id="collect_left"></div>
											</div>
											<div class="arrow_button col_list_box_right_div" direction="right"> <!-- 오른쪽이동 화살표버튼 -->
												<div class="list_box_right_arrow" id="collect_right">
													<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K">
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 마지막 왓챠피디아 컬렉션 div end -->
							</section>
						</div>
					</section>
					<!-- section end -->
					
					<!-- footer start -->
					<%@ include file="head_foot/footer1.jsp" %>
					<!-- footer end -->
				</div>
			</div>
		</div>
	</body>
</html>