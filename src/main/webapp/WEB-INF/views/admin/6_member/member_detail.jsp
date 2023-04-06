<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dashboard - SB Admin</title>
        
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        <link href="/css/admin/styles.css" rel="stylesheet" />
        <link href="/css/admin/6_member/userpage.css"  rel="stylesheet" />
        
        <!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
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
                        <h1 class="mt-4">회원관리</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                회원관리
                            </div>
                            <div class="card-body">
                                <h4 style="text-align:center;">회원상세정보</h4>
                                <table id="user-table" style="margin:0 auto;">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <td id="user-name">김사과</td>
                                        </tr>
                                        <tr>
                                            <th>회원유형</th>
                                            <td id="user-type">일반</td>
                                        </tr>
                                        <tr>
                                            <th>아이디</th>
                                            <td id="user-id">asada112121</td>
                                        </tr>
                                        <tr>
                                            <th>주민번호</th>
                                            <td id="user-ssn">970219-1******</td>
                                        </tr>
                                        <tr>
                                            <th>계정상태</th>
                                            <td id="user-status">정지</td>
                                        </tr>
                                        <tr>
                                            <th>주의</th>
                                            <td id="user-caution">6</td>
                                        </tr>
                                        <tr>
                                            <th>경고</th>
                                            <td id="user-warning">7</td>
                                        </tr>
                                        <tr>
                                            <th>정지횟수</th>
                                            <td id="user-suspension">8</td>
                                        </tr>
                                        <tr>
                                            <th>최근정지날짜</th>
                                            <td id="user-lately">2022-12-20</td>
                                        </tr>
                                        <tr>
                                            <th>정지해제날짜</th>
                                            <td id="user-release">2022-12-25</td>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                    	<button type="button" id="cautionBtn">주의처리</button>
                    	<button type="button" id="yellowBtn">경고처리</button>
                    	<button type="button" id="redBtn">정지처리</button>
                    	<button type="button" onclick="location.href='/admin/6_member/member_manage'">목록으로</button>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
