<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_공지사항_VIEW페이지</title>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/1_notice/Notice_View.css" rel="stylesheet"/>

		<!-- 보고 필요없으면 지울거임 -->
		<!-- <script src="/js/admin/Notice_View.js"></script> -->
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
		                <h1 class="mt-4">공지사항_VIEW</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항_VIEW
		                    </div>
		                    <div id="box1" style="width:90%">제목 표시될 곳</div>
		                    <div id="box2" style="width:90%">내용 표시될 곳</div>
		                    <div id="btn0" >
		                        <button class='btn1' id="btn1" style="width:200px" onclick="location.href='/admin/1_notice/notice_modify'">수정페이지로</button>
		                        <button class='btn1' id="btn2" style="width:200px" onclick="deleteBtn()">삭제하기</button>
		                        <button class='btn1' id="btn3" style="width:200px" onclick="location.href='/admin/1_notice/notice_list'">목록으로</button>
		                    </div>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
	</body>
</html>
