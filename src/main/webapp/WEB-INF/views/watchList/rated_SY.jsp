<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="/assets/img/favicon.png" />
		<link href="/css/wishWatch_SY.css" rel="stylesheet" type="text/css">
		<link href="/css/header.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
		<title>영화평가</title>
		<!-- 필요한 CSS, JS 로드 -->
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
	<body>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="../head_foot/header.jsp"%>
					<!-- header end -->
					<section class="css-18gwkcr">
						<div class="css-7zhfhb">
							<div class="css-1n41o32">
								<header class="css-1mxbo8g-HeaderBarPrimitive">
									<div class="css-uf1ume">
										<div class="css-0">
											<button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0" href="myPage/userPage_SY?user_id=${memberVo.id}"></button>
										</div>
										<div class="css-0"></div>
									</div>
									<div class="css-1d4ojes">
										<div class="css-1bvesam">평가한 작품들</div>
									</div>
									<div class="css-10bjf2k">평가한 작품들</div>
								</header>
								<ul class="css-1e0vaz3-VisualUl">
									<li class="css-1qee6f7">전체</li>
								</ul>
								<div class="e1ok85ex2 css-zfzr88-StyledFilterBar">
									<div class="css-1gkas1x-Grid e1689zdh0">
										<div class="css-1y901al-Row emmoxnt0">
											<div class="css-ngrc2w"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<section class="css-q5h397">
							<div class="css-12hxjcc-StyledHideableBlock e1pww8ij0">
							<!-- --------------------content 부분 시작-------------------------------- -->
								<section class="css-wv7rn-AllSection e1ok85ex0">
									<div class="css-1gkas1x-Grid e1689zdh0">
										<div class="css-1y901al-Row emmoxnt0">
											<ul class="css-w29x4j-VisualUl-ContentGrid-ContentGridUsedInArchive e14whxmg1">
												<c:forEach items="${movieStarRateList}" var="movieVo"> 
												<!-- list 반복 30개 시작 -->
													<li class="css-8y23cj">
														<a title="${movieVo.movie_kor_title}" href="/contents/contents_SH?movie_id=${movieVo.id}">
															<div class="css-1qmeemv">
																<div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																	<img class="css-qhzw1o-StyledImg ezcopuc1" src="${movieVo.movie_post_url}" >
																</div>
<!-- 																<div class="ottBadge css-5o7sb2" src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png"></div> -->
															</div>
															<div class="css-ixy093">
																<div class="css-niy0za">${movieVo.movie_kor_title}</div>
																<c:if test="${ sessionId == null }"> <!--로그인 전 -->
																	<div class="css-m9i0qw"> 평점 ${movieVo.movie_rating}</div>
																</c:if>
																<c:if test="${ sessionId != null }">
																	<c:if test="${ movieVo.is_checked != 0 }">
																		<div class="css-m9i0qw" >평가함 ★ ${movieVo.scoreOfUser}</div>
																	</c:if>
																	<c:if test="${ movieVo.is_checked == 0 }">
																		<div class="css-m9i0qw">평점 ${movieVo.movie_rating}</div>
																	</c:if>
																</c:if>
															</div>
														</a>
													</li>
												</c:forEach>
												<!-- list 반복 30개 끝-->
											</ul>
										</div>
									</div>
									<div class="css-1ivxssh-StyledInfinityScroll eu826xw0"></div>
								</section>
						<!-- --------------------content 부분 끝-------------------------------- -->
							</div>
							<div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
								<div class="css-1ndt3a2">
									<div class="css-hhiwy0">
										<div class="css-2kgnjb"></div>
									</div>
								</div>
							</div>
						</section>
					</section>
				</div>
			</div>
		</body>
</html>