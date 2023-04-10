<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
	  <head>
			<meta charset="utf-8">
			<title>왓챠피디아 - 영화, 책, TV 프로그램 추천 및 평가 서비스</title>
			<link href="/css/actor_directorLike_SY.css" rel="stylesheet" type="text/css">
			<link href="/css/header.css" rel="stylesheet" type="text/css">
			<link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
			<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
			<script>
			$(function() {
				/* 배우 감독 탭버튼 서로 클릭 할때마다 글자색과 아래 bottom색 바뀌기 */
				  $('.css-s8lqsd-StyledTab').click(function() {
				    $(this).css('color', '#FEAE27').css('border-bottom', '2px solid #ff7f27');
				    $('.css-4tchbd-StyledTab').css('color', '#74747B').css('border-bottom', '2px solid rgba(255, 255, 255, 0)');
				    $('.director').css('display', 'block');
				    $('.actor').css('display', 'none');
				  });

				  $('.css-4tchbd-StyledTab').click(function() {
				    $(this).css('color', '#FEAE27').css('border-bottom', '2px solid #ff7f27');
				    $('.css-s8lqsd-StyledTab').css('color', '#74747B').css('border-bottom', '2px solid rgba(255, 255, 255, 0)');
				    $('.director').css('display', 'none');
				    $('.actor').css('display', 'block');
				  });
			});
			</script>
	  </head>
	  <body>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="../head_foot/header.jsp"%>
					<!-- header end -->
				</div>
			</div>
		</div>
		<section class="css-18gwkcr">
			<div class="css-gmvrme">
				<div class="css-r2dzai">
					<div class="css-74g0cg">
						<div class="css-lw0ve8">
							<form action="#">
								<label class="css-1rz7rw1">
									<div class="css-1smbjja">
										<input autocomplete="off"
											   placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요." type="text"
											   name="searchKeyword" class="css-ibgwco" value="아바타">
									</div>
									<div value="true" class="css-1ax2scd">
										<span aria-label="clear" role="button" class="css-qe0tnm"></span>
									</div>
								</label>
							</form>
							<button class="css-ozvtwa-StylelessButton">취소</button>
						</div>
					</div>
				</div>
			</div>
			<section class="css-le8j8b">
				<div class="css-1jehmiq">
					<div class="css-10zg79x-pageMarginStyle">내가 좋아하는 영화인</div>
				</div>
				<div class="css-15qcwbn-StyledTabBarContainer e1szkzar1">
					<ul class="css-1gwdxtz-VisualUl-StyledTabBarUl e1szkzar2">
						<li class="css-4tchbd-StyledTab e1szkzar0">배우</li>
						<li class="css-s8lqsd-StyledTab e1szkzar0">감독</li>
					</ul>
				</div>
				<div class="css-ipmqep-StyledTabContentContainer e1szkzar3">
					<div class="css-12hxjcc-StyledHideableBlock e1pww8ij0">
						<div class="css-1djzg97">
						<!-- 배우 list  -->
							<ul class="css-paz4zm-VisualUl">
							<!--list반복 1 시작 -->
							<c:if test="${not empty actor_list}">
								<c:forEach items="${actor_list}" var ="avo" >
									<li class="css-1tmgvat actor">
										<a title="다바타 신타로" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/people/XV4mY3G946">
											<div class="css-cssveg">
												<div class="css-17ob1ac">
													<div class="css-1e8dv1-ProfilePhotoImage"></div>
													<div class="css-1dtdviq">
														<img src="${avo.actor_post_url}"
															 alt="${avo.actor_name}의 사진" class="css-ssea8o">
													</div>
												</div>
											</div>
											<div class="css-zoy7di">
												<div class="css-qkf9j">
													<div class="css-17vuhtq">
														<div class="css-515bkd">${avo.actor_name}</div>
													</div>
													<div class="css-1evnpxk-StyledSubtitle">
														<div class="css-qzyxgk">
															<span class="css-htvp8y">배우</span>
															<span class="css-1jpatke">・ </span>
															<span class="personContents css-yn5nfu" title="다바타 신타로"></span>
														</div>
													</div>
													<div class="css-v9psum">
														<div title="다바타 신타로" class="css-txztjz">
															<span class="css-mudjgk"></span>
														</div>
													</div>
												</div>
											</div>
										</a>
									</li>
								</c:forEach>
							</c:if>
							<!-- 감독 list -->
							<c:if test="${not empty director_list}">
								<c:forEach items="${director_list}" var ="avo">
									<li class="css-1tmgvat director" style="display:none">
										<a title="다바타 신타로" class="css-1aaqvgs-InnerPartOfListWithImage" href="/ko-KR/people/XV4mY3G946">
											<div class="css-cssveg">
												<div class="css-17ob1ac">
													<div class="css-1e8dv1-ProfilePhotoImage"></div>
													<div class="css-1dtdviq">
														<img src="${avo.director_post_url}"
															 alt="다바타 신타로의 사진" class="css-ssea8o">
													</div>
												</div>
											</div>
											<div class="css-zoy7di">
												<div class="css-qkf9j">
													<div class="css-17vuhtq">
														<div class="css-515bkd">${avo.director_name}</div>
													</div>
													<div class="css-1evnpxk-StyledSubtitle">
														<div class="css-qzyxgk">
															<span class="css-htvp8y">감독</span>
															<span class="css-1jpatke">・ </span>
															<span class="personContents css-yn5nfu" title="다바타 신타로"></span>
														</div>
													</div>
													<div class="css-v9psum">
														<div title="다바타 신타로" class="css-txztjz">
															<span class="css-mudjgk"></span>
														</div>
													</div>
												</div>
											</div>
										</a>
									</li>
									</c:forEach>
								</c:if>
							</ul>
						</div>
					</div>
					<!--로딩일떄 검색중 표시부분 시작 -->
					<div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
						<section class="css-1aogsz3">
							<div class="css-z1bhn7-Self ey90tni0">
								<div class="css-2kgnjb"></div>
								<div class="css-1yxwu9j-Message ey90tni1">검색 중..</div>
							</div>
						</section>
					<!--로딩일떄 검색중 표시부분 끝-->
					</div>
				</div>
			</section>
		</section>
	</body>
</html>