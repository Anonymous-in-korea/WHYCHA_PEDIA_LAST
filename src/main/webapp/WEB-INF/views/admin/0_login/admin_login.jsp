<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_로그인</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link rel="stylesheet" href="/css/admin/0_login/Login.css" />
		
		<script defer src="/js/admin/Login.js"></script>
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
						<form action="/admin/admin_index" method="post" name="login" id="login">
							<div id="bor3">
								<div class="te">
									<p class="admin_id">관리자 아이디</p>
								</div>
								<div>
									<input type="text" name="admin_email" class="fo" id="admin_email" placeholder="아이디를 입력하세요." onfocus="this.placeholder=''"
										onblur="this.placeholder='아이디를 입력하세요'"/>
								</div>
							</div>
							<div id="bor4">
								<div class="te">
									<p class="admin_pw">관리자 비밀번호</p>
								</div>
								<div>
									<input type="password" name="admin_pw" class="fo" id="admin_pw" placeholder="비밀번호를 입력하세요" onfocus="this.placeholder=''"
										onblur="this.placeholder='비밀번호를 입력하세요'" />
								</div>
							</div>
							<c:if test="${ adminSessionId == null }">
							<p style="display: none; margin: 0 auto; text-align: center; color: red;">아이디 또는 비밀번호를 잘못입력했습니다</p>
							</c:if>
							<div id="bor5">
								<button type="button" id="loginBtn">관리자 로그인</button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</body>
</html>
