<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_로그인</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link rel="stylesheet" href="/css/admin/0_login/Login.css" />
		
		<script defer src="/js/admin/Login.js"></script>
		
		<script>
			function loginBtn() {
				if ( $("#adminId").val().length < 1 ) {
					alert("아이디를 입력해주세요");
					$("#adminId").val("").focus();
				}
				
				if ( $("#adminPw").val().length < 1 ) {
					alert("비밀번호를 입력해주세요");
					$("#adminPw").val("").focus();
				}
				
				login.submit();
			}
		</script>
	</head>
	<body>
		<div id="app">
			<section>
				<div id="icon">
					<a href="/"><img src="/images/no1_WHYCHA.png" alt="메인" style="width:350px"/></a>
				</div>
				<div id="bor">
					<div id="bor2">
						<div>
							<p id="main">
								<img src="/assets/img/그림2.png" style="height:25px;">
								관리자_로그인
							</p>
						</div>
						<hr>
						<form action="/admin/whycha_pedia_admin" method="post" name="login" id="login">
							<div id="bor3">
								<div class="te">
									<p class="admin_id">
										관리자 아이디
									</p>
								</div>
								<div>
									<input type="text" name="adminId" class="fo" id="adminId" placeholder="아이디를 입력하세요." onfocus="this.placeholder=''"
										onblur="this.placeholder='아이디를 입력하세요'"/>
								</div>
							</div>
							<div id="bor4">
								<div class="te">
									<p class="admin_pw">
										관리자 비밀번호
									</p>
								</div>
								<div>
									<input type="password" name="adminPw" class="fo" id="adminPw" placeholder="비밀번호를 입력하세요" onfocus="this.placeholder=''"
										onblur="this.placeholder='비밀번호를 입력하세요'" />
								</div>
							</div>
							<p style="display: none; margin: 0 auto; text-align: center; color: red;">아이디 또는 비밀번호를 잘못입력했습니다</p>
							<div id="bor5">
								<button type="button" onclick="loginBtn()">관리자 로그인</button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</body>
</html>
