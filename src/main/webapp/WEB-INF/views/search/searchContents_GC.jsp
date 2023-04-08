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
			});
		</script>
		<script>
		 $(function(){
			 
			 $("#person").click(function(){
				 //alert("person");
				 location.href = "/search/searchPerson_SY?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=person";
			 });
			 $("#collection").click(function(){
				 //alert("collection");
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
																	<a title="${movieSearchlist[i].movie_kor_title}" href="/ko-KR/contents/m5rQoRd">
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
                            	       
                            	       
                            	       
	                                    <!--영화 미니 포스터 시작  -->
	                                    <section class="css-11yyw1d">
	                                        <div class="css-1gkas1x-Grid e1689zdh0">
	                                            <div class="css-1y901al-Row emmoxnt0">
	                                                <header class="css-1ue9xs6">
	                                                    <h2 class="css-1wtjsst">영화</h2>
	                                                    <div class="css-s289sk">
	                                                        <div class="css-1ugqy9j">
	                                                        	<a href="/ko-KR/searches/movies?query=%EC%95%84%EB%B0%94%ED%83%80">더보기</a>
	                                                        </div>
	                                                    </div>
	                                                </header>
	                                            </div>
	                                        </div>
	                                        <div class="css-usdi1z">
	                                            <div class="css-9dnzub">
	                                                <div class="css-174lxc3">
	                                                    <ul class="css-1a4f9b-VisualUl">
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타: 물의 길" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/mOk7BJO">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/h8Sv_G8wplkIFxwfT6q7JA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56QTFORFkzTXpreU1ERTFNREUyTURFaWZRLjd5bl9VWE13bEFJXzRjdXNmWV9VLU9NdG1iT04tUWRhSDRZR2d3emFJMEU&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타: 물의 길</div>
	                                                                        <div class="css-h25two">2022 ・ 미국</div>
	                                                                    </div>
	                                                                    <div></div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
																<a title="아바타" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/m5rQoRd">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
																			<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/VQSdl6Gq0Yl1Lzn41Xk6ww.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qRTRNemt5TnpZNE9USXpOemszTVRZaWZRLnhyXzg5enU0X3ZnR3Z3ODRNM0I0Yk8xR00tOVd2VmNsQ1NPTGlEMEphS1k&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타</div>
	                                                                        <div class="css-h25two">2009 ・ 영국/미국</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 5" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/mdj1MEz">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/pgPYUxnijYkJfUaWoeARCw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qSXhNakEzTVRVd05EUXhOVEEyTlRVaWZRLkR6MWhlVmh2Q29KZEVnRS1wMUhCYnk5bzFsQlhMdFBtcVNzSUQxT3l3ZVE&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 5</div>
	                                                                        <div class="css-h25two">2028</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 3" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/mOlpNeO">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/eFUa3r0RfQ3WSXH7Sys9Mw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5ETXlORGN4TlRnNU9UWTFOekl6TmpVaWZRLndJUDBVZUliZ1NLNVlrbk9JZ3lpblphNHdaVGlRVTdGdmk4cUhBXzlSTm8&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 3</div>
	                                                                        <div class="css-h25two">2024 ・ 미국</div>
	                                                                    </div>
	                                                                    <div></div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 4" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/m53326n">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/DXOGm9FasQ9sftFPcwvIxw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5ETXlORGN6TURFd05ESXlOVFExTURNaWZRLm5EXzExdmhjYnpFWXNSckwzSWgxbkV6VGpFMGNKVUxjZDVNZWJMSXhkRFk&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 4</div>
	                                                                        <div class="css-h25two">2026 ・ 미국</div>
	                                                                    </div>
	                                                                    <div></div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 정글의 비밀" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/m5eJJ99">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/sHRVTGUUCVjfOED1khByfg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMlpvY1RsME5qUjJkRGw0YjNwc1lYWndZbXBrSW4wLmtyTE5mRmRYandBU093eDItNUNpckxoczliWWRNSlVzZGNOVHZCS3V0UGM&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 정글의 비밀</div>
	                                                                        <div class="css-h25two">2013 ・ 중국</div>
	                                                                        <div class="css-j1pzxa">
	                                                                            <div src="https://an2-img.amz.wtchn.net/image/v2/7afc87022ba3fb94885f74d3fd0453be.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRFU0TURjeU1UZ3hNak0wSW4wLlRYbGNGZGNqM3laQnlULVlGTUZtRDc1OE9PbVlfUWJFSGFlN2NkSzBlTWc"
	                                                                                class="css-114j9we"></div>
	                                                                        </div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타와 나" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/mdMXlmO">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/-D7wEg5HBWFk-Of4_vICKQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMk5qWlhnd2J6a3lPR1YxTm5oeFkzRXlabTF3SW4wLmIzZEliZzlRS09fQlZLYlJkZ3dGTVJoWVpINmU4dnN5TGlURkhIUWlQWU0&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타와 나</div>
	                                                                        <div class="css-h25two">2010 ・ 덴마크</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/mdRQpVO">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/cEXFcgci4Rb2OzBmM8T0Ng.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM2xsZFhsbGVtRmlNMjFxY0cxcGNtUnhjR0pqSW4wLkpjRXBHTzd6djd4RWxUUEtnSVdYY2swcmZHd3VKekM1anZDR1BEVm9VaVE&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타</div>
	                                                                        <div class="css-h25two">2011 ・ 일본</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/mdBAgPO">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/ngqd8c9TK6NfMkvnv5EUlA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5USXhOalF4TVRFME9URTNNalk1TlRjaWZRLnB0aUlPUWxLMFp1MEFqSUNZeG40VlU3SlEyckJCLXNWWS0xSy13b2tlSm8&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타</div>
	                                                                        <div class="css-h25two">2004 ・ 싱가포르</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <div class="css-6qnjre"></div>
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
	                                        <hr class="css-god8tc">
	                                    </section>
	                                   <!--영화 미니 포스터 끝  -->
	                                   
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