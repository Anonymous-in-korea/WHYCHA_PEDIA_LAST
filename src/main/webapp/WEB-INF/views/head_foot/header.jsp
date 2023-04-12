<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    	<!--검색창 스크립트  -->
		<script>
			$(document).ready(function() {
				  $("form").on("submit", function(event) {
				    event.preventDefault();
				    var searchKeyword = $("input[name='searchKeyword']").val();
				    window.location.href = "/search/searchContents_GC?searchKeyword=" + searchKeyword+"&category=contents";
				  });
			});
		</script>
<header class="header active">
	<nav>
		<div class="css-1gkas1x-Grid e1689zdh0">
			<div class="header_footer_div">
				<ul class="header_ul">
					<li class="header_li">
						<a href="/"><img src="/images/no1_WHYCHA_orange.png" style="width: 210px;"></a>
					</li>
					<li class="header_li_searchBox">
						<div class="header_li_searchBox_div">
							<div class="header_li_searchBox_div2">
								<form action="#" method="post" name="">
									<label class="searchBox_label active">
										<input type="text" autocomplete="off" placeholder="콘텐츠, 인물, 컬렉션을 검색해보세요"
											name="searchKeyword" value class="searchBox_input active">
										<div value="false" class="searchBox_reset">
											<span aria-label="clear" role="button" class="searchBox_reset_button"></span>
										</div>
									</label>
								</form>
							</div>
						</div>
					</li>
					<!-- 로그인 하기 전 -->
					<c:if test="${ sessionId == null }">
					<li class="header_li_button">
						<button class="login_button active">로그인</button>
					</li>
					<li class="header_li_button">
						<button class="join_button active">회원가입</button>
					</li>
					</c:if>
					<!-- 로그인 하기 전 -->
					
					<!-- login section start -->
					<div class="css-14gy7wr-login" style="display:none">
						<div class="css-rpyl6s">
							<div class="css-ikkedy-login">
								<div class="css-1i2oi66-login">
									<header class="css-17bvwx1">
										<a href="/">
											<img src="/images/no1_WHYCHA.png" width="210px" height="38.03px">
										</a>
									</header>
									<h2 class="css-g6a59h">로그인</h2>
									<section>
										<div class="css-1gkas1x-Grid e1689zdh0">
											<div class="css-1y901al-Row emmoxnt0">
												<form action="/" method="post" name="login">
													<input type="hidden" name="redirectUrl" id="redirectUrl" value="">
													<div class="css-1o72pil">
						                                <label value="false" id="email_box" class="css-a4glo0">
						                                    <div class="css-1smbjja">
						                                        <input autocomplete="off" placeholder="이메일" type="email" name="user_email" id="user_email" class="css-1oyrbwm"  value="" />
						                                    </div>
						                                </label>
					                                    <div id="email_error" style="argin-left:10px; font-size:11px;"></div>
						                            </div>
						                            <div class="css-1o72pil">
						                                <label value="false" id="pw_box" class="css-a4glo0">
						                                    <div class="css-1smbjja">
						                                        <input autocomplete="off" placeholder="비밀번호" type="password" name="user_pw" id="user_pw" class="css-1oyrbwm" value="" />
						                                    </div>
						                                </label>
						                                <div id="pw_error" style="argin-left:10px; font-size:11px;"></div>
						                            </div>
													<button type="button" id="loginBtn" class="css-qr0uqd-StylelessButton">로그인</button>
												</form>
												<div class="css-gcz1qq" style="text-align:center; margin-top:10px;">
													계정이 없으신가요?
													<button type="button" id="join_btn" class="css-gq8fs1-StylelessButton">회원가입</button>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
					<!-- login section end -->
					
					<!-- 회원가입 section start -->
					<div class="css-14gy7wr-join" style="display:none;">
						<div class="css-rpyl6s">
							<div class="css-ikkedy-join">
								<div class="css-1i2oi66-join">
									<header class="css-17bvwx1">
										<a href="/">
											<img src="/images/no1_WHYCHA.png" width="210px" height="38.03px">
										</a>
									</header>
									<h2 class="css-g6a59h">회원가입</h2>
									<section>
										<div class="css-1gkas1x-Grid e1689zdh0">
											<div class="css-1y901al-Row emmoxnt0">
												<form action="/join" method="post" name="join">
													<input type="hidden" name="redirectUrl" id="redirectUrl" value="">
													<div class="css-1o72pil">
														<label value="false" id="join_name_box" class="css-a4glo0">
															<div class="css-1smbjja">
																<input autocomplete="off" placeholder="이름" type="text" name="user_name" id="join_name" class="css-1oyrbwm" value="">
															</div>
														</label>
														<div id="join_name_error" style="argin-left:10px; font-size:11px;"></div>
													</div>
													<div class="css-1o72pil">
														<label value="false" id="join_email_box" class="css-a4glo0">
															<div class="css-1smbjja">
																<input autocomplete="off" placeholder="이메일" type="email" name="user_email" id="join_email" class="css-1oyrbwm" value="">
															</div>
														</label>
														<div id="join_email_error" style="argin-left:10px; font-size:11px;"></div>
													</div>
													<div class="css-1o72pil">
														<label value="false" id="join_pw_box" class="css-a4glo0">
															<div class="css-1smbjja">
																<input autocomplete="off" placeholder="비밀번호" type="password" name="user_pw" id="join_pw" class="css-1oyrbwm" value="">
															</div>
														</label>
														<div id="join_pw_error" style="argin-left:10px; font-size:11px;"></div>
													</div>
													<button type="button" id="joinBtn" class="css-qr0uqd-StylelessButton">회원가입</button>
												</form>
												<div class="css-17kylon" style="text-align:center; margin-top:10px;">
													<span style="color:gray; font-size:15px;">이미 가입하셨나요?</span>
													<button id="login_btn" class="css-gq8fs1-StylelessButton">로그인</button>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
					<!-- 회원가입 section end -->
					
					<!-- 로그인 한 후 -->
					<c:if test="${ sessionId != null }">
					<li class="header_li_button">
						<a href="/rate_page_HY">
							<span class="evaluate_button active">평가하기</span>
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22" width="22" height="22" class="evaluate_svg">
								<g fill="none">
									<path class="fillTarget" fill="#BABAC3" fill-rule="evenodd"
										d="M11.404 1.38c.243-.506.949-.506 1.193 0l2.734 5.662c.021.044.061.074.107.08l6.116.909c.547.081.764.767.369 1.16l-4.426 4.41c-.033.033-.048.08-.04.126l1.044 6.226c.094.556-.477.98-.964.717l-5.473-2.94c-.04-.022-.088-.022-.13.001l-5.47 2.939c-.488.263-1.059-.161-.965-.717l1.044-6.225c.008-.047-.007-.094-.04-.128L2.075 9.19c-.394-.393-.176-1.078.37-1.16l6.114-.907c.047-.007.087-.037.108-.08z">
									</path>
								</g>
							</svg>
						</a>
					</li>
					<li class="header_li_button">
						<a href="/myPage/myPage_SY" title="${ sessionName }'s page">
							<div class="user_picture_div">
								<img src="${ sessionUserPic }" class="user_picture">
							</div>
						</a>
					</li>
					</c:if>
					<!-- 로그인 한 후 -->
				</ul>
			</div>
		</div>
	</nav>
</header>