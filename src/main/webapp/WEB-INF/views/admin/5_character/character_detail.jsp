<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/5_character/character_look.css" rel="stylesheet" />
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="/js/admin/scripts.js"></script>
		
		<script src="/js/admin_logout.js"></script>
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
                        <h1 class="mt-4">인물관리</h1>
                        <div class="row">
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                인물관리
                            </div>
                            <div class="card-body">
                                <table id="">
									<tr>
	                                    <img src="/images/slamdunk.jpg">
	                                    <p style="font-size:25px; margin-left:50px;"><strong>[슬램덩크]</strong></p>
									</tr>
									<tr>
	                                    <p id="biotitle" th:if="${character.perBiography} != null">바이오그래피</p>
	                                    <p style="margin-left:50px;">바이오그래프 들어가는 공간인데 내가 지금 넣을게 없다 시부럴거 뭘 써서 맞춰야하는지도 모르것고 아~ 집에 가고싶다!!!</p>
									</tr>
                                </table>
                            </div>
                        </div>
                        <div class="push">
                            <button id="ch_fix" onclick="location.href='/admin/5_character/character_modify'">수정하기</button>
                            <button id="ch_list" onclick="location.href='/admin/5_character/character_manage'">목록으로</button>
                        </div>
					</div>
				</main>
			</div>
		</div>
	</body>
</html>
