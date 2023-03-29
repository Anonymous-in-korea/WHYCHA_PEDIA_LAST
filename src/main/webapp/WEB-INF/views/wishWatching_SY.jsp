<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	 <head>
	   		<title th:text="'왓챠피디아 - '+${userName}+'의 영화 보관함'">보고싶어요2</title>
		      <!-- 필요한 CSS, JS 로드 -->
		    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		    <link href="/css/header.css" rel="stylesheet" type="text/css">
			<link href="/css/wishWatching_SY.css" rel="stylesheet" type="text/css">
		    <link rel="icon" href="/images/favicon.png" />
		    <link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
	    <!-- vue.js 적용 src문 -->
	  </head>
	  <body>
	    <div id="root">
	      <div class="css-5jq76">
	        <div class="css-1xm32e0">
	          <div th:replace="fragment/header::header">
          	<!-- header start -->
				<%@ include file="head_foot/header.jsp"%>
			<!-- header end -->
	          	</div>
			          <section class="css-18gwkcr">
								<section class="css-9v5p4g-StyledSectionWithShrinkHeaderBar e1ntr3260">
									<header class="css-4g5dyy-HeaderBarPrimitive">
										<div class="css-uf1ume">
											<div class="css-0">
												<button onclick="history.back()" class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0"></button>
											</div>
											<div class="css-0"></div>
										</div>
										<div class="css-1d4ojes">
											<div class="css-1bvesam">영화</div>
										</div>
										<div class="css-10bjf2k">영화</div>
									</header>
									<section class="css-yey362" id="item-list">
										<div class="css-1gkas1x-Grid e1689zdh0">
											<div class="css-1y901al-Row emmoxnt0">
												<header class="css-1ue9xs6">
													<h2 class="css-1wtjsst">평가</h2>
													<span class="css-wzn7fp">2</span>
													<div class="css-s289sk">
														<div class="css-1ugqy9j">
															<a id="more-btn" href="">더보기</a>
														</div>
													</div>
												</header>
											</div>
										</div>
										<div class="css-1gkas1x-Grid e1689zdh0">
											<div class="css-usdi1z">
												<div class="css-9dnzub">
													<div class="css-174lxc3">
														<div class="css-1gkas1x-Grid e1689zdh0">
														
														
									<!---------------------------------   평가 작품 있을때 시작 ------------------------------------- -->
													 		
															<div class="css-1y901al-Row emmoxnt0">
															
															<!-- 평가한 작품이 없을때 시작-->
															<!-- 	<div class="css-1wq3gbk-Self eblbipc0">
																	<span
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0OCIgaGVpZ2h0PSI0OCIgdmlld0JveD0iMCAwIDQ4IDQ4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iI0Q0RDRENCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik00MS44MzMgNDMuOTg0bC02Ljg2LTYuOTFhLjY2OC42NjggMCAwIDAtLjQ3My0uMTk3aC0yN2ExLjMzNSAxLjMzNSAwIDAgMS0xLjMzMy0xLjMzNHYtMjdjMC0uNzM2LjU5OC0xLjMzNCAxLjMzMy0xLjMzNGgzM2MuNzM1IDAgMS4zMzMuNTk4IDEuMzMzIDEuMzM0djM1LjQ0MXpNNDAuNSA1Ljg3NmgtMzNhMi42NyAyLjY3IDAgMCAwLTIuNjY3IDIuNjY3djI3QTIuNjcgMi42NyAwIDAgMCA3LjUgMzguMjFoMjYuNzIzbDcuODA0IDcuODYxYS42NjYuNjY2IDAgMCAwIDEuMTQtLjQ2OVY4LjU0MkEyLjY3IDIuNjcgMCAwIDAgNDAuNSA1Ljg3N3oiLz4KICAgICAgICAgICAgPHBhdGggZD0iTTE0LjIzNiAyOC4zMjZ2LTMuMzU0aDMuMzUydjMuMzU0aC0zLjM1MnptMS42NzYtMTIuODU0YTEuODE3IDEuODE3IDAgMSAxIDAgMy42MzQgMS44MTcgMS44MTcgMCAwIDEgMC0zLjYzNHptNC4zMzEgNy44MjR2LTIuMjM1aDUuNTg5djIuMjM1aC01LjU4OXptOC41MTctOC43MmMzLjc2IDAgNi44MSAyLjIyIDYuODEgNy42MDJzLTMuMDUgNy42MDItNi44MSA3LjYwMlYxNC41Nzd6Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
																		class="css-1qrj66x-ErrorImage"></span>
																	<div class="css-1qytvfb-Message">아직 평가하신 작품이 없어요.</div>
																</div> -->
															<!-- 평가한 작품이 없을때 끝  -->
															
															
																<ul class="css-1ws31wl-VisualUl">
