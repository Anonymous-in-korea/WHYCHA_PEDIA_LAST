<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 로그인 전 팝업창 start -->
<!-- 보고싶어요 팝업창 -->
<div class="wish_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button type="button" aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0">
						<strong><img src="/images/close_button.png" style="width:100%; height:100%;"></strong>
					</button>
				</div>
			</header>
			<div class="css-1s8we4x">
				<div class="wish_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<img src="/images/wish_watching.svg" class="css-ntv7u">
								</div>
								<div class="css-1q1aaw9">내 보관함에 작품을 담으려면<br>로그인이 필요해요.<br>회원가입 혹은 로그인해주세요.</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button type="button" id="wish_join_btn" class="css-ayvrdp-StylelessButton">회원가입</button>
								<button type="button" id="wish_login_btn" class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 보고싶어요 팝업창 끝 --> 

<!-- 코멘트 팝업창 시작 --> 
<div class="comment_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0" id="close_button">
						<strong><img src="/images/close_button.png" style="width:100%; height:100%;"></strong>
					</button>
				</div>
				<div class="css-19pxr9t"></div>
			</header>
			<div class="css-1s8we4x">
				<div class="comment_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<img src="/images/comment.svg" class="css-ntv7u">
								</div>
								<div class="css-1q1aaw9">지금 회원가입 혹은 로그인하시고,<br>경험한 감동을 기록해보세요.</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button type="button" id="comment_join_btn" class="css-ayvrdp-StylelessButton">회원가입</button>
								<button type="button" id="comment_login_btn" class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 코멘트 팝업창 끝 --> 

<!-- 보는중 팝업창 시작 --> 
<div class="watch_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0" id="close_button">
						<strong><img src="/images/close_button.png" style="width:100%; height:100%;"></strong>
					</button>
				</div>
				<div class="css-19pxr9t"></div>
			</header>
			<div class="css-1s8we4x">
				<div class="watch_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" 
										class="css-2ci6iq"></span>
									</div>
								<div class="css-1q1aaw9">로그인이 필요한 기능이에요.<br>지금 회원가입 혹은 로그인하고<br>공통의 취향을 나눠보세요.</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button type="button" id="watch_join_btn" class="css-ayvrdp-StylelessButton">회원가입</button>
								<button type="button" id="watch_login_btn" class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 보는중 팝업창 끝 --> 

<!-- 컬렉션 팝업창 로그인 전 시작 --> 
<div class="collection_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0" id="close_button">
						<strong><img src="/images/close_button.png" style="width:100%; height:100%;"></strong>
					</button>
				</div>
				<div class="css-19pxr9t"></div>
			</header>
			<div class="css-1s8we4x">
				<div class="collection_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<img src="/images/collection_icon.png" class="css-ntv7u">
								</div>
								<div class="css-1q1aaw9">로그인이 필요한 기능이에요.<br>지금 회원가입 혹은 로그인을 하셔서<br>영화를 당신의 콜렉션에 담아보세요.</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button type="button" id="collection_join_btn" class="css-ayvrdp-StylelessButton">회원가입</button>
								<button type="button" id="collection_login_btn" class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 컬렉션 팝업창 로그인전 끝 --> 
<!-- 로그인 전 팝업창 end -->







