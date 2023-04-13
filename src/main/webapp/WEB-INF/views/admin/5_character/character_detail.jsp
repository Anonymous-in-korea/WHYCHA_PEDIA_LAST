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
		<link href="/css/admin/5_character/character_look.css" rel="stylesheet" />
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="/js/admin/scripts.js"></script>
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
                        <h1 class="mt-4">인물관리</h1>
                        <div class="row">
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                인물관리
                            </div>
                            <div class="card-body">
                                <table>
									<tr>
	                                    <img src="${ artistVo.artist_post_url }">
	                                    <c:if test="${ director_id != null }">
	                                    <p style="font-size:25px; margin-left:50px;"><strong>[ ${ artistVo.director_name } ]</strong></p>
	                                    </c:if>
	                                    <c:if test="${ director_id == null }">
	                                    <p style="font-size:25px; margin-left:50px;"><strong>[ ${ artistVo.actor_name } ]</strong></p>
	                                    </c:if>
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
