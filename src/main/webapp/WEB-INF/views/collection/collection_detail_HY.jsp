<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
<!DOCTYPE html>
<html>
	<head>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="../css/header.css" rel="stylesheet" type="text/css">
	<link href="../css/footer.css" rel="stylesheet" type="text/css">
	<link href="../css/collectionDetail.css" rel="stylesheet" type="text/css">
	<script defer src="../js/collectionDetail_HY.js"></script>
<!-- 	<link rel="icon" href="../image/favicon.png" /> -->
	<!-- Google Tag Manager -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<meta charset="utf-8">
	<title>collection_detail_page</title>
	<style>
		.like1{width:14px; height:14px;}
		.like2{width:14px; height:14px;}
	</style>
	</head>
	<body>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->
					<section class="css-18gwkcr">
						<div class="css-g0jd7y">
							<section class="css-tq98he-Self e1555cob0">
								<div class="css-1sp1nv7">
									<div class="css-17qazew">
										<div class="css-19lj1vd-RoundedCornerBlock-RoundedCornerBlock">
											<!-- 컨텐츠 헤더 포스터 6개 -->
											<header class="css-13b2gs1">
												<div class="css-nylf5i">
													<div class=" css-12eknxq-StyledSelf e1q5rx9q0">
														<span class="css-bhgne5-StyledBackground e1q5rx9q1"
															style="background-image: url(${movieInCollectionVoList[0].movie_post_url});"></span>
													</div>
													<div class=" css-15h4ccu-StyledSelf e1q5rx9q0">
														<span class="css-bhgne5-StyledBackground e1q5rx9q1"
															style="background-image: url(${movieInCollectionVoList[1].movie_post_url});"></span>
													</div>
													<div class=" css-1le5r8o-StyledSelf e1q5rx9q0">
														<span class="css-bhgne5-StyledBackground e1q5rx9q1"
															style="background-image: url(${movieInCollectionVoList[2].movie_post_url});"></span>
													</div>
													<div class=" css-vuowyq-StyledSelf e1q5rx9q0">
														<span class="css-bhgne5-StyledBackground e1q5rx9q1"
															style="background-image: url(${movieInCollectionVoList[3].movie_post_url});"></span>
													</div>
													<div class=" css-1i7u3mu-StyledSelf e1q5rx9q0">
														<span class="css-bhgne5-StyledBackground e1q5rx9q1"
															style="background-image: url(${movieInCollectionVoList[4].movie_post_url});"></span>
													</div>
													<div class=" css-1ubsymx-StyledSelf e1q5rx9q0">
														<span class="css-bhgne5-StyledBackground e1q5rx9q1"
															style="background-image: url(${movieInCollectionVoList[5].movie_post_url});"></span>
													</div>					
												</div>
												<section class="css-5q4g58">
													<div class="css-1gkas1x-Grid e1689zdh0">
														<div class="css-1y901al-Row emmoxnt0">
															<a title="WATCHA's page" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/users/36lvXM3p35Xdn">
																<div class="css-bmael7">
																	<div class="css-1hffj5n">
																		<div class="css-q29adr-ProfilePhotoImage"></div>
																	</div>
																	<div class="css-17nfp2s">
																		<div class="css-180704h">
																			${collectionVo.collection_name}
																		</div>
																	</div>
																</div>
															</a>
														</div>
													</div>
												</section>	
											</header>
											<!-- 컨텐츠 헤더 -->
											<!-- 제목, 내용  -->
											<section class="css-vewrfq">
												<div class="css-1gkas1x-Grid e1689zdh0">
													<div class="css-1y901al-Row emmoxnt0">
														<h1 class="css-b5myd9">${collectionVo.collection_name}</h1>
														<article class="css-1ck5l7q">
															<div class="css-ztq0uc-StyledTruncateBox e1nbfgav0">
																<article class="deckDescription css-17q4u22-StyledTextBox e1nbfgav1" style="white-space: normal;">
																	<span>${collectionVo.collection_desc}</span>
																</article>
																<button class="css-xugx5s-StyledMoreButton e1nbfgav2">더보기</button>
															</div>
														</article>
														<ul class="css-h121hu-VisualUl">
															<li class="css-tfe1ln">좋아요
																<em>${collectionVo.like_count}</em>
																<span class="css-9tbcrq"></span>
															</li>
															<li class="css-tfe1ln">댓글 
																<em>${collectionVo.comment_count}</em>
																<!-- <span class="css-9tbcrq"></span> -->
															</li>
														</ul>
														<hr class="css-1c12nsi">
													</div>
												</div>
											</section>
											<!-- 제목, 내용  -->
											<section class="css-0">
												<div class="css-1gkas1x-Grid e1689zdh0">
													<div class="css-1y901al-Row emmoxnt0">
														<div class="css-cxqjs3">
															<!-- 좋아요 버튼 -->
															<button id="deckLike" class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
																<div class="css-1umclh2-StyledIconContainer e19d4hrp1">
																	<svg viewBox="0 0 20 20"  class="css-vkoibk">
																		<path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M5.6252 7.9043H3.1252C2.6652 7.9043 2.29187 8.27763 2.29187 8.73763V17.071C2.29187 17.531 2.6652 17.9043 3.1252 17.9043H5.6252C6.08604 17.9043 6.45854 17.531 6.45854 17.071V8.73763C6.45854 8.27763 6.08604 7.9043 5.6252 7.9043Z"
																			fill="#87898B">
																		</path>
																		<path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M11.71 4.34525L11.7017 3.99359L11.6825 3.14525L11.6809 3.09692L11.6759 3.04942C11.6684 2.96942 11.6792 2.93442 11.6775 2.93275C11.6917 2.92442 11.7534 2.90442 11.8725 2.90442C12.115 2.90442 13.3225 2.97609 13.3225 4.38692C13.3225 4.93359 13.2775 5.35859 13.1809 5.72692L12.8375 7.03275C12.8034 7.16525 12.9025 7.29442 13.0392 7.29442H14.3892H15.7317C16.0575 7.29442 16.3684 7.43692 16.585 7.68442C16.7975 7.93025 16.9009 8.25609 16.87 8.58275L15.6717 14.7703L15.6634 14.8119L15.6584 14.8536C15.59 15.3961 15.0959 15.8211 14.5334 15.8211H8.54169V8.19942C8.54169 7.89109 8.71169 7.56275 9.04835 7.22359L11.3417 4.90025L11.5775 4.66109C11.71 4.52359 11.71 4.34525 11.71 4.34525ZM17.5275 6.86525C17.0734 6.34275 16.4184 6.04442 15.7317 6.04442H14.3892C14.5167 5.56025 14.5725 5.02942 14.5725 4.38692C14.5725 2.50942 13.1734 1.65442 11.8725 1.65442C11.3825 1.65442 11 1.80775 10.7367 2.11025C10.5667 2.30359 10.3792 2.64442 10.4325 3.17359L10.4517 4.02192L8.15835 6.34525C7.58335 6.92692 7.29169 7.55109 7.29169 8.19942V16.2378C7.29169 16.6978 7.66502 17.0711 8.12502 17.0711H14.5334C15.7342 17.0711 16.7559 16.1603 16.8992 15.0078L18.1067 8.77192C18.1925 8.08109 17.9809 7.38692 17.5275 6.86525Z"
																			fill="#87898B">
																		</path>
																	</svg>
																</div>
																좋아요
															</button>
															<!-- 댓글 버튼 -->
															<button id="scrollButton" class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
																<div class="css-1umclh2-StyledIconContainer e19d4hrp1">
																	<svg viewBox="0 0 20 20" class="css-vkoibk">
																		<path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M9.99963 2.08325C5.65046 2.08325 2.12546 5.02159 2.12546 8.64575C2.12546 10.5891 3.13962 12.3358 4.74962 13.5374L4.61129 17.2416C4.61129 17.4899 4.81462 17.6591 5.03046 17.6591C5.12129 17.6591 5.21462 17.6291 5.29462 17.5616L8.12462 15.0208C8.72629 15.1433 9.35379 15.2083 9.99963 15.2083C14.3496 15.2083 17.8746 12.2699 17.8746 8.64575C17.8746 5.02159 14.3496 2.08325 9.99963 2.08325ZM9.99962 3.33325C13.653 3.33325 16.6246 5.71659 16.6246 8.64575C16.6246 11.5749 13.653 13.9583 9.99962 13.9583C9.44962 13.9583 8.90296 13.9041 8.37379 13.7966C8.29129 13.7791 8.20796 13.7708 8.12462 13.7708C7.81962 13.7708 7.52046 13.8833 7.28962 14.0908L5.93462 15.3074L5.99879 13.5841C6.01462 13.1733 5.82712 12.7808 5.49796 12.5349C4.14879 11.5291 3.37546 10.1116 3.37546 8.64575C3.37546 5.71659 6.34712 3.33325 9.99962 3.33325Z"
																			fill="#87898B">
																		</path>
																	</svg>
																</div>
																댓글
															</button>
															<button class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
																<div class="css-1umclh2-StyledIconContainer e19d4hrp1">
																	<svg viewBox="0 0 20 20" class="css-vkoibk">
																		<path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M14.6475 13.314C13.9492 13.314 13.3192 13.6015 12.8658 14.0631L6.98249 10.664C7.04166 10.4515 7.08333 10.2315 7.08333 9.99981C7.08333 9.76815 7.04166 9.54815 6.98333 9.33565L12.8658 5.93565C13.3192 6.39731 13.9492 6.68481 14.6475 6.68481C16.0275 6.68481 17.1475 5.56565 17.1475 4.18481C17.1475 2.80481 16.0275 1.68481 14.6475 1.68481C13.2675 1.68481 12.1475 2.80481 12.1475 4.18481C12.1475 4.41648 12.1892 4.63648 12.2483 4.84981L6.365 8.24898C5.91166 7.78731 5.28166 7.49981 4.58333 7.49981C3.20249 7.49981 2.08333 8.61898 2.08333 9.99981C2.08333 11.3806 3.20249 12.4998 4.58333 12.4998C5.28166 12.4998 5.91166 12.2123 6.365 11.7506L12.2483 15.1498C12.1892 15.3623 12.1475 15.5823 12.1475 15.814C12.1475 17.1948 13.2675 18.314 14.6475 18.314C16.0275 18.314 17.1475 17.1948 17.1475 15.814C17.1475 14.4331 16.0275 13.314 14.6475 13.314Z"
																			fill="#87898B">
																		</path>
																	</svg>
																</div>
																공유
															</button>
															<div class="css-tn8wck">
																<div class="css-ve4kut">
																	<div class="css-3wahtm">
																		<div class="Icon link icon css-ormu9t-SVG e1282e850" color="#292a32">
																			<div>
																				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
																					class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuOSAxMkMzLjkgMTAuMjkgNS4yOSA4LjkgNyA4LjlIMTFWN0g3QzQuMjQgNyAyIDkuMjQgMiAxMkMyIDE0Ljc2IDQuMjQgMTcgNyAxN0gxMVYxNS4xSDdDNS4yOSAxNS4xIDMuOSAxMy43MSAzLjkgMTJaTTggMTNIMTZWMTFIOFYxM1pNMTcgN0gxM1Y4LjlIMTdDMTguNzEgOC45IDIwLjEgMTAuMjkgMjAuMSAxMkMyMC4xIDEzLjcxIDE4LjcxIDE1LjEgMTcgMTUuMUgxM1YxN0gxN0MxOS43NiAxNyAyMiAxNC43NiAyMiAxMkMyMiA5LjI0IDE5Ljc2IDcgMTcgN1oiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8L3N2Zz4K"
																					xmlns:xlink="http://www.w3.org/1999/xlink">
																					<path d="M3.9 12C3.9 10.29 5.29 8.9 7 8.9H11V7H7C4.24 7 2 9.24 2 12C2 14.76 4.24 17 7 17H11V15.1H7C5.29 15.1 3.9 13.71 3.9 12ZM8 13H16V11H8V13ZM17 7H13V8.9H17C18.71 8.9 20.1 10.29 20.1 12C20.1 13.71 18.71 15.1 17 15.1H13V17H17C19.76 17 22 14.76 22 12C22 9.24 19.76 7 17 7Z"
																						fill="currentColor">
																					</path>
																				</svg>
																			</div>
																		</div>
																		링크 복사
																	</div>
																</div>
															</div>
														</div>
														<hr class="css-god8tc">
													</div>
												</div>
											</section>
											<!-- 영화 목록 -->
											<section class="css-1tywu13">
												<div class="css-1gkas1x-Grid e1689zdh0">
													<div class="css-1y901al-Row emmoxnt0">
														<header class="css-1ue9xs6">
															<h2 class="css-1wtjsst">작품들</h2>
															<span class="css-wzn7fp">22</span>
														</header>
													</div>
												</div>
												<div class="css-1gkas1x-Grid e1689zdh0">
													<div class="css-1y901al-Row emmoxnt0">
														<ul class="css-27z1qm-VisualUl-ContentGrid">
											<!-- 영화 foreach -->
														<c:forEach items="${movieInCollectionVoList}" var="movieVo" >
															<li class="css-1hp6p72">
																<a title="${movieVo.movie_kor_title}" href="/contents/contents_SH?movie_id=${movieVo.id}">
																	<div class="css-1qmeemv">
																		<div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
																			<img src="${movieVo.movie_post_url}"
																				class="css-qhzw1o-StyledImg ezcopuc1">
																		</div>
																	</div>
																	<div class="css-vb2pv5">
																		<div class="css-niy0za">${movieVo.movie_kor_title}</div>
																		<div>
																			<c:if test="${ sessionId == null }"> <!--로그인 전 -->
																				<div class="css-1kcd80z">평점 ${movieVo.movie_rating}</div>
																			</c:if>
																			<c:if test="${ sessionId != null }">
																				<c:if test="${ movieVo.isChecked != 0 }">
																					<div class="css-1kcd80z">평가함 ★ ${movieVo.scoreOfUser}</div>
																				</c:if>
																				<c:if test="${ movieVo.isChecked == 0 }">
																					<div class="css-1kcd80z">평점 ${movieVo.movie_rating}</div>
																				</c:if>
																			</c:if>
																		</div>
																	</div>
																</a>
															</li>
														</c:forEach>	
											<!-- 영화 foreach -->											
														</ul>
														<div class="css-tf1605">
															<button class="css-1d4r906-StylelessButton">
																더보기
																<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSA5LjEwMDFMMTIgMTQuNjAwMUwxNy41IDkuMTAwMSIgc3Ryb2tlPSIjNzg3OTgyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K"
																	width="24px" height="24px" class="css-cg0u6i"></span>
															</button>
														</div>
													</div>
												</div>
											</section>
											<!-- 영화 목록 끝-->
											<!-- 댓글 달기 -->
											<section class="css-0">
												<div class="css-1gkas1x-Grid e1689zdh0">
													<div class="css-1y901al-Row emmoxnt0">
														<div class="css-1evo7eb">
															<!-- 총 댓글 수 -->
															<div id="comm" class="css-a0bj5z">
																댓글<span>${collectionVo.like_count}</span>
															</div>
															<!-- 이전 댓글 불러오기 버튼 -->
															<div class="css-5hpf69">
																<button class="css-16halel">이전 댓글 보기</button>
															</div>
															<!-- 댓글 1개 시작-->
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/JgkqlJJez45X0">
																		<div class="css-1kiwqkk"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/JgkqlJJez45X0">
																				<div class="css-72k174">필세호</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#0E0F10">
																							</path>
																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z"
																								fill="#FF0558">
																							</path>
																						</svg>
																					</div>
																				</div>
																			</a>
																			<div class="css-maxfbg">3년 전</div>
																		</div>
																		<div class="css-yb0jaq">언젠가는 정주행 해봐야지... 토르 닥터스트레인지 인피니티워 인드게임 빼고 본게없네</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				0
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0">
																							</path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<!-- 댓글 1개 끝-->
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/WRQxDMy0gVqdl">
																		<div class="css-9c6fhv"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/WRQxDMy0gVqdl">
																				<div class="css-72k174">현주</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#0E0F10">
																							</path>
																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z"
																								fill="#FF0558">
																							</path>
																						</svg>
																					</div>
																				</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">가오갤 엔트맨와스프 빼고 다봤네...</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" -->
