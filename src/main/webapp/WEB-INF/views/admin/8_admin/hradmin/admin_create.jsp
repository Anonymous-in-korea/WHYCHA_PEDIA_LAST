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
		<link href="/css/admin/6_member/userpage.css" rel="stylesheet" />      
        <link href="/css/admin/8_admin/hradmin/modifyaccount.css" rel="stylesheet" />
        
        <!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->

        <script src="/js/admin/scripts.js"></script>
        <script src="/js/admin_logout.js"></script>
        
        <script>
        	$(function() {
       			let checkId = 0; let email_flag = 0; let pw_flag = 0; let pw_flag2 = 0; let name_flag = 0;
        		let emailPattern = /^[\w\.-]{2,}@[\w\.-]+\.(com|net)$/;
        		let pwPattern = /^(?=.*[A-Za-z])[A-Za-z\d\S]{6,}$/;
        		let namePattern = /^[가-힣]{2,4}$/;
        		
        		$("#admin_email").on("keyup", function() {
        			if ( $("#admin_email").val() == "" ) {
        				$("#id_check_fail").css({"display":"none"});
        				$("#input_id_error").css({"display":"none"});
        				email_flag = 0;
        			} else if ( !emailPattern.test( $("#admin_email").val() ) ) {
        				$("#id_check_fail").css({"display":"none"});
        				$("#input_id_error").css({"display":"block"});
        				email_flag = 0;
        			} else {
        				$("#id_check_fail").css({"display":"none"});
        				$("#input_id_error").css({"display":"none"});
        				email_flag = 1;
        			}
        		});
        		
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

        		$("#admin_name").on("keyup", function() {
        			if ( $("#admin_name").val() == "" ) {
        				$("#input_name_error").text("");
        				name_flag = 0;
        			} else if ( !namePattern.test( $("#admin_name").val() ) ) {
        				$("#input_name_error").css({"display":"block"});
        				name_flag = 0;
        			} else {
        				$("#input_name_error").css({"display":"none"});
        				name_flag = 1;
        			}
        		});
        		
        		
        		
        		$("#admin_email_check").click(function() {
        			alert("admin_email을 체크합니다");
    				let formData = {"admin_email_check":$("#admin_email").val()};
    				
    				if ( $("#admin_email").val() < 1 ) {
    					alert("관리자 아이디를 입력해주세요"); $("#admin_email").focus();
    				} else if ( $("#input_id_error").css("display") != "none" ) {
    					alert("관리자 아이디를 조건에 맞게 입력해주세요"); $("#admin_email").focus();
    				} else {
	    				$.ajax({
	    					url : "admin_email_checkId",
	    					type : "post",
	    					data : formData,
	    					success : function(data) {
	    						alert("성공");
	    						if ( data == 1 ) {
	    							checkId = 1;
	    							$("#id_check_success").css({"display":"none"});
	    							$("#id_check_fail").css({"display":"block"});
	    						} else {
	    							checkId = 0;
	    							$("#id_check_success").css({"display":"block"});
	    							$("#id_check_fail").css({"display":"none"});
	    						}
	    					},
	    					error : function() {
	    						alert("실패");
    							checkId = 0;
	    					}
	    				});
    				}
        		});
        		
        		
        		
        		$("#admin_create").click(function() {
	        		if ( $("#admin_position").val() == "" ) {
	        			alert("관리자 권한을 설정해주세요"); $("#admin_position").focus();
	        		} else if ( email_flag == 0 ) {
	        			alert("email을 조건에 맞게 입력해주세요"); $("#admin_email").focus();
	        		} else if ( pw_flag == 0 ) {
	        			alert("비밀번호를 조건에 맞게 입력해주세요"); $("#admin_pw").focus();
	        		} else if ( pw_flag2 == 0 ) {
	        			alert("비밀번호를 일치하게 입력해주세요"); $("#admin_pw2").focus();
	        		} else if ( name_flag == 0 ) {
	        			alert("관리자 이름을 조건에 맞게 입력해주세요"); $("#admin_name").focus();
	        		} else {
	        			adminCreate.submit();
	        		}
        		});
        	});
        </script>
    </head>
    <body class="sb-nav-fixed">
    	
    	<c:if test="${ adminSessionPosition != '1' && adminSessionPosition != '2' }">
	    	<script>alert("관리자계정 생성권한이 없습니다. 권한을 가진 계정으로 접속해주세요."); location.href="/admin/whycha_pedia_admin_login";</script>
    	</c:if>
    
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

            <!-- 메인콘텐츠 시작 -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">관리자계정생성</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                관리자계정생성
                            </div>
                            <div class="card-body">
                            	<form action="/admin/8_admin/hradmin/admin_create" method="post" name="adminCreate">
                                	<table id="user-table" style="margin:0 auto;">
                                        <tr>
                                            <th>관리자 아이디</th>
                                            <td id="user-ssn">
                                            	<input type="text" name="admin_email" id="admin_email" placeholder="아이디를 이메일형식으로 작성해주세요" class="content_box_input_text">
                                        		<button type="button" id="admin_email_check" style="float: left; margin: 5px 5px; height:29px;"> 중복확인 </button>
                                        		<span class="admin_error_msg4" id="id_check_fail" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            이미 사용중인 아이디가 존재합니다
		                                        </span>
                                        		<span class="admin_error_msg4" id="id_check_success" style="display: none; color: blue; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            사용가능한 아이디입니다
		                                        </span>
		                                        <span class="admin_error_msg4" id="input_id_error" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            정규표현식에 맞는 이메일을 입력해주세요
		                                        </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호</th>
                                            <td id="user-ssn">
												<input type="password" name="admin_pw" id="admin_pw" placeholder="비밀번호를 작성해주세요" class="content_box_input_text">
		                                        <span class="admin_error_msg4" id="input_pw_error" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            정규표현식에 맞는 비밀번호를 입력해주세요
		                                        </span>
											</td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호 확인</th>
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
                                        <tr>
                                            <th>이름</th>
                                            <td id="user-name">
												<input type="text" name="admin_name" id="admin_name" placeholder="사용할 관리자 이름을 입력해주세요" class="content_box_input_text">
												<span class="admin_error_msg4" id="input_name_error" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            정규표현식에 맞는 이름을 입력해주세요
		                                        </span>
											</td>
                                        </tr>
                                        <tr>
                                            <th>관리자유형</th>
                                            <td id="user-id">
												<select name="admin_position_select" id="admin_position" class="admintypeselect" required>
		                                            <option value="" selected>관리자 유형선택</option>
		                                            <option value="1">SUPER_ADMIN</option>
		                                            <option value="2">CONTENT_ADMIN</option>
		                                            <option value="3">BOARD_ADMIN</option>
		                                            <option value="4">USER_ADMIN</option>
												</select>
											</td>
                                        </tr>
	                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                    	<button type="button" id="admin_create">계정등록하기</button>
                    	<button type="button" onclick="location.href='/admin/8_admin/hradmin/admin_search'">취소하기</button>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>