<!-- 로그인 후 팝업창 start -->
<!-- 코멘트 팝업창 로그인 후 start -->
<div class="comment_pop_up2_background" style="display:none;">
	<div id="modal-container-LCVk3ztPTTC2hR1ZGfU_b" class="css-rpyl6s">
		<div class="css-1p257d1-modalAddStyle">
			<header title="" class="css-166ww79-HeaderBarPrimitive-headerAddStyle">
				<div class="css-19pxr9t"></div>
				<em class="css-10mjbgt">${movieVo.movie_kor_title}</em>
				<div class="css-19pxr9t">
					<button class="css-1lvet1d-StylelessButton"></button>
				</div>
			</header>
			<div class="css-1iv0iqc comment_write_pop_up2">
				<div height="100%" class="css-2zu8pq">
					<div class="css-cdzmq7">
						<div class="css-iowq1w">
							<form action="/contents/myCommentModify" method="get" name="myCommentModify">
							<input type="hidden" name="userId" value="${ myCommentVo.user_id }">
							<input type="hidden" name="movieId" value="${ movieVo.id }">
							<div class="css-iowq1w">
								<textarea name="comment_content" maxlength="1000" placeholder="이 작품에 대한 생각을 자유롭게 표현해주세요.(1000 글자이내)" class="css-137vxyg">${ myCommentVo.comment_content }</textarea>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="css-183vuuo comment_content_box2">
				<div class="css-a2jbfo">
					<div class="css-6qnjre">
						<div class="css-5d0dfn">
							<div data-type="twitter" class="css-hyoixq">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none" class="css-7zhfhb">
									<path fill="#D4D4D4" d="M10.5942 24.625C19.5569 24.625 24.4581 17.3158 24.4581 10.9779C24.4581 10.7702 24.4538 10.5635 24.4441 10.3578C25.3955 9.68089 26.2225 8.83618 26.875 7.87439C26.0019 8.25611 25.0623 8.51346 24.0767 8.62942C25.0827 8.03579 25.8551 7.09616 26.2193 5.97624C25.2777 6.52563 24.2352 6.92522 23.1254 7.1404C22.2362 6.20815 20.9699 5.625 19.5686 5.625C16.8775 5.625 14.6952 7.77311 14.6952 10.4211C14.6952 10.7976 14.7381 11.1636 14.8216 11.5148C10.772 11.3144 7.18103 9.40568 4.778 6.50347C4.35914 7.21212 4.11813 8.03579 4.11813 8.91417C4.11813 10.5783 4.97836 12.0474 6.28641 12.9068C5.48727 12.8825 4.73629 12.6663 4.07956 12.3067C4.07842 12.3267 4.07842 12.3468 4.07842 12.3678C4.07842 14.6911 5.75831 16.6304 7.98767 17.0702C7.57851 17.1798 7.14778 17.2389 6.70318 17.2389C6.3893 17.2389 6.08397 17.2083 5.78719 17.1524C6.40754 19.058 8.20627 20.4447 10.3392 20.4838C8.6712 21.7703 6.57036 22.5369 4.28742 22.5369C3.89421 22.5369 3.50642 22.5149 3.125 22.4705C5.28159 23.8309 7.84203 24.625 10.5942 24.625Z">
									</path>
								</svg>
							</div>
						</div>
						<div class="css-vxx7h8"></div>
						<div class="css-5d0dfn">
							<div data-type="spoiler" class="css-hyoixq">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" class="css-7zhfhb">
									<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9998 1.89462C6.41882 1.89462 1.89453 6.41891 1.89453 11.9999C1.89453 17.5809 6.41882 22.1052 11.9998 22.1052C17.5808 22.1052 22.1051 17.5809 22.1051 11.9999C22.1051 6.41891 17.5808 1.89462 11.9998 1.89462ZM7.78928 11.4662C8.02183 11.0634 8.53685 10.9254 8.93962 11.158L12.0061 12.9284L15.0612 11.1645C15.464 10.932 15.979 11.07 16.2116 11.4728C16.4441 11.8755 16.3061 12.3906 15.9034 12.6231L13.6903 13.9008L15.8678 15.158C16.2706 15.3905 16.4086 15.9055 16.1761 16.3083C15.9435 16.7111 15.4285 16.8491 15.0257 16.6165L12.0061 14.8732L8.97515 16.6231C8.57237 16.8556 8.05735 16.7176 7.82481 16.3149C7.59227 15.9121 7.73027 15.3971 8.13304 15.1645L10.3219 13.9008L8.09752 12.6165C7.69474 12.384 7.55674 11.869 7.78928 11.4662ZM7.9998 8.21074C7.9998 7.74566 8.37682 7.36864 8.8419 7.36864H9.05243C9.51751 7.36864 9.89454 7.74566 9.89454 8.21074V8.84232C9.89454 9.3074 9.51751 9.68443 9.05243 9.68443H8.8419C8.37682 9.68443 7.9998 9.3074 7.9998 8.84232V8.21074ZM14.9472 7.36864C14.4821 7.36864 14.1051 7.74566 14.1051 8.21074V8.84232C14.1051 9.3074 14.4821 9.68443 14.9472 9.68443H15.1577C15.6228 9.68443 15.9998 9.3074 15.9998 8.84232V8.21074C15.9998 7.74566 15.6228 7.36864 15.1577 7.36864H14.9472Z"
										fill="#C4C4C4">
									</path>
								</svg>
							</div>
						</div>
					</div>
					<div class="css-6qnjre">
						<p class="css-1s08rlk"></p>
						<button type="button" id="comment_modify" class="css-1ukikc-StylelessButton">수정</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 코멘트 팝업창 로그인 후 end -->

