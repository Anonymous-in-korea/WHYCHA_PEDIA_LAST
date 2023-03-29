<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<link href="/css/search_page.css" rel="stylesheet" type="text/css">
		
		<style>
			* { margin:0; padding:0; text-decoration:none; font-family:'Noto Sans KR', sans-serif; }
			
			.square_div{ position:relative; width:100%; }
			
			:root { --sat: env(safe-area-inset-top); --sal: env(safe-area-inset-left); --sar: env(safe-area-inset-right); --sab: env(safe-area-inset-bottom); }
			
			section { display: block; }
	        
	        h2 { display: block; font-size: 1.5em; margin-block-start: 0.83em; margin-block-end: 0.83em; margin-inline-start: 0px; margin-inline-end: 0px;
	        	font-weight: bold; }
			
			li { display: list-item; text-align: -webkit-match-parent; }
	        
	        ul { list-style-type: disc; }
	        
	        ul ul { list-style-type: circle; margin-block-start: 0px; margin-block-end: 0px; }
	        
	        div { display: block; }
	        
	        img { border-style: none; }
			
			a { background-color: transparent; }
			
			element.style {
				background-image: url(https://an2-img.amz.wtchn.net/image/v2/RtcHzUplAtMowsq5Ba5wdw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmQyVmlkRzl2Ymk4eE5qTXhOems0TURRek1qTTBNak16TVRFeElpd2ljU0k2T0RBc0luY2lPakU0TUgwLmZoTHlBaDJzbEdqZUdDa3pSZGVNQVZBaDZaREFETVpHdDFrbzBiWXFCajA);
			}
		</style>
		
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
	</head>
	<body>
		<div id="root">
	        <div class="css-5jq76">
	            <div class="square_div">
	            
	                <!-- header start -->
					<%@ include file="head_foot/header.jsp" %>
					<!-- header end -->
					
	                <section class="css-18gwkcr">
	                    <section class="css-le8j8b">
	                        <div class="css-1jehmiq">
	                            <div class="css-10zg79x-pageMarginStyle">"아바타" 의 검색결과</div>
	                        </div>
	                        <div class="css-15qcwbn-StyledTabBarContainer e1szkzar1">
	                            <ul class="css-1gwdxtz-VisualUl-StyledTabBarUl e1szkzar2">
	                                <li class="css-s8lqsd-StyledTab e1szkzar0">콘텐츠</li>
	                                <li class="css-4tchbd-StyledTab e1szkzar0">인물</li>
	                                <li class="css-4tchbd-StyledTab e1szkzar0">컬렉션</li>
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
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타" href="/ko-KR/contents/m5rQoRd">
																	<div class="css-1qmeemv">
																		<div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																			<img src="https://an2-img.amz.wtchn.net/image/v2/zfOomKaxhsduTHnbrvYNtg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qRTRNemt5TnpZNE9USXpOemszTVRZaWZRLnhwaW1uaUo3TmtudWw4Ym5McGNCVjRKSkpSdDUyTUZ1enItTlN5d0RtTHM"
																				class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타</div>
	                                                                    <div class="css-1thqxgo">2009 ・ 영국/미국</div>
	                                                                    <div class="css-jgn78h">영화</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타: 물의 길" href="/ko-KR/contents/mOk7BJO">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/FU0IZweqlkNZbfpm4TF8CA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56QTFORFkzTXpreU1ERTFNREUyTURFaWZRLkpRTTFMRWRPNmdsQ1dkcWlubVp0a0EzZzlzeHpEcXN0QnpRU0tuMWZZbkk"
	                                                                        	class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타: 물의 길</div>
	                                                                    <div class="css-1thqxgo">2022 ・ 미국</div>
	                                                                    <div class="css-jgn78h">영화</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타 - 아앙의 전설 시즌 3" href="/ko-KR/contents/tEQ7A4P">
																	<div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/zwtREVFz525oSD8PqRHsOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMMmQ1YjNCbllYZG5jSGwxZUhBMWFHZHdlWGN6SW4wLlFRTG1rWmE3OVlBeFBKOHlVUUR5bzlEZ2VZeUxSR0pjcmdvTnFlQ2xVaUU"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                    <div class="ottBadge list_box_netflix_badge" src="/images/netflix_badge.png"></div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타 - 아앙의 전설 시즌 3</div>
	                                                                    <div class="css-1thqxgo">2007 ・ Nickelodeon</div>
	                                                                    <div class="css-jgn78h">TV 프로그램</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타 - 아앙의 전설 시즌 2" href="/ko-KR/contents/tRWBwdE">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/Bce3vDgtz4DmgyshYTCrcg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMMnBuTkhVd2RuVmtiV2hyTlc5MWVYUmxhekZoSW4wLkRvWVl1dFlGelFYd3VOVmFab2lma1ZOZWs4SHJnYXJVbmxLVnc4MkptR3M"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                    <div class="ottBadge list_box_netflix_badge" src="/images/netflix_badge.png"></div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타 - 아앙의 전설 시즌 2</div>
	                                                                    <div class="css-1thqxgo">2006 ・ Nickelodeon</div>
	                                                                    <div class="css-jgn78h">TV 프로그램</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타 - 아앙의 전설 시즌 1" href="/ko-KR/contents/tE3Dj7R">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/tjyM6nJqyxmNnrXqLV7L4Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMM1UwYkc5MlltUm9kelYwWmpobWFETmxlWEJySW4wLjVjUm53SG56MTZpWEx2YTFEWjlmU09zTkdOSDU3SVkwZkJ1NF9EZ2g4X2s"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                    <div class="ottBadge list_box_netflix_badge" src="/images/netflix_badge.png"></div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타 - 아앙의 전설 시즌 1</div>
	                                                                    <div class="css-1thqxgo">2005 ・ Nickelodeon</div>
	                                                                    <div class="css-jgn78h">TV 프로그램</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타 5" href="/ko-KR/contents/mdj1MEz">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/5mgPxbmOTR35NFiCjVUVlQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qSXhNakEzTVRVd05EUXhOVEEyTlRVaWZRLnV6MURpV2JlQjlwUjg0Qm44V3hPN3pMdzg2al9jcVJJMExrcUQzMl9YV1U"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타 5</div>
	                                                                    <div class="css-1thqxgo">2028</div>
	                                                                    <div class="css-jgn78h">영화</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타 3" href="/ko-KR/contents/mOlpNeO">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/zLVP8hlR2TG03XX98tvCvw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5ETXlORGN4TlRnNU9UWTFOekl6TmpVaWZRLmw2S2RfbnRNMDBIa2FuTmo2d3AwTmd1d0FLNkRJMndjbGk2LTdmVUZxN1E"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																	</div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타 3</div>
	                                                                    <div class="css-1thqxgo">2024 ・ 미국</div>
	                                                                    <div class="css-jgn78h">영화</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
	                                                        	<a title="아바타 4" href="/ko-KR/contents/m53326n">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/qDlaf1EdHENUAdgTRIbyAw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5ETXlORGN6TURFd05ESXlOVFExTURNaWZRLmJUVjJCbGVTdVc1ZGZJdEVIc0Z4M00yd2lOQjNIYTh6bXZpQ1dzdldHSzA"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																	</div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타 4</div>
	                                                                    <div class="css-1thqxgo">2026 ・ 미국</div>
	                                                                    <div class="css-jgn78h">영화</div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-8y23cj">
																<a title="아바타싱어" href="/ko-KR/contents/tE0mnzy">
	                                                                <div class="css-1qmeemv">
	                                                                    <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
	                                                                        <img src="https://an2-img.amz.wtchn.net/image/v2/GhSZdeu3q07Qqf4WRIJ19Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qRXhORGMxTXpNME9ETTNOek14TkRnaWZRLnVzZXV4SXBHaVNKTGxmYTdjLVRBbmhETWFSMXZ4WVFPa1I2MVRFeW1yZkE"
	                                                                            class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
	                                                                    <div class="ottBadge list_box_netflix_badge" src="/images/netflix_badge.png"></div>
	                                                                </div>
	                                                                <div class="css-ixy093">
	                                                                    <div class="css-31iyzt">아바타싱어</div>
	                                                                    <div class="css-1thqxgo">2022 ・ MBN</div>
	                                                                    <div class="css-jgn78h">TV 프로그램</div>
	                                                                </div>
	                                                            </a>
															</li>
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
	                                    <section class="css-11yyw1d">
	                                        <div class="css-1gkas1x-Grid e1689zdh0">
	                                            <div class="css-1y901al-Row emmoxnt0">
	                                                <header class="css-1ue9xs6">
	                                                    <h2 class="css-1wtjsst">TV 프로그램</h2>
	                                                    <div class="css-s289sk">
	                                                        <div class="css-1ugqy9j">
	                                                        	<a href="/ko-KR/searches/tv_seasons?query=%EC%95%84%EB%B0%94%ED%83%80">더보기</a>
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
																<a title="아바타: 더 라스트 에어벤더" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tE15dqM">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-z02hj0"
	                                                                        src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0OCIgaGVpZ2h0PSI0OCIgdmlld0JveD0iMCAwIDQ4IDQ4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iI0Q0RDRENCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik00NS43NSAzNWMwIC42ODktLjU2MSAxLjI1LTEuMjUgMS4yNWgtNDFjLS42ODkgMC0xLjI1LS41NjEtMS4yNS0xLjI1VjhjMC0uNjkuNTYxLTEuMjUgMS4yNS0xLjI1aDQxYy42ODkgMCAxLjI1LjU2IDEuMjUgMS4yNXYyN3pNNDQuNSA1LjI1aC00MUEyLjc1MiAyLjc1MiAwIDAgMCAuNzUgOHYyN2EyLjc1MiAyLjc1MiAwIDAgMCAyLjc1IDIuNzVoNDFBMi43NTIgMi43NTIgMCAwIDAgNDcuMjUgMzVWOGEyLjc1MiAyLjc1MiAwIDAgMC0yLjc1LTIuNzV6TTM0LjIzMyA0MS4yNUgxMy43NjdBLjc2Ljc2IDAgMCAwIDEzIDQyYzAgLjQxNC4zNDQuNzUuNzY3Ljc1aDIwLjQ2NkEuNzYuNzYgMCAwIDAgMzUgNDJhLjc2Ljc2IDAgMCAwLS43NjctLjc1Ii8+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0zMS4yMiAxNy4zMTNhLjc1Ljc1IDAgMCAwLTEuMDYxIDBsLTQuMzUzIDQuMzU0LTYuMTY0LTYuMTY0YS43NzMuNzczIDAgMCAwLTEuMDYxIDBMNy41MzMgMjYuNTUyYS43NS43NSAwIDAgMCAxLjA2IDEuMDZsMTAuNTE5LTEwLjUxOCA2LjEwNyA2LjEwN2MuMDE3LjAyMi4wMjQuMDQ4LjA0NS4wNjguMDIuMDIuMDQ3LjAyOC4wNjguMDQ1bDQuMjk5IDQuMjk5YS43NDguNzQ4IDAgMCAwIDEuMDYgMCAuNzUuNzUgMCAwIDAgMC0xLjA2MWwtMy44MjUtMy44MjQgMy44MjQtMy44MjQgOC43MTYgOC43MTZhLjc0Ni43NDYgMCAwIDAgMS4wNjEgMCAuNzQ5Ljc0OSAwIDAgMCAwLTEuMDZsLTkuMjQ3LTkuMjQ3eiIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==">
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타: 더 라스트 에어벤더</div>
	                                                                        <div class="css-h25two">Netflix</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
																<a title="아바타 - 아앙의 전설 시즌 3" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tEQ7A4P">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/JnHGpZc0xjZgVdAKbob8QA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMmQ1YjNCbllYZG5jSGwxZUhBMWFHZHdlWGN6SW4wLklUUWJPSmNGNG8yRGVsYVJzTUhqbzltUFJ4Qk9FSGRZS240c3F1TTlsX28&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 - 아앙의 전설 시즌 3</div>
	                                                                        <div class="css-h25two">2007 ・ Nickelodeon</div>
	                                                                        <div class="css-j1pzxa">
	                                                                            <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
	                                                                                class="css-1bd9qhw"></div>
	                                                                        </div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 - 아앙의 전설 시즌 2" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tRWBwdE">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/v4D4UOO6lmbu9PIXl4KK9w.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMnBuTkhVd2RuVmtiV2hyTlc5MWVYUmxhekZoSW4wLmh1VXluMFgxUmV5b1A0bHBvYXBuYU04anVIbVByeVBpOXM3SGdoLVdXZFE&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 - 아앙의 전설 시즌 2</div>
	                                                                        <div class="css-h25two">2006 ・ Nickelodeon</div>
	                                                                        <div class="css-j1pzxa">
	                                                                            <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
	                                                                                class="css-1bd9qhw">
																				</div>
	                                                                        </div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
																<a title="아바타 - 아앙의 전설 시즌 1" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tE3Dj7R">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/8fROHYvgzBIWkOfnYtmRxg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM1UwYkc5MlltUm9kelYwWmpobWFETmxlWEJySW4wLlZ5V2pvYjB6WkhocDQ1QmhOVU9yX0hZNmlrX2xtbTYzeVU1bmV5am9zem8&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 - 아앙의 전설 시즌 1</div>
	                                                                        <div class="css-h25two">2005 ・ Nickelodeon</div>
	                                                                        <div class="css-j1pzxa">
	                                                                            <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
	                                                                                class="css-1bd9qhw">
																				</div>
	                                                                        </div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타싱어" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tE0mnzy">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/4A5oDdfrq829MVyzVAYi5w.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qRXhORGMxTXpNME9ETTNOek14TkRnaWZRLjN5VFdPenhCT0E5Wk9vUTIzS2lQXzFwZ1FjUEI4LUozQTcxQjQ5dEpWeU0&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타싱어</div>
	                                                                        <div class="css-h25two">2022 ・ MBN</div>
	                                                                        <div class="css-j1pzxa">
	                                                                            <div src="https://an2-img.amz.wtchn.net/image/v2/7afc87022ba3fb94885f74d3fd0453be.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRFU0TURjeU1UZ3hNak0wSW4wLlRYbGNGZGNqM3laQnlULVlGTUZtRDc1OE9PbVlfUWJFSGFlN2NkSzBlTWc"
	                                                                                class="css-114j9we">
																				</div>
	                                                                        </div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 셰프" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tEQkw4A">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/e6yNEiREkiiodNN4A5Y_0Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5Ua3pNemcyTlRNek5EUXdNVGM0TURjaWZRLjk3bTZPTEZ4cFdEaDNqMWlmT0tocmtBOGQwMi1Na2E0ZXRYRFZhUDFjWlk&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 셰프</div>
	                                                                        <div class="css-h25two">2015 ・ tvN STORY</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타로전대 돈브라더즈" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/tPj1AwD">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/xF15dqzDKk5zLvqYgqDzlg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5EZzBOakUwTmpZd09UazJNekEwTkRjaWZRLmNFYy1SbHlfMnNyR3RjaFI2RE5keWFrQnNJZXlDczFnTGViaTdZMnZUTU0&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타로전대 돈브라더즈</div>
	                                                                        <div class="css-h25two">2022 ・ TV Asahi</div>
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
	                                    <section class="css-11yyw1d">
	                                        <div class="css-1gkas1x-Grid e1689zdh0">
	                                            <div class="css-1y901al-Row emmoxnt0">
	                                                <header class="css-1ue9xs6">
	                                                    <h2 class="css-1wtjsst">책</h2>
	                                                    <div class="css-s289sk">
	                                                        <div class="css-1ugqy9j">
	                                                        	<a href="/ko-KR/searches/books?query=%EC%95%84%EB%B0%94%ED%83%80">더보기</a>
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
	                                                        	<a title="아바타 옷 입히기 콘테스트" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/bogqXwm">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/HZBK53VrrUHQQa6_wWmFLw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMjVrZDJwaU1uQnJOM0ozWVRobWF6QjJhR0p1SW4wLjREUGcyd2trajZZTkFfQ2FYMjNTNk9fSERDQ05pd2tPbHlkWXNPS2VuOUk&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 옷 입히기 콘테스트</div>
	                                                                        <div class="css-h25two">2005 ・ 드림카툰</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 여행" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/bymdrO5">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/zODfae_4Q7Z43eT6NesrqQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMmhtYlRodGIyTmxkR1ozYldWa2VURjJaR0ZpSW4wLnV3dDU4d0NaUHdhUnM1bWF2SVpvNGI5OVFGVGJHMDRCMjF6SjBwd1Npbzg&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 여행</div>
	                                                                        <div class="css-h25two">2016 ・ 배드맨</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타르" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/b4DmDEo">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/xlQ-lEuWYi7-NGkazqBwCw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM2hrZW5Sb2VqVnVjR0oxZHpkeVkzWTBkbk4xSW4wLmxKRUpyNGNrbEtkeHJGRzhyM3EyZnFCZ0lzYjNxOEU3TnJFeEVYMjlhMjA&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타르</div>
	                                                                        <div class="css-h25two">2007 ・ 이지환</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="아바타 인문학" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/bolpbXo">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/FcFQS9xfbGPyzq4QpHOmZQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM2xwWVdWNmMyNHhaV2h0YVhkM1pHWjZiMlpqSW4wLjVlR1FlQ25XdHBnMmF0dGx0U2hHWUJ5OWtuX3NCUnF3cjVEdnJhbFIxRlk&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아바타 인문학</div>
	                                                                        <div class="css-h25two">2010 ・ 박우진님 외 8명</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="고대의 아바타" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/boAPqK4">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/Di2u2b_Y4W86IEoUzVP3fg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM2wwTUhCMmREWndabnByZFRkbU4yNW9jWGh2SW4wLldlVW9nbzVmb2NKaFlXd1J3Sm1LTHlWWHFUWnJ2Ykg2X2djYW1WWTNtNzA&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">고대의 아바타</div>
	                                                                        <div class="css-h25two">2013 ・ 이도</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="전능의 아바타" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/b41wA6y">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/bZTlhQNZgf6unHAv8oOdGw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0E0WTJGcGFtUXpPR3RvYTNwalpYSmlaR2x1SW4wLkwyM3N2QXUydTJaUjZ3dTFPWlMtT1IyLXVRUUVadDVxY0FUTUhvalJoXzA&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">전능의 아바타</div>
	                                                                        <div class="css-h25two">2008 ・ 실소비</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="프로메테우스의 아바타들" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/boNQvKM">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/zboBdKb77k7nlfiRiB_wOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMjVsTW10bk5HRndiM1JuWmpnemFXWnliV2h5SW4wLnZwb2RPd0Zxa1JxZ0tDS0FFSFpXa2Vsdzh4ZnFUWEVGa1VlenJ1UlhPYk0&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">프로메테우스의 아바타들</div>
	                                                                        <div class="css-h25two">2010 ・ 백경옥</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="북치기 박치기 아바타!" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/bymAzmV">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/7MVOMWBv3Zpdh8FjXeGlUw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwySnZiMnN2TVRZMU9EazFNVEExTnpZeE9ETTJNelEzTUNKOS5STVhrbmtZVWc2Wl9NcFVQVk5PUlhhSUVmczNHMnpIemhkRDhVU0FqTXJj&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">북치기 박치기 아바타!</div>
	                                                                        <div class="css-h25two">2004 ・ 음악세계 음악이론연구회</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-1iuimiv">
	                                                        	<a title="건설의 아바타 BIM" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/boweNZ6">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-14fymwm-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/syb6s50PDmfPy6tgYdpYvg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMlkxZEhseWN6WmpkR1ZsZW5RMmFtMXpaMlpvSW4wLmtQS0pCUkZOU0x1X0VTUmpEYmk2ZmZtcUsxRE1xUnMxY2JFNzVhZUl4LWM&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">건설의 아바타 BIM</div>
	                                                                        <div class="css-h25two">2011 ・ 빌딩스마트협회</div>
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
	                                                        alt="forward"></div>
	                                            </div>
	                                        </div>
	                                        <hr class="css-god8tc">
	                                    </section>
	                                    <section class="css-11yyw1d">
	                                        <div class="css-1gkas1x-Grid e1689zdh0">
	                                            <div class="css-1y901al-Row emmoxnt0">
	                                                <header class="css-1ue9xs6">
	                                                    <h2 class="css-1wtjsst">웹툰</h2>
	                                                    <div class="css-s289sk">
	                                                        <div class="css-1ugqy9j">
	                                                        	<a href="/ko-KR/searches/webtoons?query=%EC%95%84%EB%B0%94%ED%83%80">더보기</a>
	                                                        </div>
	                                                    </div>
	                                                </header>
	                                            </div>
	                                        </div>
	                                        <div class="css-usdi1z">
	                                            <div class="css-9dnzub">
	                                                <div class="css-174lxc3">
	                                                    <ul class="css-1ru4e2-VisualUl">
	                                                        <li class="css-tsoj12">
	                                                        	<a title="아스타 꽃말을 그대에게" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/wKPMwgo">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-w1gv2u-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/RtcHzUplAtMowsq5Ba5wdw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmQyVmlkRzl2Ymk4eE5qTXhOems0TURRek1qTTBNak16TVRFeElpd2ljU0k2T0RBc0luY2lPakU0TUgwLmZoTHlBaDJzbEdqZUdDa3pSZGVNQVZBaDZaREFETVpHdDFrbzBiWXFCajA&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">아스타 꽃말을 그대에게</div>
	                                                                        <div class="css-h25two">2016 ・ 김숙</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-tsoj12">
	                                                        	<a title="나츠메 아라타의 결혼" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/w851vg8">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-jjeww0-StyledSelf e1q5rx9q0"><span
	                                                                            class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/zaQCTWgGYDj1oZYKFiDoyQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmQyVmlkRzl2Ymk4eE5qVTNPREk0T0RjMk1qSXlORGN5T1RjeElpd2ljU0k2T0RBc0luY2lPakU0TUgwLndjaDdzMENUcEhRclJ4czJCNjcwX21rN0hRQVQwQ1NmMnExcnk5RGZ4R0k&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-zoy7di">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">나츠메 아라타의 결혼</div>
	                                                                        <div class="css-h25two">2022 ・ 노기자카 타로</div>
	                                                                    </div>
	                                                                </div>
	                                                            </a>
															</li>
	                                                        <li class="css-tsoj12">
	                                                        	<a title="이도바타는 홀리기 쉬워" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/contents/wKB455r">
	                                                                <div class="css-cssveg">
	                                                                    <div class=" css-1x54n61-StyledSelf e1q5rx9q0">
	                                                                    	<span class="css-bhgne5-StyledBackground e1q5rx9q1"
	                                                                            style="background-image: url(&quot;https://an2-img.amz.wtchn.net/image/v2/Ji7cUvgaortzEfkvWVpzug.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmQyVmlkRzl2Ymk4eE5qTXhOemsyTmpRNU5qQXpORE13TXpReklpd2ljU0k2T0RBc0luY2lPakU0TUgwLndHLTJsOG5QcV9ycU1HOUhXaHN6aHVIdlNCOGxIdDJuVDlBZUlWSVdnVG8&quot;);"></span>
	                                                                    </div>
	                                                                </div>
	                                                                <div class="css-16n7af8">
	                                                                    <div class="css-qkf9j">
	                                                                        <div class="css-x62r3q">이도바타는 홀리기 쉬워</div>
	                                                                        <div class="css-h25two">2021 ・ 타케야 마리코</div>
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
	                                                        alt="forward"></div>
	                                            </div>
	                                        </div>
	                                        <hr class="css-god8tc">
	                                    </section>
	                                </section>
	                            </div>
	                            <div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
	                                <section class="css-1aogsz3">
	                                    <div class="css-z1bhn7-Self ey90tni0">
	                                        <div class="css-2kgnjb"></div>
	                                        <div class="css-1yxwu9j-Message ey90tni1">검색 중..</div>
	                                    </div>
	                                </section>
	                            </div>
	                            <div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
	                                <section class="css-1aogsz3">
	                                    <div class="css-z1bhn7-Self ey90tni0">
	                                        <div class="css-2kgnjb"></div>
	                                        <div class="css-1yxwu9j-Message ey90tni1">검색 중..</div>
	                                    </div>
	                                </section>
	                            </div>
	                            <div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
	                                <section class="css-1aogsz3">
	                                    <div class="css-z1bhn7-Self ey90tni0">
	                                        <div class="css-2kgnjb"></div>
	                                        <div class="css-1yxwu9j-Message ey90tni1">검색 중..</div>
	                                    </div>
	                                </section>
	                            </div>
	                        </div>
	                    </section>
	                </section>
	            </div>
	        </div>
	    </div>
	</body>
</html>