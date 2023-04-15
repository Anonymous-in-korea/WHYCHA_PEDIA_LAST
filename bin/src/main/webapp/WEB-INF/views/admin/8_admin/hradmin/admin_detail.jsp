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
        <script src="/js/admin/admin_logout.js"></script>
		
		<script>
			$(function() {
				$("#adminDelBtn").click(function() {
					if ( $(".modal-wrap").css("display") == "none" ) { $(".modal-wrap").show(); }
				});
				
				$(".no").click(function() {
					if ( $(".modal-wrap").css("display") != "none" ) { $(".modal-wrap").hide(); }
				});
				
				$(".ok").click(function() {
					alert("삭제가즈아아아!!!!!");
					location.href="/admin/8_admin/hradmin/admin_delete?id=" + ${adminVo.id};
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
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>

			<div class="modal-wrap" style="display: none;">
				<div class="modal1">
                   	<br>
					<div>정말로 삭제 하시겠습니까?</div>
					<div class="button-wrap">
						<button type="button" class="ok">확인</button>
						<button type="button" class="no">취소</button>
					</div>
				</div>
			</div>
			<div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">관리자계정 상세조회</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                관리자계정 상세조회
                            </div>
                            <c:if test="${ result == 1 }">
                            <div class="card-body">
                                <h4 style="text-align:center;">[ ${ adminVo.admin_name } ] 관리자계정정보</h4>
                                <table id="user-table" style="margin:0 auto;">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <td id="user-name">${ adminVo.admin_name }</td>
                                        </tr>
                                        <tr>
                                            <th>관리자 아이디</th>
                                            <td id="user-ssn">${ adminVo.admin_email }</td>
                                        </tr>
                                        <tr>
                                            <th>관리자유형</th>
                                            <c:if test="${ adminVo.admin_position == 1 }">
                                            <td id="user-id">SUPER_ADMIN</td>
                                            </c:if>
                                            <c:if test="${ adminVo.admin_position == 2 }">
                                            <td id="user-id">CONTENT_ADMIN</td>
                                            </c:if>
                                            <c:if test="${ adminVo.admin_position == 3 }">
                                            <td id="user-id">BOARD_ADMIN</td>
                                            </c:if>
                                            <c:if test="${ adminVo.admin_position == 4 }">
                                            <td id="user-id">USER_ADMIN</td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <th>계정등록일</th>
                                            <td id="user-status">${ adminVo.regi_date }</td>
                                        </tr>
                                        <tr>
                                            <th>계정만료일</th>
                                            <td id="user-type">${ adminVo.retire_date }</td>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            </c:if>
                        </div>
                    </div>
                    <div id="button">
                    	<button type="button" id="adminDelBtn">계정삭제</button>
                    	<button type="button" onclick="location.href='/admin/8_admin/hradmin/admin_modify?id=${ adminVo.id }'">정보수정</button>
                    	<button type="button" onclick="location.href='/admin/8_admin/hradmin/admin_search'">목록으로</button>
                    </div>
                </main>
            </div>
		</div>
    </body>
</html>
