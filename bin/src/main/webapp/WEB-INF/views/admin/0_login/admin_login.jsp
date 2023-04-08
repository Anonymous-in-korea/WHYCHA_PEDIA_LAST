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
		
		<script>
			$(function() {
				let email_flag = 0; let pw_flag = 0;
				let emailPattern = /^[\w\.-]{2,}@[\w\.-]+\.(com|net)$/;
        		let pwPattern = /^(?=.*[A-Za-z])[A-Za-z\d\S]{6,}$/;

        		$("#admin_email").on("keyup", function() {
        			if ( $("#admin_email").val() == "" ) {
        				$("#error_text").css({"display":"none"});
        				email_flag = 0;
        			} else if ( !emailPattern.test( $("#admin_email").val() ) ) {
        				$("#error_text").css({"display":"block"});
        				email_flag = 0;
        			} else {
        				$("#error_text").css({"display":"none"});
        				email_flag = 1;
        			}
        		});
        		
        		$("#admin_pw").on("keyup", function() {
        			if ( $("#admin_pw").val() == "" ) {
        				$("#error_text").css({"display":"none"});
        				pw_flag = 0;
        			} else if ( !pwPattern.test( $("#admin_pw").val() ) ) {
        				$("#error_text").css({"display":"block"});
        				pw_flag = 0;
        			} else {
        				$("#error_text").css({"display":"none"});
        				pw_flag = 1;
        			}
        		});
        		
        		
        		
        		/* 엔터키를 누르면 로그인 실행 스크립트 */
				$("#admin_pw").on("keypress", function(event) {
					if ( event.keyCode == 13 ) {
						if ( email_flag == 0 || pw_flag == 0 ) {
							$("#error_text").show();
						} else {
							$("#loginBtn").click();
						}
					}
				});
			});
		</script>
	</head>
	<body>
		
		<!-- 로그인 section start -->
		<c:if test="${ result == 0 }">
			<script> alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요."); location.href="/admin/whycha_pedia_admin_login"; </script>
		</c:if>
		<!-- 로그인 section end -->
		
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
							<p id="error_text" style="display: none; margin: 0 auto; text-align: center; color: red;">아이디 또는 비밀번호를 잘못입력했습니다</p>
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
