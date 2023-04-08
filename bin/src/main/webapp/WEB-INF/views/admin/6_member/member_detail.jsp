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
        		$("#member_block").click(function() {
        			location.href="/member_block?id=" + ${memberVo.id};
        		});
        		
        		$("#normal_member").click(function() {
        			location.href="/member_normal?id=" + ${memberVo.id};
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
                        <h1 class="mt-4">회원관리</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                회원관리
                            </div>
                            <div class="card-body">
                                <h4 style="text-align:center;">[ ${ memberVo.user_name } ]님의 회원상세정보</h4>
                                <table id="user-table" style="margin:0 auto;">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <td id="user-name">${ memberVo.user_name }</td>
                                        </tr>
                                        <tr>
                                            <th>회원등급</th>
                                            <c:if test="${ memberVo.user_pic_url != null }">
                                            <td id="user-type">VIP회원</td>
                                            </c:if>
                                            <c:if test="${ memberVo.user_pic_url == null }">
                                            <td id="user-type">정회원</td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <th>아이디</th>
                                            <td id="user-id">${ memberVo.user_email }</td>
                                        </tr>
                                        <tr>
                                            <th>계정상태</th>
                                            <c:if test="${ memberVo.is_block == 1 }">
                                            <td id="user-status">정상회원</td>
                                            </c:if>
                                            <c:if test="${ memberVo.is_block == 2 }">
                                            <td id="user-status">정지회원</td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <th>회원등록날짜</th>
                                            <td id="user-lately">${ memberVo.regi_date }</td>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                    	<button type="button" id="normal_member">정회원처리</button>
                    	<button type="button" id="member_block">정지처리</button>
                    	<button type="button" onclick="location.href='/admin/6_member/member_manage'">목록으로</button>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