<!-- 																								d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" -->
<!-- 																								d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				1
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0">
																							</path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/j4PxOe9mAvp0Q">
																		<div class="css-1w3jnm5"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/j4PxOe9mAvp0Q">
																				<div class="css-72k174">ㅇwㅇ</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#0E0F10">
																							</path>
																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z"
																								fill="#FF0558">
																							</path>
																						</svg>
																					</div>
																				</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">감사합니다 선생님</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				1
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0">
																							</path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/YaR5YwPWpqgX1">
																		<div class="css-1yap8a9"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/YaR5YwPWpqgX1">
																				<div class="css-72k174">남규리</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">나 이중에 세편이나 봄ㅋㅋ 정주행 하려면 3박4일 걸릴듯</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"> -->
<!-- 																							</path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				1
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0">
																							</path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/Jgkqly8RmvX0b">
																		<div class="css-16i85nq"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/Jgkqly8RmvX0b">
																				<div class="css-72k174">강상우</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">인크레더블 헐크빼고 다봣구나 소름이다 진짜</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				2
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0"></path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/djaxbkYlDqLw8">
																		<div class="css-1jiusl2"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/djaxbkYlDqLw8">
																				<div class="css-72k174">윤지은</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#0E0F10"></path>
																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z"
																								fill="#FF0558"></path>
																						</svg>
																					</div>
																				</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">지금 열심히 보고 있는데 다 보기전에 엔드게임 내릴것 같아요ㅠㅠ</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				3
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0"></path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/87Gv7BrMVqE6o">
																		<div class="css-10fosev"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/87Gv7BrMVqE6o">
																				<div class="css-72k174">Treumerei</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z" -->
