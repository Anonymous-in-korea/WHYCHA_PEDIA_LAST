<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Movie_Detail_Page</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="../image/favicon.png" rel="icon">
		<link href="../css/contents.css" rel="stylesheet" type="text/css">
		<link href="../css/style.css" rel="stylesheet" type="text/css">
		<link href="../css/header.css" rel="stylesheet" type="text/css">
		<link href="../css/login_nonback.css" rel="stylesheet" type="text/css">
		<link href="../css/join_nonback.css" rel="stylesheet" type="text/css">
		<link href="../css/footer.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
		<script src="../js/slide_scroll.js"></script>
		<script src="../js/login.js"></script>
		<script src="../js/join.js"></script>
		<script src="../js/contents.js"></script>
		<script src="../js/contents_SH.js"></script>
	</head>
	<body>
		<div id="ajaxMovieId" style="display:none;">${movieVo.id}</div>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="../head_foot/header_nonback.jsp" %>
					<!-- header end -->
					
					<!-- pop_up 창 section -->
					<%@ include file="contents_pop_up.jsp" %>
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
													<img id="background-poster-image" src="${movieVo.background_post_url}" alt="Poster Image">
													<!-- 포스터 백그라운드 그라데이션부분 -->
													<div color="#9A7D69" class="css-16kdtrk-LeftGradient e1svyhwg8"></div>
													<div color="#D1B99F" class="css-1x8lfzg-RightGradient e1svyhwg9"></div>
													<!-- 포스터 백그라운드 그라데이션부분 -->
												</div>
												<div color="#D1B99F" class="css-194pp5q-RightBackground e1svyhwg7"></div>
												<div class="css-1ubeqqm-DimmedLayer e1svyhwg3"></div>
											</div>
											<div class="css-569z5v">
												<div class="css-1po9d5k">
													<div class="css-1d6udxb">
														<div class="css-11zdk8l-PosterWithRankingInfoBlock e1svyhwg10">
															<div class=" css-1np54po-StyledLazyLoadingImage ezcopuc0">
																<img alt="background_post_url(배경 포스터)" src="${movieVo.movie_post_url}"
	                                                            	class="css-qhzw1o-StyledImg ezcopuc1">
															</div>
															<div class="css-r6qxq2-ContentMetaInfoBlock e1svyhwg11">
																<ul class="css-1v9zk7c-RankingInfoList e1svyhwg14">
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
															<h1 class="css-171k8ad-Title e1svyhwg17"></h1>
															<div class="css-11h0kfd-Detail e1svyhwg18">
															<fmt:formatDate value="${movieVo.movie_release_date}" pattern="yyyy"/> ・ ${genre} ・ ${country}</div>
		                                                    <div class="css-og1gu8-ContentRatings e1svyhwg20">평균 ★${movieVo.movie_rating} (${movieVo.movie_total_audience})</div>
		                                                    <div class="css-5qj1gb-ContentActionSection e1svyhwg19">
		                                                    	<!-- 별점 section start -->
		                                                        <div class="css-1jlb6q">
		                                                            <div class="css-yt2kjp">  
		                                                            	<c:if test="${ sessionId == null }">
																		<select id="star_rating" style="border:none; text-align:center; item-align:center;">
																			<option value="0" ${my_star_rate == 0 ? 'selected' : ''} selected>별점평가하기</option>
																		</select>
		                                                            	</c:if>
		                                                            	<c:if test="${ sessionId != null }">
																		<select id="star_rating_login" style="border:none; text-align:center; item-align:center;">
																			<option value="0" ${my_star_rate == 0 ? 'selected' : ''}>별점평가하기</option>
																			<option value="0.5" ${my_star_rate == 0.5 ? 'selected' : ''}>0.5점</option>
																			<option value="1.0" ${my_star_rate == 1.0 ? 'selected' : ''}>1.0점</option>
																			<option value="1.5" ${my_star_rate == 1.5 ? 'selected' : ''}>1.5점</option>
																			<option value="2.0" ${my_star_rate == 2.0 ? 'selected' : ''}>2.0점</option>
																			<option value="2.5" ${my_star_rate == 2.5 ? 'selected' : ''}>2.5점</option>
																			<option value="3.0" ${my_star_rate == 3.0 ? 'selected' : ''}>3.0점</option>
																			<option value="3.5" ${my_star_rate == 3.5 ? 'selected' : ''}>3.5점</option>
																			<option value="4.0" ${my_star_rate == 4.0 ? 'selected' : ''}>4.0점</option>
																			<option value="4.5" ${my_star_rate == 4.5 ? 'selected' : ''}>4.5점</option>
																			<option value="5.0" ${my_star_rate == 5.0 ? 'selected' : ''}>5.0점</option>
																		</select>
		                                                            	</c:if>   
		                                                            </div>
		                                                            <c:if test="${ sessionId == null }">
		                                                            <div id="star_container" class="css-1mbuso5" style="cursor:pointer; width:238px; position:relative;">
		                                                            	<div style="width:100%; height:38px; margin:5px auto; position:absolute">
		                                                            		<img src="/images/star.png" class="star_left">
		                                                            		<img src="/images/star.png" class="star">
		                                                            		<img src="/images/star.png" class="star">
		                                                            		<img src="/images/star.png" class="star">
		                                                            		<img src="/images/star.png" class="star_right">
		                                                            	</div>
		                                                            	<div style="width:100%; height:38px; margin:5px auto; position:absolute; display:none;">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half_left" id="star_rating1">
		                                                            		<img src="/images/orange_star.png" class="orange_star_left" id="star_rating2">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half" id="star_rating3">
		                                                            		<img src="/images/orange_star.png" class="orange_star" id="star_rating4">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half" id="star_rating5">
		                                                            		<img src="/images/orange_star.png" class="orange_star" id="star_rating6">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half" id="star_rating7">
		                                                            		<img src="/images/orange_star.png" class="orange_star" id="star_rating8">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half_right" id="star_rating9">
		                                                            		<img src="/images/orange_star.png" class="orange_star_right" id="star_rating10">
		                                                            	</div>
		                                                            </div>
		                                                            </c:if>
		                                                            <c:if test="${ sessionId != null }">
		                                                            <div id="star_container_login" class="css-1mbuso5" style="cursor:pointer; width:238px; position:relative;">
		                                                            	<div style="width:100%; height:38px; margin:5px auto; position:absolute">
		                                                            		<img src="/images/star.png" class="star_left">
		                                                            		<img src="/images/star.png" class="star">
		                                                            		<img src="/images/star.png" class="star">
		                                                            		<img src="/images/star.png" class="star">
		                                                            		<img src="/images/star.png" class="star_right">
		                                                            	</div>
		                                                            	<div style="width:100%; height:38px; margin:5px auto; position:absolute;">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half_left" id="star_rating1">
		                                                            		<img src="/images/orange_star.png" class="orange_star_left" id="star_rating2">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half" id="star_rating3">
		                                                            		<img src="/images/orange_star.png" class="orange_star" id="star_rating4">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half" id="star_rating5">
		                                                            		<img src="/images/orange_star.png" class="orange_star" id="star_rating6">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half" id="star_rating7">
		                                                            		<img src="/images/orange_star.png" class="orange_star" id="star_rating8">
		                                                            		<img src="/images/orange_star_half.png" class="orange_half_right" id="star_rating9">
		                                                            		<img src="/images/orange_star.png" class="orange_star_right" id="star_rating10">
		                                                            	</div>
		                                                            </div>
		                                                            </c:if>
		                                                        </div>
		                                                        <!-- 별점 section end -->
		                                                        
		                                                        
	                                                        	<div class="css-s5x9hn-ContentActionDivider e1svyhwg21"></div>
	                                                        	<!-- 별점 오른쪽 section start -->
																<div class="css-1xki7ez-ButtonBlock e1svyhwg22">
																
																
																	<!-- 보고싶어요 start -->
																	<c:if test="${ sessionId == null }">
																		<button class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23" id="wish_btn">
                                                                		<div class="select_image">
                                                                			<img src="/images/plus_icon.png" id="plus_icon" style="display:block;">
                                                                			<img src="/images/wish_flag_icon.png" id="wish_flag_icon" style="display:none;">
                                                                		</div>
	                                                                	<strong id="wish_text" style="margin-right:15px;">보고싶어요</strong>
	                                                                	</button>
																	</c:if>
																	<c:if test="${ sessionId != null }">
																		<c:if test="${ isWishWatch == 1 }"> <!-- 1: 보고싶어요 체크  -->
	                                                            			<button class="css-orm7r7-StylelessButton-ContentActionButton-ContentCommentButtonOnSm e1svyhwg25 active" id="wish_btn_login">
	                                                                		<div class="select_image">
	                                                                			<img src="/images/plus_icon.png" id="plus_icon" style="display:none;">
	                                                                			<img src="/images/wish_flag_icon.png" id="wish_flag_icon" style="display:block;">
	                                                                		</div>
		                                                                	<strong id="wish_text" style="margin-right:15px; color:#FEAE27;">보고싶어요</strong>
		                                                                	</button>
	                                                            		</c:if>
	                                                            		<c:if test="${ isWishWatch == 0 }"> <!-- 0: 보고싶어요 안 체크  -->
	                                                            			<button class="css-orm7r7-StylelessButton-ContentActionButton-ContentCommentButtonOnSm e1svyhwg25" id="wish_btn_login">
	                                                                		<div class="select_image">
	                                                                			<img src="/images/plus_icon.png" id="plus_icon" style="display:block;">
	                                                                			<img src="/images/wish_flag_icon.png" id="wish_flag_icon" style="display:none;">
	                                                                		</div>
		                                                                	<strong id="wish_text" style="margin-right:15px; color:;">보고싶어요</strong>
		                                                                	</button>
	                                                            		</c:if>
																	</c:if>
	                                                            	
	                                                            	
	                                                            	
	                                                            	
	                                                            	<!-- 코멘트 start -->
	                                                            	<c:if test="${ sessionId == null }">
	                                                            		<button class="css-orm7r7-StylelessButton-ContentActionButton-ContentCommentButtonOnSm e1svyhwg25" id="comment_btn">
		                                                                <div class="select_image">
		                                                                	<img src="/images/pen_icon.png" id="pen_icon" style="display:block;">
		                                                                	<img src="/images/pen_icon_color.png" id="pen_icon_color" style="display:none;">
		                                                                </div>
	                                                                	<strong class="text" style="margin-right:15px; color:;">코멘트</strong>
	                                                            	</c:if>
	                                                            	<c:if test="${ sessionId != null }">
	                                                            		<button class="css-orm7r7-StylelessButton-ContentActionButton-ContentCommentButtonOnSm e1svyhwg25" id="comment_btn_login">
		                                                                <div class="select_image">
		                                                                	<img src="/images/pen_icon.png" id="pen_icon" style="display:block;">
		                                                                	<img src="/images/pen_icon_color.png" id="pen_icon_color" style="display:none;">
		                                                                </div>
	                                                                	<strong id="comment_text" style="margin-right:15px; color:;">코멘트</strong>
	                                                            	</c:if>
																	</button>
																	
																	
																	
																	<!-- 보는중 start -->
																	<c:if test="${ sessionId == null }">
	                                                            		<button class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23" id="watch_btn">
		                                                                <div class="select_image">
		                                                                    <img src="/images/eye_icon.png" id="eye_icon" style="display:block;">
		                                                                    <img src="/images/eye_icon_color.png" id="eye_icon_color" style="display:none;">
		                                                                </div>
		                                                                <strong class="text" style="margin-right:15px;">보는중</strong>
																	</c:if>
																	<c:if test="${ sessionId != null }"> 
																		<c:if test="${ isWatching == 1 }"> <!-- 1: 보는중 체크  -->
		                                                            		<button class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23 active" id="watch_btn_login">
			                                                                <div class="select_image">
			                                                                    <img src="/images/eye_icon.png" id="eye_icon" style="display:none;">
			                                                                    <img src="/images/eye_icon_color.png" id="eye_icon_color" style="display:block;">
			                                                                </div>
			                                                                <strong id="watch_text" style="margin-right:15px; color:#FEAE27;">보는중</strong>
		                                                            	</c:if>
		                                                            	<c:if test="${ isWatching == 0 }"> <!-- 0: 보는중 안체크  -->
		                                                            		<button class="css-1tc9iuk-StylelessButton-ContentActionButton e1svyhwg23" id="watch_btn_login">
			                                                                <div class="select_image">
			                                                                    <img src="/images/eye_icon.png" id="eye_icon" style="display:block;">
			                                                                    <img src="/images/eye_icon_color.png" id="eye_icon_color" style="display:none;">
			                                                                </div>
			                                                                <strong id="watch_text" style="margin-right:15px; color:;">보는중</strong>
		                                                            	</c:if>
																	</c:if>
		                                                            </button>
		                                                            
		                                                            
		                                                            
		                                                            <!-- 콜렉션 start -->
		                                                            <c:if test="${ sessionId == null }">
		                                                            	<button class="css-1u6iefh-StylelessButton-ContentActionButton-ContentMoreButtonOnSm e1svyhwg27" id="collection_btn">
	                                                                	<div class="select_image">
		                                                                    <img src="/images/collection_icon.png" id="collection_icon" style="display:block;">
		                                                                    <img src="/images/collection_icon_color.png" id="collection_icon_color" style="display:none;">
		                                                                </div>
		                                                                <strong id="collection_text" style="color:;">콜렉션</strong>
		                                                            </c:if>
		                                                            <c:if test="${ sessionId != null }">
		                                                            	<button class="css-1u6iefh-StylelessButton-ContentActionButton-ContentMoreButtonOnSm e1svyhwg27" id="collection_btn_login">
	                                                                	<div class="select_image">
		                                                                    <img src="/images/collection_icon.png" id="collection_icon" style="display:block;">
		                                                                    <img src="/images/collection_icon_color.png" id="collection_icon_color" style="display:none;">
		                                                                </div>
		                                                                <strong id="collection_text" style="color:;">콜렉션</strong>
		                                                            </c:if>
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
		                                        	
		                                        	<!-- 보고싶어요 or 보는중 버튼 클릭 시 (로그인 후) start -->
		                                            <div data-rowindex="1" class="w_exposed_cell css-sd2jre-SectionBlock eue8w0j0">
		                                            	<div class="css-12ru3m0">
		                                            		<!-- 코멘트 안달았을 때 나타나는 div start -->
		                                            		<c:if test="${ isWishWatch == 1 || isWatching == 1 }"><!-- 이거 밑에 코멘트 null일때 작동하도록 el태그 걸기 -->
			                                                	<section class="css-1v9og64-LeaveCommentSection eue8w0j1">
			                                                		<div class="css-1gkas1x-Grid e1689zdh0">
			                                                			<div class="css-1y901al-Row emmoxnt0">
			                                                				<div class="css-vshgrn-LeaveCommentBlock eue8w0j2">
			                                                					<h3 class="css-1p0zhfu-Title eue8w0j11">[ sessionName ]님의 생각을 글로 적어보세요.</h3>
			                                                					<div class="css-1jbrsnx-ButtonBlock eue8w0j12">
			                                                						<button id="comment_write" class="css-2gm869-StylelessButton-MediumButton-LeaveCommentButton eue8w0j10">
			                                                							코멘트 남기기
			                                                						</button>
			                                                					</div>
			                                                				</div>
			                                                			</div>
			                                                		</div>
			                                                	</section>
		                                            		</c:if>
		                                                	<!-- 코멘트 안달았을 때 나타나는 div end -->
		                                                	
		                                                	<!-- 코멘트 달았을 때 나타나는 div start -->
		                                                	<c:if test="${ isWishWatch == 1 || isWatching == 1 }">
															<div class="css-1gkas1x-Grid e1689zdh0 hasComm">
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
																						<div class="css-1fucs4t-StyledText eb5y16b1">개같다개같다개같다개같다개같다개같다개같다</div>
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
		                                                	</c:if>
															<!-- 코멘트 달았을 때 나타나는 div end -->
		                                           		</div>
		                                           	</div>
		                                           	<!-- 보고싶어요 or 보는중 버튼 클릭 시 (로그인 후) end -->
		                                           	
		                                            <div class="css-1nxfhfk">
		                                                <div class="css-1jwavn9-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock">
		                                                	<!-- 기본정보 section start -->
		                                                    <section class="w_exposed_cell css-1tywu13" data-rowindex="5">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">기본정보</h2>
		                                                                    <div class="css-s289sk">
		                                                                        <div class="css-1ugqy9j">
		                                                                        	<a href="/contents/contents_info_page?movieId=${movieVo.id}">더보기</a>
		                                                                        </div>
		                                                                    </div>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <article class="css-1k6vajx-Overview eokm2780">
		                                                                    <div class="css-wvh1uf-Summary eokm2781">
		                                                                        <span>${movieVo.movie_kor_title}(${movieVo.movie_original_title})</span>
		                                                                        <span class="css-1t00yeb-OverviewMeta eokm2782"><fmt:formatDate value="${movieVo.movie_release_date}" pattern="yyyy"/> · ${country} · ${genre}</span>
		                                                                        <br>
		                                                                        <span class="css-1t00yeb-OverviewMeta eokm2782">${movieVo.movie_running_time}분 · ${movieVo.movie_grade} </span>
		                                                                    </div>
		                                                                    <div class="css-k82gae-StyledSelf eb5y16b0">
		                                                                <!--         <div class="css-kywn6v-StyledText eb5y16b1">
		                                                                        	&lt;아바타:물의 길&gt;은 판도라 행성에서 '제이크 설리'와 '네이티리'가 이룬 가족이
		                                                                            겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투, 그리고
		                                                                            견뎌내야 할 상처에 대한 이야기를 그렸다. 월드와이드 역대 흥행 순위 1위를
		                                                                            기록한 전편 &lt;아바타&gt;에 이어 제임스 카메론 감독이 13년만에
		                                                                            선보이는 영화로,...
		                                                                        </div> -->
		                                                                    </div>
		                                                                </article>
		                                                                <hr class="css-g67iqr">
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                    <!-- 기본정보 section end -->
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
		                                                                                  <!--감독 리스트 시작  -->
		                                                                            <c:forEach items= "${oneMovieDirectorList}" var ="dvo" >
		                                                                                <li class="css-54rr1e" >
		                                                                                	<a href="/person/person_detail_DIRECTOR_HY?director_name=${dvo.director_name}&director_id=${dvo.director_id}&role=감독" class="css-1aaqvgs-InnerPartOfListWithImage" >
		                                                                                    	<div class="css-cssveg">
		                                                                                        	<div class="profilePhotoBlock css-13zlig9">
		                                                                                            	<div class="css-1o7yycy-ProfilePhotoImage" style="background: url('${dvo.director_post_url}')center center / cover no-repeat"></div>
		                                                                                        	</div>
		                                                                                    	</div>
		                                                                                    	<div class="css-zoy7di">
			                                                                                        <div class="css-qkf9j">
			                                                                                            <div class="css-17vuhtq">${dvo.director_name }</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">감독</div>
			                                                                                        </div>
		                                                                                    	</div>
		                                                                                	</a>
		                                                                                </li>
		                                                                                </c:forEach>
		                                                                               <!-- 배우 리스트 시작 -->
		                                                                                <c:forEach items= "${oneMovieActorList}" var ="avo" >
		                                                                                <li class="css-54rr1e">
		                                                                                	<a href="/person/person_detail_ACTOR_HY?actor_name=${avo.actor_name}&actor_id=${avo.actor_id}&role=배우" class="css-1aaqvgs-InnerPartOfListWithImage" >
		                                                                                    	<div class="css-cssveg">
		                                                                                        	<div class="profilePhotoBlock css-13zlig9">
		                                                                                            	<div class="css-1h9orp8-ProfilePhotoImage" style="background: url('${avo.actor_post_url}')center center / cover no-repeat"></div>
		                                                                                        	</div>
		                                                                                    	</div>
		                                                                                    	<div class="css-zoy7di">
		                                                                                        	<div class="css-qkf9j">
		                                                                                            	<div class="css-17vuhtq">${avo.actor_name }</div>
			                                                                                            <div class="css-1evnpxk-StyledSubtitle">배우 | ${avo.actor_role } </div>
		                                                                                        	</div>
		                                                                                    	</div>
		                                                                                	</a>
		                                                                                </li>
		                                                                                </c:forEach>
		                                                                                <!--  -->
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
		                                                                		<h4 style="margin: 0">평균 ★ 별점</h4>
		                                                                		<strong>(${totalStarRateNumber}명)</strong>
		                                                                	</span>
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <div class="css-wqfuxa">
		                                                                    <div class="css-g1q7ln"> 
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="1" class="css-111q860-Bar" style="height:${movieStarRateGraphScale[0]*300}px"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="2" class="css-5vyahd-Bar" style="height:${movieStarRateGraphScale[1]*300}px"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="3" class="css-himw0d-Bar" style="height:${movieStarRateGraphScale[2]*300}px"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="4" class="css-3zcnds-Bar" style="height:${movieStarRateGraphScale[3]*300}px"></span>
		                                                                        </div>
		                                                                        <div class="css-hugi8h">
		                                                                        	<span prefix="5" class="css-mr14ik-Bar" style="height:${movieStarRateGraphScale[4]*300}px"></span>
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
		                                                                        	<a href="/comment/comment_SY?movie_id=${movieVo.id}">더보기</a>
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
		                                                                                    	<!-- 코멘트 사용자 프로필사진 & 아이디표시 start -->
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
		                                                                                        <!-- 코멘트 사용자 프로필사진 & 아이디표시 end -->
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
																									<!-- 이게 별점표시하는건가?? -->
		                                                                                            <div class="css-yqs4xl">
		                                                                                            	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
																											width="16px" height="16px" alt="star">
																										<span>5.0</span>
		                                                                                            </div>
																									<!-- 이게 별점표시하는건가?? -->
		                                                                                        </div>
		                                                                                        <div class="css-ob93md">
		                                                                                        	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01">
			                                                                                            <div class=" css-12rbc09-StyledSelf eb5y16b0">
			                                                                                                <div class="css-qxbzku-StyledText eb5y16b1">
			                                                                                                	왓챠 정기기부를 막아준 그 신화
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </a>
																								</div>
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
		                                                                                        <div class="css-hy68ty">
		                                                                                            <button class="css-1h18l7j-StylelessButton">
		                                                                                                좋아요
		                                                                                            </button>
		                                                                                        </div>
		                                                                                    </div>
		                                                                                </li>
		                                                                                <!-- 두 번째 코멘트 end -->
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
		                                                            <!-- 코멘트 슬라이드 왼쪽버튼 -->
		                                                            <div class="arrow_button css-38kpup" direction="left">
		                                                                <div class="css-1hestod"></div>
		                                                            </div>
		                                                            <!-- 코멘트 슬라이드 왼쪽버튼 -->
		                                                            <!-- 코멘트 슬라이드 오른쪽버튼 -->
		                                                            <div class="arrow_button css-pf83cl" direction="right">
		                                                                <div class="css-vp7uyl">
		                                                                	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
																				alt="forward">
																		</div>
		                                                            </div>
		                                                            <!-- 코멘트 슬라이드 오른쪽버튼 -->
		                                                        </div>
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <hr class="css-god8tc"><!-- 코멘트 & 비슷한 작품의 경계선 -->
		                                                            </div>
		                                                        </div>
		                                                    </section>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <!-- 코멘트 section end -->
		                                        <!-- section 오른쪽 광고 및 갤러리, 동영상 section start -->
		                                        <div class="css-wpsvu8">
		                                        	<!-- 상단 광고동영상 section start -->
		                                            <section class="css-e2gdle-Self e2ouywk0">
		                                                <div class="css-1wjbj9j-Self e1adaxwi0">
		                                                    <section class="css-aqubhg-ContentSection e1adaxwi3">
		                                                        <div class="css-t7gndh-AdContainer e1adaxwi4">
		                                                            <video src="" poster="" playsinline="" class="css-a36vjy-AdVideo e1adaxwi6"></video>
		                                                            <div class="css-1d2rflg-AdVideoControllers e1adaxwi7">
		                                                                <button class="css-11d2wab-StylelessButton-VideoButton e1adaxwi8"></button>
		                                                                <button class="css-srnj21-StylelessButton-SoundButton e1adaxwi9"></button>
		                                                            </div>
		                                                        </div>
		                                                        <a href="" class="css-1cqdd33-StylelessHref e1imises0">
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
		                                            <!-- 상단 광고동영상 section end -->
		                                            <div class="css-1nhig6u-RoundedCornerBlock-RoundedCornerBlock">
		                                                <div class="css-1oj6s32">
		                                                	<!-- 감상가능한 곳 OTT section start -->
		                                                    <section class="w_exposed_cell css-1impywp" data-rowindex="4">
		                                                        <div class="css-1gkas1x-Grid e1689zdh0">
		                                                            <div class="css-1y901al-Row emmoxnt0">
		                                                                <header class="css-1ue9xs6">
		                                                                	<h2 class="css-1wtjsst">감상 가능한 곳</h2></header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-awu20a">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-1y901al-Row emmoxnt0">
		                                                                            <ul class="css-1ohwri2-VisualUl-PartnerStackableUl e85xbnu0">
		                                                                                <!-- foreach문 돌릴 부분 OTT start -->
		                                                                                <c:forEach items="${movieOttVoList}" var="movieOttVo">
		                                                                                <li class="css-wj6fn0">
		                                                                                	<a href="${movieOttVo.path_url}"
																								target="_blank" title="${movieOttVo.provider_name}"
		                                                                                        class="css-1wacncs-InnerPartOfListWithImage">
			                                                                                    <div class="css-cssveg">
			                                                                                        <div class="externalServiceOttIcon css-13zlig9">
			                                                                                            <div class="css-1njml0y-ProfilePhotoImage" style="background: url(${movieOttVo.logo_url})center center / cover no-repeat;"></div>
			                                                                                        </div>
			                                                                                    </div>
			                                                                                    <div class="css-zoy7di">
			                                                                                        <div class="externalServiceTitles css-qkf9j">
			                                                                                            <div class="css-17vuhtq">${movieOttVo.provider_name}</div>
			                                                                                        </div>
			                                                                                        <div>
																										<img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iOXB4IiBoZWlnaHQ9IjE0cHgiIHZpZXdCb3g9IjAgMCA5IDE0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPkhvbWUvU2VjdGlvbi9IZWFkZXIvel9JdGVtcy9BcnJvdzwvdGl0bGU+CiAgICA8ZyBpZD0iSG9tZS9TZWN0aW9uL0hlYWRlci96X0l0ZW1zL0Fycm93IiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiPgogICAgICAgIDxwb2x5bGluZSBpZD0iUGF0aC1Db3B5LTYiIHN0cm9rZT0iI0E1QTVBQSIgc3Ryb2tlLXdpZHRoPSIyIiBwb2ludHM9IjEgMSA3IDcgMSAxMyI+PC9wb2x5bGluZT4KICAgIDwvZz4KPC9zdmc+"
																											alt="Arrow">
																									</div>
			                                                                                    </div>
			                                                                                </a>
																						</li>
																						</c:forEach>
																						<!-- foreach문 돌릴 부분 OTT end-->	
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
		                                                                	<!-- <a href="" class="pink">모아보기</a> -->
		                                                                </header>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-usdi1z">
		                                                            <div class="css-15xcaei">
		                                                                <div class="css-174lxc3">
		                                                                    <div class="css-1gkas1x-Grid e1689zdh0">
		                                                                        <div class="css-1y901al-Row emmoxnt0">
		                                                                            <ul class="css-1cduxg0-VisualUl">
		                                                                            <!-- foreach문 돌릴 부분 갤러리 start -->
																					<c:forEach items="${movieGalleryVoList}" var="movieGalleryVo">	
		                                                                                <li class="css-1cw0vk0">
		                                                                                    <div class="css-1qwe0o7-StyledSelf e1q5rx9q0">
		                                                                                        <img height="100%" class="css-bhgne5-StyledBackground e1q5rx9q1" src="${movieGalleryVo.movie_gallery_url}">
		                                                                                    </div>
		                                                                                </li>
		                                                                             </c:forEach>
		                                                                             <!-- foreach문 돌릴 부분 갤러리 end-->		                                                                             
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
		                                                                            	<!-- foreach문 돌릴 부분 동영상 start -->
		                                                                            	<c:forEach items="${movieTrailerVoList}" var="movieTrailerVo" varStatus="status">	
		                                                                                <li class="css-1xgzykb-VideoListItem e10pt7681">
		                                                                                    <div class="css-7wh3a0">
		                                                                                    	<a href="${movieTrailerVo.movie_trailer_url}"
																									target="_blank" rel="noopener noreferrer" class="css-18apgv4">
			                                                                                        <div class="css-8g82qf-StyledSelf e1q5rx9q0">
			                                                                                            <span class="css-bhgne5-StyledBackground e1q5rx9q1"
			                                                                                                  style="background-image: url(${movieTrailerVo.movie_trailer_post});">
																										</span>
			                                                                                            <div class="css-1ytinql">
			                                                                                                <span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iMTYiIGN5PSIxNiIgcj0iMTUiIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjUxIi8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTE2IDMwYzcuNzMyIDAgMTQtNi4yNjggMTQtMTQgMC03LjczMS02LjI2OC0xNC0xNC0xNFMyIDguMjY5IDIgMTZjMCA3LjczMiA2LjI2OCAxNCAxNCAxNG0wIDJDNy4xNjMgMzIgMCAyNC44MzcgMCAxNiAwIDcuMTY0IDcuMTYzIDAgMTYgMHMxNiA3LjE2NCAxNiAxNmMwIDguODM3LTcuMTYzIDE2LTE2IDE2Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDIyLjA5VjkuOTFhLjUuNSAwIDAgMSAuNzY5LS40MjFsOS41NjggNi4wODlhLjUuNSAwIDAgMSAwIC44NDRsLTkuNTY4IDYuMDlBLjUuNSAwIDAgMSAxMiAyMi4wOSIvPgogICAgPC9nPgo8L3N2Zz4K"
																												width="24px" height="24px" class="css-kr87ki">
																											</span>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                        <div class="css-xghows">
			                                                                                            <div class="css-17y9cpn">
			                                                                                                <div class=" css-sloxdm-StyledSelf eb5y16b0">
			                                                                                                    <div class="css-1fucs4t-StyledText eb5y16b1">메인예고편 ${status.index + 1}
			                                                                                                    </div>
			                                                                                                </div>
			                                                                                            </div>
			                                                                                        </div>
			                                                                                    </a>
																							</div>
		                                                                                </li>
		                                                                                </c:forEach>
		                                                                                <!-- foreach문 돌릴 부분 동영상 end-->
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
		                                                                <c:forEach items="${movieWithSameGenreList}" var="movieSameGenreVo">
		                                                                    <li class="css-1hp6p72">
		                                                                    	<a title="${movieSameGenreVo.movie_kor_title}" href="/contents/contents_SH?movie_id=${movieSameGenreVo.id}">
			                                                                        <div class="css-1qmeemv">
			                                                                            <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
			                                                                                <img src="${movieSameGenreVo.movie_post_url}"
			                                                                                     class="css-qhzw1o-StyledImg ezcopuc1">
			                                                                            </div>
			                                                                    <!--         <div class="ottBadge css-5o7sb2"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png"></div>
			                                                                            <div class="ottBadge css-oobk33"
			                                                                                 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
			                                                                     -->    </div>
			                                                                        <div class="css-ixy093">
			                                                                            <div class="css-niy0za">${movieSameGenreVo.movie_kor_title}</div>
			                                                                            <div>
			                                                                                <div class="css-m9i0qw">평균 ★${movieSameGenreVo.movie_rating}</div>
			                                                                                <div class="css-1vvt4am">누적 관객 ${movieSameGenreVo.movie_total_audience}</div>
			                                                                            </div>
			                                                                        </div>
		                                                                    	</a>
		                                                                    </li>
		                                                                 </c:forEach>
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
								<%@ include file="../head_foot/footer1.jsp" %>
								<!-- footer end -->
		                    </div>
		                </div>
		            </section>
		        </div>
		    </div>
		</div>
	</body>
</html>