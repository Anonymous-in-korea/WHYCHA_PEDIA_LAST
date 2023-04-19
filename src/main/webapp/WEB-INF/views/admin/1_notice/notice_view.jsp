<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_공지사항_VIEW페이지</title>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/1_notice/Notice_View.css" rel="stylesheet"/>

		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/admin_logout.js"></script>
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
		                <h1 class="mt-4">공지사항_VIEW</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항_VIEW
		                    </div>
		                    
		                    <c:if test="${ result == 1 }">
		                    <div id="box1" style="width:90%">${ announcementVo.announcement_title }</div>
		                    <div id="box2" style="width:90%">${ announcementVo.announcement_content }</div>
		                    </c:if>
		                    
		                    <c:if test="${ result == 0 }">
		                    <div id="box1" style="width:90%">표시할 제목이 없습니다</div>
		                    <div id="box2" style="width:90%">표시할 내용이 없습니다</div>
		                    </c:if>
		                    
		                    <div id="btn0" >
		                    	<c:if test="${ announcementVo.is_regi == 1 }">
		                        <button type="button" class="btn1" style="width:200px" onclick="location.href='/admin/1_notice/notice_update?id=${announcementVo.id}&is_regi=2'">등록하기</button>
		                    	</c:if>
		                        <button type="button" class="btn1" style="width:200px" onclick="location.href='/admin/1_notice/notice_modify?id=${announcementVo.id}'">수정페이지로</button>
		                        <button type="button" class="btn1" style="width:200px" onclick="location.href='/admin/1_notice/notice_view_delete?id=${announcementVo.id}'">삭제하기</button>
		                        <button type="button" class="btn1" style="width:200px" onclick="location.href='/admin/1_notice/notice_list'">목록으로</button>
		                    </div>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
	</body>
</html>