<!-- 																								fill="#0E0F10"></path> -->
<!-- 																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z" -->
<!-- 																								fill="#FF0558"></path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">이번 엔드게임까지 하나도 안빼고 다 봤다</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				3
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0"></path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/YaR5YAm0E5gX1">
																		<div class="css-172ycv5"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8"href="/ko-KR/users/YaR5YAm0E5gX1">
																				<div class="css-72k174">솔샘</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#0E0F10"></path>
																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z"
																								fill="#FF0558"></path>
																						</svg>
																					</div>
																				</div>
																			</a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">왓챠씨 영화 영어제목이랑 배우감독 영어이름 보여줘요.. 맨날 찾아보느라 다시 검색해요😢</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				10
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0"></path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-1pov5mm">
																<div class="css-ov1ktg">
																	<a class="css-255jr8" href="/ko-KR/users/36lvXM3p35Xdn">
																		<div class="css-de38ex"></div>
																	</a>
																	<div class="css-199ku80">
																		<div class="css-1sg2lsz">
																			<a class="css-255jr8" href="/ko-KR/users/36lvXM3p35Xdn">
																				<div class="css-72k174">WATCHA</div>
																				<div class="Icon officlaiBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiNGNzE3NUEiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjE2MDYxIDguMzI4OTVDNS4wMzk4NyA4LjMyODk1IDQuOTI0NTggOC4yODA4MyA0LjgzOTI0IDguMTk2NEwzLjEzMzQ1IDYuNDg4OEMyLjk1NTUyIDYuMzEwODYgMi45NTU1MiA2LjAyMzk5IDMuMTMzNDUgNS44NDY5N0MzLjMxMDQ3IDUuNjY5MDQgMy41OTczNCA1LjY2OTA0IDMuNzc1MjggNS44NDY5N0w1LjE2MDYxIDcuMjMzMjFMOC4yMjQ1IDQuMTY4NDFDOC40MDI0MyAzLjk5MTM5IDguNjg5MyAzLjk5MTM5IDguODY3MjMgNC4xNjg0MUM5LjA0NDI2IDQuMzQ1NDQgOS4wNDQyNiA0LjYzMzIyIDguODY3MjMgNC44MTAyNEw1LjQ4MTk4IDguMTk2NEM1LjM5NjY0IDguMjgwODMgNS4yODEzNSA4LjMyODk1IDUuMTYwNjEgOC4zMjg5NVoiIGZpbGw9IndoaXRlIi8+CjxwYXRoIGQ9Ik01LjE2MDYxIDguMzI4OTVWOC4zMjg5NUM1LjAzOTg3IDguMzI4OTUgNC45MjQ1OCA4LjI4MDgzIDQuODM5MjQgOC4xOTY0TDMuMTMzNDUgNi40ODg4QzIuOTU1NTIgNi4zMTA4NiAyLjk1NTUyIDYuMDIzOTkgMy4xMzM0NSA1Ljg0Njk3QzMuMzEwNDcgNS42NjkwNCAzLjU5NzM0IDUuNjY5MDQgMy43NzUyOCA1Ljg0Njk3TDUuMTYwNjEgNy4yMzMyMUw4LjIyNDUgNC4xNjg0MUM4LjQwMjQzIDMuOTkxMzkgOC42ODkzIDMuOTkxMzkgOC44NjcyMyA0LjE2ODQxQzkuMDQ0MjYgNC4zNDU0NCA5LjA0NDI2IDQuNjMzMjIgOC44NjcyMyA0LjgxMDI0TDUuNDgxOTggOC4xOTY0QzUuMzk2NjQgOC4yODA4MyA1LjI4MTM1IDguMzI4OTUgNS4xNjA2MSA4LjMyODk1IiBzdHJva2U9IndoaXRlIiBzdHJva2Utd2lkdGg9IjAuMjUiLz4KPC9zdmc+Cg=="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#F7175A"></path>
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M5.16061 8.32895C5.03987 8.32895 4.92458 8.28083 4.83924 8.1964L3.13345 6.4888C2.95552 6.31086 2.95552 6.02399 3.13345 5.84697C3.31047 5.66904 3.59734 5.66904 3.77528 5.84697L5.16061 7.23321L8.2245 4.16841C8.40243 3.99139 8.6893 3.99139 8.86723 4.16841C9.04426 4.34544 9.04426 4.63322 8.86723 4.81024L5.48198 8.1964C5.39664 8.28083 5.28135 8.32895 5.16061 8.32895Z"
																								fill="white"></path>
																							<path d="M5.16061 8.32895V8.32895C5.03987 8.32895 4.92458 8.28083 4.83924 8.1964L3.13345 6.4888C2.95552 6.31086 2.95552 6.02399 3.13345 5.84697C3.31047 5.66904 3.59734 5.66904 3.77528 5.84697L5.16061 7.23321L8.2245 4.16841C8.40243 3.99139 8.6893 3.99139 8.86723 4.16841C9.04426 4.34544 9.04426 4.63322 8.86723 4.81024L5.48198 8.1964C5.39664 8.28083 5.28135 8.32895 5.16061 8.32895"
																								stroke="white" stroke-width="0.25"></path>
																						</svg>
																					</div>
																				</div>
																				<div class="Icon playBadge css-13ebre0-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00Ljc3MDQ2IDAuNTYyNDU5QzUuMjQzMjggLTAuMTU2NDMyIDYuMzExNDcgLTAuMTkzMDcgNi44MzUzNSAwLjQ5MjE1NUM3LjE3MzM3IDAuOTMzNzg4IDcuNzczODUgMS4xMDExMyA4LjMwMTgxIDAuOTAwMTIxQzkuMTE5OCAwLjU4ODIwNSAxMC4wMDYyIDEuMTY3NDggMTAuMDE0NCAyLjAyMTA0QzEwLjAxOTUgMi41Njk2MSAxMC40MDU1IDMuMDQ3ODggMTAuOTUzOSAzLjE4NTUyQzExLjgwNDYgMy4zOTk0MSAxMi4xNzAyIDQuMzc0NzYgMTEuNjYwNiA1LjA2ODlDMTEuMzMxOCA1LjUxNjQ4IDExLjM1MzIgNi4xMjE0OSAxMS43MTM3IDYuNTQ2MjlDMTIuMjcyMyA3LjIwNDc4IDExLjk3NzIgOC4yMDE5MiAxMS4xNDM4IDguNDcyMjVDMTAuNjA2NyA4LjY0NzUyIDEwLjI1NzQgOS4xNTA1NCAxMC4yOTExIDkuNjk5MTJDMTAuMzQ0MiAxMC41NDk3IDkuNTAxNzQgMTEuMTg3NCA4LjY2MzMyIDEwLjkzMTlDOC4xMjIwOCAxMC43Njc2IDcuNTM0ODggMTAuOTc0NSA3LjIyOTU0IDExLjQzNzlDNi43NTY3MiAxMi4xNTY4IDUuNjg3NTEgMTIuMTkyNSA1LjE2NDY1IDExLjUwODJDNC44MjY2MyAxMS4wNjU2IDQuMjI2MTUgMTAuODk4MyAzLjY5ODE5IDExLjEwMDNDMi44ODAyIDExLjQxMjIgMS45OTM3OCAxMC44MzE5IDEuOTg0NTkgOS45ODAzNEMxLjk4MDUxIDkuNDI5NzggMS41OTU1MSA4Ljk1MjUgMS4wNDYxIDguODEzODdDMC4xOTU0MjggOC41OTk5OSAtMC4xNzAxNjYgNy42MjY2MSAwLjMzOTQxOSA2LjkzMjQ3QzAuNjY4MjQ5IDYuNDgzOTEgMC42NDY4MDQgNS44Nzc5IDAuMjg2MzE2IDUuNDUzMUMtMC4yNzIyODcgNC43OTQ2MSAwLjAyMjg0MyAzLjc5OTQ1IDAuODU2MTUyIDMuNTI3MTVDMS4zOTMzMSAzLjM1Mjg3IDEuNzQzNTkgMi44NTA4MyAxLjcwODg2IDIuMzAxMjdDMS42NTU3NiAxLjQ1MDY4IDIuNDk4MjYgMC44MTE5OTIgMy4zMzY2OCAxLjA2ODQ2QzMuODc3OTIgMS4yMzI4MyA0LjQ2NTEyIDEuMDI1ODggNC43NzA0NiAwLjU2MjQ1OVoiIGZpbGw9IiMwRTBGMTAiLz4KPHBhdGggZD0iTTcuNjk3MzMgMi40NDk5NUw3LjI4NjEyIDcuNzkzNjdMNy4xNzc3NCA3Ljc5ODAzTDYuNDUyMjYgMy45Nzk1MUg1LjI2MTIzTDQuNjY1NTggNy44OTEzMkw0LjUzNTc1IDcuODk2NTVMMy45NTA5NiAzLjk3OTUxSDIuNUwzLjgxMDI3IDkuNzE1NThMNS4zMTUyOCA5LjYxNDE1TDUuODQ1NzQgNS45NzE0NUg1Ljk2NDk4TDYuNTYwMzUgOS41Mjk4N0w4LjA3NjUxIDkuNDI2OTlMOS4xMDUxMSAyLjQ0OTk1SDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M4.77046 0.562459C5.24328 -0.156432 6.31147 -0.19307 6.83535 0.492155C7.17337 0.933788 7.77385 1.10113 8.30181 0.900121C9.1198 0.588205 10.0062 1.16748 10.0144 2.02104C10.0195 2.56961 10.4055 3.04788 10.9539 3.18552C11.8046 3.39941 12.1702 4.37476 11.6606 5.0689C11.3318 5.51648 11.3532 6.12149 11.7137 6.54629C12.2723 7.20478 11.9772 8.20192 11.1438 8.47225C10.6067 8.64752 10.2574 9.15054 10.2911 9.69912C10.3442 10.5497 9.50174 11.1874 8.66332 10.9319C8.12208 10.7676 7.53488 10.9745 7.22954 11.4379C6.75672 12.1568 5.68751 12.1925 5.16465 11.5082C4.82663 11.0656 4.22615 10.8983 3.69819 11.1003C2.8802 11.4122 1.99378 10.8319 1.98459 9.98034C1.98051 9.42978 1.59551 8.9525 1.0461 8.81387C0.195428 8.59999 -0.170166 7.62661 0.339419 6.93247C0.668249 6.48391 0.646804 5.8779 0.286316 5.4531C-0.272287 4.79461 0.022843 3.79945 0.856152 3.52715C1.39331 3.35287 1.74359 2.85083 1.70886 2.30127C1.65576 1.45068 2.49826 0.811992 3.33668 1.06846C3.87792 1.23283 4.46512 1.02588 4.77046 0.562459Z"
																								fill="#0E0F10"></path>
																							<path d="M7.69733 2.44995L7.28612 7.79367L7.17774 7.79803L6.45226 3.97951H5.26123L4.66558 7.89132L4.53575 7.89655L3.95096 3.97951H2.5L3.81027 9.71558L5.31528 9.61415L5.84574 5.97145H5.96498L6.56035 9.52987L8.07651 9.42699L9.10511 2.44995H7.69733Z"
																								fill="#FF0558"></path>
																						</svg>
																					</div>
																				</div></a>
																			<div class="css-maxfbg">4년 전</div>
																		</div>
																		<div class="css-yb0jaq">댓글에서 신작 스포일러는 지양해주세요 :)</div>
																		<div class="css-ov1ktg">
																			<div class="css-1d8juai">
																				<div class="Icon like css-1tuvmpc-SVG e1282e850">
																					<div>
																						<img class="like1" src="../images/like1.png">
