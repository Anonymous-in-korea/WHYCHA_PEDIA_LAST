<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_공지사항</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/1_notice/Notice.css" rel="stylesheet" />
		
		<!-- 보고 필요없으면 지울거임 -->
		<!-- <script src="/js/admin/Notice.js"></script> -->
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
		                <h1 class="mt-4">공지사항</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항
		                    </div>
		                    <div class="card-body">
		                    	<table class="notice_list_table">
		                    		<colgroup>
										<col width="7%">
										<col width="33%">
										<col width="15%">
										<col width="15%">
										<col width="15%">
										<col width="15%">
									</colgroup>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성날짜</th>
										<th>등록설정</th>
										<th>등록여부</th>
									</tr>
									<tr>
										<td>1</td>
										<td>
											<a href="/admin/1_notice/notice_view">공지사항 제목이 출력되는 곳</a>
										</td>
										<td>박규창</td>
										<td>2023-03-10</td>
										<td>2023-03-16</td>
										<td>
											<!-- 이거 c:if로 등록됐으면 등록 or 미등록 바뀌게하고 버튼 클릭으로도 등록 가능하게 구현 -->
		                                    <button id="status_btn">등록</button>
		                                    <!-- <button id="status_btn_active">미등록</button> -->
										</td>
									</tr>
		                    	</table>
		                    </div>
		                </div>
		                <div id="NBox">
		                    <button id="btn1" onclick="location.href='/admin/1_notice/notice_write'">글작성</button>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
	</body>
</html>
