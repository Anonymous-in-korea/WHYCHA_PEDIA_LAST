<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="../css/header.css" rel="stylesheet" type="text/css">
		<link href="../css/footer.css" rel="stylesheet" type="text/css">
		<link href="../css/userPage_SY.css" rel="stylesheet" type="text/css">
		<link href="../css/logout_SH.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" type="image/x-icon" href="../images/whycha_small_logo1.png">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
			$(function() {
				/* 설정 창 띄우기 */
				$("#settingBtn").click(function() {
					if ( $(".css-15gy7wr").css("display") == "none" ) { $(".css-15gy7wr").show(); }
				});
				
				/* 설정 창 내리기 */
				$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
					if ( $(".css-15gy7wr").css("display") != "none" ) { $(".css-15gy7wr").hide(); }
				});
				
				/* 로그아웃 창 띄우기 */
				$("#logout_open_Btn").click(function() {
					if ( $(".css-14gy7wr").css("display") == "none" ) {
						$(".css-14gy7wr").show();
						$(".css-15gy7wr").css({"z-index":"99"});
						$(".css-14gy7wr").css({"z-index":"100"});
					}
				});
				
				 /* 로그아웃 창 내리기 */
			 	$("#logout_close_Btn").click(function() {
					if ( $(".css-14gy7wr").css("display") != "none" ) { $(".css-14gy7wr").hide(); }
				});
				 
			 	/* 로그아웃 하기 */
				$("#logout_confirm_Btn").click(function(){
					location.href="/logout";
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
					
					<!-- ---------------공지 팝업 start------------------------------ -->
					<%@ include file="announcement_SH.jsp" %>
					<!-- ---------------공지 팝업 end------------------------------ -->
					
					<!-- 설정 팝업 start -->
					<%@ include file="myPage_setting_GC.jsp" %>
					<!-- 설정 팝업 end -->
					
					<!-- ---------------로그아웃 팝업 start------------------------------ -->
					<%@ include file="logout_SH.jsp" %>
					<!-- ---------------로그아웃 팝업 end------------------------------ -->
					
					<!-- ---------------탈퇴 팝업 start------------------------------ -->
					<%@ include file="deregister_SH.jsp" %>
					<!-- ---------------탈퇴 팝업 end------------------------------ -->
					
					<section class="css-18gwkcr">
						<div class="css-egiga7-Self e19zkogf0">
							<div class="css-19rw4yc-Container e19zkogf1">
								<div class="css-1xqcv4t">
								<!-- 유저페이지 content 시작   -->
									<div class="css-19lj1vd-RoundedCornerBlock-RoundedCornerBlock">
										<section class="css-q4evg3-MyPage e19zkogf2">
											<!--content header 시작  -->
											<div class="css-17iws0v-WallPaper" id="settingBtn">
											<!-- 톱니바퀴 버튼시작-->
												<button aria-label="setting"  class="css-vmz9k0-StylelessButton-WallPaperTopRightButton e19zkogf20"></button>
											<!-- 톱니바퀴 버튼 끝 -->
											</div>
											<div class="css-1gkas1x-Grid e1689zdh0">
												<div class="css-1y901al-Row emmoxnt0">
													<header class="css-1hjjbcz-ProfileHeader e19zkogf4">
														<div class="css-1gry5r7">
														<!--유저 프로필 이미지 -->
														<c:if test="${memberVo.user_pic_url != '0' }">
															<div class="css-h6h0rq-ProfilePhotoImage" style="background-image:url('${memberVo.user_pic_url}')"></div>
														</c:if>
														<c:if test="${memberVo.user_pic_url == '0' }">
															<div class="css-h6h0rq-ProfilePhotoImage"></div>
														</c:if>
														</div>
														<div class="css-5inudd-NameBlock e19zkogf5">
															<!--유저이름 -->
															<h1 class="css-aizam7-Name e19zkogf6">${memberVo.user_name}</h1>
															<!--유저이름 -->
														</div>
														<div class="css-7w44b1-AboutMe e19zkogf9">
															<div class=" css-sloxdm-StyledSelf eb5y16b0">
																<div class="css-1fucs4t-StyledText eb5y16b1">프로필이 없습니다.</div>
															</div>
														</div>
													</header>
													<!--취향분석 부분 시작  -->
													<ul class="css-10n5vg9-VisualUl ep5cwgq0">
														<li class="css-4ip9lp-AnalysisListItem e19zkogf10">
															<a target="_blank" rel="noopener noreferrer" title="취향분석"
														   	   href="/myPage/my_analysis_HY?id=${memberVo.id}">
														   		<span
																   src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiNFRjY5MkUiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEuMTggMTEuOTZoMy43NHY4LjM2SDEuMTh6TTE1Ljc1IDE2LjgzaDMuNzR2My40OWgtMy43NHpNNi4wNCA5LjEyaDMuNzR2MTEuMkg2LjA0ek0xMC45IDEzLjg0aDMuNzR2Ni40OEgxMC45eiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiNGRkNBMjIiIGQ9Ik0xNy40NCAxLjM3bDEuNjYgNCA0LjMxLjM0LTMuMjggMi44MSAxIDQuMjEtMy42OS0yLjI2LTMuNjkgMi4yNiAxLjAxLTQuMjEtMy4yOS0yLjgxIDQuMzItLjM0eiIvPgogICAgPC9nPgo8L3N2Zz4K"
																   height="24px" width="24px"
																   class="css-1m51twb-TasteImage e19zkogf19">
																 </span>
																 <span class="css-uqis73-AnalysisListItemTitle e19zkogf11">취향분석</span>
															</a>
														</li>
													</ul>
												<!--취향분석 부분 끝  -->
												</div>
												<!--movie/ collection/ actor&director 3섹션  -->
												<div class="css-usdi1z">
													<div class="css-9dnzub">
														<div class="css-174lxc3">
															<div class="css-1gkas1x-Grid e1689zdh0">
																<div class="css-1y901al-Row emmoxnt0">
																	<ul class="e19zkogf12 css-i1bo8u-VisualUl-CategoryArchivesUl">
																		<!--MOVIE 버튼 시작  -->
																		<li class="css-1u4jvye-CategoryArchivesListItem e19zkogf13">
																			<a background="[object Object]" class="css-h3f67w-CategoryArchivesLink e19zkogf14" href="/ko-KR/users/djaxbJPMVAxLw/contents/movies?user_id=${memberVo.id}">
																				<ul class="css-reeb92-VisualUl-CategoryArchives e19zkogf15">
																					<li class="css-r3hbc5-CategoryArchivesName e19zkogf16">MOVIE</li>
																					<li class="css-7xoi89-CategoryArchivesRatedCount e19zkogf17">★0</li>
<!-- 																					<li class="css-kcevqh-CategoryArchivesWishedCount e19zkogf18">보고싶어요<strong>0</strong></li> -->
																				</ul>
																			</a>
																		</li>
																		<!--MOVIE 버튼  끝  -->
																		<!--COLLECTION 버튼 시작 -->
																		<li class="css-1u4jvye-CategoryArchivesListItem e19zkogf13">
																			<a background="[object Object]" class="css-1gw6y00-CategoryArchivesLink e19zkogf14" href="/ko-KR/users/djaxbJPMVAxLw/contents/tv_seasons?user_id=${memberVo.id}">
																				<ul class="css-1x0nmo-VisualUl-CategoryArchives e19zkogf15">
																					<li class="css-r3hbc5-CategoryArchivesName e19zkogf16">COLLECTION</li>
																					<li class="css-7xoi89-CategoryArchivesRatedCount e19zkogf17">★0</li>
<!-- 																					<li class="css-kcevqh-CategoryArchivesWishedCount e19zkogf18"><strong>0</strong></li> -->
																				</ul>
																			</a>
																		</li>
																		<!--COLLECTION 버튼 끝  -->
																		<!--ACTOR&DIRECTOR 시작  -->
																		<li class="css-1u4jvye-CategoryArchivesListItem e19zkogf13">
																			<a background="[object Object]" class="css-1e839ay-CategoryArchivesLink e19zkogf14" href="/myPage/actor_director_like_SY?id=${memberVo.id }">
																				<ul class="css-1qiuf48-VisualUl-CategoryArchives e19zkogf15">
																					<li class="css-r3hbc5-CategoryArchivesName e19zkogf16">ACTOR & DIRECTOR</li>
																					<li class="css-7xoi89-CategoryArchivesRatedCount e19zkogf17">★0</li>
																					<li class="css-kcevqh-CategoryArchivesWishedCount e19zkogf18">내가좋아하는인물<strong>0</strong></li>
																				</ul>
																			</a>
																		</li>
																		<!--ACTOR&DIRECTOR 끝  -->
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
															<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K" alt="forward">
														</div>
													</div>
												</div>
												<!--movie/ collection/ actor&director 3섹션 끝 -->
											</div>
										</section>
									</div>
								</div>
								<!--유저페이지 content 끝  -->
							</div>
							<!-- footer start -->
							<%@ include file="../head_foot/footer1.jsp"%>
							<!-- footer end -->
						</div>
					</section>
				</div>
			</div>
		</div>
	</body>
</html>