<!-- 																						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" -->
<!-- 																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" -->
<!-- 																							xmlns:xlink="http://www.w3.org/1999/xlink"> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" -->
<!-- 																								fill="#87898B"></path> -->
<!-- 																						</svg> -->
																					</div>
																				</div>
																				17
																			</div>
																			<div class="css-4ygot5">
																				<div class="Icon more css-1b4hoch-SVG e1282e850">
																					<div>
																						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
																							class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
																							xmlns:xlink="http://www.w3.org/1999/xlink">
																							<path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
																								fill="#A0A0A0"></path>
																						</svg>
																					</div>
																				</div>
																				<div class="css-aa3xw">
																					<div class="css-ve4kut">
																						<div class="css-19hkid5">부적절 표현 신고</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<form action="#" class="css-wbhcm7">
																<div class="css-1xm32e0">
																	<input name="replyMessage" placeholder="컬렉션에 댓글을 남겨보세요." class="css-uv85g1" type="text" value="">
																</div>
																<button type="button" class="css-1rllyvn" >
																	<div class="Icon replyLine css-1b4hoch-SVG e1282e850">
																		<div>
																			<svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewBox="0 0 21 20" fill="none"
																				class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjEiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMSAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMC40OTk3IDIuMDgzNUM2LjE1MDQ5IDIuMDgzNSAyLjYyNTQ5IDUuMDIxODMgMi42MjU0OSA4LjY0NkMyLjYyNTQ5IDEwLjU4OTMgMy42Mzk2NSAxMi4zMzYgNS4yNDk2NiAxMy41Mzc3TDUuMTExMzIgMTcuMjQxOEM1LjExMTMyIDE3LjQ5MDIgNS4zMTQ2NiAxNy42NTkzIDUuNTMwNDkgMTcuNjU5M0M1LjYyMTMyIDE3LjY1OTMgNS43MTQ2NiAxNy42MjkzIDUuNzk0NjYgMTcuNTYxOEw4LjYyNDY2IDE1LjAyMUM5LjIyNjMyIDE1LjE0MzUgOS44NTM4MiAxNS4yMDg1IDEwLjQ5OTcgMTUuMjA4NUMxNC44NDk3IDE1LjIwODUgMTguMzc0NyAxMi4yNzAyIDE4LjM3NDcgOC42NDZDMTguMzc0NyA1LjAyMTgzIDE0Ljg0OTcgMi4wODM1IDEwLjQ5OTcgMi4wODM1Wk0xMC40OTk3IDMuMzMzNUMxNC4xNTMgMy4zMzM1IDE3LjEyNDcgNS43MTY4MyAxNy4xMjQ3IDguNjQ2QzE3LjEyNDcgMTEuNTc1MiAxNC4xNTMgMTMuOTU4NSAxMC40OTk3IDEzLjk1ODVDOS45NDk2NiAxMy45NTg1IDkuNDAyOTkgMTMuOTA0MyA4Ljg3MzgyIDEzLjc5NjhDOC43OTEzMiAxMy43NzkzIDguNzA3OTkgMTMuNzcxIDguNjI0NjYgMTMuNzcxQzguMzE5NjUgMTMuNzcxIDguMDIwNDkgMTMuODgzNSA3Ljc4OTY2IDE0LjA5MUw2LjQzNDY2IDE1LjMwNzdMNi40OTg4MiAxMy41ODQzQzYuNTE0NjYgMTMuMTczNSA2LjMyNzE2IDEyLjc4MSA1Ljk5Nzk5IDEyLjUzNTJDNC42NDg4MiAxMS41MjkzIDMuODc1NDkgMTAuMTExOCAzLjg3NTQ5IDguNjQ2QzMuODc1NDkgNS43MTY4MyA2Ljg0NzE2IDMuMzMzNSAxMC40OTk3IDMuMzMzNVoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8L3N2Zz4K"
																				xmlns:xlink="http://www.w3.org/1999/xlink">
																				<path fill-rule="evenodd" clip-rule="evenodd" d="M10.4997 2.0835C6.15049 2.0835 2.62549 5.02183 2.62549 8.646C2.62549 10.5893 3.63965 12.336 5.24966 13.5377L5.11132 17.2418C5.11132 17.4902 5.31466 17.6593 5.53049 17.6593C5.62132 17.6593 5.71466 17.6293 5.79466 17.5618L8.62466 15.021C9.22632 15.1435 9.85382 15.2085 10.4997 15.2085C14.8497 15.2085 18.3747 12.2702 18.3747 8.646C18.3747 5.02183 14.8497 2.0835 10.4997 2.0835ZM10.4997 3.3335C14.153 3.3335 17.1247 5.71683 17.1247 8.646C17.1247 11.5752 14.153 13.9585 10.4997 13.9585C9.94966 13.9585 9.40299 13.9043 8.87382 13.7968C8.79132 13.7793 8.70799 13.771 8.62466 13.771C8.31965 13.771 8.02049 13.8835 7.78966 14.091L6.43466 15.3077L6.49882 13.5843C6.51466 13.1735 6.32716 12.781 5.99799 12.5352C4.64882 11.5293 3.87549 10.1118 3.87549 8.646C3.87549 5.71683 6.84716 3.3335 10.4997 3.3335Z"
																					fill="currentColor"></path>
																			</svg>
																		</div>
																	</div>
																	등록
																</button>
															</form>
														</div>
													</div>
												</div>
											</section>
										</div>
									</div>
								</div>
							</section>
							<!-- footer start -->
							<%@ include file="../head_foot/footer1.jsp" %>
							<!-- footer end -->
					</div>
				</div>
					<div id="declaration1" class="css-pjxj5o" disabled="">
						<div id="modal-container-_38vBKSVXaewRYkvE2J0j" class="css-rpyl6s">
							<div class="css-1yszxv0">
								<div class="css-f35o9y">
									<div class="css-1gkas1x-Grid e1689zdh0">
										<div class="css-1y901al-Row emmoxnt0">
											<div class="css-2djw8f">알림</div>
											<div class="css-148qwic">부적절한 표현으로 신고하시겠어요?</div>
											<div size="2" class="css-gy4ioq">
												<button class="css-1gdw77k-StylelessButton">취소</button>
												<button class="css-sfhtz9-StylelessButton">확인</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
		</div>
	</body>
</html>