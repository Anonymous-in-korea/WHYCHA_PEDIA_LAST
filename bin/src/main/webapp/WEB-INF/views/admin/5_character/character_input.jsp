<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
        <script src="/js/admin/scripts.js"></script>
        
        <!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
	</head>
	<body class="sb-nav-fixed">
	    <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
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
                            <form action="" method="post" name="">
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
										바이오그래피
										<br>
	                                    <input type="text" name="bio" id="bio" size="10000">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="push">
						<button id="ch_regis"  onclick="sendit()">등록하기</button>
						<button id="ch_cancel" onclick="location.href='/character_manage'">취소하기</button>
					</div>
                </main>
            </div>
        </div>
    </body>
</html>