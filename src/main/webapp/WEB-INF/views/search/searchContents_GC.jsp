<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
		<link href="/css/searchContents_GC.css" rel="stylesheet" type="text/css">
		
		<script src="/js/login.js"></script>
		<script src="/js/join.js"></script>
		
		<script>
			$(function() {
				
				/* 로그인 창 띄우기 */
				$(".login_button").click(function() {
					if ( $(".css-14gy7wr").css("display") == "none" ) {
						$(".css-14gy7wr").show();
					}
				});
				
				/* 로그인 창 내리기 */
				$(".css-14gy7wr").click(function() {
					if ( $(".css-14gy7wr").css("display") != "none" ) {
						$(".css-14gy7wr").hide();
					}
				});
			 
				$("#person").click(function(){
					location.href = "/search/searchPerson_SY?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=person";
				});
				$("#collection").click(function(){
					location.href = "/search/searchCollection_HY?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=collection";
				});
				 
			 });
		</script>
	</head>
	<body>
		<div id="root">
	        <div class="css-5jq76">
	            <div class="square_div">
	            
	                <!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->
					
	                <section class="css-18gwkcr">
	                    <section class="css-le8j8b">
	                        <div class="css-1jehmiq">
	                            <div class="css-10zg79x-pageMarginStyle">"${param.searchKeyword}" 의 검색결과</div>
	                        </div>
	                        <div class="css-15qcwbn-StyledTabBarContainer e1szkzar1">
	                            <ul class="css-1gwdxtz-VisualUl-StyledTabBarUl e1szkzar2">
	                                <li class="css-s8lqsd-StyledTab e1szkzar0" id="contents">콘텐츠</li>
	                                <li class="css-4tchbd-StyledTab e1szkzar0" id="person">인물</li>
	                                <li class="css-4tchbd-StyledTab e1szkzar0" id="collection">컬렉션</li>
	                            </ul>
	                        </div>
	                        <div class="css-ipmqep-StyledTabContentContainer e1szkzar3">
	                            <div class="css-12hxjcc-StyledHideableBlock e1pww8ij0">
	                                <section class="css-9ebwyf-pageMarginStyle">
	                                    <section class="css-1s4ow07">
	                                        <div class="css-usdi1z">
	                                            <div class="css-9dnzub">
	                                                <div class="css-174lxc3" style="transform: translateX(0px);">
	                                                    <ul class="css-1bk3hui-VisualUl">
	                                                    <!--반복 시작  -->
	                                                    <!-- 해당 검색 결과가 없을때 보여주는 페이지도 구현해보기 -->
	                                                    <!--  -->
	                                                    <c:if test="${movieSearchlist.size() > 0}">
			                                                <c:forEach var="i" begin="0" end="${movieSearchlist.size()-1}" varStatus="status">
																<li class="css-8y23cj">
																	<a title="${movieSearchlist[i].movie_kor_title}" href="/contents/contents_SH?movie_id=${movieSearchlist[i].id}">
																		<div class="css-1qmeemv">
																			<div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																				<img src="${movieSearchlist[i].movie_post_url}" class="css-qhzw1o-StyledImg ezcopuc1">
																			</div>
																		</div>
																		<div class="css-ixy093">
																			<div class="css-31iyzt">${movieSearchlist[i].movie_kor_title}</div>
																			<div class="css-1thqxgo">${fn:substring(movieSearchlist[i].movie_release_date, 0, 4)} ・ 
																				<c:if test="${not empty movieSearchCountrylist}">
																					<c:forEach var="movieCountry" items="${movieSearchCountrylist}">
																						<c:if test="${movieCountry.movie_id == movieSearchlist[i].id}">
																							<c:out value="${movieCountry.name_kor}"/>/
																						</c:if>
																					</c:forEach>
																				</c:if>
																			</div>
																			<div class="css-jgn78h">영화</div>
																		</div>
																	</a>
																</li>
															</c:forEach>
														</c:if>
														<!--반복 끝  -->
	                                                        <div class="css-ml096x"></div>
	                                                    </ul>
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
	                                        <hr class="css-cf9e76">
	                                    </section>
                            	       <!--=================================================================  -->
	                                </section>
	                            </div>
	                            <!-- 검색중 시작 -->
	                            <div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
	                                <section class="css-1aogsz3">
	                                    <div class="css-z1bhn7-Self ey90tni0">
	                                        <div class="css-2kgnjb"></div>
	                                        <div class="css-1yxwu9j-Message ey90tni1">검색 중..</div>
	                                    </div>
	                                </section>
	                            </div>
	                            <!-- 검색 중 끝 -->
	                        </div>
	                    </section>
	                </section>
	            </div>
	        </div>
	    </div>
	</body>
</html>