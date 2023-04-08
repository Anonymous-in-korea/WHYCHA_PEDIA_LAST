<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/6_member/userpage.css"  rel="stylesheet" />
        <link href="/css/admin/8_admin/hradmin/modifyaccount.css" rel="stylesheet" />
		
		<!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/scripts.js"></script>
		<script defer src="/js/admin/Myinfomodify.js"></script>
		<script src="/js/admin_logout.js"></script>
		
		<script>
			$(function() {
				let pw_flag = 0; let pw_flag2 = 0;
				let pwPattern = /^(?=.*[A-Za-z])[A-Za-z\d\S]{6,}$/;
				
				
				$("#admin_pw").on("keyup", function() {
        			if ( $("#admin_pw").val() == "" ) {
        				$("#input_pw_error").css({"display":"none"});
        				pw_flag = 0;
        			} else if ( !pwPattern.test( $("#admin_pw").val() ) ) {
        				$("#input_pw_error").css({"display":"block"});
        				pw_flag = 0;
        			} else {
        				$("#input_pw_error").css({"display":"none"});
        				pw_flag = 1;
        			}
        		});
        		
        		$("#admin_pw2").on("keyup", function() {
					if ( $("#admin_pw2").val() == "" ) {
						$("#input_pw2_error").css({"display":"none"});
						pw_flag2 = 0;
					} else if ( $("#admin_pw").val() != ( $("#admin_pw2").val() ) ) {
						$("#input_pw2_error").css({"display":"block"});
						$("#input_pw2_success").css({"display":"none"});
						pw_flag2 = 0;
					} else {
						$("#input_pw2_error").css({"display":"none"});
						$("#input_pw2_success").css({"display":"block"});
						pw_flag2 = 1;
					}
        		});
				
				
				$("#my_admin_modify").click(function() {
					if ( pw_flag == 0 ) {
	        			alert("비밀번호를 조건에 맞게 입력해주세요"); $("#admin_pw").focus();
	        		} else if ( pw_flag2 == 0 ) {
	        			alert("비밀번호를 일치하게 입력해주세요"); $("#admin_pw2").focus();
	        		} else {
	        			pwUdate.submit();
	        		}
				});
			});
		</script>
	</head>
	<body class="sb-nav-fixed">
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>

			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<h2 class="mt-4">내 관리자정보 수정</h2>
						<div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                내 관리자정보 수정
                            </div>
							<form action="/admin/8_admin/admin/my_admin_modify" method="post" name="pwUdate">
								<input type="hidden" name="adminSessionId" value="${ id }">
	                            <div class="card-body">
	                                <h4 style="text-align:center;">[ ${ adminSessionName } ] 계정비밀번호 변경</h4>
	                                <table id="user-table" style="margin:0 auto;">
	                                    <thead>
	                                    	<tr>
	                                            <th>새 비밀번호</th>
	                                            <td id="user-ssn">
													<input type="password" name="admin_pw" id="admin_pw" placeholder="비밀번호를 작성해주세요" class="content_box_input_text">
			                                        <span class="admin_error_msg4" id="input_pw_error" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
			                                            정규표현식에 맞는 비밀번호를 입력해주세요
			                                        </span>
												</td>
	                                        </tr>
	                                        <tr>
	                                            <th>새 비밀번호 확인</th>
	                                            <td id="user-ssn">
													<input type="password" id="admin_pw2" placeholder="입력한 비밀번호와 일치하는 비밀번호를 입력해주세요" class="content_box_input_text">
			                                        <span class="admin_error_msg4" id="input_pw2_error" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
			                                            비밀번호가 일치하지 않습니다
			                                        </span>
			                                        <span class="admin_error_msg4" id="input_pw2_success" style="display: none; color: blue; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
			                                            비밀번호가 일치합니다.
			                                        </span>
												</td>
	                                        </tr>
	                                    </thead>
	                                </table>
	                            </div>
							</form>
                        </div>
					</div>
					<div id="button">
                    	<button type="button" id="my_admin_modify">변경하기</button>
                    	<button type="button" onclick="location.href='/admin/8_admin/admin/my_admin_info'">취소하기</button>
                    </div>
				</main>
			</div>
		</div>
	</body>
</html>
