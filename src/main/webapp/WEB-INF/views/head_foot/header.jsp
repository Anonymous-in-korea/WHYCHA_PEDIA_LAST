<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header active">
	<nav>
		<div class="css-1gkas1x-Grid e1689zdh0">
			<div class="header_footer_div">
				<ul class="header_ul">
					<li class="header_li">
						<a href="#"><img src="images/no1_WHYCHA.png" class="logo_image"></a>
					</li>
					<li class="header_li_searchBox">
						<div class="header_li_searchBox_div">
							<div class="header_li_searchBox_div2">
								<form action="#" method="post" name="">
									<label class="searchBox_label active">
										<input type="text" autocomplete="off" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요"
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
					<li class="header_li_button">
						<button class="login_button active">로그인</button>
					</li>
					<li class="header_li_button">
						<button class="join_button active">회원가입</button>
					</li>
					<!-- 로그인 하기 전 -->
					
					<!-- login section start -->
					<div class="css-14gy7wr" style="display:none">
						<div class="css-rpyl6s">
							<div class="css-ikkedy">
								<div class="css-1i2oi66">
									<header class="css-17bvwx1">
										<a href="">
											<span src="/images/no1_WHYCHA.png" width="198px" height="38.03px" class="css-1xku4w9"></span>
										</a>
									</header>
									<h2 class="css-g6a59h">로그인</h2>
									<section>
										<div class="css-1gkas1x-Grid e1689zdh0">
											<div class="css-1y901al-Row emmoxnt0">
												<form action="" method="post" name="login">
													<div class="css-1o72pil">
						                                <label value="false" class="css-a4glo0">
						                                    <div class="css-1smbjja">
						                                        <input autocomplete="off" placeholder="이메일" type="email" name="userEmail" id="userEmail" class="css-1oyrbwm"  value="" />
						                                    </div>
						                                    <div value="false" class="css-lcodwd">
						                                        <span data-test="clearButton" aria-label="clear" role="button" class="css-qe0tnm"></span>
						                                    </div>
						                                    <span value="false" class="css-gem1s0"></span>
						                                </label>
						                            </div>
						                            <div class="css-1o72pil">
						                                <label value="false" class="css-a4glo0">
						                                    <div class="css-1smbjja">
						                                        <input autocomplete="off" placeholder="비밀번호" type="password" name="userPw" id="userPw" class="css-1oyrbwm" value="" />
						                                    </div>
						                                    <div value="false" class="css-lcodwd">
						                                        <span data-test="clearButton" aria-label="clear" role="button" class="css-qe0tnm"></span>
						                                    </div>
						                                    <span value="false" class="css-gem1s0"></span>
						                                </label>
						                            </div>
													<button type="button" id="loginBtn" class="css-qr0uqd-StylelessButton">로그인</button>
												</form>
												<div class="css-liv8hf">
													<button id="pwSearch" class="css-gq8fs1-StylelessButton">비밀번호를 잊어버리셨나요?</button>
												</div>
												<div class="css-gcz1qq">
													계정이 없으신가요?
													<button id="joinBtn" class="css-gq8fs1-StylelessButton">회원가입</button>
												</div>
												<hr class="css-dnzt4"></hr>
												<ul class="css-brz23g">
													<li class="css-1i82ydo">
														<button type="button" class="css-8oaf5r">
															<img src="/images/kakao_url.svg" class="css-1hfgk44">
														</button>
													</li>
													<li class="css-1i82ydo">
														<button type="button" class="css-1smkj82">
															<img src="/images/google_url.svg" class="css-1hfgk44">
														</button>
													</li>
													<li class="css-1i82ydo">
														<button type="button" class="css-bxzc43">
															<img src="/images/twitter_url.svg" class="css-1hfgk44">
														</button>
													</li>
													<li class="css-1i82ydo">
														<button type="button" class="css-1jztl1f">
															<img src="/images/line_url.svg" class="css-1hfgk44">
														</button>
													</li>
													<li class="css-1i82ydo">
														<button type="button" class="css-1r1efk8">
															<img src="/images/facebook_url.svg" class="css-1hfgk44">
														</button>
													</li>
												</ul>
												<div class="css-jh98cl">
													TIP.왓챠 계정이 있으신가요? 왓챠와 왓챠피디아는 같은 계정을 사용해요.
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
					<!-- login section end -->
					
					<!-- 로그인 한 후 -->
					<!-- <li class="header_li_button">
						<a href="">
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
					<li  class="header_li_button">
						<a href="" title="박규창's page">
							<div class="user_picture_div">
								<div class="user_picture"></div>
							</div>
						</a>
					</li> -->
					<!-- 로그인 한 후 -->
					
					
					<!-- 회원가입 section start -->
					<div class="css-14gy7wr" style="display:block">
						<div class="css-rpyl6s">
							<div class="css-ikkedy">
								<div class="css-1i2oi66">
									<header class="css-17bvwx1">
										<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTUxIiBoZWlnaHQ9IjI5IiB2aWV3Qm94PSIwIDAgMTUxIDI5IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxwYXRoIGQ9Ik03My40MjQyIDE0LjYzOTFINjkuODAxOFY2LjEzNTE5SDY1LjEwMTNWMjcuNzIyMUg2OS44MDE4VjE5LjEzMDlINzMuNDI0MlYyNy43MjIxSDc4LjEyNDhWNi4xMzUxOUg3My40MjQyVjE0LjYzOTFaIiBmaWxsPSIjRkYwNTU4Ii8+CiAgPHBhdGggZD0iTTM3Ljg0NjggMTAuNjI3SDQxLjY0MTdWMjcuNzIyMUg0Ni4zNDIyVjEwLjYyN0g0OS45MjE1VjYuMTM1MTlIMzcuODQ2OFYxMC42MjdaIiBmaWxsPSIjRkYwNTU4Ii8+CiAgPHBhdGggZD0iTTI4LjQwMjcgNi4xMzUxOUwyNC42MDc3IDI3LjcyMjFIMjkuMTc4OUwyOS42OTIxIDI0LjIzMzNIMzQuMDIxN0wzNC41MjYzIDI3LjcyMjFIMzkuMTQwNUwzNS4zMDI1IDYuMTM1MTlIMjguNDAyN1pNMzAuMjY5OSAyMC4zMDg0TDMxLjU5MzggMTEuMzI0OEgzMi4xNTQ0TDMzLjQ1NDYgMjAuMzA4NEgzMC4yNjk5WiIgZmlsbD0iI0ZGMDU1OCIvPgogIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjAuMzA5IDBMMTguOTAyMiAyMC42NTAyTDE4LjUyNDEgMjAuNjcwMUwxNS4xNzgyIDYuMDYwNUgxMS4wNDM4TDguNTQwNzYgMjEuMTk4NEw4LjAwNDI5IDIxLjIyNjdMNS43NjMyNiA2LjA2MDVIMEw1LjI0MzMxIDI4LjYzNzlMMTEuMTA0NSAyOC4yNDczTDEzLjAxMTQgMTQuMjMzM0wxMy41NzA3IDE0LjIwMjZMMTYuMTI0MiAyNy45MDg3TDIxLjczNCAyNy41MzIzTDI2LjE4ODkgMEgyMC4zMDlaIiBmaWxsPSIjRkYwNTU4Ii8+CiAgPHBhdGggZD0iTTU3LjE2NjQgNS45MTcxMkM1Mi45NDAyIDUuOTE3MTIgNTAuOTEzNCA4LjIyODQ1IDUwLjkxMzQgMTEuODA0NVYyMi4wNTI4QzUwLjkxMzQgMjUuNjI4OCA1Mi45NDAyIDI3Ljk0MDEgNTcuMTY2NCAyNy45NDAxQzYxLjM5MjYgMjcuOTQwMSA2My40MTk0IDI1LjYyODggNjMuNDE5NCAyMi4wNTI4VjE4LjM0Nkg1OC43MTg5VjIyLjQ4ODlDNTguNzE4OSAyMy42MjI4IDU4LjI4NzYgMjQuMDE1MiA1Ny4xNjY0IDI0LjAxNTJDNTYuMDQ1MiAyNC4wMTUyIDU1LjYxMzkgMjMuNjIyOCA1NS42MTM5IDIyLjQ4ODlWMTEuMzY4NEM1NS42MTM5IDEwLjIzNDUgNTYuMDQ1MiA5Ljg0MjAxIDU3LjE2NjQgOS44NDIwMUM1OC4yODc2IDkuODQyMDEgNTguNzE4OSAxMC4yMzQ1IDU4LjcxODkgMTEuMzY4NFYxMy44MTA1SDYzLjQxOTRWMTEuODA0NUM2My40MTk0IDguMjI4NDUgNjEuMzkyNiA1LjkxNzEyIDU3LjE2NjQgNS45MTcxMloiIGZpbGw9IiNGRjA1NTgiLz4KICA8cGF0aCBkPSJNODMuMDQwOCA2LjEzNTE5TDc5LjI0NTkgMjcuNzIyMUg4My44MTcxTDg0LjMzMDIgMjQuMjMzM0g4OC42NTk5TDg5LjE2NDUgMjcuNzIyMUg5My43Nzg3TDg5Ljk0MDcgNi4xMzUxOUg4My4wNDA4Wk04NC45MDgxIDIwLjMwODRMODYuMjMyIDExLjMyNDhIODYuNzkyNkw4OC4wOTI4IDIwLjMwODRIODQuOTA4MVoiIGZpbGw9IiNGRjA1NTgiLz4KICA8cGF0aCBkPSJNMTI1LjY4NiA2LjEzNTI1SDEyMC45NDNWMjcuNzIyMkgxMjUuNjg2QzEyOC4zNiAyNy43MjIyIDEzMC4xMjggMjYuNjc1NSAxMzAuOTkxIDI0Ljc1NjdDMTMxLjUwOCAyMy42MjI4IDEzMS42MzggMjIuNTc2MiAxMzEuNjM4IDE2LjkwNjlDMTMxLjYzOCAxMS4yODEyIDEzMS41MDggMTAuMjM0NiAxMzAuOTkxIDkuMTAwNzNDMTMwLjEyOCA3LjE4MTg5IDEyOC4zNiA2LjEzNTI1IDEyNS42ODYgNi4xMzUyNVpNMTI4LjM2IDIzLjUzNTZDMTI3LjkyOSAyNC41ODIzIDEyNy4wMjMgMjUuMTQ5MiAxMjUuNDI4IDI1LjE0OTJIMTIzLjc0NlY4LjcwODI0SDEyNS40MjhDMTI3LjAyMyA4LjcwODI0IDEyNy45MjkgOS4yNzUxNyAxMjguMzYgMTAuMzIxOEMxMjguNzA1IDExLjA2MzIgMTI4Ljc5MSAxMS43MTczIDEyOC43OTEgMTYuOTUwNUMxMjguNzkxIDIyLjE0MDEgMTI4LjcwNSAyMi43OTQyIDEyOC4zNiAyMy41MzU2WiIgZmlsbD0iIzI5MkEzMiIvPgogIDxwYXRoIGQ9Ik0xNDcuMDc2IDYuMTM1MjVIMTQyLjgwN0wxMzguODM5IDI3LjcyMjJIMTQxLjY0MkwxNDIuMzMyIDIzLjM2MTJIMTQ3LjUwN0wxNDguMjQgMjcuNzIyMkgxNTFMMTQ3LjA3NiA2LjEzNTI1Wk0xNDIuNzY0IDIwLjkxOUwxNDQuODc3IDguNDAyOTdIMTQ0Ljk2M0wxNDcuMDc2IDIwLjkxOUgxNDIuNzY0WiIgZmlsbD0iIzI5MkEzMiIvPgogIDxwYXRoIGQ9Ik0xMzYuODEyIDYuMTM1MjVIMTM0LjAwOVYyNy43MjIySDEzNi44MTJWNi4xMzUyNVoiIGZpbGw9IiMyOTJBMzIiLz4KICA8cGF0aCBkPSJNMTAzLjk1MiA2LjEzNTI1SDk4Ljg2MzNWMjcuNzIyMkgxMDEuNjIzVjE3LjY0ODNIMTAzLjk1MkMxMDYuMTA4IDE3LjY0ODMgMTA3LjQ4OCAxNy4wMzc3IDEwOC4wOTIgMTUuNjg1OEMxMDguMzk0IDE0LjkwMDggMTA4LjQ4IDE0LjI5MDMgMTA4LjQ4IDExLjg5MThDMTA4LjQ4IDkuNDkzMjIgMTA4LjM5NCA4LjgzOTA3IDEwOC4wOTIgOC4xNDEzMUMxMDcuNDg4IDYuNzQ1NzkgMTA2LjEwOCA2LjEzNTI1IDEwMy45NTIgNi4xMzUyNVpNMTA1LjQ2MSAxNC4xMTU5QzEwNS4xNTkgMTQuOTAwOCAxMDQuNDI2IDE1LjA3NTMgMTAzLjI2MiAxNS4wNzUzSDEwMS42MjNWOC41MzM4SDEwMy4yNjJDMTA0LjQyNiA4LjUzMzggMTA1LjE1OSA4Ljc1MTg1IDEwNS40NjEgOS40OTMyMkMxMDUuNjM0IDkuODg1NzEgMTA1LjY3NyAxMC4xMDM4IDEwNS42NzcgMTEuODA0NUMxMDUuNjc3IDEzLjQ2MTcgMTA1LjYzNCAxMy43NjcgMTA1LjQ2MSAxNC4xMTU5WiIgZmlsbD0iIzI5MkEzMiIvPgogIDxwYXRoIGQ9Ik0xMTAuNTA3IDI3LjcyMjJIMTE4LjM1NVYyNS4xNDkySDExMy4zMVYxNy41NjExSDExOC4yMjZWMTQuOTg4MUgxMTMuMzFWOC43MDgyNEgxMTguMzU1VjYuMTM1MjVIMTEwLjUwN1YyNy43MjIyWiIgZmlsbD0iIzI5MkEzMiIvPgo8L3N2Zz4K"
											width="198px" height="38.03px" class="css-1xku4w9">
										</span>
									</header>
									<h2 class="css-g6a59h">회원가입</h2>
									<section>
										<div class="css-1gkas1x-Grid e1689zdh0">
											<div class="css-1y901al-Row emmoxnt0">
												<form action="" method="post" name="member_input">
													<div class="css-1o72pil">
														<label value="false" class="css-a4glo0">
															<div class="css-1smbjja">
																<input autocomplete="off" placeholder="이름" type="text" name="name" class="css-1oyrbwm" value="">
															</div>
															<div value="false" class="css-lcodwd">
																<span data-test="clearButton" aria-label="clear" role="button" class="css-qe0tnm"></span>
															</div>
															<span value="false" class="css-gem1s0"></span>
														</label>
													</div>
													<div class="css-1o72pil">
														<label value="false" class="css-a4glo0">
															<div class="css-1smbjja">
																<input autocomplete="off" placeholder="이메일" type="email" name="email" class="css-1oyrbwm" value="">
															</div>
															<div value="false" class="css-lcodwd">
																<span data-test="clearButton" aria-label="clear" role="button" class="css-qe0tnm"></span>
															</div>
															<span value="false" class="css-gem1s0"></span>
														</label>
													</div>
													<div class="css-1o72pil">
														<label value="false" class="css-a4glo0">
															<div class="css-1smbjja">
																<input autocomplete="off" placeholder="비밀번호" type="password" name="password" class="css-1oyrbwm" value="">
															</div>
															<div value="false" class="css-lcodwd">
																<span data-test="clearButton" aria-label="clear" role="button" class="css-qe0tnm"></span>
															</div>
															<span value="false" class="css-gem1s0"></span>
														</label>
													</div>
													<button type="button" id="member_input_btn" class="css-qr0uqd-StylelessButton">회원가입</button>
												</form>
												<div class="css-17kylon" style="text-align:center; margin-top:10px;">
													<span style="color:gray; font-size:15px;">이미 가입하셨나요?</span>
													<button class="css-gq8fs1-StylelessButton">로그인</button>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
					<!-- 회원가입 section end -->
				</ul>
			</div>
		</div>
	</nav>
</header>