<!-- 																	list 반복 1 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 1 끝 -->
<!-- 																		list 반복 2 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 2 끝 -->
<!-- 																		list 반복 3 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 3 끝 -->
<!-- 																		list 반복 4 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 4 끝 -->
<!-- 																		list 반복 5 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 5 끝 -->
<!-- 																		list 반복 6 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 6 끝 -->
<!-- 																		list 반복 7 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 7 끝 -->
<!-- 																		list 반복 8 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																		list 반복 8 끝 -->
<!-- 																		list 반복 9 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																	list 반복 9 끝 -->
<!-- 																	list 반복 10 시작 -->
																		<li class="css-8y23cj">
																			<a href="">
																				<div class="css-1qmeemv">
																					<div class="css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																						<img src="/images/antman.jpg" class="css-qhzw1o-StyledImg ezcopuc1" />
																					</div>
																					<div class="ottBadge css-5o7sb2" 
																						 src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png">
																					</div>
																					<div class="ottBadge css-oobk33" 
																						 src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU">
																					</div>
																				</div>
																				<div class="css-ixy093">
																					<div class="css-niy0za">앤트맨</div>
																					<div class="css-1kcd80z">
																						평가함★4.5
																					</div>
																				</div>
																			</a>
																		</li>
<!-- 																list 반복 10 끝 -->
																	<div class="css-ml096x"></div>
																</ul>
															</div>
															
							<!---------------------------------   평가 작품 있을때 끝 ------------------------------------- -->
														</div>
													</div>
												</div>
											
												<div class="arrow_button css-38kpup" direction="left">
													<div class="css-1hestod"></div>
												</div>
												
											<!-- 왼쪽 화살표 버튼 시작  * 작품 없을때는 없애줘야함-->
												<div class="arrow_button css-pf83cl" direction="right">
													<div class="css-vp7uyl">
														<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K" alt="forward" />
													</div>
												</div>
											<!-- 왼쪽 화살표 버튼 끝  * 작품 없을때는 없애줘야함-->
											
											
											</div>
											<hr class="css-10q776g" />
											
											<div class="css-1y901al-Row emmoxnt0">
											<!-- 하단 보고싶어요 보는 중 div 리스트   -->
												<ul class="css-pr4hr1-VisualUl-ArchivesByActionUl ei8r22x0">
												<!-- 보고싶어요 리스트 시작   -->
													<li class="css-17543n0">
														<div class="css-11axhrb">
															<div class="css-1ciqeix">
																<a class="css-1j6t0vk-StylelessLocalLink-ArchivesActionListLink ei8r22x2" href="/ko-KR/users/ZBm5Rb8eg95d4/contents/movies/wishes">
																보고싶어요
																<span class="css-1vam9en-ArchivesByActionCount ei8r22x1">9</span></a>
															</div>
															<div class="css-0"></div>
														</div>
													</li>
												<!-- 보고싶어요 리스트 끝   -->
												<!-- 보는중 리스트 시작   -->
													<li class="css-17543n0">
														<div class="css-11axhrb">
															<div class="css-1ciqeix">
																<a class="css-1j6t0vk-StylelessLocalLink-ArchivesActionListLink ei8r22x2" href="/ko-KR/users/ZBm5Rb8eg95d4/contents/movies/doings">
																	보는중
																	<span class="css-1vam9en-ArchivesByActionCount ei8r22x1">11</span>
																</a>
															</div>
															<div class="css-0"></div>
														</div>
													</li>
												<!-- 보는중 리스트 끝   -->
												</ul>
											</div>
										</div>
									</section>
								</section>
							</section>
			         	 <div th:replace="fragment/footer::footer"></div>
			        </div>
			      </div>
			   </div>
		 </body>
	</html>