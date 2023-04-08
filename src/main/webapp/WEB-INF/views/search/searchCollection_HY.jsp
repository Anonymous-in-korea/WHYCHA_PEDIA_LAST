<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="../css/header.css" rel="stylesheet" type="text/css">
		<link href="../css/searchCollection_HY.css" rel="stylesheet" type="text/css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>	
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<meta charset="utf-8">
		<title>왓챠피디아 - collection</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
												<c:if test="${collectionSearchlist.size() > 0}">
													<c:forEach var="i" begin="0" end="${collectionSearchlist.size()-1}" varStatus="status">
														<li class="css-ovtvwa">
															<a title="collectionSearchlist[i].collection_name" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdkwxgZJb">
																<div class="css-m7az3s">
																	<div class="css-1sarkww">
																		<div class="css-vc4xb">
																		
																			<div class="css-11gwmvo">
																				<div class="css-hdhlfe 1" style="background: url('${MemberVo.user_pic_url}')"></div>
																			</div>
																			<div class="css-11gwmvo">
																				<div class="css-1lebkd8 2"></div>
																				<div class="css-3a1vh6 3"></div>
																			</div>
																			<div class="css-11gwmvo">
																				<div class="css-qpso0m 4"></div>
																				<div class="css-uifub2 5" ></div>
																				<div class="css-1c7wnm0 6" ></div>
																			</div>
																			<div class="css-11gwmvo">
																				<div class="css-1ltg06n"></div>
																				<div class="css-1pw0ykk"></div>
																			</div>
																		</div>
																	</div>
																	<div class="css-11riikv"><${collectionSearchlist[i].collection_name}></div>
																	<div class="css-1on8oyq">${collectionSearchlist[i].collection_desc}</div>
																	<div class="css-hsecj5">
																		<div class="css-1j0k1vy">
																			<c:forEach var="MemberVo" items="${memberVolist}">
																					<c:if test="${MemberVo.id == collectionSearchlist[i].user_id}">
																						<div class="css-q29adr-ProfilePhotoImage" style="background: url('${MemberVo.user_pic_url}')">
																						</div>
																					</c:if>
																			</c:forEach>
															</div>
																	<c:forEach var="MemberVo" items="${memberVolist}">
																		<c:if test="${MemberVo.id == collectionSearchlist[i].user_id}">
																			<c:out value="${MemberVo.user_name}"/>
																		</c:if>
																	</c:forEach>
															<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iI0Y3MTc1QSIvPgogIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNS4xNjA2MSA4LjMyODk1QzUuMDM5ODcgOC4zMjg5NSA0LjkyNDU4IDguMjgwODMgNC44MzkyNCA4LjE5NjRMMy4xMzM0NSA2LjQ4ODhDMi45NTU1MiA2LjMxMDg2IDIuOTU1NTIgNi4wMjM5OSAzLjEzMzQ1IDUuODQ2OTdDMy4zMTA0NyA1LjY2OTA0IDMuNTk3MzQgNS42NjkwNCAzLjc3NTI4IDUuODQ2OTdMNS4xNjA2MSA3LjIzMzIxTDguMjI0NSA0LjE2ODQxQzguNDAyNDMgMy45OTEzOSA4LjY4OTMgMy45OTEzOSA4Ljg2NzIzIDQuMTY4NDFDOS4wNDQyNiA0LjM0NTQ0IDkuMDQ0MjYgNC42MzMyMiA4Ljg2NzIzIDQuODEwMjRMNS40ODE5OCA4LjE5NjRDNS4zOTY2NCA4LjI4MDgzIDUuMjgxMzUgOC4zMjg5NSA1LjE2MDYxIDguMzI4OTVaIiBmaWxsPSJ3aGl0ZSIvPgogIDxwYXRoIGQ9Ik01LjE2MDYxIDguMzI4OTVWOC4zMjg5NUM1LjAzOTg3IDguMzI4OTUgNC45MjQ1OCA4LjI4MDgzIDQuODM5MjQgOC4xOTY0TDMuMTMzNDUgNi40ODg4QzIuOTU1NTIgNi4zMTA4NiAyLjk1NTUyIDYuMDIzOTkgMy4xMzM0NSA1Ljg0Njk3QzMuMzEwNDcgNS42NjkwNCAzLjU5NzM0IDUuNjY5MDQgMy43NzUyOCA1Ljg0Njk3TDUuMTYwNjEgNy4yMzMyMUw4LjIyNDUgNC4xNjg0MUM4LjQwMjQzIDMuOTkxMzkgOC42ODkzIDMuOTkxMzkgOC44NjcyMyA0LjE2ODQxQzkuMDQ0MjYgNC4zNDU0NCA5LjA0NDI2IDQuNjMzMjIgOC44NjcyMyA0LjgxMDI0TDUuNDgxOTggOC4xOTY0QzUuMzk2NjQgOC4yODA4MyA1LjI4MTM1IDguMzI4OTUgNS4xNjA2MSA4LjMyODk1IiBzdHJva2U9IndoaXRlIiBzdHJva2Utd2lkdGg9IjAuMjUiLz4KPC9zdmc+Cg=="
																class="css-114ywgf"></span>
																<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
																class="css-amcv0d"></span>
														</div>
														<div class="css-znoruf">
															좋아요 824<span class="css-1roze2l"></span>댓글 10
														</div>
													</div>
												</a>
											</li>
											<!-- 1개 영화 그리기 -->
									</c:forEach>
								</c:if>
											
										</ul>
										<!-- 더보기 버튼 -->
										<div class="css-1sj9zzf">
											<button class="css-1d4r906-StylelessButton" id="collection_box">
												더보기
												<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSA5LjEwMDFMMTIgMTQuNjAwMUwxNy41IDkuMTAwMSIgc3Ryb2tlPSIjNzg3OTgyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K" width="24px" height="24px" class="css-cg0u6i"></span>
											</button>
										</div>
										<!-- 더보기 버튼 -->
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