<!-- 컬렉션 팝업창 로그인 후 start --> 
<div class="collection_pop_up2_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy collection_content_box2">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-addMycollection">내 컬렉션에 추가</div>
			</header>
			<div class="css-1s8we4x">
				<div class="css-oi2wld">
					<div class="css-blhbko2">
						<div class="css-1gkas1x-Grid e1689zdh0">
						 <form action="/collection/insertMovie" method="get" name="insertMovie" id="insertMovie">
						 	<input type="hidden" name="movie_id" value="${movieVoId}">
								<ul class="css-pr4hr1-VisualUl-ArchivesByActionUl ei8r22x0">
									<%-- <c:forEach items="" var=""> --%>
									<li class="css-17543n0">
										<div class="css-11axhrb">
											<div style="width:20px; height:20px;">
												<!-- c:if로 영화가 들어있으면 안보이게 해주기 -->
												<%-- <c:if test=""> --%>
												<input type="radio" name="chk_collection" value="새로운 영화" class="css-1j6t0vk-StylelessLocalLink-ArchivesActionListLink ei8r22x2">
												<%-- </c:if> --%>
												<!-- 여기에 ajax에 태워보낼 정보들 담아 -->
												<!-- c:if로 영화가 들어있으면 안보이게 해주기 -->
											</div>
											<div class="css-1ciqeix" style="margin-left:15px; vertical-align:middle;">
												<div class="movie_post_url">
													<img src="https://an2-img.amz.wtchn.net/image/v2/7CHhnnLM75Z…c1blVTbHRkNzRJc2UxczBxTUxwQmwtVXhaOVRFLTdRamhjZ2c" style="width:100%;"><!-- 여기에 movie_post_url 적용시키기 -->
												</div>
												<div style="width:69%; margin-left:10px; margin-top:25px; display:inline-block;">
													<p>새로운 영화</p><!-- collection 이름 적용 -->
													<div class="css-collection_popup_span ei8r22x1">
														0개의 작품 <!-- 몇개의 작품 저 0이란 숫자에 collection에 들어있는 작품 갯수 count(*)로 불러온거 적용시키기 -->
														
														<!-- c:if로 영화가 들어있으면 지금 보고있는 영화 poster 보이게 해주기 -->
														<%-- <c:if test=""> --%>
														<div>
															<img src="/images/check.png" style="width:7%;">
														</div>
														<%-- </c:if> --%>
														<!-- c:if로 영화가 들어있으면 지금 보고있는 영화 poster 보이게 해주기 -->
													</div>
												</div>
											</div>
											<div class="css-0"></div>
										</div>
									</li>
									<hr class="box_hr">
									<%-- </c:forEach> --%>
							</ul>
						  </form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 컬렉션 팝업창 로그인 후 end -->

<!-- 로그인 후 팝업창 end -->
