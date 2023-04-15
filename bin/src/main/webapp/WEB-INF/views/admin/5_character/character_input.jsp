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
		<link href="/css/admin/5_character/character_enroll.css" rel="stylesheet"/>
		<link href="/css/admin/5_character/jsuites.css" rel="stylesheet" type="text/css"/>
		<link href="/css/admin/5_character/cropper.css" rel="stylesheet" type="text/css"/>
		
        <!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
        <script src="/js/admin/scripts.js"></script>
		<script src="/js/admin/admin_logout.js"></script>
		
		<script>
			$(function() {
				$("#character_input").click(function() {
					if ( $("#profile").val().length < 1 ) { confirm("프로필이 입력되지 않았습니다. 등록하시겠습니까?"); }
					else if ( $("#name").val().length < 1 ) { confirm("이름이 입력되지 않았습니다. 등록하시겠습니까?"); }
					else if ( !$("input:radio[id=director]").is(":checked") && !$("input:radio[id=actor]").is(":checked") ) { alert("직종분류가 선택되지 않았습니다."); }
					else { character.submit(); }
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
					<%@ include file="../fragment/sidefooter.jsp" %>
					<%@ include file="../fragment/sidenav.jsp" %>
				</nav>
			</div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">인물관리_등록페이지</h1>
                        <div class="row">
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                인물관리_등록페이지
                            </div>
                            <form action="/admin/5_character/character_input" method="post" name="character">
	                            <div class="card-body">
									프로필사진(240x240)
	                                <div class="conBox2">
	                                    <div id="po">
	                                        <span style="color: red; font-size: smaller;">
	                                        	*1개의 파일만 등록가능합니다.
	                                        </span>
	                                    </div>
	                                </div>
	                                <div>
	                                	프로필 URL
	                                	<br>
										<input type="text" name="profile" id="profile" size="100%">
	                                </div>
									<div>
										이름
										<br>
										<input type="text" name="name" id="name" size="50">
									</div>
	                                <div>
	                                	직종분류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                	<input type="radio" name="table_name" id="director" value="director" size="80%" style="margin:0 10px 0 20px;">
	                                	<label for="director">감독</label>
	                                	<input type="radio" name="table_name" id="actor" value="actor" size="80%" style="margin:0 10px 0 20px;">
	                                	<label for="actor">배우</label>
	                                </div>
	                                <br>
									<div>
										바이오그래피
										<br>
	                                    <input type="text" name="bio" id="bio" size="10000">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="push">
						<button class="ch_regis" id="character_input">등록하기</button>
						<button id="ch_cancel" onclick="history.back()">취소하기</button>
					</div>
                </main>
            </div>
        </div>
    </body>
</html>
