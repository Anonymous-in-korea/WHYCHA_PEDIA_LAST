<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>왓챠피디아 - collection</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
		<link href="../css/header.css" rel="stylesheet" type="text/css">
		<link href="../css/searchCollection_HY.css" rel="stylesheet" type="text/css">
		
		<script src="/js/login.js"></script>
		<script src="/js/join.js"></script>
			
		<script>
		 $(function(){
			 
			 $("#contents").click(function(){
				// alert("contents");
				 location.href = "/search/searchContents_GC?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=contents";
			 });
			 $("#person").click(function(){
				 //alert("person");
				 location.href = "/search/searchPerson_SY?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=person";
			 });
		 });
		</script>
	</head>
	<body>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->
					<section class="css-18gwkcr">
						<section class="css-le8j8b">
							<!-- 컬렉션 헤더 -->
							<div class="css-1jehmiq">
								<div class="css-10zg79x-pageMarginStyle">"${param.searchKeyword}"의 검색결과</div>
							</div>
							<!-- 컬렉션 헤더 -->
							<div class="css-15qcwbn-StyledTabBarContainer e1szkzar1">
								<!-- 메뉴 -->
								<ul class="css-1gwdxtz-VisualUl-StyledTabBarUl e1szkzar2">
									<li class="css-4tchbd-StyledTab e1szkzar0" id="contents">콘텐츠</li>
	                                <li class="css-s8lqsd-StyledTab e1szkzar0" id="person">인물</li>
	                                <li class="css-4tchbd-StyledTab e1szkzar0" id="collection">컬렉션</li>
								</ul>
							</div>
							<!-- 컬렉션 그리기 -->
							<div class="css-ipmqep-StyledTabContentContainer e1szkzar3">
								<div class="css-12hxjcc-StyledHideableBlock e1pww8ij0">
									<section class="css-yykl48-pageMarginStyle">
										<ul class="css-1ut4alo-VisualUl">
											<!-- 1개 영화 그리기 -->
											<c:forEach items="${updateCollectionVoList}" var="collectionVo" > 
												<li class="css-ovtvwa">
													<a title="${collectionVo.collection_name}" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/collection/collection_detail_HY?collection_id=${collectionVo.id}&user_id=${collectionVo.user_id}">
														<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">	
																	<div class="css-11gwmvo">
																		<div style="background: url(${collectionVo.movie_post_urls[0]})" class="css-hdhlfe"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div style="background: url(${collectionVo.movie_post_urls[1]})" class="css-3a1vh6"></div>
																		<div style="background: url(${collectionVo.movie_post_urls[2]})" class="css-1lebkd8"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div style="background: url(${collectionVo.movie_post_urls[3]})" class="css-qpso0m"></div>
																		<div style="background: url(${collectionVo.movie_post_urls[4]})" class="css-uifub2"></div>
																		<div style="background: url(${collectionVo.movie_post_urls[5]})" class="css-1c7wnm0"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div style="background: url(${collectionVo.movie_post_urls[6]})" class="css-1ltg06n"></div>
																		<div style="background: url(${collectionVo.movie_post_urls[7]})" class="css-1pw0ykk"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">${collectionVo.collection_name}</div>
															<div class="css-1on8oyq">${collectionVo.collection_desc}</div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div style="background: url(${collectionVo.user_pic_url}) center center / cover no-repeat;" class="css-q29adr-ProfilePhotoImage"></div>
																</div>
																${collectionVo.user_name}
															</div>
															<div class="css-znoruf">
																좋아요 ${collectionVo.like_count}
																<span class="css-1roze2l"></span>
																댓글 ${collectionVo.comment_count}
															</div>
														</div>
													</a>
												</li>
											</c:forEach>
							<!-- foreach문 돌릴 부분 컬렉션div -->	
											</ul>
											<div class="css-1sj9zzf">
												<button class="css-1d4r906-StylelessButton" id="collection_box">
													더보기
													<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSA5LjEwMDFMMTIgMTQuNjAwMUwxNy41IDkuMTAwMSIgc3Ryb2tlPSIjNzg3OTgyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K" width="24px" height="24px" class="css-cg0u6i"></span>
												</button>
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